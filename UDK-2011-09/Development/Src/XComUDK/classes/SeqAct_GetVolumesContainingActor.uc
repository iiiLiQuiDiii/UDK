class SeqAct_GetVolumesContainingActor extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);


enum EVolumeCollisionType
{
    Encompasses,
    Overlaps,
    EVolumeCollisionType_MAX
};

var() Actor TargetActor;

var() name ClassFilter;
var() name ArchetypeFilter;
var() name LayerFilter;
var() name TagFilter;

var() EVolumeCollisionType VolumeCollisionType;

var int ObjectsFound;

 
event Activated()
{
    local Volume curActor;
	local array<SequenceObject> ObjectList;
	local SeqVar_ObjectList SeqVar_ObjectList;
	
	GetLinkedObjects(ObjectList, class'SeqVar_ObjectList', false);

      if (ObjectList.Length > 0)
      {
        SeqVar_ObjectList = SeqVar_ObjectList(ObjectList[0]);

        if (SeqVar_ObjectList != None)
        {
          

         foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'Volume', curActor)
        {
            if(( ( ClassFilter == '' ||  curActor.IsA(ClassFilter) ) && (ArchetypeFilter == '' || curActor.ObjectArchetype.Name == ArchetypeFilter ) && ( LayerFilter == '' || curActor.Layer == LayerFilter ) && (TagFilter == '' || curActor.Tag == TagFilter)) && ((curActor.Encompasses(TargetActor) && VolumeCollisionType == Encompasses) || (curActor.IsOverlapping(TargetActor) && VolumeCollisionType == Overlaps)))
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
  ObjName="Get Volumes Containing Actor"
  ObjCategory="Iterators"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty
  VariableLinks(0)=(ExpectedType=class'SeqVar_ObjectList',LinkDesc="Out Objects",bWriteable=true)
  VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Object Count",PropertyName=ObjectsFound,bWriteable=true)
}