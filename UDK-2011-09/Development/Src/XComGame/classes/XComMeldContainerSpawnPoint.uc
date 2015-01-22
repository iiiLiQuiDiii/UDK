/*******************************************************************************
 * XComMeldContainerSpawnPoint generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComMeldContainerSpawnPoint extends Actor
    hidecategories(Navigation)
    placeable;

enum EMeldContainerDifficulty
{
    eMeldContainerDifficulty_Easy,
    eMeldContainerDifficulty_Hard,
    eMeldContainerDifficulty_MAX
};

var() const name m_nDisarmedRemoteEvent;
var() const name m_nSelfDestructRemoteEvent;
var() const name m_nDestroyedRemoteEvent;
var() const XComMeldContainerSpawnPoint.EMeldContainerDifficulty m_eDifficulty;
var() const int m_iDestroyedOnTurn;
var() const int m_iSpawnGroup;
var() const bool m_bBeginCountdownWhenSeen;

defaultproperties
{
    m_iDestroyedOnTurn=3
    bTickIsDisabled=true
    bMovable=false
    bCollideWhenPlacing=true
}