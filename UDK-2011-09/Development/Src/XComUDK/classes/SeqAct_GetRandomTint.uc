/*******************************************************************************
 * SeqAct_RemoveActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_GetRandomTint extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);

	
enum ETintGroup
{
    Car,
    Truck,
	TaxiUS,
	PoliceUS,
	DeliveryVan,
	Bus
};
	
var float R;
var float G;
var float B;	

var() ETintGroup TintGroup;

event Activated()
{
	local ActorTint ActorTint;
	local int TintIndex;
	local RGB Tint;
	
	ActorTint = class'WorldInfo'.static.GetWorldInfo().Spawn(class'ActorTint');
	
	switch(TintGroup)
	{
		case Car:
		
			TintIndex = Rand(ActorTint.Car.length);
			Tint = ActorTint.Car[TintIndex];
			break;
		
		case Truck:
		
			TintIndex = Rand(ActorTint.Truck.length);
			Tint = ActorTint.Truck[TintIndex];
			break;
			
		case PoliceUS:
		
			TintIndex = Rand(ActorTint.PoliceUS.length);
			Tint = ActorTint.PoliceUS[TintIndex];
			break;
			
		case TaxiUS:
		
			TintIndex = Rand(ActorTint.TaxiUS.length);
			Tint = ActorTint.TaxiUS[TintIndex];
			break;
		case DeliveryVan:
		
			TintIndex = Rand(ActorTint.DeliveryVan.length);
			Tint = ActorTint.DeliveryVan[TintIndex];
			break;
		case Bus:
		
			TintIndex = Rand(ActorTint.Bus.length);
			Tint = ActorTint.Bus[TintIndex];
			break;
	}
	
		
	
	R = (1.0/255.0)*Tint.R;
	G = (1.0/255.0)*Tint.G;
	B = (1.0/255.0)*Tint.B;
	

	 ActivateOutputLink(0);
}

defaultproperties
{
    bCallHandler=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="R",PropertyName=R,bWriteable=true)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="G",PropertyName=G,bWriteable=true)
	VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="B",PropertyName=B,bWriteable=true)
    ObjName="Get Random Tint Color"
}