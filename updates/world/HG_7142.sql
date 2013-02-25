USE `world`
-- #169 kopiuje frakcje od entry=900
UPDATE `creature_template` SET `faction_A`='11',`faction_H`='11' WHERE `entry`='3096';
-- # 227 kopiuje frakcje od entry=17936
UPDATE `creature_template` SET `faction_A`='1719',`faction_H`='1719' WHERE `entry`='18036';
-- #234 repeatable
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry`='9142';
-- #275 roz��czam chaina quest�w
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`entry`='10902' OR `entry`='10899' OR `entry`='10897');
-- #238 usuwam nast�pniki z pre-quest�w kt�re powinny by� nieobowi�zkowe
UPDATE `quest_template` SET `NextQuestId`='0' WHERE (`entry`='5066' OR `entry`='5090' OR `entry`='5091' OR `entry`='5093' OR `entry`='5094' OR `entry`='5095' OR `entry`='10373' OR `entry`='10374')
-- #293 wywalam item z wymaga� na wej�cie do scholomance
UPDATE `acces_requirement` SET `item`='0' WHERE `id`='289'
-- i jeszcze jedno, odkryte przypadkiem, npce maj� niewiadomo sk�d buffa spirit bond (i to pojedyncze sztuki)
UPDATE `creature_addon` SET `auras`=NULL WHERE `guid`='518'OR `guid`='69011' OR `guid`='72942' OR `guid`='73192' OR`guid`='77583' OR`guid`='77668'

-- #287 "tryfix" zgaduj� �e winne mo�e by� type=critter ( jedyny critter w grze z kt�rego trzeba co� dropn��)
UPDATE `creature_template` SET `type`='1' WHERE `entry`='23979'
-- powr�t: UPDATE `creature_loot_template` SET `type`='8' WHERE `entry`='23979'

-- #136 analogicznie do alterac ram, dla kt�rego symetrycznie frakcja 1274 z t� sam� nazw�
UPDATE `creature_template` SET `faction_A`='1275',`faction_H`='1275' WHERE `entry`='10981' OR `entry`='22737'