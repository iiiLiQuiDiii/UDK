/*******************************************************************************
 * XComFracLevelActorImpactDefinition generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComFracLevelActorImpactDefinition extends Object
    native(Level);

struct native WeaponImpact
{
    var() class<XComDamageType> EffectDamageType;
    var() editinline EffectCue EffectTemplate;

    structdefaultproperties
    {
        EffectDamageType=class'XComDamageType_Bullet'
        EffectTemplate=none
    }
};

struct native MaterialImpact
{
    var() XGGameData.EMaterialType MaterialType;
    var() array<WeaponImpact> WeaponBasedEffects;
    var() StaticMesh EdgeBaseDebrisModel_Large;
    var() editinline EffectCue EffectTemplate;

    structdefaultproperties
    {
        MaterialType=EMaterialType.MaterialType_Default
        WeaponBasedEffects=none
        EdgeBaseDebrisModel_Large=none
        EffectTemplate=none
    }
};

var() array<MaterialImpact> MaterialBasedEffects;
var() EmitterInstanceParameterSet DefaultInstanceParameterSet;
