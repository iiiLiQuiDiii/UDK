/*******************************************************************************
 * XComDestructibleActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComDestructibleActor extends XComLevelActor
    hidecategories(Navigation)
    implements(Destructible)
    native(Destruction);

const DestructibleActorDamagedThreshold = 0.75;

struct native DestructibleActorEvent
{
    var() float Time;
    var() int Turns;
    var() export editinline XComDestructibleActor_Action Action;
    var() editoronly string Comment;

    structdefaultproperties
    {
        Time=0.0
        Turns=0
        Action=none
        Comment=""
    }
};

// struct CheckpointRecord
// {
    // var int Health;
    // var int TotalHealth;
    // var DamageEvent LastDamage;
    // var int FirstTurnInState;
    // var float TimeInState;
    // var array<int> DamagedEventActivates;
    // var array<int> DestroyedEventActivates;
    // var array<int> DamageEventTurnToApplyDamages;
    // var name SavedStateName;
    // var string LastDamageClass;
    // var transient bool bDoCameraPan;

    // structdefaultproperties
    // {
        // Health=0
        // TotalHealth=0
        // LastDamage=(DamageAmount=0,EventInstigator=none,HitLocation=(X=0.0,Y=0.0,Z=0.0),Momentum=(X=0.0,Y=0.0,Z=0.0),DamageType=none,HitInfo=(Material=none,PhysMaterial=none,Item=0,LevelIndex=0,BoneName=None,HitComponent=none),DamageCauser=none,bRadialDamage=false,Radius=0.0,bIsHit=false,IgnoredActors=none,Target=none,bDamagesUnits=true,bCausesSurroundingAreaDamage=true,bDebug=false,FilterBox=(Min=(X=0.0,Y=0.0,Z=0.0),Max=(X=0.0,Y=0.0,Z=0.0),IsValid=0),kShot=none)
        // FirstTurnInState=0
        // TimeInState=0.0
        // DamagedEventActivates=none
        // DestroyedEventActivates=none
        // DamageEventTurnToApplyDamages=none
        // SavedStateName=None
        // LastDamageClass=""
        // bDoCameraPan=false
    // }
// };

//var private native const noexport Pointer VfTable_IDestructible;
var transient int Health;
var editinline deprecated array<editinline deprecated XComDestructibleActor_Action> DamagedActions;
var editinline deprecated array<editinline deprecated XComDestructibleActor_Action> DestroyedActions;
var() editinline array<editinline DestructibleActorEvent> DamagedEvents;
var() editinline array<editinline DestructibleActorEvent> DestroyedEvents;
var transient array<DestructibleActorEvent> DamagedEventsChangeBuffer;
var transient array<DestructibleActorEvent> DestroyedEventsChangeBuffer;
var transient bool InEditOperation;
var(Collision) const bool bIgnoreForPathing;
var(Interaction) const bool bInteractive;
var() const bool bDestroysSurroundingArea;
var transient bool bDoCameraPan;
var transient bool bCameraReady;
var transient bool bDestroyBegun;
var transient bool bLoadedFromSave;
var transient bool bCurrentStateRequiresTick;
var() bool bReuseOriginalMeshLightMap;
var transient int DamagedEventsChangeSize;
var transient int DestroyedEventsChangeSize;
var array<int> DamagedEventActivates;
var array<int> DestroyedEventActivates;
var array<int> DamageEventTurnToApplyDamages;
var name SavedStateName;
var() XComDestructibleActor_Toughness Toughness;
var() array<XComDestructibleActor> AffectedChildren;
var transient int TotalHealth;
var DamageEvent LastDamage;
var() array<MaterialInstanceConstant> m_kAOEDamageMaterial;
var transient float TimeInState;
var transient int FirstTurnInState;
var transient int TurnsInState;
var() float TimeBeforeDeath;
var() export editinline DynamicLightEnvironmentComponent LightEnvironment;
var() editconst class<XComDamageType> DestroyedDamageClass;
var const name StateNames[4];
var transient string LastDamageClass;


defaultproperties
{
    Health=1
    bDestroysSurroundingArea=true
    TotalHealth=1
    LastDamage=(DamageAmount=0,EventInstigator=none,HitLocation=(X=0.0,Y=0.0,Z=0.0),Momentum=(X=0.0,Y=0.0,Z=0.0),DamageType=none,HitInfo=(Material=none,PhysMaterial=none,Item=0,LevelIndex=0,BoneName=None,HitComponent=none),DamageCauser=none,bRadialDamage=false,Radius=0.0,bIsHit=false,IgnoredActors=none,Target=none,bDamagesUnits=true,bCausesSurroundingAreaDamage=true,bDebug=false,FilterBox=(Min=(X=0.0,Y=0.0,Z=0.0),Max=(X=0.0,Y=0.0,Z=0.0),IsValid=0),kShot=none)
    TimeBeforeDeath=10.0

	begin object name=MyNEWLightEnvironment class=DynamicLightEnvironmentComponent
        bCastShadows=false
        bUseBooleanEnvironmentShadowing=false
        bDynamic=false
        bEnabled=false
        bForceNonCompositeDynamicLights=true
    end object
    // Reference: DynamicLightEnvironmentComponent'Default__XComDestructibleActor.MyNEWLightEnvironment'
    LightEnvironment=MyNEWLightEnvironment
    DestroyedDamageClass=class'XComDamageType_DestructibleActorClear'
    StateNames[0]=_Pristine
    StateNames[1]=_Damaged
    StateNames[2]=_Destroyed
    StateNames[3]=Dead
    FloorComponent=XComFloorComponent'Default__XComDestructibleActor.FloorComponent0'
    bCanClimbOnto=false
    begin object name=StaticMeshComponent0
        WireframeColor=(R=0,G=255,B=128,A=255)
        ReplacementPrimitive=none
        RBChannel=ERBCollisionChannel.RBCC_GameplayPhysics
        LightingChannels=(bInitialized=true,Static=true,Dynamic=true)
        RBCollideWithChannels=(Default=true,GameplayPhysics=true,EffectPhysics=true,BlockingVolume=true)
    end object
    // Reference: StaticMeshComponent'Default__XComDestructibleActor.StaticMeshComponent0'
    StaticMeshComponent=StaticMeshComponent0
    
    Components(0)=StaticMeshComponent0
    Components(1)=XComFloorComponent'Default__XComDestructibleActor.FloorComponent0'
   
    Components(2)=MyNEWLightEnvironment
    bBlocksNavigation=true
    bProjTarget=true
    bBlocksTeleport=true
    bNoEncroachCheck=true
    bPathColliding=false
   
    CollisionComponent=StaticMeshComponent0
    //SupportedEvents=/* Array type was not detected. */
}