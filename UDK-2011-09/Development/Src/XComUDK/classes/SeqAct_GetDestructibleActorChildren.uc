class SeqAct_GetDestructibleActorChildren extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);


var() XComDestructibleActor Target;

var int ObjectsFound;
  
event Activated()
{

	local array<SequenceObject> ObjectList;
	local SeqVar_ObjectList SeqVar_ObjectList;
	
	`log("ACTIVATED");
	ObjectsFound=0;
	
	GetLinkedObjects(ObjectList, class'SeqVar_ObjectList', false);

      if (ObjectList.Length > 0)
      {
        SeqVar_ObjectList = SeqVar_ObjectList(ObjectList[0]);

        if (SeqVar_ObjectList != None)
        {
			
			while ( ObjectsFound < Target.AffectedChildren.length)
			{
            
				SeqVar_ObjectList.ObjList.AddItem(Target.AffectedChildren[ObjectsFound]);
				`log("FOUND");
				`log(Target.AffectedChildren[ObjectsFound].name);
				ObjectsFound++;
			}        
        }
      }
    
        
    
       ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="Get Destructible Actor Children"
  ObjCategory="Iterators"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty
  VariableLinks(0)=(ExpectedType=class'SeqVar_ObjectList',LinkDesc="Out Objects",bWriteable=true)
  VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Object Count",PropertyName=ObjectsFound,bWriteable=true)
  VariableLinks(2)=(ExpectedType=class'SeqVar_Object',LinkDesc="Target",PropertyName=Target)
}