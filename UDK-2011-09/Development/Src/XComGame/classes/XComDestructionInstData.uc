/*******************************************************************************
 * XComDestructionInstData generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class XComDestructionInstData extends Object
    native(Core);

struct native DebrisMeshInfo
{
    var int ColumnIdx;
    var export editinline StaticMeshComponent MeshComponent;

    structdefaultproperties
    {
        ColumnIdx=0
        MeshComponent=none
    }
};

struct native DecoFracStats
{
    var int nDecoInstances;
    var int nDecoComponents;
    var int nDebrisInstances;
    var int nDebrisComponents;
    var int nDebrisSMComponents;

    structdefaultproperties
    {
        nDecoInstances=0
        nDecoComponents=0
        nDebrisInstances=0
        nDebrisComponents=0
        nDebrisSMComponents=0
    }
};

var XComLevelVolume LevelVolume;
var private int MaxJoinKey;
var private native const MultiMap_Mirror DecoFracToDecoComponents;
var private native const MultiMap_Mirror DecoFracToDebrisComponents;
var private native const MultiMap_Mirror DecoFracToDebrisStaticMeshInfos;

