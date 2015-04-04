class SeqAct_ExplodeIt extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);


var() Vector Location;
var() int Radius;
var() int Damage;
var() int WorldDamage;
var() class<XComDamageType> DamageTypeClass;

  
event Activated()
{

    local DamageEvent ProjDamage;
 
    local XComProjectile kProjectile;
	
	kProjectile = class'WorldInfo'.static.GetWorldInfo().Spawn(class'XComProjectile_Melee', , , , , , true);
        

    kProjectile.MakeThisADamageProjectile(WorldDamage, Radius,Damage);

    ProjDamage.DamageCauser = kProjectile;
    ProjDamage.DamageAmount = Damage;
    ProjDamage.Radius = Radius;
    

    ProjDamage.DamageType = DamageTypeClass;
    ProjDamage.Momentum = vect(0.0, 0.0, 0.0);
    ProjDamage.HitLocation = Location;
    ProjDamage.bIsHit = true;
    ProjDamage.bRadialDamage = Radius > 0;
    ProjDamage.bCausesSurroundingAreaDamage = class'XComDamageType'.static.CausesSurroundingAreaDamage(ProjDamage.DamageType);
    class'XComDamageType'.static.DealDamage(ProjDamage);
    kProjectile.Destroy();

       ActivateOutputLink(0);
}

defaultproperties
{
  DamageTypeClass=class'XComDamageType_Explosion'
  ObjName="Explode It!"
  ObjCategory=""
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks.Empty

  VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Vector',LinkDesc="Location",PropertyName=Location)
}