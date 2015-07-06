

class SeqAct_LoadDynamicObjectSettings extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);


var  bool bHideMeld;
var  bool bHideBomb;
var  bool bHideBombNodes;


event Activated()
{
	local DynamicObjectSettings DynamicObjectSettings;
	
	DynamicObjectSettings = new class'DynamicObjectSettings';
	
	bHideMeld = DynamicObjectSettings.bHideMeld;
	bHideBomb = DynamicObjectSettings.bHideBomb;
	bHideBombNodes = DynamicObjectSettings.bHideBombNodes;
	
	 ActivateOutputLink(0);   
	
}

defaultproperties
{

    bCallHandler=false
	InputLinks(0)=(LinkDesc="In")
    OutputLinks(0)=(LinkDesc="Out")
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Bool',LinkDesc="HideMeld",PropertyName=bHideMeld,bWriteable=true)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Bool',LinkDesc="HideBomb",PropertyName=bHideBomb,bWriteable=true)
	VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Bool',LinkDesc="HideBombNodes",PropertyName=bHideBombNodes,bWriteable=true)
    ObjName="Load Dynamic Object Settings"
}