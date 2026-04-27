using System.Numerics;
using Content.Server._Crescent.SpaceArtillery;
using Content.Shared._Mono.Radar;
using Content.Shared.PointCannons;
using Content.Shared.Weapons.Ranged.Events;
using Robust.Shared.Map;
using Robust.Shared.Physics.Components;
using Robust.Shared.Spawners;

namespace Content.Server._Mono.Radar;

/// <summary>
/// System that handles radar visualization for hitscan projectiles and ship weapon fire.
/// </summary>
public sealed partial class HitscanRadarSystem : EntitySystem
{
    [Dependency] private readonly SharedTransformSystem _transform = default!;

    public override void Initialize()
    {
        base.Initialize();
        SubscribeLocalEvent<HitscanFiredEvent>(OnHitscanFired);
        SubscribeLocalEvent<PointCannonComponent, AmmoShotEvent>(OnPointCannonShot);
        SubscribeLocalEvent<SpaceArtilleryComponent, AmmoShotEvent>(OnSpaceArtilleryShot);
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

    private void OnPointCannonShot(EntityUid uid, PointCannonComponent comp, AmmoShotEvent args)
    {
        CreateProjectileRadarLines(uid, args);
    }

    private void OnSpaceArtilleryShot(EntityUid uid, SpaceArtilleryComponent comp, AmmoShotEvent args)
    {
        CreateProjectileRadarLines(uid, args);
    }

    private void CreateProjectileRadarLines(EntityUid gunUid, AmmoShotEvent args)
    {
        foreach (var projectile in args.FiredProjectiles)
        {
            if (!TryComp<PhysicsComponent>(projectile, out var physics))
                continue;

            var velocity = physics.LinearVelocity;
            if (velocity.LengthSquared() < 0.01f)
                continue;

            var startPos = _transform.GetWorldPosition(gunUid);
            var dir = velocity.Normalized();

            var maxDistance = 200f;
            if (TryComp<TimedDespawnComponent>(projectile, out var projDespawn))
                maxDistance = MathF.Min(velocity.Length() * projDespawn.Lifetime, 500f);

            var endPos = startPos + dir * maxDistance;

            var shooterCoords = new EntityCoordinates(gunUid, Vector2.Zero);
            var radarUid = Spawn(null, shooterCoords);

            var hitscanRadar = EnsureComp<HitscanRadarComponent>(radarUid);
            hitscanRadar.OriginGrid = Transform(gunUid).GridUid;
            hitscanRadar.StartPosition = startPos;
            hitscanRadar.EndPosition = endPos;

            InheritShooterSettings(gunUid, hitscanRadar);

            var despawn = EnsureComp<TimedDespawnComponent>(radarUid);
            despawn.Lifetime = hitscanRadar.LifeTime;

            break;
        }
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
