class SeqAct_DetachFromFracLevelActors extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);

var() XComDestructibleActor Target;	

event Activated()
{
    local XComFracLevelActor curActor;
	local DestructibleCacheEntry entry;
	local array<DestructibleCacheEntry> remove_list;
	
	
	
	local int  iii;
	
	
				foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'XComFracLevelActor', curActor)
				{
			
					for (iii=0; iii<curActor.FragmentColumns.length;iii++ )	
					{
						foreach curActor.FragmentColumns[iii].DestructibleCache(entry)
						{
							if (entry.DestructibleActor.Name == Target.Name )
								remove_list.AddItem(entry);
						
						}
				
						foreach remove_list(entry)
						{
							curActor.FragmentColumns[iii].DestructibleCache.removeItem(entry);
						}
						remove_list.length = 0;
				
					}
				}

        
      
    
        
    
       ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="Detach From FracLevelActors"
  ObjCategory="XCOM Map Fixes"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Target",PropertyName=Target)
  
}