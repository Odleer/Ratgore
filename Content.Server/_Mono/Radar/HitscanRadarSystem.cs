using System.Numerics;
using Content.Shared._Mono.Radar;
using Content.Shared.PointCannons;
using Robust.Shared.Map;
using Robust.Shared.Timing;

namespace Content.Server._Mono.Radar;

/// <summary>
/// System that handles radar visualization for hitscan projectiles.
/// </summary>
public sealed partial class HitscanRadarSystem : EntitySystem
{
    [Dependency] private readonly SharedTransformSystem _transform = default!;
    [Dependency] private readonly IGameTiming _timing = default!;

    private readonly Dictionary<EntityUid, TimeSpan> _pendingDeletions = new();

    public override void Initialize()
    {
        base.Initialize();
        SubscribeLocalEvent<HitscanFiredEvent>(OnHitscanFired);
        SubscribeLocalEvent<HitscanRadarComponent, ComponentShutdown>(OnHitscanRadarShutdown);
    }

    private void OnHitscanFired(HitscanFiredEvent ev)
    {
        var gunUid = ev.GunUid;

        if (!HasComp<PointCannonComponent>(gunUid))
            return;

        var shooterCoords = new EntityCoordinates(gunUid, Vector2.Zero);
        var uid = Spawn(null, shooterCoords);

        var hitscanRadar = EnsureComp<HitscanRadarComponent>(uid);

        var startPos = _transform.ToMapCoordinates(ev.FromCoordinates).Position;
        var dir = ev.Angle.ToVec().Normalized();
        var endPos = startPos + dir * ev.Distance;

        hitscanRadar.OriginGrid = Transform(gunUid).GridUid;
        hitscanRadar.StartPosition = startPos;
        hitscanRadar.EndPosition = endPos;

        InheritShooterSettings(gunUid, hitscanRadar);

        var deleteTime = _timing.CurTime + TimeSpan.FromSeconds(hitscanRadar.LifeTime);
        _pendingDeletions[uid] = deleteTime;
    }

    private void InheritShooterSettings(EntityUid shooter, HitscanRadarComponent hitscanRadar)
    {
        if (TryComp<HitscanRadarComponent>(shooter, out var shooterHitscanRadar))
        {
            hitscanRadar.RadarColor = shooterHitscanRadar.RadarColor;
            hitscanRadar.LineThickness = shooterHitscanRadar.LineThickness;
            hitscanRadar.Enabled = shooterHitscanRadar.Enabled;
            hitscanRadar.LifeTime = shooterHitscanRadar.LifeTime;
        }
    }

    private void OnHitscanRadarShutdown(Entity<HitscanRadarComponent> ent, ref ComponentShutdown args)
    {
        if (_pendingDeletions.ContainsKey(ent))
        {
            QueueDel(ent);
            _pendingDeletions.Remove(ent);
        }
        else
        {
            _pendingDeletions.Remove(ent);
        }
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        if (_pendingDeletions.Count == 0)
            return;

        var currentTime = _timing.CurTime;
        var toRemove = new List<EntityUid>();

        foreach (var (entity, deleteTime) in _pendingDeletions)
        {
            if (currentTime >= deleteTime)
            {
                if (!Deleted(entity))
                    QueueDel(entity);
                toRemove.Add(entity);
            }
        }

        foreach (var entity in toRemove)
        {
            _pendingDeletions.Remove(entity);
        }
    }
}
