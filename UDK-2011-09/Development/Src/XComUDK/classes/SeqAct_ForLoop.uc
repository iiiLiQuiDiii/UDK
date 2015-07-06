class SeqAct_ForLoop extends SequenceAction;

// The number to use as the start of the loop
var() int Start;
// The number to use as the end of the loop
var() int End;
// How much to increment the for loop by. Always use a positive number
var() int Increment;
// Include end when iterating
var() bool IncludeEnd;
// Index output in case it is useful for level designers
var int Index;
// Internal index
var int InternalIndex;
// Has the internal index been set before?
var bool HasSetInternalIndex;

event Activated()
{
  // Check if we have a range to iterate over
  if (Start == End || Increment <= 0)
  {
    
	 ActivateOutputLink(1);
	 return;
  }

  if (!HasSetInternalIndex)
  {
    InternalIndex = Start;
    HasSetInternalIndex = true;
  }

  if (Start < End)
  {
    Index = InternalIndex;

    if (InternalIndex < End || (IncludeEnd && InternalIndex <= End))
    {
      ActivateOutputLink(0);
      InternalIndex += Increment;
    }
    else
    {
      InternalIndex = Start;
	   ActivateOutputLink(1);
    }
  }
  else if (Start > End)
  {      
    Index = InternalIndex;

    if (InternalIndex > End || (IncludeEnd && InternalIndex >= End))
    {
      ActivateOutputLink(0);
      InternalIndex -= Increment;
    }
    else
    {
	 
      InternalIndex = Start;
	  ActivateOutputLink(1);
    }
  }
}

defaultproperties
{
  Increment=1
  InternalIndex=0
  bAutoActivateOutputLinks=false
  HasSetInternalIndex=false
  ObjName="For Loop"
  ObjCategory="Misc"
  InputLinks(0)=(LinkDesc="In")
  OutputLinks(0)=(LinkDesc="Out")
  OutputLinks(1)=(LinkDesc="Done")
  VariableLinks.Empty
  VariableLinks(0)=(ExpectedType=class'SeqVar_Int',LinkDesc="Start",PropertyName=Start)
  VariableLinks(1)=(ExpectedType=class'SeqVar_Int',LinkDesc="End",PropertyName=End)
  VariableLinks(2)=(ExpectedType=class'SeqVar_Int',LinkDesc="Increment",bHidden=true,PropertyName=Increment)
  VariableLinks(3)=(ExpectedType=class'SeqVar_Int',LinkDesc="Index",bWriteable=true,PropertyName=Index)
}