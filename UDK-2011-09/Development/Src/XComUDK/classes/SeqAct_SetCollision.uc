/*******************************************************************************
 * SeqAct_RemoveActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_SetCollision extends SequenceAction
    hidecategories(Object)
    forcescriptorder(true);


enum ENewBoolValue
{
    UNCHANGED,
    SET_FALSE,
	SET_TRUE,
};


var() ENewBoolValue	bCanStepUpOn;
var() ENewBoolValue	bCollideComplex;		// Ignore Simple Collision on Static Meshes, and collide per Poly.
var() ENewBoolValue	bNoEncroachCheck;
var() ENewBoolValue	bPhysRigidBodyOutOfWorldCheck;
var() ENewBoolValue	bPathColliding;//

var() Actor Target;

event Activated()
{
	
		if (bCanStepUpOn 					!= UNCHANGED)		Target.bCanStepUpOn					  = bCanStepUpOn						==SET_TRUE;
		if (bCollideComplex 				!= UNCHANGED)		Target.bCollideComplex				  = bCollideComplex						==SET_TRUE;
		if (bNoEncroachCheck 				!= UNCHANGED)		Target.bNoEncroachCheck				  = bNoEncroachCheck					==SET_TRUE;
		if (bPhysRigidBodyOutOfWorldCheck 	!= UNCHANGED)		Target.bPhysRigidBodyOutOfWorldCheck  = bPhysRigidBodyOutOfWorldCheck		==SET_TRUE;
		if (bPathColliding 					!= UNCHANGED)		Target.bPathColliding 				  = bPathColliding						==SET_TRUE;


	
	ActivateOutputLink(0);
}

defaultproperties
{
    bCallHandler=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Target",PropertyName=Target)
    ObjName="Set Collision"
}