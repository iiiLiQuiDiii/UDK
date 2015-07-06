
class SeqCond_ActorFilter extends SequenceCondition
    hidecategories(Object)
    forcescriptorder(true);

enum EVolumeCollisionType
{
    Encompasses,
    Overlaps
};

var() Volume VolumeName;

var() name ClassFilter;
var() name ArchetypeFilter;
var() name LayerFilter;
var() name TagFilter;

var() EVolumeCollisionType VolumeCollisionType;
var() Actor curActor;
	
	
event Activated()
{
        
    if(( ( ClassFilter == '' ||  curActor.IsA(ClassFilter) ) && (ArchetypeFilter == '' || curActor.ObjectArchetype.Name == ArchetypeFilter ) && ( LayerFilter == '' || curActor.Layer == LayerFilter ) && (TagFilter == '' || curActor.Tag == TagFilter)) && ( VolumeName == none || (VolumeName.Encompasses(curActor) && VolumeCollisionType == Encompasses) || (VolumeName.IsOverlapping(curActor) && VolumeCollisionType == Overlaps)))
	
       ActivateOutputLink(0);
	else
	   ActivateOutputLink(1);
}


defaultproperties
{
    OutputLinks(0)=(LinkDesc="True")
    OutputLinks(1)=(LinkDesc="False")
   
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Actor",PropertyName=curActor)
    ObjName="Actor Filter"
}