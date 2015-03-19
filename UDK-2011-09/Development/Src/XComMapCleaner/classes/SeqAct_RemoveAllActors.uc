class SeqAct_RemoveAllActors extends SequenceAction
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
    local Actor curActor;

         foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'Actor', curActor)
        {
            if( (curActor.IsA(ActorFilter) && ActorFilterType == FilterByClass) || (curActor.ObjectArchetype.Name == ActorFilter && ActorFilterType == FilterByArchetype) || (curActor.Layer == ActorFilter && ActorFilterType == FilterByLayer))
			{
			    if(curActor.IsA('Emitter'))
                {
                    Emitter(curActor).ShutDown();
                   
                }
               
                 if(curActor.IsA('KAsset'))
                {
                    KAsset(curActor).ForceDestroy();
                    
                }
				
                curActor.SetHidden(true);
                curActor.Destroy();
			}
        }        
        
      
    
        
    
       ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="Remove All Actors"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty
}