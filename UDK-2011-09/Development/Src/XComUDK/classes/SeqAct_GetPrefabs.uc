class SeqAct_GetPrefabs extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);



var() name PrefabFilter;

var int ObjectsFound;
  
event Activated()
{
    local PrefabInstance curActor;
	local array<SequenceObject> ObjectList;
	local SeqVar_ObjectList SeqVar_ObjectList;

	ObjectsFound=0;
	
	GetLinkedObjects(ObjectList, class'SeqVar_ObjectList', false);

      if (ObjectList.Length > 0)
      {
        SeqVar_ObjectList = SeqVar_ObjectList(ObjectList[0]);

        if (SeqVar_ObjectList != None)
        {
         foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'PrefabInstance', curActor)
        {
            if ( curActor.TemplatePrefab.Name == PrefabFilter)
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
  ObjName="Get Prefabs"
  ObjCategory="Iterators"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty
  VariableLinks(0)=(ExpectedType=class'SeqVar_ObjectList',LinkDesc="Out Objects",bWriteable=true)
  VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Object Count",PropertyName=ObjectsFound,bWriteable=true)
}