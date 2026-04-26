using Content.Shared._Mono.Radar;
using Robust.Shared.Serialization;

namespace Content.Shared.Crescent.Radar;

[Serializable, NetSerializable]
public sealed class IFFInterfaceState
{
    public List<ProjectileState> Projectiles;
    public Dictionary<NetEntity, List<TurretState>> Turrets;
    public List<HitscanLineState> HitscanLines;

    public IFFInterfaceState(List<ProjectileState> projectiles, Dictionary<NetEntity, List<TurretState>> turrets)
    {
        Projectiles = projectiles;
        Turrets = turrets;
        HitscanLines = new List<HitscanLineState>();
    }

    public IFFInterfaceState(
        List<ProjectileState> projectiles,
        Dictionary<NetEntity, List<TurretState>> turrets,
        List<HitscanLineState> hitscanLines)
    {
        Projectiles = projectiles;
        Turrets = turrets;
        HitscanLines = hitscanLines;
    }
}
