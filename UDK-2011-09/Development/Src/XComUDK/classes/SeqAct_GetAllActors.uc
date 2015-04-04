class SeqAct_GetAllActors extends SequenceAction
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


var() name ActorFilter;
var() EActorFilterType ActorFilterType;

var int ObjectsFound;
  
event Activated()
{
    local Actor curActor;
	local array<SequenceObject> ObjectList;
	local SeqVar_ObjectList SeqVar_ObjectList;

	
	ObjectsFound=0;
	
	GetLinkedObjects(ObjectList, class'SeqVar_ObjectList', false);

      if (ObjectList.Length > 0)
      {
        SeqVar_ObjectList = SeqVar_ObjectList(ObjectList[0]);

        if (SeqVar_ObjectList != None)
        {
          

         foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'Actor', curActor)
        {
            if ((curActor.IsA(ActorFilter) && ActorFilterType == FilterByClass) || (curActor.ObjectArchetype.Name == ActorFilter && ActorFilterType == FilterByArchetype)|| (curActor.Layer == ActorFilter && ActorFilterType == FilterByLayer)|| (curActor.Tag == ActorFilter && ActorFilterType == FilterByTag))
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
  ObjName="All Actors"
  ObjCategory="Iterators"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty
  VariableLinks(0)=(ExpectedType=class'SeqVar_ObjectList',LinkDesc="Out Objects",bWriteable=true)
  VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Object Count",PropertyName=ObjectsFound,bWriteable=true)
}