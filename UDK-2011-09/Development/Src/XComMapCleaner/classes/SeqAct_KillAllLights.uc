class SeqAct_KillAllLights extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);


var() name ActorFilter;

  
event Activated()
{
    local Light curActor;

         foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'Light', curActor)
        {
            curActor.LightComponent.SetEnabled(false);
        }        
        
      
    
        
    
       ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="Kill All Lights"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty
}