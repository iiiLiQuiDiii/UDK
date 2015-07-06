/*******************************************************************************
 * XComWorldData generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComWorldData extends Object
    native(Core);

const COVER_North = 0x00000001;
const COVER_South = 0x00000002;
const COVER_East = 0x00000004;
const COVER_West = 0x00000008;
const COVER_NLow = 0x00000010;
const COVER_SLow = 0x00000020;
const COVER_ELow = 0x00000040;
const COVER_WLow = 0x00000080;
const COVER_NPeekLeft = 0x00000100;
const COVER_SPeekLeft = 0x00000200;
const COVER_EPeekLeft = 0x00000400;
const COVER_WPeekLeft = 0x00000800;
const COVER_NPeekRight = 0x00001000;
const COVER_SPeekRight = 0x00002000;
const COVER_EPeekRight = 0x00004000;
const COVER_WPeekRight = 0x00008000;
const COVER_Diagonal = 0x00010000;
const COVER_ClimbOnto_N = 0x00020000;
const COVER_ClimbOnto_S = 0x00040000;
const COVER_ClimbOnto_E = 0x00080000;
const COVER_ClimbOnto_W = 0x00100000;
const COVER_ClimbOver_N = 0x00200000;
const COVER_ClimbOver_S = 0x00400000;
const COVER_ClimbOver_E = 0x00800000;
const COVER_ClimbOver_W = 0x01000000;
const COVER_DIR_ANY = 0x0000000F;
const COVER_LOW_ANY = 0x000000F0;
const WORLD_StepSize = 96.0f;
const WORLD_StepSizeSquared = 9216.0f;
const WORLD_StepSize_2D_Diagonal = 135.7645f;
const WORLD_StepSize_2DZ_Diagonal = 115.3776f;
const WORLD_StepSize_3D_Diagonal = 150.0933f;
const WORLD_HalfStepSize = 48.0f;
const WORLD_FloorHeight = 64.0f;
const WORLD_HalfFloorHeight = 32.0f;
const WORLD_BaseHeight = 24.0f;
const WORLD_PartialRadius = 20.0f;
const WORLD_RampDotMaxThreshold = 0.9848f;
const WORLD_RampDotMinThreshold = 0.7f;
const WORLD_PATHING_ANY_DIR_BLOCKED = 0x0000003F;
const WORLD_VIS_ANY_DIR_BLOCKED = 0x00000FC0;
const WORLD_METERS_TO_UNITS_MULTIPLIER = 64.0f;
const WORLD_UNITS_TO_METERS_MULTIPLIER = 0.015625f;
const DEFAULT_REBUILD_TILE_RATE = 16;
const Cover_BufferDistance = 4.0f;
const Cover_ClimbOverLateralDistance = 64.0f;
const Cover_ClimbOntoLateralDistance = 80.0f;
const Cover_OffsetDistanceFromWall = 40.0f;
const Cover_PeekHeightTolerance = 16.0f;
const Cover_PeekTestHeight = 96.0f;
const Cover_LowCoverHeight = 64.0f;
const Cover_HighCoverHeight = 96.0f;
const Cover_MinClimbOverHeight = 160.0f;
const Cover_ClimbOverHeightTolerance = 8.0f;
const Cover_TraceDensity = 16.0f;
const Cover_BaseNormalDotThreshold = 0.71f;
const Cover_DropDownOffset = 20.0f;
const Cover_DropDownLandingOffset = 4.0f;

enum ECoverDir
{
    eCD_North,
    eCD_South,
    eCD_East,
    eCD_West,
    eCD_MAX
};

enum ETraversalType
{
    eTraversal_None,
    eTraversal_Normal,
    eTraversal_ClimbOver,
    eTraversal_ClimbOnto,
    eTraversal_ClimbLadder,
    eTraversal_DropDown,
    eTraversal_Grapple,
    eTraversal_Landing,
    eTraversal_BreakWindow,
    eTraversal_KickDoor,
    eTraversal_WallClimb,
    eTraversal_JumpUp,
    eTraversal_Ramp,
    eTraversal_BreakWall,
    eTraversal_Unreachable,
    eTraversal_MAX
};

enum EPathType
{
    ePathType_Normal,
    ePathType_PathObject,
    ePathType_Dropdown,
    ePathType_MAX
};

enum ERuntimeRebuildStep
{
    eStep_Idle,
    eStep_Starting,
    eStep_Occupancy,
    eStep_CoverAndBlocking,
    eStep_Interactions,
    eStep_Neighbors,
    eStep_Finished,
    eStep_MAX
};

enum UnitPeekSide
{
    eNoPeek,
    ePeekLeft,
    ePeekRight,
    UnitPeekSide_MAX
};

struct native TTile
{
    var int X;
    var int Y;
    var int Z;

    structdefaultproperties
    {
        X=0
        Y=0
        Z=0
    }
};

struct native XComCoverPoint
{
    var int X;
    var int Y;
    var int Z;
    var Vector TileLocation;
    var Vector CoverLocation;
    var int Flags;

    structdefaultproperties
    {
        X=0
        Y=0
        Z=0
        TileLocation=(X=0.0,Y=0.0,Z=0.0)
        CoverLocation=(X=0.0,Y=0.0,Z=0.0)
        Flags=0
    }
};

struct native ViewerInfo
{
    var int TileX;
    var int TileY;
    var int TileZ;
    var float SightRadius;
    var int SightRadiusRaw;
    var int SightRadiusTiles;
    var int SightRadiusTilesSq;
    var Actor AssociatedActor;
    var Vector PositionOffset;
    var bool bNeedsTextureUpdate;
    var bool bHasSeenXCom;

    structdefaultproperties
    {
        TileX=0
        TileY=0
        TileZ=0
        SightRadius=0.0
        SightRadiusRaw=0
        SightRadiusTiles=0
        SightRadiusTilesSq=0
        AssociatedActor=none
        PositionOffset=(X=0.0,Y=0.0,Z=0.0)
        bNeedsTextureUpdate=false
        bHasSeenXCom=false
    }
};

struct native PathingTraversalData
{
    var int TileX;
    var int TileY;
    var int TileZ;
    var float AStarG_Modifier;
    var Actor PathObject;
    var init array<init XComWorldData.ETraversalType> TraversalTypes;
    var init array<init Vector> Positions;

    structdefaultproperties
    {
        TileX=0
        TileY=0
        TileZ=0
        AStarG_Modifier=0.0
        PathObject=none
        TraversalTypes=none
        Positions=none
    }
};

struct native FloorTileData
{
    var Vector FloorLocation;
    var Vector FloorNormal;
    var Actor FloorActor;
    var Actor FloorVolume;
    var init array<init PathingTraversalData> Neighbors;
    var byte RampDirection;

    structdefaultproperties
    {
        FloorLocation=(X=0.0,Y=0.0,Z=0.0)
        FloorNormal=(X=0.0,Y=0.0,Z=0.0)
        FloorActor=none
        FloorVolume=none
        Neighbors=none
        RampDirection=0
    }
};

struct native VolumeEffectTileData
{
    var int NumTurns;
    var int NumHops;
    var ParticleSystem VolumeEffectParticleTemplate;
    var export editinline ParticleSystemComponent VolumeEffectParticles;
    var int Intensity;

    structdefaultproperties
    {
        NumTurns=0
        NumHops=0
        VolumeEffectParticleTemplate=none
        VolumeEffectParticles=none
        Intensity=0
    }
};

struct native CoverTileData
{
    var Vector CoverLocation;

    structdefaultproperties
    {
        CoverLocation=(X=0.0,Y=0.0,Z=0.0)
    }
};

struct native XComInteractPoint
{
    var Vector Location;
    var Rotator Rotation;
    var XComInteractiveLevelActor InteractiveActor;
    var name InteractSocketName;
    var int ModifyTileStaticFlags;

    structdefaultproperties
    {
        Location=(X=0.0,Y=0.0,Z=0.0)
        Rotation=(Pitch=0,Yaw=0,Roll=0)
        InteractiveActor=none
        InteractSocketName=None
        ModifyTileStaticFlags=0
    }
};

struct native PeekAroundInfo
{
    var int bHasPeekaround;
    var Vector PeekaroundLocation;
    var Vector PeekaroundDirectionFromCoverPt;
    var TTile PeekTile;

    structdefaultproperties
    {
        bHasPeekaround=0
        PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0)
        PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0)
        PeekTile=(X=0,Y=0,Z=0)
    }
};

struct native CoverDirectionPeekData
{
    var PeekAroundInfo LeftPeek;
    var PeekAroundInfo RightPeek;
    var Vector CoverDirection;
    var int bHasCover;

    structdefaultproperties
    {
        LeftPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0))
        RightPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0))
        CoverDirection=(X=0.0,Y=0.0,Z=0.0)
        bHasCover=0
    }
};

// struct native UnitDirectionInfo
// {
    // var XGUnit TargetUnit;
    // var int CoverDirection;
    // var int AdditionalFlags;
    // var XComWorldData.UnitPeekSide PeekSide;
    // var float PeekToTargetDist;
    // var bool bVisible;
    // var bool bVisibleFromDefault;

    // structdefaultproperties
    // {
        // TargetUnit=none
        // CoverDirection=0
        // AdditionalFlags=0
        // PeekSide=UnitPeekSide.eNoPeek
        // PeekToTargetDist=0.0
        // bVisible=false
        // bVisibleFromDefault=false
    // }
// };

struct native CachedVisibilityQueryData
{
    var CoverDirectionPeekData CoverDirectionInfo[4];
    var Vector DefaultVisibilityCheckLocation;
    var TTile DefaultVisibilityCheckTile;
    var int bDefaultTileValid;

    structdefaultproperties
    {
        CoverDirectionInfo[0]=(LeftPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0)),RightPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0)),CoverDirection=(X=0.0,Y=0.0,Z=0.0),bHasCover=0)
        CoverDirectionInfo[1]=(LeftPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0)),RightPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0)),CoverDirection=(X=0.0,Y=0.0,Z=0.0),bHasCover=0)
        CoverDirectionInfo[2]=(LeftPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0)),RightPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0)),CoverDirection=(X=0.0,Y=0.0,Z=0.0),bHasCover=0)
        CoverDirectionInfo[3]=(LeftPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0)),RightPeek=(bHasPeekaround=0,PeekaroundLocation=(X=0.0,Y=0.0,Z=0.0),PeekaroundDirectionFromCoverPt=(X=0.0,Y=0.0,Z=0.0),PeekTile=(X=0,Y=0,Z=0)),CoverDirection=(X=0.0,Y=0.0,Z=0.0),bHasCover=0)
        DefaultVisibilityCheckLocation=(X=0.0,Y=0.0,Z=0.0)
        DefaultVisibilityCheckTile=(X=0,Y=0,Z=0)
        bDefaultTileValid=0
    }
};

// struct native KineticStrikeAttackInfo
// {
    // var Vector AttackDirection;
    // var Engine.Scout.ECoverType DestroyCoverType;
    // var Vector DestroyCoverLocation;
    // var XGUnitNativeBase AttackUnit;
    // var int AttackUnitDeltaZ;

    // structdefaultproperties
    // {
        // AttackDirection=(X=0.0,Y=0.0,Z=0.0)
        // DestroyCoverType=ECoverType.CT_None
        // DestroyCoverLocation=(X=0.0,Y=0.0,Z=0.0)
        // AttackUnit=none
        // AttackUnitDeltaZ=0
    // }
// };

struct native TileData
{
    var FloorTileData FloorData;
    var CoverTileData CoverData;
    var VolumeEffectTileData FireData;
    var VolumeEffectTileData SmokeData;
    var VolumeEffectTileData PoisonData;
    var init array<init XComInteractPoint> InteractPoints;
    var int StaticFlags;
    var int CoverFlags;
    var int Viewers;
    var int DynamicWorldFlags;
    var byte VisibilityFlags;

    structdefaultproperties
    {
        FloorData=(FloorLocation=(X=0.0,Y=0.0,Z=0.0),FloorNormal=(X=0.0,Y=0.0,Z=0.0),FloorActor=none,FloorVolume=none,Neighbors=none,RampDirection=0)
        CoverData=(CoverLocation=(X=0.0,Y=0.0,Z=0.0))
        FireData=(NumTurns=0,NumHops=0,VolumeEffectParticleTemplate=none,VolumeEffectParticles=none,Intensity=0)
        SmokeData=(NumTurns=0,NumHops=0,VolumeEffectParticleTemplate=none,VolumeEffectParticles=none,Intensity=0)
        PoisonData=(NumTurns=0,NumHops=0,VolumeEffectParticleTemplate=none,VolumeEffectParticles=none,Intensity=0)
        InteractPoints=none
        StaticFlags=0
        CoverFlags=0
        Viewers=0
        DynamicWorldFlags=0
        VisibilityFlags=0
    }
};

struct native WorldDataRenderParams
{
    var float FOWNeverSeenAlpha;
    var float FOWHaveSeenAlpha;
    var int WorldDataNumX;
    var int WorldDataNumY;
    var int WorldDataNumZ;

    structdefaultproperties
    {
        FOWNeverSeenAlpha=0.0
        FOWHaveSeenAlpha=0.0
        WorldDataNumX=0
        WorldDataNumY=0
        WorldDataNumZ=0
    }
};

struct native SmokeEmitter
{
    var native Array_Mirror Tiles;
    var Vector HalfSize;
    var Vector Center;
    var byte VolumeType;
    var ParticleSystem ParticleTemplate;
    var export editinline ParticleSystemComponent Particles;

    structdefaultproperties
    {
        HalfSize=(X=0.0,Y=0.0,Z=0.0)
        Center=(X=0.0,Y=0.0,Z=0.0)
        VolumeType=0
        ParticleTemplate=none
        Particles=none
    }
};

//var private native const noexport Pointer VfTable_FTickableObject;
var transient bool bDisableVisibilityUpdates;
var transient bool bDebugVisibility;
var transient bool bDebugFOW;
var transient bool bEnableFOW;
var transient bool bEnableFOWUpdate;
var transient bool bDebugBlockingTiles;
var transient bool bDebugNormals;
var transient bool bShowCoverNodes;
var transient bool bShowCoverTiles;
var transient bool bShowFloorTiles;
var transient bool bUseIntroFOWUpdate;
var transient bool bDebuggingGenericUpdate;
var transient bool bEnableUnitOutline;
var transient bool bCinematicMode;
var transient bool bFOWTextureBufferIsDirty;
var protected transient bool bUpdatingVisibility;
var transient bool bWorldDataInitialized;
var transient bool bUseSingleThreadedSolver;
var transient bool bInitVolumeEffectsPostLoad;
var bool bUseLineChecksForFOW;
var bool bDrawVisibilityChecks;
var transient bool UpdateBuildHeightTiles;
var transient bool bShowNeverSeenAsHaveSeen;
var transient int CoverDebugFlags;
var Box WorldBounds;
var int NumX;
var int NumY;
var int NumZ;
var int NumTiles;
var transient int NumRebuilds;
var init transient array<init byte> FOWUpdateTextureBuffer;
var transient Double LastFOWTextureUpdateTime;
var deprecated int HFNumX;
var deprecated int HFNumY;
var deprecated int HFNumZ;
var transient int HFNumX_New;
var transient int HFNumY_New;
var transient int HFNumZ_New;
var init transient array<init byte> FOWHeightFogUpdateTextureBuffer;
var transient array<Vector> UpdateCorners;
var transient Box CurrentUpdateBox;
var native const Pointer WorldDataPtr;
var ParticleSystem FireParticleSystemCenter;
var ParticleSystem FireParticleSystemFill;
var ParticleSystem SmokeParticleSystemCenter;
var ParticleSystem SmokeParticleSystemFill;
var ParticleSystem CombatDrugsParticleSystemCenter;
var ParticleSystem CombatDrugsParticleSystemFill;
var ParticleSystem PoisonParticleSystemCenter;
var ParticleSystem PoisonParticleSystemFill;
var init string FireParticleSystemCenter_Name;
var init string FireParticleSystemFill_Name;
var init string SmokeParticleSystemCenter_Name;
var init string SmokeParticleSystemFill_Name;
var init string CombatDrugsParticleSystemCenter_Name;
var init string CombatDrugsParticleSystemFill_Name;
var init string PoisonParticleSystemCenter_Name;
var init string PoisonParticleSystemFill_Name;
var transient DamageFrame DamageFrame;
var transient XComWorldData.ERuntimeRebuildStep RebuildState;
var transient int RebuildIndex;
//var delegate<CanSeeLocationCallback> CurrentCanSeeLocationCallback;
var Object CurrentCanSeeLocationCallbackOwner;
var init transient array<init Actor> Viewers;
var init protected transient array<init ViewerInfo> ViewerInfos;
var init protected transient array<init Actor> DeferredRemoveViewers;
var protected editoronly native Set_Mirror DebugTiles;
var protected native Set_Mirror VolumeEffectUpdateTiles;
var XComLevelVolume Volume;
var float FOWNeverSeen;
var float FOWHaveSeen;
var float LastFloorHeight;
var array<SmokeEmitter> SmokeEmitters;
var transient array<Vector> PotentialFireColumns;
//var delegate<CanSeeLocationCallback> __CanSeeLocationCallback__Delegate;

native function UpdateVisibility(optional bool bLog, optional bool bIncremental);
native static function XComWorldData GetWorldData();
native function BuildWorldData(XComLevelVolume LevelVolume);

native function bool CanSeeActorToLocation(Actor FromActor, const out Vector ToLocation, optional bool bUseLineChecks);

defaultproperties
{
    bDisableVisibilityUpdates=true
    bEnableFOW=true
    bEnableUnitOutline=true
    bFOWTextureBufferIsDirty=true
    FireParticleSystemCenter_Name="FX_WP_Flamethrower.Torch_Volume.P_FlamethrowerCollisionFire_Volume_Center"
    FireParticleSystemFill_Name="FX_Fire_Dynamic.P_Fire_Fill"
    SmokeParticleSystemCenter_Name="FX_WP_SmokeGrenade.Gridded.P_SmokGrenade_Center"
    SmokeParticleSystemFill_Name="FX_WP_SmokeGrenade.Gridded.P_Smoke_Grenade_Fill"
    CombatDrugsParticleSystemCenter_Name="FX_Soldier_Abilities.P_Combat_Drugs_Smoke_Grenade_Center"
    CombatDrugsParticleSystemFill_Name="FX_Soldier_Abilities.P_Combat_Drugs_Fill"
    PoisonParticleSystemCenter_Name="FX_CHA_Thinman.P_Plague_Vapor_Explode"
    PoisonParticleSystemFill_Name="FX_CHA_Thinman.P_Plague_Vapor_Fill"
    LastFloorHeight=-1.0
}