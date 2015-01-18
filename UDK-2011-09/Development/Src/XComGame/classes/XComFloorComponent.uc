/*******************************************************************************
 * XComFloorComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComFloorComponent extends ActorComponent
    hidecategories(Object)
    native(Level)
placeable;

var export editinline deprecated MeshComponent OwnerMeshComponent;
var export editinline array<export editinline MeshComponent> OwnerMeshComponents;
var() float FadeDuration;
var float CurrentAlpha;
var float TargetAlpha;
var name AlphaScalar;
var int SimplifiedGeometryModeCounter;
var float CurrentHeight;
var float TargetHeight;
var float TargetHeightSpeed;
var name HeightScalar;
var bool bDoCutoutBoxTest;
var bool bInCinematicMode;
var bool bImmediateUpdate;
var deprecated transient array<deprecated MaterialInstanceConstant> MaterialInstances;


defaultproperties
{
    FadeDuration=0.50
    CurrentAlpha=1.0
    TargetAlpha=1.0
    AlphaScalar=Alpha
    CurrentHeight=99999.0
    TargetHeight=99999.0
    TargetHeightSpeed=99999.0
    HeightScalar=DissolveHeight
}