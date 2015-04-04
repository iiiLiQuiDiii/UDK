class SeqAct_GetActorNames extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);



var string Name;
var string ClassName;
var string Archetype;
var string Tag;
var string Layer;

var() Actor TargetActor;

event Activated()
{
        Name		= String(TargetActor.Name);
		ClassName	= String(TargetActor.Class.Name);
		Archetype	= String(TargetActor.ObjectArchetype.Name);
		Tag 		= String(TargetActor.Tag);
		Layer 		= String(TargetActor.Layer);
    
       ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="Get Actor Names"
  
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
 
  VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="TargetActor",PropertyName=TargetActor)
  VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="Name",PropertyName=Name,bWriteable=true)
  VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="ClassName",PropertyName=ClassName,bWriteable=true)
  VariableLinks(3)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="Archetype",PropertyName=Archetype,bWriteable=true)
  VariableLinks(4)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="Tag",PropertyName=Tag,bWriteable=true)
  VariableLinks(5)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="Layer",PropertyName=Layer,bWriteable=true)
}