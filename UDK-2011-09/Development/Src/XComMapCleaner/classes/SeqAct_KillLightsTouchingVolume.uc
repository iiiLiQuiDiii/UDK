/*******************************************************************************
 * SeqAct_RemoveActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_KillLightsTouchingVolume extends SequenceAction
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
    local Light curActor;

        foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'Light', curActor)
        {
            if( ((curActor.IsA(ActorFilter) && ActorFilterType == FilterByClass) || (curActor.ObjectArchetype.Name == ActorFilter && ActorFilterType == FilterByArchetype)) && ((VolumeName.Encompasses(curActor) && VolumeCollisionType == Encompasses) || (VolumeName.IsOverlapping(curActor) && VolumeCollisionType == Overlaps)))
			{
				curActor.LightComponent.SetEnabled(false);
			}
        }        
    
       ActivateOutputLink(0);
}

defaultproperties
{
    bCallHandler=false
    ObjName="Kill Lights Touching Volume"
}