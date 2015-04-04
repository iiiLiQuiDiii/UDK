class SeqAct_FixGasLeakBug extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);

var() name ArchetypeName;
	
	
event Activated()
{
    local XComFracLevelActor curActor;
	local DestructibleCacheEntry entry;
	local array<DestructibleCacheEntry> remove_list;
	
	local XComDestructibleActor curDestrActor;
	
	local int  iii;
	
	foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'XComDestructibleActor', curDestrActor)
	{
			if(curDestrActor.ObjectArchetype.Name == ArchetypeName)
			{
				foreach class'Engine'.static.GetCurrentWorldInfo().AllActors(class'XComFracLevelActor', curActor)
				{
			
					for (iii=0; iii<curActor.FragmentColumns.length;iii++ )	
					{
						foreach curActor.FragmentColumns[iii].DestructibleCache(entry)
						{
							if (entry.DestructibleActor.Name == curDestrActor.Name )
								remove_list.AddItem(entry);
						
						}
				
						foreach remove_list(entry)
						{
							curActor.FragmentColumns[iii].DestructibleCache.removeItem(entry);
						}
						remove_list.length = 0;
				
					}
				}
			}
    }        
        
      
    
        
    
       ActivateOutputLink(0);
}

defaultproperties
{
  ObjName="Fix Gasleak Bug"
  ObjCategory="XCOM Map Fixes"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  
}