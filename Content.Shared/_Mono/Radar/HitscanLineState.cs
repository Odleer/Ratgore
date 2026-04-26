using System.Numerics;
using Robust.Shared.Maths;
using Robust.Shared.Serialization;

namespace Content.Shared._Mono.Radar;

/// <summary>
/// Network-serializable state for a hitscan line to be displayed on radar.
/// </summary>
[Serializable, NetSerializable]
public sealed class HitscanLineState
{
    public NetEntity? Grid;
    public Vector2 Start;
    public Vector2 End;
    public float Thickness;
    public Color Color;
}
