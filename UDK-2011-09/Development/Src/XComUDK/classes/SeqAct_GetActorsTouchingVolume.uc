class SeqAct_GetActorsTouchingVolume extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);

enum EActorFilterType
{
    FilterByClass,
    FilterByArchetype,
	FilterByLayer,
	FilterByTag,
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
var int ObjectsFound;

 
event Activated()
{
    local Actor curActor;
	local array<SequenceObject> ObjectList;
	local SeqVar_ObjectList SeqVar_ObjectList;
	
	GetLinkedObjects(ObjectList, class'SeqVar_ObjectList', false);

      if (ObjectList.Length > 0)
      {
        SeqVar_ObjectList = SeqVar_ObjectList(ObjectList[0]);

        if (SeqVar_ObjectList != None)
        {
          

         foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'Actor', curActor)
        {
            if(((curActor.IsA(ActorFilter) && ActorFilterType == FilterByClass) || (curActor.ObjectArchetype.Name == ActorFilter && ActorFilterType == FilterByArchetype)|| (curActor.Layer == ActorFilter && ActorFilterType == FilterByLayer)|| (curActor.Tag == ActorFilter && ActorFilterType == FilterByTag)) && ((VolumeName.Encompasses(curActor) && VolumeCollisionType == Encompasses) || (VolumeName.IsOverlapping(curActor) && VolumeCollisionType == Overlaps)))
			{
			  SeqVar_ObjectList.ObjList.AddItem(curActor);
			  ObjectsFound++;
			}
        }        
        }
      }
    
        
    
       ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="All Actors in Volume"
  ObjCategory="Iterators"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty
  VariableLinks(0)=(ExpectedType=class'SeqVar_ObjectList',LinkDesc="Out Objects",bWriteable=true)
  VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Object Count",PropertyName=ObjectsFound,bWriteable=true)
}