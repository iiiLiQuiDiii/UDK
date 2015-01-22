/*******************************************************************************
 * XComSpawnSalvagePoint generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComSpawnSalvagePoint extends Actor
    hidecategories(Navigation)
    placeable;

var() XGGameData.ESalvageType m_eSalvageType;
var() XGGameData.EItemType m_eItemType;

defaultproperties
{
    Components(0)=none
    Components(1)=none
    bMovable=false
    bCollideWhenPlacing=true
}