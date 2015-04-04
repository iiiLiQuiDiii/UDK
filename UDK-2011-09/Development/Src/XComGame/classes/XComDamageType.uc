/*******************************************************************************
 * XComDamageType generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComDamageType extends DamageType
    hidecategories(Object)
    native(Core);

var() bool bCausesFire;
var() bool bDamageUnits;

static function bool CausesSurroundingAreaDamage(class<DamageType> inDamageType);
native static final function bool DealDamage(out DamageEvent InDamageEvent);
defaultproperties
{
    bDamageUnits=true
    KDamageImpulse=400.0
    KDeathUpKick=300.0
    begin object name=ForceFeedbackWaveform0 class=ForceFeedbackWaveform
        Samples=/* Array type was not detected. */
    end object
    // Reference: ForceFeedbackWaveform'Default__XComDamageType.ForceFeedbackWaveform0'
    DamagedFFWaveform=ForceFeedbackWaveform0
    begin object name=ForceFeedbackWaveform1 class=ForceFeedbackWaveform
        Samples=/* Array type was not detected. */
    end object
    // Reference: ForceFeedbackWaveform'Default__XComDamageType.ForceFeedbackWaveform1'
    KilledFFWaveform=ForceFeedbackWaveform1
}