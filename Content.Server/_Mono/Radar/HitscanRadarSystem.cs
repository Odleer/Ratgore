using System.Numerics;
using Content.Shared._Mono.Radar;
using Robust.Shared.Map;
using Robust.Shared.Spawners;

namespace Content.Server._Mono.Radar;

/// <summary>
/// System that handles radar visualization for hitscan projectiles.
/// </summary>
public sealed partial class HitscanRadarSystem : EntitySystem
{
    [Dependency] private readonly SharedTransformSystem _transform = default!;

    public override void Initialize()
    {
        base.Initialize();
        SubscribeLocalEvent<HitscanFiredEvent>(OnHitscanFired);
    }

    private void OnHitscanFired(HitscanFiredEvent ev)
    {
        var gunUid = ev.GunUid;

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

        var despawn = EnsureComp<TimedDespawnComponent>(uid);
        despawn.Lifetime = hitscanRadar.LifeTime;
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
}
