class SeqAct_HidePodAbductees extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);
  
event Activated()
{
    local XComAlienPod curActor;

         foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'XComAlienPod', curActor)
        {
            curActor.m_bShowCenterpiece = false;
			curActor.HidePodBody();
        }        
        
      
    
        
    
       ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="Hide Pod Abductees"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty
}