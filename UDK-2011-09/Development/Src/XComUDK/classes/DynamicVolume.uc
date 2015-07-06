
class DynamicVolume extends Volume
	showcategories(Movement,Object)
	placeable;

simulated event PostBeginPlay()
{
	Super.PostBeginPlay();

}

defaultproperties
{
	bStatic=false

	bAlwaysRelevant=true
	bReplicateMovement=true
	bOnlyDirtyReplication=true
	RemoteRole=ROLE_None

	bColored=true
	BrushColor=(R=100,G=255,B=255,A=255)

}
