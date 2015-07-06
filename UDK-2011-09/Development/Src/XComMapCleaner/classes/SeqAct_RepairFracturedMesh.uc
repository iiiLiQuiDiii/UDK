class SeqAct_RepairFracturedMesh extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);

var() XComFracLevelActor Target;	

event Activated()
{
	local int iii;

	for (iii=0; iii<Target.ChunkHealth.length;iii++ )	
	{
		Target.ChunkHealth[iii]=10;

	}

//    Target.ResetHealth();

	//Target.ResetVisibility();
    
//	for (iii=0; iii<Target.FragmentColumns.length;iii++ )	
//	{
//		Target.FragmentColumns[iii].bDestroyed=false;
//		Target.FragmentColumns[iii].bDamaged=false;
//	}

		
//    Target.ResetHealth();

	Target.ResetVisibility();
    
      ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="Repair Fractured Mesh"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Target",PropertyName=Target)
  
}