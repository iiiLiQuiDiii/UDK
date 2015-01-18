/*******************************************************************************
 * XComDamageType_NukeBlast generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComDamageType_NukeBlast extends XComDamageType
    hidecategories(Object)
    native(Weapon);

defaultproperties
{
    bCausesFracture=true
    bKRadialImpulse=true
    KDamageImpulse=600000.0
    KDeathUpKick=600000.0
    KImpulseRadius=45000.0
    RadialDamageImpulse=100000.0
    DamagedFFWaveform=ForceFeedbackWaveform'Default__XComDamageType_NukeBlast.ForceFeedbackWaveform0'
    KilledFFWaveform=ForceFeedbackWaveform'Default__XComDamageType_NukeBlast.ForceFeedbackWaveform1'
}