/*******************************************************************************
 * SeqAct_RemoveActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_RemoveCollectables extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);


var() XGGameData.EItemType CollectibleType;

event Activated()
{
    local XComCollectible curActor;

        foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'XComCollectible', curActor)
        {
            
            if(curActor.CollectibleType == CollectibleType)
            {
            
                curActor.SetHidden(true);
                curActor.Destroy();
            }            
        }        
    
       
}

defaultproperties
{
    bCallHandler=false
    ObjName="RemoveCollectables"
}