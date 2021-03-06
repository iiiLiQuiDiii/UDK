/*******************************************************************************
 * XComDestructibleActor_Action_RadialDamage generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComDestructibleActor_Action_RadialDamage extends XComDestructibleActor_Action within XComDestructibleActor
    hidecategories(Object)
    native(Destruction)
    editinlinenew
    collapsecategories;

var(XComDestructibleActor_Action) float DamageRadius;
var(XComDestructibleActor_Action) float DamageAmount;
var(XComDestructibleActor_Action) class<DamageType> DamageType;
var(XComDestructibleActor_Action) float Momentum;
var(XComDestructibleActor_Action) Vector Offset;
var(XComDestructibleActor_Action) bool bLocalSpace;

defaultproperties
{
    DamageRadius=500.0
    DamageAmount=500.0
    DamageType=class'XComDamageType_Explosion'
    Momentum=3000.0
    bLocalSpace=true
}