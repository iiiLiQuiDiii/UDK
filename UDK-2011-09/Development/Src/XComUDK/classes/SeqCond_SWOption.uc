
class SeqCond_SWOption extends SequenceCondition
    hidecategories(Object)
    forcescriptorder(true);

var() int	OptionIndex;

event Activated()
{
        
	if(XComGameReplicationInfo(class'Engine'.static.GetCurrentWorldInfo().GRI).m_kGameCore.IsOptionEnabled(EGameplayOption(OptionIndex)))	
       ActivateOutputLink(0);
	else
	   ActivateOutputLink(1);
}


defaultproperties
{
    OutputLinks(0)=(LinkDesc="True")
    OutputLinks(1)=(LinkDesc="False")
   
    ObjName="Second Wave Option"
}