-- TEXT INSERTS
DELETE FROM `creature_text` WHERE `entry`=31306, `groupid`=1, `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(31306, 1, 0, "Knights of the Ebon Blade, prepare for battle!", 12, 0, 100, 1, 0, 0, '');

DELETE FROM `creature_text` WHERE `entry`=31301, 31428;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(31301, 1, 1, "You dare to think you have thwarted my will? That you have broken my plans?", 12, 0, 100, 0, 0, 0, "LK SAY 1"),
(31301, 2, 1, "You have accomplished nothing!", 12, 0, 100, 0, 0, 0, "LK SAY 2"),
(31301, 3, 1, "Your feeble resistance has only hastened your doom.", 12, 0, 100, 0, 0, 0, "LK SAY 3"),
(31301, 4, 1, "So spout your platitudes and flail until you are spent. In the end, you will be mine, and Morbidus will be the harbinger of your death!", 12, 0, 100, 0, 0, 0, "LK SAY 4"),
(31301, 5, 1, "Morbidus, show them what happens to those who defy the will of their king!", 12, 0, 100, 0, 0, 0, "LK SAY 5"),
(31428, 1, 0, "You will pay for what you've done! For the Argent Crusade!", 12, 0, 100, 0, 0, 0, "OLAKIN SAY 1");


-- ScriptName Updates
UPDATE creature_template SET `ScriptName`='npc_margrave_dhakar' WHERE entry=31306;
UPDATE creature_template SET `ScriptName`='npc_morbidus' WHERE `entry`=30698;

-- Template updates for creature 30698 (Morbidus)
UPDATE `creature_template` SET `faction_A`=2102,`faction_H`=2102,`exp`=2,`minlevel`=80,`maxlevel`=80,`unit_flags`=`unit_flags`|832,`speed_run`=0.99206,`VehicleId`=271 WHERE `entry`=30698; -- Morbidus
-- Model data 31176 (creature 30698 (Morbidus))
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=7.5,`gender`=0 WHERE `modelid`=31176; -- Morbidus
-- Addon data for creature 30698 (Morbidus)
DELETE FROM `creature_template_addon` WHERE `entry`=30698;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30698,0,0,1,0, NULL); -- Morbidus
-- Template updates for creature 31306 (Margrave Dhakar)
UPDATE `creature_template` SET `faction_A`=1770,`faction_H`=1770,`npcflag`=`npcflag`|1,`equipment_id`=30954 WHERE `entry`=31306; -- Margrave Dhakar
-- Model data 27558 (creature 31306 (Margrave Dhakar))
UPDATE `creature_model_info` SET `bounding_radius`=0.3825,`combat_reach`=1.875,`gender`=0 WHERE `modelid`=27558; -- Margrave Dhakar
-- Addon data for creature 31306 (Margrave Dhakar)
DELETE FROM `creature_template_addon` WHERE `entry`=31306;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(31306,0,0,1,0, NULL); -- Margrave Dhakar
UPDATE `creature_template` SET `gossip_menu_id`=10060 WHERE `entry`=31306; -- Margrave Dhakar
