/*******************************************************************************
 * SeqAct_RemoveActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_GetActorByName extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);


var() name ActorName;

var() Actor foundActor;
event Activated()
{
    local Actor curActor;

  
       
        foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'Actor', curActor)
        {
            
            if(curActor.Name == ActorName)
            {
				foundActor=curActor;
				break;
               
            }            
        }        
    
       ActivateOutputLink(0);
}

defaultproperties
{
    bCallHandler=false
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Actor",PropertyName=foundActor,bWriteable=true)
    ObjName="GetActorByName"
}