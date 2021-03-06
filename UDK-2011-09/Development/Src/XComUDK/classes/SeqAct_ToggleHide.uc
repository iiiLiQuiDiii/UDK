/*******************************************************************************
 * SeqAct_RemoveActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_ToggleHide extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);

var() bool Hidden;
var() Actor Target;


event Activated()
{
	Target.SetHidden(Hidden);
	 ActivateOutputLink(0);
}

defaultproperties
{
    bCallHandler=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Actor",PropertyName=Target)
    ObjName="Toggle Hidden"
}