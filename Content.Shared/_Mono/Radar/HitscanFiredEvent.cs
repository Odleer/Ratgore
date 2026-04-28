using Robust.Shared.Map;
using Content.Shared.Weapons.Ranged;

namespace Content.Shared._Mono.Radar;

/// <summary>
/// Raised on the server when a hitscan weapon fires, for radar visualization.
/// </summary>
public sealed class HitscanFiredEvent : EntityEventArgs
{
    public EntityCoordinates FromCoordinates { get; }
    public float Distance { get; }
    public Angle Angle { get; }
    public HitscanPrototype Hitscan { get; }
    public EntityUid? HitEntity { get; }
    public EntityUid GunUid { get; }
    public EntityUid? User { get; }

    public HitscanFiredEvent(
        EntityCoordinates fromCoordinates,
        float distance,
        Angle angle,
        HitscanPrototype hitscan,
        EntityUid? hitEntity,
        EntityUid gunUid,
        EntityUid? user)
    {
        FromCoordinates = fromCoordinates;
        Distance = distance;
        Angle = angle;
        Hitscan = hitscan;
        HitEntity = hitEntity;
        GunUid = gunUid;
        User = user;
    }
}
