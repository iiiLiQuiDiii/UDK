class SeqAct_KillAllSounds extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);

enum EActorFilterType
{
    FilterByClass,
    FilterByArchetype,
	FilterByLayer,
    EActorFilterType_MAX
};



var() name ActorFilter;
var() EActorFilterType ActorFilterType;


  
event Activated()
{
    local AmbientSound curActor;

         foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'AmbientSound', curActor)
        {
           if( (curActor.IsA(ActorFilter) && ActorFilterType == FilterByClass) || (curActor.ObjectArchetype.Name == ActorFilter && ActorFilterType == FilterByArchetype) || (curActor.Layer == ActorFilter && ActorFilterType == FilterByLayer))
			{
			  curActor.bAutoPlay = false;
			  curActor.bIsPlaying = false;
			  
			}
        }        
        
      
    
        
    
       ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="Kill All Sounds"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty
}