/*******************************************************************************
 * XComDecoFracLevelActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComDecoFracLevelActor extends XComFracLevelActor
    hidecategories(Navigation)
    native(Level);

var(DecoMesh) StaticMesh m_DecoMesh;
var(DecoMesh) float fRotationLimit;
var(DecoMesh) float fMaxStretch;
var(DecoMesh) float fDecoMeshScale;
var(DecoMesh) bool bRelativeScale;
var(DecoMesh) bool bForceDecoVisible;
var(DecoMesh) bool bEnableDecoMeshes;
var(DebrisMesh) bool bForceDebrisVisible;
var(DebrisMesh) bool bEnableDebrisMeshes;
var(DecoMesh) transient int nFittingIterations;
var(DebrisMesh) StaticMesh m_DebrisWholeMesh;
var(DebrisMesh) array<StaticMesh> m_DebrisHalfMeshes;
var(DebrisMesh) array<XComDestructibleDebrisActor> m_PartialCoverDebrisMeshes;
var(DebrisMesh) float m_CoverDebrisChance;
var int nCachedFragmentsVisible;

defaultproperties
{
    fRotationLimit=360.0
    fMaxStretch=2.0
    fDecoMeshScale=1.50
    bRelativeScale=true
    bEnableDecoMeshes=true
    bEnableDebrisMeshes=true
    nFittingIterations=30
    m_CoverDebrisChance=0.20
    nCachedFragmentsVisible=-1
    FloorComponent=XComFloorComponent'Default__XComDecoFracLevelActor.FloorComponent0'
    begin object name=FracturedStaticMeshComponent0 
        bUseVertexColorDestruction=true
        bUsesDestroyedMaterials=true
    end object
    // Reference: FracturedStaticMeshComponent'Default__XComDecoFracLevelActor.FracturedStaticMeshComponent0'
    FracturedStaticMeshComponent=FracturedStaticMeshComponent0
    Components(0)=DynamicLightEnvironmentComponent'Default__XComDecoFracLevelActor.LightEnvironment0'
    Components(1)=FracturedStaticMeshComponent0
    Components(2)=XComFloorComponent'Default__XComDecoFracLevelActor.FloorComponent0'
    CollisionComponent=FracturedStaticMeshComponent0
}