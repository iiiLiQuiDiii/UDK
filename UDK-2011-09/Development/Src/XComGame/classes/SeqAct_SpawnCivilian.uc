/*******************************************************************************
 * SeqAct_SpawnCivilian generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_SpawnCivilian extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);

var() bool bEnabled;
var() bool bFemale;
var() bool bUnitFlag;
var() bool bDrawProximityRing;
var() name TemplateName;
var() int iHP;
//var  XGUnit SpawnedUnit;
//var XComCivilian SpawnedPawn;

// event Activated()
// {
    // local SeqVar_Object SpawnObj;
    // local Actor ThisObj;
    // local XComSpawnPoint SpawnPt;
    // local XGUnit kLastUnit;

    
    // if(!bEnabled)
    // {
        // return;
    // }
    
    // foreach LinkedVariables(class'SeqVar_Object', SpawnObj, "SpawnPoints")
    // {
        // ThisObj = Actor(SpawnObj.GetObjectValue());
        // SpawnPt = XComSpawnPoint(ThisObj);
        
        // if(SpawnPt != none)
        // {
            // kLastUnit = XGUnit(SpawnPt.m_kLastActorSpawned);
            
            // if((kLastUnit == none) || !kLastUnit.IsAliveAndWell())
            // {
                // SpawnPt.SnapToGround(32.0);
                // SpawnedUnit = XGAIPlayer_Animal(XGBattle_SP(XComTacticalGRI(GetWorldInfo().GRI).m_kBattle).GetAnimalPlayer()).SpawnCivilian(SpawnPt, bFemale, bUnitFlag);
               
                // if(SpawnedUnit != none)
                // {
                    // SpawnedPawn = XComCivilian(SpawnedUnit.GetPawn());
                    // SpawnedUnit.m_aInventoryStats[0] = iHP - SpawnedUnit.GetUnitMaxHP();
                    // SpawnedUnit.SetUnitHP(iHP);
                    
                    // if((SpawnedPawn != none) && Len(string(TemplateName)) > 0)
                    // {
                        // SpawnedPawn.ApplyTemplate(TemplateName);
                    // }
                    
                    // if((SpawnedUnit.m_kBehavior != none) && SpawnedUnit.m_kBehavior.IsA('XGAIBehavior_Civilian'))
                    // {
                        // XGAIBehavior_Civilian(SpawnedUnit.m_kBehavior).m_bDrawProximityRing = bDrawProximityRing;
                    // }
                    // J0x370:
                // }
                
                // else
                // {
                // }
            // }
            // J0x373:
            
            // continue;
        // }        
    // }    
  
// }

defaultproperties
{
    bEnabled=true
    bUnitFlag=true
    bDrawProximityRing=true
    iHP=3
    bCallHandler=false
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="SpawnPoints")
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Spawned Civilian Unit",PropertyName=SpawnedUnit,bWriteable=true)
    VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Spawned Civilian Pawn",PropertyName=SpawnedPawn,bWriteable=true)
    ObjName="Spawn Civilian"
}