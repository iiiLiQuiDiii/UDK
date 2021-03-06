/*******************************************************************************
 * XGItem generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XGItem extends Actor
    hidecategories(Navigation)
    native(Core)
    abstract
    notplaceable;


var protected XGGameData.EItemType m_eType;
var protected string m_strUIImage;
var bool m_bDamaged;

defaultproperties
{
    RemoteRole=ENetRole.ROLE_SimulatedProxy
    bTickIsDisabled=true
    bAlwaysRelevant=true
}