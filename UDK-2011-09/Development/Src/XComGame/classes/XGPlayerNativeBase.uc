/*******************************************************************************
 * XGPlayerNativeBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XGPlayerNativeBase extends Actor
    hidecategories(Navigation)
    native(Core)
    notplaceable;



simulated event bool FromNativeCheckForEndTurn(XGUnitNativeBase kUnit)
{
   
}

simulated function bool CheckForEndTurn(XGUnit kUnit)
{
    //return ReturnValue;    
}

// Export UXGPlayerNativeBase::execIsEnemy(FFrame&, void* const)
native simulated function bool IsEnemy(XGPlayerNativeBase kOtherPlayer);

// Export UXGPlayerNativeBase::execIsHumanPlayer(FFrame&, void* const)
native simulated function bool IsHumanPlayer();

simulated function XGUnit GetActiveUnit()
{
    //return ReturnValue;    
}

event XGSquadNativeBase GetNativeSquad()
{
    //return ReturnValue;    
}

event XGSquadNativeBase GetEnemySquad()
{
    //return ReturnValue;    
}