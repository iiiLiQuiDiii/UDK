/*******************************************************************************
 * XComFriendlyDestructibleSkeletalMeshActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComFriendlyDestructibleSkeletalMeshActor extends XComDestructibleSkeletalMeshActor
    hidecategories(Navigation)
    native(Destruction);

defaultproperties
{
    begin object name=SkeletalMeshComponent0
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__XComFriendlyDestructibleSkeletalMeshActor.MyNEWLightEnvironment'
    end object
    // Reference: SkeletalMeshComponent'Default__XComFriendlyDestructibleSkeletalMeshActor.SkeletalMeshComponent0'
    SkeletalMeshComponent=SkeletalMeshComponent0
    LightEnvironment=DynamicLightEnvironmentComponent'Default__XComFriendlyDestructibleSkeletalMeshActor.MyNEWLightEnvironment'
    FloorComponent=XComFloorComponent'Default__XComFriendlyDestructibleSkeletalMeshActor.FloorComponent0'
    begin object name=StaticMeshComponent0
        ReplacementPrimitive=none
    end object
    // Reference: StaticMeshComponent'Default__XComFriendlyDestructibleSkeletalMeshActor.StaticMeshComponent0'
    StaticMeshComponent=StaticMeshComponent0

    Components(0)=StaticMeshComponent0
    Components(1)=XComFloorComponent'Default__XComFriendlyDestructibleSkeletalMeshActor.FloorComponent0'
    Components(2)=DynamicLightEnvironmentComponent'Default__XComFriendlyDestructibleSkeletalMeshActor.MyNEWLightEnvironment'
  
    Components(3)=SkeletalMeshComponent0

    CollisionComponent=SkeletalMeshComponent0
}