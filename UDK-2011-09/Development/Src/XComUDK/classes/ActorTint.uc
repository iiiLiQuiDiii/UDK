/*******************************************************************************
 * XComSquadVisiblePoint generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2013 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ActorTint extends Actor
    config(Tints);

struct RGB
{
	var int R;
	var int G;
	var int B;
};

var config array<RGB> Tint;

var config array<RGB> Car;
var config array<RGB> TaxiUS;
var config array<RGB> PoliceUS;
var config array<RGB> Truck;
var config array<RGB> DeliveryVan;
var config array<RGB> Bus;