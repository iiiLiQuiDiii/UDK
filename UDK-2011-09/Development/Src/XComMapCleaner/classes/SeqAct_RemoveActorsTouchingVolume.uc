/*******************************************************************************
 * SeqAct_RemoveActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_RemoveActorsTouchingVolume extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);

enum EActorFilterType
{
    FilterByClass,
    FilterByArchetype,
    EActorFilterType_MAX
};

enum EVolumeCollisionType
{
    Encompasses,
    Overlaps,
    EVolumeCollisionType_MAX
};

var() Volume VolumeName;
var() name ActorFilter;
var() EVolumeCollisionType VolumeCollisionType;
var() EActorFilterType ActorFilterType;
event Activated()
{
    local Actor curActor;

        foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'Actor', curActor)
        {
            if( ((curActor.IsA(ActorFilter) && ActorFilterType == FilterByClass) || (curActor.ObjectArchetype.Name == ActorFilter && ActorFilterType == FilterByArchetype)) && ((VolumeName.Encompasses(curActor) && VolumeCollisionType == Encompasses) || (VolumeName.IsOverlapping(curActor) && VolumeCollisionType == Overlaps)))
			{
			  if(curActor.IsA('Emitter'))
                {
                    Emitter(curActor).ShutDown();
                   
                }
               
                if(curActor.IsA('KAsset'))
                {
                    KAsset(curActor).ForceDestroy();
                    
                }
               

			  // curActor.SetCollisionType(COLLIDE_NoCollision);

			   curActor.SetHidden(true);
               curActor.Destroy();
			}
        }        
    
       
}

defaultproperties
{
    bCallHandler=false
    ObjName="RemoveActorsTouchingVolume"
}