/*******************************************************************************
 * XComDestructibleActor_Action_SwapStaticMesh generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComDestructibleActor_Action_SwapStaticMesh extends XComDestructibleActor_Action within XComDestructibleActor
    hidecategories(Object)
    native(Destruction)
    editinlinenew
    collapsecategories;

enum EMaterialOverrideMode
{
    OVERRIDE_Keep,
    OVERRIDE_Remove,
    OVERRIDE_MAX
};

var(XComDestructibleActor_Action) export editinline StaticMeshCue MeshCue;
var(XComDestructibleActor_Action) bool bDisableCollision;
var(XComDestructibleActor_Action) bool bRemoveLightmap;
var(XComDestructibleActor_Action) XComDestructibleActor_Action_SwapStaticMesh.EMaterialOverrideMode MaterialOverrideMode;

// Export UXComDestructibleActor_Action_SwapStaticMesh::execActivate(FFrame&, void* const)
native function Activate();

defaultproperties
{
    MaterialOverrideMode=EMaterialOverrideMode.OVERRIDE_Remove
}