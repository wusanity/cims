/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.23 : Database - cims
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cims` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cims`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values 
('2',1,'diagrams/releaseAndVerify.png','1','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0Þ\0\0¶\0\0\0äÆ|\0\01üIDATxœíÝ_lÝõ}øk\rÃC›ð´n±vÓ3í_lÄZÑ’›¤OÚVKCàí\";ÚET­C“ÖŸÙD™,“Ö.šZD·Á¬M|e­\nXeé Ì£@S !@æOŠKøcÃò‡Cb\'ŸßÉqwæØŽs|Þçõ9=‡^ŠìãÏ9çsŽ^ÊSÇ‰{2\0\0\0Õ}\0\0\0t;i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0°jµZmbbâÖ[o.ÿ¯¡¡¡ú%ãããÕj5ú:Œ4\0X…z‘Ö´···¥õÝ¹ó¾‡w?2?|óÁ[nùÒÈÈH__ß¦M›ÆÆÆ¢O cHS\0€–ìß¿¿\\.×‹´ž §fçVžÇbëÖ?œœœŒ>q€ M\0.lûöíõÎ|x÷#ŒÒ…óôÞ}W_}õ¶mÛjµZô#\0(4i\n\0°’zUŽŒŒŒŽŽ®*JÎ×î¼³\\.ÏÌÌD?€â’¦\0\0çUïÒM›6·Ý¥ÍŸï­ßÎôôtô((i\n\0p^###é]ÚüáÞzúÉ^€eIS\0€åmß¾=åçx—ÎÎ÷\rG?,€\"’¦\0\0ËØ¿ÿàà`Ž]:?Ÿýìçîºë®èP8Ò\0`õ.}zï¾ÜÓôÐo~êS%?Ö°ˆ4\0Xlbbbxx8÷.Ÿ/|áwìØýŠEš\0,V.—Wû+LWõÆiôC(i\n\0pŽjµÚ××·F]:?7nÜ³gOô(i\n\0pŽ±±±J¥²¦izûwŒŽŽF?P€‘¦\0\0çØ¶mÛ]wÝµ¦iúðîGÊårô(i\n\0pŽ¡¡¡¾ùàš¦é«~êS¥è\nP Ò\0àkôkcÎÑcÇ{{{£(@HS\0€sô÷÷zãÍ5MÓúôôøkÀÿ±\0Î100ð½¤)ÀÅd\'\0œcM©©k\n°,i\n\0pŽJ¥r÷=÷¬iš>öø7nŒ~ \0\"M\0Î±cÇŽ/|á×4Mëé»uëD?P€‘¦\0\0ç˜žž.•Jkš¦[¶lÙµkWô(i\n\0°ØšþOHGïëë«ÕjÑ @¤)\0Àbkú3½_þÊWê7ýŠEš\0,V«ÕJ¥ÒZüvÓ£ÇŽêS¥™™™è‡P,Ò\0`ããã×ßpƒ·L.i\n\0°¼ßùÌgvî¼/Ç.ýÞ6l8zìxô#(i\n\0°¼jµºqãÆ¼þ?¤Ãï©wé«F?,€\"’¦\0\0ç555U¯ÓzO¦wéï|æ3|óÁèPPÒ\0`%û÷ïß°aÃc?‘òs¼õ¾Õ¥\0+¦\0\0P­V¯¾úê[nùÒá÷Ž¬*J;þå¯|eþ§‚£@¡IS\0€«Õjõ4½âŠzjÖƒ³•.½ûž{êÇá\\ÚèÓ(:i\n\0Ðª™™™›nº©¯¯ïw>ó™zy>½wß¢­_rï½ÿïún¨³uëLOOGŸ2@g¦\0\0«S«Õ&&&*•Ê†\rzÎU¿¤Þ¥ãããÕj5ú4:‰4\0HUÏÔèS\0èlÒ\0 UO¿S$±F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0ÐŽñññz‘öööÖ?èïï¯ÿyÙe—MMMEŸ\Z@ç‘¦\0\0í¸ÿþû{–Ø¼yóÄÄDô©ti\n\0ÐŽZ­vé¥—.ìÒ+¯¼²¿¿¿Z­FŸ\Z@ç‘¦\0\0mºùæ›×­[×LÓo¼qtt4ú¤\0:’4\0hßúõëç»ô†n(•JµZ-úŒ\0:’4\0hß£>zÉ%—ÔÓthhÈ¿2h›4\0HrÍ5×Ì§iô‰\0t0i\n\0dff¦ž¦~g@\ni\n\0ªž¦Ñ§\0ÐÙ¬Q\0 @jµÚøøøÈÈH¹\\.•JKq(‰êÏjý¹ó{n€â¦\0@QìÚµ«Nõ.½÷Þ{Þ½ûÕƒOÍÎš|§þ¬ÖŸÛ;wnÝºµþl×5úÛp–4\0âU«ÕJ¥²eË–Co:5{Ê\\œ9üÞáz ÖŸö™™™è—\0Ðí¤)\0¬Þ¥ƒƒƒwßswxªuç<ðÍ6nÜ8==ýB\0ºš4\0‚U*•»ïùÇS³\'MÔ<¼ûá«¯þõèÐÕ¤)\0i×®][¶\\{jöc;_üâŸÞ~ÇmÑ/ {IS\0 L­V+•J‡Þx=<ÌÌÑcnØ°Áog¢HS\0 ÌØØX¥R™«5góÐoµøKP^Ëä2wÜqÛèèhô‹èRÒ\03<<¼ó¾ûh~6_»åí,ûÁéì•Ùì…“Ù³\'³§Íí¸ï‘ÿ|óÃ\'Oeß­eOÖ²ÇNd}œýÝcÏvÛçšW4¹ÌÞ}ßŒ~Q\0]Jš\0aØßL£žžžcYvüLöá\\öþ©ìD–ýÉŸ}©çÇ~rÓµÃoÎf‡Nf‡>Î¦kÙ«sÙ7¾ólãÓøœûQšcÇ?èíí~Q\0]Jš\0aúúúÞ;òöìÜ‰ù©×æ‰ÓÙÉÓg¿4wæìŸÿþà·~þéÏoÿò\\–Ë>œÍÞŸÍªYöÐSÏ5Òô„ÉwêÏjìKèZ¶\0¦‘—Ç›Sÿôø\\vä£ìÔéP­Vÿö«_¿ío¾zè­™ú§³g²Sd}bï³‹®kri\nD±}\0€0Ë¤ééìð‰ìcÙl–:yràŠ+zz>ÑÓÓ{Ýïm]xÅ§÷=#M¥)ð£Äö\0Â4òòXsæ ÷ÈGÙ[G³w?Îž>ðýõë×bÝÿÄåŸùýsÒô©½û]×ä2Òˆbû\0\0a\Zyy´9õO?:“½_;û®éá³ÝOMýò†Oògîò¾Ÿþú?ãã,;v2;qòìÛóÔ¢ëš\\FšQl\0 ÌÒ4­_X¯Óg³Neo}âùé\r¿rÕæßøÍwOfïÔ²wkÙ‘“Y=N{RšJSàGŠí\0„iäåÿ4§¼¹üÜ‹¯<ýüÔžýSï›zü™—Ÿxîà=ùÂwžíÑ}/{ßK?óÒžg_~þ•×ïüû{®¿áú…×5¹Œ4¢Ø>\0@˜Fš~¸p>ÿùm=-øÝë®[tE“ËHS Ší\0„i¤iÕg¤)Åö\0ÂHÓ¢4¢Ø>\0@˜zÍÍ}`Š3Òˆbû\0\0a\Ziú¾)ÎHS Ší\0„‘¦Ei\nD±}\0€04=bŠ3Òˆbû\0\0aÎ¦éé÷LqFšQl\0 Œ4-ÚHS Ší\0„i¤éaSœ‘¦@Û\0ÓHÓwMqFšQl\0 Œ4-ÚHS Ší\0„i¤é;¦8#M(¶\0¦‘¦3¦8#M(¶\0æâ¤éªî¥•ƒÛ;íE×jýF.fÀKS Ší\0„iD×Ûk1où|_ðŠ­Ö³œVn¹õÇ¾vÏÒ²÷ý¢\0º”í\0„©‡ÐéÓo­Å,¼åE÷²ôÓV¬pûç»ä‚§t¾«¬ödò}Þ¢_@—²}\0€0kTY+tiëWL¹ÓÖO©•{\\Ó•¦@AØ>\0@˜Ft½™û´ö.èòW\\ôA+÷ÕÊuWøêùŽ_Õ™çøÔE¿(€.eû\0\0a\Z¡õÆšNëw±ðÈ®µ Ï9¸yÉÒë6?ßÍ®|’áYZx_Ñ/\n KÙ>\0@˜µŽ®UuéŠoT^¸cÏŸK/_¹[yËwíž7i\nD±}\0€0Ä:´vsž¨[æ°æŸ/Yúñ\n®üXVuã+ŸÛZ?cÑ/\n KÙ>\0@˜Fq½¾F3ã‹îbé=6/Yø¥ó}¼ôÆÏÿ®æò÷ÒÊ·~nkñ¤E¿(€.eû\0\0aÖ®²Úˆº6ÒtåKÓtQâ.[ÚÒø‘aû\0\0a\Z¡õƒÜgÑÍÎzÁûZxÀù>^á6W¾ýUÝøùÎyž®Ewý¢\0º”í\0„9ÛZg¦óeo³•;ZxÌüÇÿ÷Ó¹Ë¼èò•ï¢ùÕ^ká-7OcU$ñÙ‹~Q\0]Êö\0Â¬uh-,½óEæ3µÅòJÓóeêÊJS ÓÙ>\0@˜Fb½¶³à\rÏ–._zX÷xÁ¯.{>ùžFúóý¢\0º”í\0„i¤×÷MqFšQl\0 Œ4-ÚHS Ší\0„i¤éASœ‘¦@Û\0ÓHÓWMqFšQl\0 Œ4-ÚHS Ší\0„i¤é+¦8#M(¶\0¦BgÎ¼lŠ3Òˆbû\0\0a¤iÑFšQl\0 L#M_2Åi\nD±}\0€042Åi\nD±}\0€04}Ñg¤)Åö\0ÂHÓ¢4¢Ø>\0@˜Fš¾`Š3Òˆbû\0\0a\ZizÀg¤)Åö\0ÂHÓ¢4¢Ø>\0@˜ÞÞÞj{Ïdß3i\nD±}\0€0¥RéµéoÉž7i\nD±}\0€0CCCÿ±ë®ð3óóâÔ¿\rD¿(€.%M€0Û·oýÃ3Ùs¦óOcY©T¢_@—’¦\0@˜ééé_¨ÕžÌ²gMøož˜˜ˆ~Q\0]Jš\0‘n=k[x•™ññ¿Š~9\0ÝKš\0‘jµZ¹|Õž=ÿ’eûMÔÌÌì(U«ßŽ~9\0ÝKš\0Á¦¦¦¯˜šº?Ëž1ff.—¯šœü‡èÐÕ¤)\0oÏž=õ:Ý¾ýÂ;­Ûfbâ+%]\n„“¦\0@!ÔjµÑÑJ¹üé±±¿˜™y(Ëö™µ›jõ¿ÇÇÿjddËðp¹þqô7@š\0E299Y©üvÿÏô°–úú~jdäÚzFÃ~Hš\0äÀoH!M\0rÐÓã¯U\0í³C\0r MRØ¡\0\09¦\0)ìP\0€HS€v(\0@¤)@\n;\0 Ò …\n\0i\nÂ\0È4Ha‡\0ä@š¤°C\0r MRØ¡\0\09¦\0)ìP\0€HS€v(\0@¤)@\n;\0 Ò …\n\0i\nÂ\0È4Ha‡\0ä@š¤°C\0r MRØ¡\0\09¦\0)ìP\0€HS€v(\0@¤)@\n;\0 Ò …\n\0i\nÂ\0È4Ha‡\0ä@š¤°C\0r MRØ¡\0\09¦\0)ìP\0€HS€v(\0@¤)@\n;\0 Ò …\n\0i\nÂ\0È4Ha‡\0ä@š¤°C\0r MRØ¡\0\09¦\0)ìP\0€HS€v(\0@¤)@\n;\0 Ò …\n\0i\nÂ\0È4Ha‡\0ä@š¤°C\0r MRØ¡\0\09¦\0)ìP\0€HS€v(\0@¤)@\n;\0 Ò …\n\0i\nÂ\0È4Ha‡\0ä@š¤°C\0r MRØ¡\0\0m\Z¯iooïàà`ýƒþþþúŸ—]vÙÔÔTô©ti\n\0Ð¦ûï¿¿g‰Í›7OLLDŸ\Z@‡‘¦\0\0mªÕj—^zéÂ.½òÊ+ûûû«Õjô©ti\n\0Ð¾›o¾yÝºuÍ4½ñÆGGG£O\n óHS\0€$ë×¯ŸïÒn¸¡T*Õjµè3è<Ò\0 É£>zÉ%—ÔÓthhÈ¿2h4\0HuÍ5×Ì§iô‰\0t*i\n\0jff¦ž¦~g@Û¤)\0@êi\Z}\n\0Ì\0\nªV«ŒŒ”ËåR©´ô7ˆÒ†ú3Y>‡‡‡ÇÆÆü’ 8¤)\0PD»víªGT½Kï½÷Þ‡wï~õàÁS³³&}êÏdýùÜ¹sçÖ­[ëÏp=P£¿Õ\0gIS\0 XªÕj¥RÙ²eË¡7š=eÖn¿w¸¨õ§zff&úÛt;i\n\0H½Kï¾çîðlëžyà›lÜ¸qzz:ú›t5i\n\0H¥R¹ûž<5{Ò\\Ìyx÷ÃW_ýëÑß| «IS\0 (víÚµeËµ§f?6¾øÅ?½ýŽÛ¢_@÷’¦\0@!ÔjµR©tè×Ã#­;çè±7lØàW³Q¤)\0Pccc•Jev®ÖœÍC¿Õâ/DYx-ÓöÜqÇm£££Ñ/ KIS\0 †‡‡wÞ÷¯³sÍÏæk·¼e?8½2›½p2{ödöô±¹÷=òŸo~øä©ì»µìÉZöØ‰ì¡³¿{ìùÏnû\\óŠ¦íÙ»ï»ƒƒƒÑ/ KIS\0 ØßÌ¤žžžcYvüLöá\\öþ©ìD–ýÉŸ}©çÇ~rÓµÃoÎf‡Nf‡>Î¦kÙ«sÙ7¾ólãÓø´ëô9vüƒÞÞÞèÐ¥¤)\0P}}}ïy{vîÄüÔkóÄéìäé³_š;söÏð[?ÿ‹¿ôç·y.ËŽÎeÎfïÏfÕ,{è©ç\ZizÂ¤Oý™Œ}\0]Ëö\0\n¡‘—Ç›Sÿôø\\vä£ìÔéP­Vÿö«_¿ío¾zè­™ú§³g²Sd}bï³‹®kÚi\nD±}\0€BX&MOg‡OdïËf³ìÔÉ“W\\ÑÓó‰žžÞë~oëÂ+>½ïi*MNgû\0\0…ÐÈËcÍ™ÿÞ#eoÍÞý8{úÀ÷×¯_ÿ‰u?þ—rä÷ÏIÓ§öî[t]ÓöHS Ší\0B#/6§þéGg²÷kgß5=üq¶û©©_ÞðéOþìÏ]Þ÷Ó_ÿço|œeÇNf\'Nž½âc{žZt]ÓöHS Ší\0ÂÒ4­_X¯Óg³Neo}âùé\r¿rÕæßøÍwOfïÔ²wkÙ‘“Y=N{RšJS ãÙ>\0@!4òòšSÞ\\~îÅWž~~jÏþ©Ç÷M=þÌËO<wð¿ž|á;Ï¿öè¾—¿½ï¥ÇŸyiÏ³/?ÿÊëwþý=×ßpýÂëš¶GšQl\0 \ZiúáÂùüç·õ´àw¯»nÑMÛ#M(¶\0P4­šØ‘¦@Û\0(iZ„‘¦@Û\0(„zÍÍ}`bGšQl\0 \Ziú¾‰i\nD±}\0€B¦Ei\nD±}\0€Bh¤é;Òˆbû\0\0…p6MO¿gbGšQl\0 ¤iFšQl\0 \ZizØÄŽ4¢Ø>\0@!4Òô];Òˆbû\0\0… M‹0Òˆbû\0\0…ÐHÓwLìHS Ší\0B#MgLìHS Ší\0B‹iºè°5\nÚÕÞlëÇ·wÂíÉ‘¦@Û\0(„FG½½Âô,0ÿióÏ•n¹ôÂ•ïnåÚ;~éa9žÏ²7¾ÚGýB\0º”í\0B=ŠNŸ~ë‚Ó<lþƒ•¯µè«‹®»èK­XÕUV8¥V[íù,z€­ŸÒ¢[ˆ~!\0]Êö\0\n¡•pZZ¤-¦Z+iÚz·ñÕÕÞïjoí|OB‹Ïª4ÂÙ>\0@!4\"êÍóÍro\0¾¹ð*K¯¾Â%ç»¯ßŸ<ï¹­|›-žÒZÜþï²·ýB\0º”í\0B#ŸÞheæ\\øçÂ¶ ,ßXùà¥·ßÊ‘ç»ÖùXö$W>~ÅZnõÌWõ(¢_@—²}\0€Bh1íµÙùjsQ‘¶Ww«êºVrwµiÚú§æÒ‡Üb—JS í\0B£ ­<ÍcVø ½ƒ›—Ÿ?bó9¾õk­êÓæÍ.úÒòÒ‰~!\0]Êö\0\n¡ÑN¯¯0Í9ÿñ²×]zü²·pÁ»kãøÖYáZ+ìÿVèâÛYöÂÖOoþ°èÐ¥l\0 Vn§E•Õl³‹“¦-F]îiÚú§+·hëEšQl\0 \ZùôƒæÜ7Ï¹¼Åã—~°ÂU–¼E¹Ò¹­p›+³ÂµV~˜Ë^qÙØÊ‰-<8ú…\0t)Û\0(„³ufº•YxäüÇË^·yá\n´x/«=«ÖYáZ+tòk¹åÛ_ÕsýB\0º”í\0Biº´QW´ÅOÓÖ?½à1->i\nD±}\0€Bh´Ók+Ï‚7_[zü\n·°èKË^·m¿è~[9¸õGw¾Û_íÕç‹~!\0]Êö\0\n¡ÑNß7±#M(¶\0PÒ´#M(¶\0P4=hbGšQl\0 \Ziúª‰i\nD±}\0€B¦Ei\nD±}\0€Bh¤é+&v¤)Åö\0\n¡EgÎ¼lbGšQl\0 ¤iFšQl\0 \Ziú’‰i\nD±}\0€Bh¤é”‰i\nD±}\0€Bh¤é‹&v¤)Åö\0\nAša¤)Åö\0\n¡‘¦/˜Ø‘¦@Û\0(„Fš0±#M(¶\0PÒ´#M(¶\0P½½½ÕöžÉ¾gGšQl\0 J¥ÒkÓß:“=oGšQl\0 †††þc×]ámÖÍóâÔ¿\rD¿€.%M€BØ¾}ûèèžÉž3QóOcY©T¢_@—’¦\0@!LOOüB­öd–=kBfxxóÄÄDôèRÒ\0(Š[ÏÚ^hÝ9ãã=22ý\0º—4\0Š¢V«•ËWíÙó/Y¶ß\\Ì™™Ù=0PªV¿ý\0º—4\0\ndjjjpðŠ©©û³ìsqffæárùªÉÉˆþæ]Mš\0Å²gÏžznßþGáÍÖ\r31ñ•’.ÂIS\0 pjµÚèh¥\\þôØØ_ÌÌ<”eûL¾S­þ÷øø_Œl.×?Žþ†HS\0 ¨&\'\'+•ßîïÿ™òÖ×÷S##×Öë4ú›ðCÒ\0 7~/(@{¤)\0@nzzüå\n ¶\'\0@n¤)@{lO\0€|ÔjµÞÞÞè³\0èHÒ\0 ÓÓÓ¥R)ú,\0:’4\0È‡4h›4\0È‡4h›4\0ÈÇääd¹\\Ž>€Ž$M\0ò!MÚ&M\0ò!MÚ&M\0ò1>>>22}\0Iš\0äcll¬R©DŸ@G’¦\0\0ù¦\0m“¦\0\0ùØ±cÇM7Ý}\0Iš\0äãÖ†è³\0èHÒ\0 Ò mÒ\0 £££Û·o>€Ž$M\0òQ©TÆÆÆ¢Ï #IS\0€|HS€¶IS\0€|HS€¶IS\0€|”ËåÉÉÉè³\0èHÒ\0 Ò mÒ\0 Ò mÒ\0 SSSÑgÐ‘¤)\0@>J¥ÒôôtôY\0t$i\n\0i\nÐ6i\n\0¾¾¾jµ\Z}\0Iš\0ä£§Çß¬\0Úd\0äCš´Í\0ÈA­Vëíí>€N%M\0r0==]*•¢Ï SIS\0€HS€Ò\0 Ò …4\0ÈÁääd¹\\Ž>€N%M\0r MRHS\0€HS€Ò\0 ããã###ÑgÐ©¤)\0@ÆÆÆ*•JôY\0t*i\n\0i\nBš\0ä`ÇŽ7ÝtSôY\0t*i\n\0ƒ[¢Ï SIS\0€HS€Ò\0 £££Û·o>€N%M\0rP©TÆÆÆ¢Ï SIS\0€HS€Ò\0 Ò …4\0ÈA¹\\žœœŒ>€N%M\0r MRHS\0€HS€Ò\0 SSSÑgÐ©¤)\0@J¥ÒôôtôY\0t*i\n\0i\nBš\0ä ¯¯¯Z­FŸ@§’¦\0\09èéñ×*€öÙ¡\0\09¦\0)ìP\0€TµZ­··7ú,\0:˜4\0H5==]*•¢Ï ƒIS\0€TÒ ‘4\0H%MIS\0€T“““år9ú,\0:˜4\0H%MIS\0€TÒ ‘4\0H5>>>22}\0Lš\0¤\Z«T*ÑgÐÁ¤)\0@*i\nHš\0¤Ú±cÇM7Ý}\0Lš\0¤ºµ!ú,\0:˜4\0H%MIS\0€T£££Û·o>€&M\0Ú1>>ÞÓÓÓÛÛ;88Øßßùå—×?½ì²Ë¦¦¦¢O\r óHS\0€vÜÿý=KlÞ¼ybb\"úÔ\0:4\0hG­V»ôÒKvé•W^Ùßß_­V£O\r óHS\0€6Ý|óÍëÖ­k¦é7Þ8::\Z}R\0Iš\0´oýúõÍå-•JµZ-úŒ\0:’4\0hß£>zÉ%—¬[·îWõWý+S€¶IS\0€$×\\sMooï¯ýÚ¯EŸ@“¦\0\0IfffÖ­[·{÷îèè`Ò\0 U©TšžžŽ>€&M€Â©Õjããã###år¹^}K}(m¨?“õçsxxxllÌo¸ŠFš\0Å²k×®zDÕ»ôÞ{ï}x÷îW<5;kÒ§þLÖŸÏ;wnÝºµþ×5ú[\rð¤)\0PÕjµR©lÙ²åÐ‡NÍž2k7‡ß;\\ÔúS=33ým8Kš\0…PïÒÁÁÁ»ï¹;<Ûºgøæ7nô¯d\"¦\0@!T*•»ïùÇS³\'ÍÅœ‡w?|õÕ¿ýÍ¦\0@ìÚµkË–kOÍ~l.þ|ñ‹zû·E¿€n\'M€`µZ­T*zãõðHëÎ9zìÃ\r6LMME¿€®&M€`ccc•Jev®ÖœÍC¿Õâ/DYx-ÓöÜqÇm£££Ñ/ «IS\0 ØðððÎûþuvî£ùÙ|í–·³ì§³Wf³NfÏžÌž>6·ã¾GþóÍŸ<•}·–=YË;‘=ôqöw=ÿÙmŸk^Ñ´={÷}wpp0ú…\0t5i\n\08p`3“zzzŽeÙñ3Ù‡sÙû§²Yö\'ö¥žûÉM×¿9›:™ú8›®e¯ÎeßøÎ³7NãÓ®ÓçØñz{{£_@W“¦\0@°¾¾¾÷Ž¼=;wb~êµyâtvòôÙ/Í9ûç¿?ø­ŸÿÅ_úóÛ¿<—eGç²g³÷g³j–=ôÔs4=aÒ§þLÆ¾€.g\0Á\Zyy¼9õOÏeG>ÊNþáÕjõo¿úõÛþæ«‡Þš©:{&;ÕHÖ\'ö>»èº¦í‘¦@,;\0¶LšžÎŸÈÞ9–ÍfÙ©“\'®¸¢§ç==½×ýÞÖ…W|zß3ÒTš?\Zì \0 X#/5gþz|”½u4{÷ãìéß_¿~ý\'ÖýøO\\þÉ‘ß?\'MŸÚ»oÑuMÛ#MXv\0¬‘—G›Sÿô£3Ùûµ³ïšþ8ÛýÔÔ/oøô\'öç.ïûé¯ÿó7>Î²c\'³\'Ï^ñ±=O-º®i{¤)Ë\0‚-MÓú…õ:ýp6ûàTöÖÑÙ\'žŸÞð+Wmþß|÷döN-{·–9™Õãô±\'¥©4~DØA\0@°F^þOsÊ›ËÏ½øÊÓÏOíÙ?õø¾©ÇŸyù‰çþ×“/|çù×Ý÷ò·÷½ôø3/íyöåç_yýÎ¿¿çú®_x]ÓöHS –\0k¤é‡çóŸßÖÓ‚ß½îºEW4m4bÙA\0@°FšVMìHS –\0“¦Ei\nÄ²ƒ\0€`õ(š›ûÀÄŽ4bÙA\0@°Fš¾obGš±ì \0 ˜4-ÂHS –\0k¤é;Òˆe\0ÁÎ¦éé÷LìHS –\0“¦Ei\nÄ²ƒ\0€`4=lbGš±ì \0 X#Mß5±#MXv\0Lša¤)Ë\0‚5Òô;Òˆe\0Á\Zi:cbGš±ì \0 Xlš^ðÞ—= ½k]ð°À§Bš±ì \0 X£ÇÞ^ëéY`é—V¾âªŽ_ÕamßøZ<?Ñ/ «ÙA\0@°z>ýÖZOó^æ?è9®¸ì§/oÅ\ngÕâù¬ÝóýB\0ºš\0‹JÓVèÒW8ÕVÅ¢›Z¶?/fŽJS 8ì \0 X#ÆÞ\\ë™¿—6î«y•Õ^·•ãÓö}åòüD¿€®f\0Á\ZöÆZÏü½,¼¯å~zö¼Wlñ..ôÓ¼+Ýøù>¾8#MXv\0ìb¦iëÕwÁÎ\\Z›«útá],½»‹Ü¥Òg\0Á\Z%vh­§y/«½»Ö¯¸è€•?¿dþÂ…_jû<ÓŸŸèÐÕì \0 X£Á^_ëiÞËüçô¼W\\ôñ²G^è-ÖÅ7»ì…­Ü×Z<?Ñ/ «ÙA\0@°4]áÂÒ4åÈUuïEîRi\n„³ƒ\0€`ûÁZÏ‚·.Ï¹pÑË^ñ‚—,{ùÊŸ®pç	Yz&Ñ/ «ÙA\0@°³%vfz­gé½,¼d…s˜ÿÒ¢–=þÂ?ÐÛòY]œçdÑýF¿€®f\0ÁBÒtÙOWÎV._Õ§<æ\"×©4bÙA\0@°Fƒ½¶Ö³ð^–½ÇÿMÍ•®Øö=^ð˜¥÷~qž–…wýB\0ºš\0k4Ø÷MìHS –\0“¦Ei\nÄ²ƒ\0€`4=hbGš±ì \0 X#M_5±#MXv\0Lša¤)Ë\0‚5Òô;Òˆe\0ÁêQtæÌË&v¤)Ë\0‚IÓ\"Œ4bÙA\0@°Fš¾dbGš±ì \0 X#M§LìHS –\0k¤é‹&v¤)Ë\0‚IÓ\"Œ4bÙA\0@°Fš¾`bGš±ì \0 X#M˜Ø‘¦@,;\0&M‹0Òˆe\0Áz{{?ªí=“}ÏŽ4bÙA\0@°R©ôÚô·ÎdÏ›À‘¦@,;\0644ô»î\no³nž§þm`` ú…\0t5i\n\0Û¾}ûèèžÉž3QóOcY©T¢_@W“¦\0@°ééé_¨ÕžÌ²gMÈož˜˜ˆ~!\0]Mš\0ñn=k[x¡uçŒÿõÈÈPôK\0èvÒ\0ˆW«ÕÊå«öìù—,Ûo.æÌÌì(U«ßŽ~	\0ÝNš\0…05558xÅÔÔýYöŒ¹833óp¹|Õää?Dó¤)\0P{öì©×éöíÞlÝ0_(éR  ¤)\0P µZmt´R.zlì/ffÊ²}&ß©Vÿ{|ü¯FF¶—ëGÃ~Hš\0…399Y©üvÿÏô·¾¾Ÿ\Z¹¶^§Ñßd€sHS\0€T~)(@\"i\n\0ª§Çß©\0’X£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0©¤)@\"k\0 •4Hd\0¤’¦\0‰¬Q\0€TÒ ‘5\n\0Jš$²F\0RIS€DÖ(\0@*i\nÈ\Z\0H%MY£\0\0í¯iooïàà`ýƒþþþúŸ—]vÙÔÔTô©ti\n\0ÐŽûï¿¿g‰Í›7OLLDŸ\Z@ç‘¦\0\0í¨Õj—^zéÂ.½òÊ+ûûû«Õjô©ti\n\0Ð¦›o¾yÝºuÍ4½ñÆGGG£O\n #IS\0€ö­_¿~¾Ko¸á†R©T«Õ¢Ï #IS\0€ö=úè£—\\rI=M‡††ü+S€¶IS\0€$×\\sÍ|šFŸ@“¦\0\0IfffêiêwÆ\0¤¦\0\0©êi\Z}\n\0Í\Z\0XµZ­611që­·—ÿ×ÐÐPý’±±±™™™èè0Ò\0`êEZÏÑž¼ë®»ü‡½\0-’¦\0\0-™œœÜ´iÓ£t¡R©ä¿íh…4\0¸€Z­V©T–¾/úÅ/þ;wÞ÷ðîGšsË-_Ú²eË¢#‡‡‡«Õjôƒ\0(4i\n\0°’™™™Eo–~áüêÁƒ§fçÎ7‡ß;òµ;ïìïï_øöéþýû£\n@qIS\0€óšžž®We³0‡††VŽÒEzË-_j^···wÏž=Ñ  ¤)\0ÀòjµÚÂ÷Ko¿ãŽ£táÜ{ïÿ«Gió½Sÿy/À²¤)\0ÀòFFFš]ºsç}mtéü<½w___ßüí”Ëåè‡PDÒ\0`‰ï—.œ¾ù`óÖvìØýà\0\nGš\0,cpp°ùïK»t~šÿî´¿¿ßï;XDš\0,6>>Þü¿‹½ñf.izôØñæÿÙ{ÓM7E?D€b‘¦\0\0‹•Ëåæï‰É¥Kççî{î™¿Ù¾¾¾è‡P,Ò\0àÕjµùïBózË´9ŸúÔÍäädô(i\n\0pŽ±±±æÿ¦›o—Öç³ŸýÜüŽŽF?P€‘¦\0\0çØ¶m[^ÿ1ïÒyx÷#ó7¾iÓ¦è\nP Ò\0àCCCóõøÀ7Ì=M_=xpþÆK¥Rô(i\n\0pŽæ¯yzï¾ÜÓ´>ÍÈ\Zý@\nÄN\08GóW¼¼zðàZ¤ióö£(@Ø‰\0\0ç˜OÇï8°iÚÛÛ+M±\0ÎÑü¥¦ï~$÷.=üÞ¿Ú`)i\n\0pŽJ¥2__»óÎÜÓô{Ìßøàà`ô(i\n\0pŽíÛ·Ï×ãÖ­{šÞ~Çó7>22ý@\nDš\0œcjjªù3·GÏ7M¯¾úêù‹~ \0\"M\0+•Jó¹sç}9vió—šÖU«ÕèG	P Ò\0`±ÑÑÑù€Ü°aCŽoœþÎg>3³ÃÃÃÑ X¤)\0ÀbÕjµùÛGo¿ãŽ\\ºô±ÇŸh¾eºÿþè‡P,Ò\0`;vì˜ÏÈÞÞÞôß\"óêÁƒÍÖÝ¶m[ôƒ(i\n\0°¼M›6ÍÇd½*ëmÙv—=v|Ã†\rÍ›š™™‰~d\0…#M\0–7==Ý×××LÊ§÷îk£K½ñf³K{{{\'\'\'£@IS\0€óª—dóˆÖÃòkwÞ¹Ú_Úü9Þº;vD? €‚’¦\0\0+™˜˜h¾w:ÿö>ðÍ[y³ôúnèY@—¬@š\0\\ÀÔÔÔÀÀÀÂÎ¬ê-·|é{,-Ò¯Ýyç–-[\\/[?Ç°2i\n\0paÕjõÖ[oííííYÎÆÏ÷¥‘‘ÿïÀIS\0€VÕ#³R©,› K•Ëå={öDŸ2@g¦\0\0«S«ÕÆÇÇë:88¸(GK¥Òððð]wÝåR€U‘¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0“¦\0\0\0ûÿNqë\\)\0\0\0\0IEND®B`‚',0),
('3',1,'diagrams/releaseAndVerify.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"templateVerify\" name=\"templateVerify\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"å‘å¸ƒè¯„ä»·è¡¨\" activiti:assignee=\"manager\"></userTask>\n    <userTask id=\"usertask2\" name=\"æ•™ç ”å®¤ä¸»ä»»å®¡æ ¸\" activiti:assignee=\"director\"></userTask>\n    <userTask id=\"usertask3\" name=\"é™¢é•¿å®¡æ ¸\" activiti:assignee=\"president\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_templateVerify\">\n    <bpmndi:BPMNPlane bpmnElement=\"templateVerify\" id=\"BPMNPlane_templateVerify\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"778.0\" y=\"111.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"71.0\" width=\"135.0\" x=\"728.0\" y=\"220.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"71.0\" width=\"131.0\" x=\"732.0\" y=\"351.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"71.0\" width=\"131.0\" x=\"730.0\" y=\"500.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"778.0\" y=\"630.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"795.0\" y=\"146.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"795.0\" y=\"220.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"795.0\" y=\"291.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"797.0\" y=\"351.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"797.0\" y=\"422.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"795.0\" y=\"500.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"795.0\" y=\"571.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"795.0\" y=\"630.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values 
('cfg.execution-related-entities-count','false',1),
('next.dbid','60001',25),
('schema.history','create(7.0.0.0)',1),
('schema.version','7.0.0.0',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`TENANT_ID_`) values 
('57503','templateVerify:1:4','57501','57502','startevent1',NULL,NULL,'Start','startEvent',NULL,'2020-04-16 20:53:29.758','2020-04-16 20:53:29.760',2,NULL,''),
('57504','templateVerify:1:4','57501','57502','usertask1','57505',NULL,'å‘å¸ƒè¯„ä»·è¡¨','userTask','manager','2020-04-16 20:53:29.763','2020-04-16 20:53:29.963',200,NULL,''),
('57507','templateVerify:1:4','57501','57502','usertask2','57508',NULL,'æ•™ç ”å®¤ä¸»ä»»å®¡æ ¸','userTask','director','2020-04-16 20:53:29.963',NULL,NULL,NULL,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values 
('57506',NULL,'participant','manager',NULL,'57501'),
('57509',NULL,'participant','director',NULL,'57501');

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values 
('57501','57501','2','templateVerify:1:4','2020-04-16 20:53:29.693',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values 
('57505','templateVerify:1:4','usertask1','57501','57502','å‘å¸ƒè¯„ä»·è¡¨',NULL,NULL,NULL,'manager','2020-04-16 20:53:29.767',NULL,'2020-04-16 20:53:29.957',190,NULL,50,NULL,NULL,NULL,''),
('57508','templateVerify:1:4','usertask2','57501','57502','æ•™ç ”å®¤ä¸»ä»»å®¡æ ¸',NULL,NULL,NULL,'director','2020-04-16 20:53:29.963',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`KEY_`,`TENANT_ID_`,`DEPLOY_TIME_`,`ENGINE_VERSION_`) values 
('1','è¯„ä»·è¡¨å‘å¸ƒä¸Žå®¡æ ¸',NULL,NULL,'','2020-04-14 14:44:56.148',NULL);

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`ENGINE_VERSION_`) values 
('templateVerify:1:4',1,'http://www.activiti.org/test','templateVerify','templateVerify',1,'1','diagrams/releaseAndVerify.bpmn','diagrams/releaseAndVerify.png',NULL,0,1,1,'',NULL);

/*Table structure for table `act_ru_deadletter_job` */

DROP TABLE IF EXISTS `act_ru_deadletter_job`;

CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_deadletter_job` */

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ROOT_PROC_INST_ID_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`IS_MI_ROOT_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`START_TIME_`,`START_USER_ID_`,`LOCK_TIME_`,`IS_COUNT_ENABLED_`,`EVT_SUBSCR_COUNT_`,`TASK_COUNT_`,`JOB_COUNT_`,`TIMER_JOB_COUNT_`,`SUSP_JOB_COUNT_`,`DEADLETTER_JOB_COUNT_`,`VAR_COUNT_`,`ID_LINK_COUNT_`) values 
('57501',1,'57501','2',NULL,'templateVerify:1:4',NULL,'57501',NULL,1,0,1,0,0,1,NULL,'',NULL,'2020-04-16 20:53:29.693',NULL,NULL,0,0,0,0,0,0,0,0,0),
('57502',2,'57501',NULL,'57501','templateVerify:1:4',NULL,'57501','usertask2',1,0,0,0,0,1,NULL,'',NULL,'2020-04-16 20:53:29.756',NULL,NULL,0,0,0,0,0,0,0,0,0);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values 
('57506',1,NULL,'participant','manager',NULL,'57501',NULL),
('57509',1,NULL,'participant','director',NULL,'57501',NULL);

/*Table structure for table `act_ru_integration` */

DROP TABLE IF EXISTS `act_ru_integration`;

CREATE TABLE `act_ru_integration` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `FLOW_NODE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_DATE_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_INT_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_INT_PROC_INST` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_INT_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_INT_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_INT_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_INT_PROC_INST` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_integration` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_suspended_job` */

DROP TABLE IF EXISTS `act_ru_suspended_job`;

CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_suspended_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`,`CLAIM_TIME_`) values 
('57508',1,'57502','57501','templateVerify:1:4','æ•™ç ”å®¤ä¸»ä»»å®¡æ ¸',NULL,NULL,'usertask2',NULL,'director',NULL,50,'2020-04-16 20:53:29.963',NULL,NULL,1,'',NULL,NULL);

/*Table structure for table `act_ru_timer_job` */

DROP TABLE IF EXISTS `act_ru_timer_job`;

CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TIMER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_timer_job` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `tb_class_info` */

DROP TABLE IF EXISTS `tb_class_info`;

CREATE TABLE `tb_class_info` (
  `cid` varchar(9) NOT NULL COMMENT 'è¯¾ç¨‹ç¼–å·ï¼Œå”¯ä¸€æ ‡è¯†',
  `cname` varchar(50) DEFAULT NULL COMMENT 'è¯¾ç¨‹å',
  `uid` varchar(9) DEFAULT NULL COMMENT 'æ•™å¸ˆç¼–å·/ç”¨æˆ·ç¼–å·',
  `type` int(11) DEFAULT NULL COMMENT 'è¯¾ç¨‹ç±»åž‹ï¼Œ1è¡¨ç¤ºè¯¾ç¨‹è¯„ä»·ï¼ˆå«å®žéªŒï¼‰ï¼Œ2è¡¨ç¤ºè¯¾ç¨‹è¯„ä»·ï¼ˆä¸å«å®žéªŒï¼‰ï¼Œ3è¡¨ç¤ºå®žè®­è¯„ä»·',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_class_info` */

insert  into `tb_class_info`(`cid`,`cname`,`uid`,`type`) values 
('c001','æ•°æ®ç»“æž„','u002',1),
('c002','Cè¯­è¨€ç¨‹åºè®¾è®¡','u003',1),
('c003','è®¡ç®—æœºç½‘ç»œæŠ€æœ¯','u004',1),
('c004','æ“ä½œç³»ç»Ÿ',NULL,1),
('c005','è®¡ç®—æœºç»„æˆåŽŸç†',NULL,1),
('c006','ç®—æ³•åˆ†æžä¸Žè®¾è®¡',NULL,1),
('c007','Javaç¨‹åºè®¾è®¡',NULL,1),
('c008','ç¼–è¯‘åŽŸç†',NULL,1),
('c009','è½¯ä»¶å·¥ç¨‹',NULL,1),
('c010','è½¯ä»¶å»ºæ¨¡æŠ€æœ¯',NULL,1),
('c011','éœ€æ±‚å·¥ç¨‹',NULL,1),
('c012','è½¯ä»¶è¿‡ç¨‹ç®¡ç†',NULL,1),
('c013','è½¯ä»¶ä½“ç³»ç»“æž„',NULL,1),
('c014','è½¯ä»¶æ–‡æ¡£å†™ä½œ',NULL,1),
('c015','ä¸­é—´ä»¶æŠ€æœ¯',NULL,1),
('c016','ç½‘ç«™ç¼–ç¨‹',NULL,1),
('c017','ç§»åŠ¨å¹³å°åº”ç”¨ç¨‹åºè®¾è®¡',NULL,1),
('c018','æ•°æ®ä»“åº“åŠæ•°æ®æŒ–æŽ˜',NULL,1),
('c019','è½¯ä»¶è´¨é‡ä¸Žæµ‹è¯•',NULL,1),
('c020','è½¯ä»¶é¡¹ç›®ç®¡ç†',NULL,1);

/*Table structure for table `tb_class_score_info` */

DROP TABLE IF EXISTS `tb_class_score_info`;

CREATE TABLE `tb_class_score_info` (
  `sid` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ç¼–å·ï¼Œå”¯ä¸€æ ‡è¯†',
  `cid` varchar(9) DEFAULT NULL COMMENT 'è¯¾ç¨‹ç¼–å·',
  `score` float DEFAULT NULL COMMENT 'å¾—åˆ†',
  `school_year` varchar(20) DEFAULT NULL COMMENT 'å­¦å¹´',
  `semester` int(11) DEFAULT NULL COMMENT 'å­¦æœŸ',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_class_score_info` */

insert  into `tb_class_score_info`(`sid`,`cid`,`score`,`school_year`,`semester`) values 
(3,'c001',76.25,'2019-2020',2),
(4,'c001',76.25,'2019-2020',1),
(5,'c001',76.25,'2018-2019',2),
(6,'c002',80,'2018-2019',1),
(7,'c001',22,'2020-2021',2);

/*Table structure for table `tb_evaluation_template` */

DROP TABLE IF EXISTS `tb_evaluation_template`;

CREATE TABLE `tb_evaluation_template` (
  `eid` int(11) NOT NULL COMMENT 'æŒ‡æ ‡æ¨¡æ¿ç¼–å·ï¼Œå”¯ä¸€æ ‡è¯†',
  `classification_id` varchar(9) DEFAULT NULL COMMENT 'æŒ‡æ ‡åˆ†ç±»ç¼–å·',
  `indicator_id` varchar(9) DEFAULT NULL COMMENT 'æŒ‡æ ‡ç¼–å·',
  `indicator_name` varchar(50) DEFAULT NULL COMMENT 'æŒ‡æ ‡å†…å®¹',
  `parent_id` varchar(9) DEFAULT NULL COMMENT 'çˆ¶æŒ‡æ ‡ç¼–å·ï¼Œ0ä¸ºä¸€çº§æŒ‡æ ‡',
  `weight` char(10) DEFAULT NULL COMMENT 'æƒé‡',
  `status` int(11) DEFAULT NULL COMMENT 'çŠ¶æ€ï¼Œ0è¡¨ç¤ºæœªå¯ç”¨ã€1è¡¨ç¤ºè¯¾ç¨‹è¯„ä»·ï¼ˆå«å®žéªŒï¼‰ï¼Œ2è¡¨ç¤ºè¯¾ç¨‹è¯„ä»·ï¼ˆä¸å«å®žéªŒï¼‰ï¼Œ3è¡¨ç¤ºå®žè®­è¯„ä»·',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_evaluation_template` */

insert  into `tb_evaluation_template`(`eid`,`classification_id`,`indicator_id`,`indicator_name`,`parent_id`,`weight`,`status`) values 
(1,'c003','i065','æ•™å­¦æŠ€èƒ½','0','40',1),
(2,'c004','i073','ä½œä¸šæ€åº¦','0','30',1),
(3,'c003','i070','æ•™å­¦ç‰¹è‰²','0','30',1),
(4,'c003','i066','æ•™æ€è‡ªç„¶å¤§æ–¹ï¼Œä¸ºäººå¸ˆè¡¨','i065','50',1),
(5,'c003','i067','è¯­è¨€å‡†ç¡®ã€ç®€æ´ã€æµç•…ï¼Œä½¿ç”¨æ™®é€šè¯ï¼Œå£°éŸ³å®äº®ã€æ¸…æ™°','i065','50',1),
(6,'c004','i074','æ€åº¦ç«¯æ­£ï¼Œæ˜Žç¡®ä½œä¸šçš„ç›®çš„ï¼Œé‡è§†ä½œä¸šæ•™å­¦çŽ¯èŠ‚','i073','50',1),
(7,'c004','i075','æ ¹æ®è¯¾ç¨‹çš„æ€§è´¨ä¸Žç‰¹ç‚¹ï¼Œä¸ºå­¦ç”Ÿå¼€åˆ—å¿…è¯»ä¹¦ç›®ï¼Œè¦æ±‚å­¦ç”Ÿåšè¯»ä¹¦ç¬”è®°ã€èµ„æ–™å¡ç‰‡ç­‰','i073','50',1),
(8,'c003','i071','è¯¾å ‚æ•™å­¦ä¸­æ³¨æ„è¿ç”¨æ•™å­¦è‰ºæœ¯ï¼Œåº”ç”¨è‡ªç„¶ã€å¾—ä½“ï¼Œæœ‰ä¸ªäººç‹¬ç‰¹çš„æ•™å­¦é£Žæ ¼','i070','50',1),
(9,'c003','i072','æ•™å­¦å½¢å¼æ–°é¢–ã€ä¸è½ä¿—å¥—ï¼Œèƒ½ä½¿äººè€³ç›®ä¸€æ–°','i070','50',1);

/*Table structure for table `tb_first_index_score` */

DROP TABLE IF EXISTS `tb_first_index_score`;

CREATE TABLE `tb_first_index_score` (
  `fid` int(9) NOT NULL AUTO_INCREMENT COMMENT 'å”¯ä¸€æ ‡è¯†',
  `classification_id` varchar(9) DEFAULT NULL COMMENT 'æŒ‡æ ‡åˆ†ç±»ç¼–å·',
  `first_indicator_id` varchar(9) DEFAULT NULL COMMENT 'ä¸€çº§æŒ‡æ ‡ç¼–å·',
  `score` float DEFAULT NULL COMMENT 'ä¸€çº§æŒ‡æ ‡å¾—åˆ†',
  `cid` varchar(9) DEFAULT NULL COMMENT 'è¯¾ç¨‹ç¼–å·',
  `weight` char(10) DEFAULT NULL COMMENT 'æƒé‡',
  `school_year` varchar(20) DEFAULT NULL COMMENT 'å­¦å¹´',
  `semester` int(11) DEFAULT NULL COMMENT 'å­¦æœŸ',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `tb_first_index_score` */

insert  into `tb_first_index_score`(`fid`,`classification_id`,`first_indicator_id`,`score`,`cid`,`weight`,`school_year`,`semester`) values 
(15,'c003','i065',68.75,'c001','40','2019-2020',2),
(16,'c004','i073',81.25,'c001','30','2019-2020',2),
(17,'c003','i070',81.25,'c001','30','2019-2020',2);

/*Table structure for table `tb_index` */

DROP TABLE IF EXISTS `tb_index`;

CREATE TABLE `tb_index` (
  `iid` varchar(9) DEFAULT NULL COMMENT 'æŒ‡æ ‡ç¼–å·ï¼Œå”¯ä¸€æ ‡è¯†',
  `classification_id` varchar(9) DEFAULT NULL COMMENT 'æŒ‡æ ‡åˆ†ç±»ç¼–å·',
  `indicator_name` varchar(100) DEFAULT NULL COMMENT 'æŒ‡æ ‡å†…å®¹',
  `parent_id` varchar(9) DEFAULT NULL COMMENT 'çˆ¶ç±»ç´¢å¼•ï¼Œ0ä¸ºä¸€çº§æŒ‡æ ‡'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_index` */

insert  into `tb_index`(`iid`,`classification_id`,`indicator_name`,`parent_id`) values 
('i001','c001','æ•™å­¦æ–‡ä»¶','0'),
('i002','c001','æœ‰å®Œå–„çš„å®žè®­è¯¾ç¨‹æ ‡å‡†','i001'),
('i003','c001','æœ‰ç»Ÿä¸€çš„å®žè®­æ•™æï¼ˆè®²ä¹‰æˆ–æŒ‡å¯¼ä¹¦ï¼‰åŠå…¶é…å¥—æ•™å­¦èµ„æ–™','i001'),
('i004','c001','ä¸¥æ ¼æŒ‰ç…§è¯¾ç¨‹æ ‡å‡†é€‰æ‹©å¼€è®¾å®žè®­é¡¹ç›®','i001'),
('i005','c001','å¼€è¯¾å‰åˆ¶å®šå‡ºå®žè®­æ•™å­¦å‘¨åŽ†','i001'),
('i006','c001','å¼€è¯¾å‰ç¼–å†™å®žè®­æ•™å­¦æ•™æ¡ˆ','i001'),
('ioo7','c001','å®žè®­å‡†å¤‡','0'),
('ioo8','c001','ç†Ÿæ‚‰ä¸Žæœ¬å®žè®­æœ‰å…³çš„ä¼äº‹ä¸šå•ä½çš„ç”Ÿäº§ã€ç®¡ç†ã€ç»è¥ã€å»ºè®¾å’Œå‘å±•å®žé™…','ioo7'),
('i009','c001','ç†Ÿæ‚‰ç”Ÿäº§è¿‡ç¨‹çš„å„ä¸ªçŽ¯èŠ‚,èƒ½åŠæ—¶å‘çŽ°é—®é¢˜ï¼Œå¹¶æå‡ºè§£å†³é—®é¢˜çš„æ–¹æ³•','ioo7'),
('i010','c001','æ‰€éœ€åœºåœ°æ¡ä»¶ã€è®¾å¤‡å™¨æã€è€—ææ•°é‡ã€è´¨é‡æ»¡è¶³å®žè®­è¦æ±‚','ioo7'),
('i011','c001','æ ¡å¤–å®žè®­äº¤é€šã€é£Ÿå®¿ã€å®‰å…¨ã€å«ç”Ÿæ¡ä»¶æœ‰ä¿éšœ','ioo7'),
('i012','c001','å®žè®­è¿‡ç¨‹','0'),
('i013','c001','å®žè®­ç»„ç»‡ä¸¥å¯†ï¼ŒçŽ¯èŠ‚ç´§å‡‘ã€è¡”æŽ¥æ€§å¥½ï¼Œæ—¶é—´åˆ†é…åˆç†ï¼Œæ•ˆçŽ‡é«˜','i012'),
('i014','c001','å®žè®­å†…å®¹å……å®žï¼Œç›®æ ‡ä»»åŠ¡æ˜Žç¡®ï¼Œå­¦ç”Ÿæœ‰å……åˆ†åŠ¨æ‰‹ç»ƒä¹ çš„æœºä¼šï¼Œèƒ½æ˜¾è‘—æé«˜å­¦ç”Ÿçš„å®žè·µæ“ä½œå’Œåº”ç”¨èƒ½åŠ›','i012'),
('i015','c001','æŒ‡å¯¼æ•™å¸ˆåœ¨å®žè®­è¿‡ç¨‹ä¸­,åº”å……åˆ†å‘æŒ¥å­¦ç”Ÿçš„ä¸»è§‚èƒ½åŠ¨æ€§,ç²¾å¿ƒæ£€æŸ¥ã€è€å¿ƒæŒ‡å¯¼ã€ä¸¥æ ¼è¦æ±‚','i012'),
('i016','c001','æŒ‰è¦æ±‚é«˜è´¨é‡å®Œæˆå„é¡¹å®žè®­ä»»åŠ¡','i012'),
('i017','c001','æ³¨é‡å¯¹å­¦ç”Ÿçš„å®žè·µåŠ¨æ‰‹èƒ½åŠ›ã€ç‹¬ç«‹å·¥ä½œèƒ½åŠ›ã€åˆ†æžå’Œè§£å†³å®žé™…é—®é¢˜èƒ½åŠ›ã€ç¤¾ä¼šäº¤å¾€èƒ½åŠ›ã€è‡ªæˆ‘çº¦æŸç­‰èƒ½åŠ›çš„åŸ¹å…»','i012'),
('i018','c001','å®žè®­æŠ¥å‘Š','0'),
('i019','c001','å®žè®­æŠ¥å‘Šæ’°å†™è®¤çœŸï¼Œæ•°æ®çœŸå®žã€å¤„ç†æ­£ç¡®ï¼Œå¯¹å®žè®­ç»“æžœå’Œé—®é¢˜è¿›è¡Œè®¤çœŸåˆ†æžï¼Œå®žè®­æŠ¥å‘Šæ•´æ´è§„èŒƒ','i018'),
('i020','c001','æ‰¹æ”¹è®¤çœŸï¼Œå‡†ç¡®æ— è¯¯ã€æœ‰æ‰¹è¯­ã€æœ‰è¦æ±‚ï¼Œå®žè®­æˆç»©åˆ†å¸ƒåˆç†ï¼ŒçœŸå®žæœ‰æ•ˆ','i018'),
('i021','c001','æ€»ç»“è€ƒæ ¸','0'),
('i022','c001','æ•™å¸ˆåŠæ—¶æŸ¥é˜…å­¦ç”Ÿå®žè®­æ—¥å¿—ã€è®°å½•ï¼ŒæŒ‰æ—¶æ”¶äº¤ã€è¯„é˜…å­¦ç”Ÿå®žè®­æŠ¥å‘Š','i021'),
('i023','c001','æœ‰ç§‘å­¦çš„æˆç»©è¯„å®šä¾æ®å’Œè¯„åˆ†åŠžæ³•ï¼Œçªå‡ºåº”ç”¨èƒ½åŠ›åŸ¹å…»ç‰¹ç‚¹','i021'),
('i024','c001','è€ƒæ ¸æ–¹å¼çµæ´»å¤šæ ·ï¼Œè¿‡ç¨‹è€ƒæ ¸ä¸Žç»“æžœè€ƒæ ¸ç›¸ç»“åˆ','i021'),
('i025','c001','èµ„æ–™å½’æ¡£','0'),
('i026','c001','åŠæ—¶è®¤çœŸå¡«å†™å„ç§å®žè®­æ•™å­¦èµ„æ–™ï¼Œèµ„æ–™å®Œæ•´ã€å†…å®¹è¯¦å®žã€å·¥æ•´è§„èŒƒ','i025'),
('i027','c001','å®šæœŸåšå¥½å„ç±»å®žè®­æ•™å­¦èµ„æ–™çš„å½’ç±»æ•´ç†ï¼ŒæŒ‰æ—¶æŠ¥é€ï¼ŒåŠæ—¶å½’æ¡£','i025'),
('i028','c002','å·¥ä½œå‡†å¤‡','0'),
('i029','c002','æœŸæœ«è€ƒæ ¸æ•™å­¦å·¥ä½œè§„èŒƒã€è¯¾ç¨‹æ ‡å‡†ã€æŒ‡å¯¼ä¹¦åŠå‚è€ƒèµ„æ–™ã€è€ƒæ ¸è¯„ä»·æ ‡å‡†çš„å®žæ–½æ–‡ä»¶é…å¥—é½å…¨','i028'),
('i030','c002','ç†Ÿæ‚‰ç§‘ç ”ã€ç”Ÿäº§ä¸€çº¿å·¥ä½œå®žé™…ï¼Œæ»¡è¶³æœŸæœ«è€ƒæ ¸è¦æ±‚','i028'),
('i031','c002','å®žæ–½è¿‡ç¨‹','0'),
('i032','c002','é¢˜ç›®é¡»ç¬¦åˆæœ¬é—¨è¯¾ç¨‹æ•™å­¦è¦æ±‚ï¼Œç»“åˆç§‘ç ”ã€æ•™å­¦å’Œç”Ÿäº§å®žé™…è¿›è¡Œé€‰é¢˜','i031'),
('i033','c002','ç¡®ä¿æ¯ä½å­¦ç”Ÿåœ¨å®Œæˆè¿‡ç¨‹ä¸­èŽ·å¾—å¿…è¦çš„ä¸“ä¸šè®­ç»ƒï¼Œå…¨é¢æé«˜å­¦ç”Ÿçš„èƒ½åŠ›','i031'),
('i034','c002','åœ¨è¯¾ç¨‹è€ƒæ ¸çš„è¿‡ç¨‹ä¸­ï¼Œæ³¨é‡å‘æŒ¥å­¦ç”Ÿçš„ä¸»åŠ¨æ€§å’Œåˆ›é€ æ€§ï¼Œä½¿å­¦ç”Ÿèƒ½ç‹¬ç«‹å®Œæˆä»»åŠ¡','i031'),
('i035','c002','è€ƒæ ¸æŠ¥å‘Šä¹¦å†™è§„èŒƒã€æ–‡å­—é€šé¡ºã€å›¾è¡¨æ¸…æ™°ã€æ•°æ®å®Œæ•´ã€ç»“è®ºæ˜Žç¡®','i031'),
('i036','c002','æˆç»©è¯„å®š','0'),
('i037','c002','æœ‰è¯„åˆ†æ ‡å‡†ï¼Œè¯„åˆ†æ ‡å‡†å…·ä½“ã€æ˜Žç¡®ã€å‘¨å¯†ï¼Œå¯æ“ä½œæ€§å¼º','i036'),
('i038','c002','èƒ½ä¸¥æ ¼æŒ‰ç…§è¯„åˆ†æ ‡å‡†è¿›è¡Œé˜…å·ï¼›è¯„åˆ†å®¢è§‚å…¬æ­£ï¼Œæ ¸åˆ†å‡†ç¡®æ— è¯¯ï¼›æœ‰å¤è¯„å¤æŸ¥è®°å½•','i036'),
('i039','c002','æŒ‰è§„å®šæ—¶é—´å’Œè¦æ±‚å½•å…¥æˆç»©ï¼Œæˆç»©ç™»è®°å‡†ç¡®ï¼Œå¡«å†™è§„èŒƒã€å®Œæ•´','i036'),
('i040','c002','æå‡ºçš„æ”¹è¿›å­¦ä¹ ã€æé«˜æ•™å­¦è´¨é‡çš„æŽªæ–½å¾—åŠ›ï¼Œå¯æ“ä½œæ€§å¼º','i036'),
('i041','c002','æ€»ç»“å½’æ¡£','0'),
('i042','c002','æœŸæœ«è€ƒæ ¸ç»“æŸåŽï¼Œå¯¹æœŸæœ«è€ƒæ ¸ä¸­çš„æƒ…å†µè¿›è¡Œå…¨é¢æ€»ç»“','i041'),
('i043','c002','è€ƒæ ¸è¿‡ç¨‹ä¸­çš„å„é¡¹èµ„æ–™ä¿å­˜å®Œæ•´ï¼Œå½’æ¡£åŠæ—¶','i041'),
('i044','c003','æ•™å­¦æ€åº¦','0'),
('i045','c003','åœ¨å“å¾·ã€è¨€è¡Œã€ä¸¾æ­¢ã€ä½œé£Žä¸Šèƒ½ä¸ºäººå¸ˆè¡¨ï¼Œèƒ½ä»¥å­¦ç”Ÿä¸ºæœ¬ï¼Œå°Šé‡å­¦ç”Ÿï¼Œå¯¹å­¦ç”Ÿçš„å­¦ä¹ ä½“çŽ°äººæœ¬å…³æ€€','i044'),
('i046','c003','å¤‡è¯¾è®¤çœŸï¼Œè®²è¯¾ç†Ÿç»ƒã€ç²¾ç¥žé¥±æ»¡ã€‚æ•™æ¡ˆè®²ç¨¿è§„èŒƒã€æœ‰ç‰¹è‰²ã€è´¨é‡é«˜','i044'),
('i047','c003','æ•™å­¦ç›®æ ‡','0'),
('i048','c003','è®²æŽˆæ–°è¯¾å‰èƒ½å‡†ç¡®ã€ç®€æ˜Žæ‰¼è¦åœ°å‘å­¦ç”Ÿå±•ç¤ºæœ¬æ•™å­¦å•å…ƒçš„çŸ¥è¯†ç›®æ ‡ï¼Œæ˜Žç¡®å­¦ç”Ÿåº”æŽŒæ¡çš„çŸ¥è¯†ç‚¹','i047'),
('i049','c003','åœ¨è®²æŽˆæ–°è¯¾å‰ï¼Œèƒ½ä½¿å­¦ç”Ÿæ˜Žç¡®åœ¨æœ¬ç« èŠ‚çš„æ•™å­¦ä¸­ï¼Œåº”åŸ¹å…»å“ªäº›èƒ½åŠ›ï¼Œä¸Šè¯¾å‰åšå¥½è¿™äº›æ•™å­¦ç›®æ ‡çš„å±•ç¤º','i047'),
('i050','c003','æ•™å­¦å†…å®¹','0'),
('i051','c003','åšæŒç«‹å¾·æ ‘äººï¼Œç»“åˆæ•™å­¦å†…å®¹ï¼Œæ•™è‚²å­¦ç”Ÿæ ‘ç«‹æ­£ç¡®çš„ä¸–ç•Œè§‚å’Œäººç”Ÿè§‚ï¼ŒåŠ å¼ºèŒä¸šé“å¾·æ•™è‚²ï¼Œæ³¨é‡å­¦ç”Ÿç»¼åˆç´ è´¨çš„åŸ¹å…»','i050'),
('i052','c003','æ•™å­¦å†…å®¹æ­£ç¡®ã€ç§‘å­¦ï¼Œç¬¦åˆè¯¾ç¨‹æ ‡å‡†è¦æ±‚ï¼Œç†è®ºé˜è¿°å‡†ç¡®ï¼Œæ¦‚å¿µæ¸…æ™°ï¼Œæ¡ç†åˆ†æ˜Žï¼Œè®ºè¯ä¸¥å¯†ï¼Œé€»è¾‘æ€§å¼º','i050'),
('i053','c003','è®²è¯¾å†…å®¹æ–°é¢–ï¼Œæ³¨æ„çŸ¥è¯†æ›´æ–°ï¼Œèƒ½åæ˜ å½“ä»£ç§‘æŠ€æˆæžœä¸Žæ°´å¹³','i050'),
('i054','c003','ç†è®ºè”ç³»å®žé™…ï¼Œçªå‡ºé‡ç‚¹ã€åŒ–è§£éš¾ç‚¹ï¼Œæ³¨é‡æé«˜å­¦ç”Ÿåˆ†æžé—®é¢˜ã€è§£å†³é—®é¢˜çš„èƒ½åŠ›','i050'),
('i055','c003','æ•™å­¦æ–¹æ³•','0'),
('i056','c003','æ•™å­¦æ–¹æ³•çµæ´»å¤šæ ·ï¼Œæœ‰æ•ˆä¿ƒè¿›æ•™å­¦ç›®æ ‡çš„å®žçŽ°','i055'),
('i057','c003','èƒ½å¤Ÿæ ¹æ®è¯¾ç¨‹ç‰¹ç‚¹å’Œä¸åŒçš„å­¦ç”ŸçŠ¶å†µå› ææ–½æ•™ï¼Œèƒ½å¤Ÿæ ¹æ®ä¸åŒçš„æ•™å­¦å†…å®¹é€‰æ‹©ä¸åŒçš„æ•™å­¦æ–¹æ³•','i055'),
('i058','c003','ä½“çŽ°çŽ°ä»£æ•™è‚²æ€æƒ³ã€æ•™è‚²ç†å¿µã€ç†Ÿç»ƒè¿ç”¨çŽ°ä»£æ•™è‚²æŠ€æœ¯ç­‰æ•™å­¦è¾…åŠ©æ‰‹æ®µï¼Œå¯Œæœ‰æ—¶ä»£æ°”æ¯','i055'),
('i059','c003','èƒ½å¤Ÿç»“åˆæ•™å­¦å†…å®¹å¯¹å­¦ç”Ÿå­¦ä¹ æ–¹æ³•å’Œç ”ç©¶æ–¹æ³•ç»™äºˆæŒ‡å¯¼ï¼ŒæŒ‡å¯¼æ­£ç¡®ã€æœ‰æ•ˆ','i055'),
('i060','c003','æ•™å­¦ç»„ç»‡','0'),
('i061','c003','è¯¾ç¨‹å¯¼å…¥è‡ªç„¶ã€æ°å½“ï¼Œç›®çš„æ€§å¼ºï¼Œèƒ½å¤Ÿæ¸©æ•…çŸ¥æ–°ï¼Œå¯¹æœ¬èŠ‚è¯¾çš„æ–°æŽˆå†…å®¹æœ‰æç¤ºå’Œå¯å‘ä½œç”¨ï¼Œå…·æœ‰æ–°é¢–æ€§ï¼Œèƒ½æ¿€å‘å­¦ç”Ÿå­¦ä¹ å…´è¶£','i060'),
('i062','c003','è¯¾ç¨‹è®²æŽˆç”ŸåŠ¨ã€å®Œæ•´ï¼Œèƒ½è´¯å½»å°‘è€Œç²¾çš„åŽŸåˆ™ï¼Œçªå‡ºé‡ç‚¹ï¼Œè®²æ¸…éš¾ç‚¹','i060'),
('i063','c003','è¯¾æœ«å½’çº³å°ç»“æ¸…æ™°ã€ç®€æ´ã€å‡†ç¡®ï¼Œçªå‡ºé‡ç‚¹ï¼Œä½¿å­¦ç”Ÿå¯¹æ¦‚å¿µçš„å¤–å»¶å’Œå†…æ¶µã€çŸ¥è¯†çš„å†…åœ¨é€»è¾‘è”ç³»ã€ä¸€èˆ¬æ€æƒ³æ–¹æ³•çš„ç†è§£æœ‰å‡†ç¡®çš„æŠŠæ¡','i060'),
('i064','c003','è¯¾å‰å¤ä¹ æˆ–å¤ä¹ è¯¾ï¼Œèƒ½ä»Žæ–°çš„è§’åº¦é‡çŽ°è®²è¿‡çš„çŸ¥è¯†ï¼Œåšåˆ°å®‰æŽ’åˆç†ã€å†…å®¹ç³»ç»Ÿã€é‡ç‚¹çªå‡ºï¼Œä½¿å­¦ç”Ÿæœ‰æ–°çš„æ”¶èŽ·','i060'),
('i065','c003','æ•™å­¦æŠ€èƒ½','0'),
('i066','c003','æ•™æ€è‡ªç„¶å¤§æ–¹ï¼Œä¸ºäººå¸ˆè¡¨','i065'),
('i067','c003','è¯­è¨€å‡†ç¡®ã€ç®€æ´ã€æµç•…ï¼Œä½¿ç”¨æ™®é€šè¯ï¼Œå£°éŸ³å®äº®ã€æ¸…æ™°','i065'),
('i068','c003','å­—ä½“è§„èŒƒã€å·¥æ•´ã€ç¾Žè§‚ã€æ¸…æ™°ï¼Œæ¡ç†æ¸…æ¥šã€é‡ç‚¹çªå‡ºï¼Œç®€æ´æ˜“è®°','i065'),
('i069','c003','å–„äºŽè¯¾å ‚ç®¡ç†ï¼Œæ•™å­¦ç»„ç»‡ç´§å‡‘ï¼Œæ•™å­¦æ´»åŠ¨ç”ŸåŠ¨æœ‰è¶£ï¼Œåˆ›å»ºè‰¯å¥½çš„å­¦ä¹ æ°”æ°›ï¼Œå­¦ç”Ÿèƒ½å…¨ç¥žè´¯æ³¨åœ°è®¤çœŸå­¦ä¹ ','i065'),
('i070','c003','æ•™å­¦ç‰¹è‰²','0'),
('i071','c003','è¯¾å ‚æ•™å­¦ä¸­æ³¨æ„è¿ç”¨æ•™å­¦è‰ºæœ¯ï¼Œåº”ç”¨è‡ªç„¶ã€å¾—ä½“ï¼Œæœ‰ä¸ªäººç‹¬ç‰¹çš„æ•™å­¦é£Žæ ¼','i070'),
('i072','c003','æ•™å­¦å½¢å¼æ–°é¢–ã€ä¸è½ä¿—å¥—ï¼Œèƒ½ä½¿äººè€³ç›®ä¸€æ–°','i070'),
('i073','c004','ä½œä¸šæ€åº¦','0'),
('i074','c004','æ€åº¦ç«¯æ­£ï¼Œæ˜Žç¡®ä½œä¸šçš„ç›®çš„ï¼Œé‡è§†ä½œä¸šæ•™å­¦çŽ¯èŠ‚','i073'),
('i075','c004','æ ¹æ®è¯¾ç¨‹çš„æ€§è´¨ä¸Žç‰¹ç‚¹ï¼Œä¸ºå­¦ç”Ÿå¼€åˆ—å¿…è¯»ä¹¦ç›®ï¼Œè¦æ±‚å­¦ç”Ÿåšè¯»ä¹¦ç¬”è®°ã€èµ„æ–™å¡ç‰‡ç­‰','i073'),
('i076','c004','ä½œä¸šè®¾è®¡','0'),
('i077','c004','ç±»åž‹å…¨é¢ï¼Œå½¢å¼å¤šæ ·ï¼Œæœ‰é˜…è¯»ã€å£å¤´ã€ä¹¦é¢ã€å®žéªŒã€æ“ä½œã€è°ƒç ”å’Œç¤¾ä¼šå®žè·µç­‰','i076'),
('i078','c004','å†…å®¹å…¨é¢ï¼Œç¬¦åˆè¯¾ç¨‹æ ‡å‡†è¦æ±‚ã€‚çªå‡ºé‡ç‚¹ï¼Œæ³¨æ„åŸºæœ¬çŸ¥è¯†çš„ç†è§£ä¸Žåº”ç”¨ã€åŸºæœ¬æŠ€èƒ½å’Œä¸“ä¸šæŠ€èƒ½çš„åŸ¹å…»','i076'),
('i079','c004','ä½œä¸šå¸ƒç½®','0'),
('i080','c004','ä½œä¸šå¸ƒç½®èƒ½ä¸Žè¯¾å ‚æ•™å­¦å†…å®¹ç›¸ç»“åˆã€ç›¸å‘¼åº”ï¼Œå¾ªåºæ¸è¿›ã€éš¾æ˜“é€‚åº¦','i079'),
('i081','c004','æ¯é—¨è¯¾ç¨‹å‡åº”ä¾æ®å…¶æ€§è´¨å¸ƒç½®æ•°é‡åˆé€‚ã€æ¬¡æ•°é€‚å½“çš„ä½œä¸šï¼Œä»¥èƒ½è¾¾åˆ°è®­ç»ƒç›®çš„ä¸ºåº¦','i079'),
('i082','c004','å¯¹å­¦ç”Ÿçš„ä½œä¸šåº”è¾¾åˆ°çš„æ ‡å‡†å’Œå®Œæˆçš„æ—¶é—´æå‡ºæ˜Žç¡®è¦æ±‚','i079'),
('i083','c004','ä½œä¸šæ‰¹æ”¹','0'),
('i084','c004','å¯¹æ‰€æœ‰å­¦ç”Ÿçš„ä½œä¸šè®¤çœŸæ‰¹æ”¹ï¼Œå¹¶æ³¨æ˜Žæˆç»©ã€æ‰¹æ”¹æ—¥æœŸ','i083'),
('i085','c004','å¯¹ä¸åˆæ ¼çš„ä½œä¸šï¼Œé€€å›žé‡åšï¼Œå¯¹åšé”™çš„ä½œä¸šè¦æ±‚åŠæ—¶æ›´æ­£','i083'),
('i086','c004','ä½œä¸šæ‰¹æ”¹è®°å½•è¯¦ç»†ï¼Œæˆç»©ç™»è®°è®¤çœŸ','i083'),
('i087','c004','ä½œä¸šè®²è¯„','0'),
('i088','c004','åœ¨ä½œä¸šæ‰¹æ”¹çš„åŸºç¡€ä¸Šï¼Œå¯¹æ¯æ¬¡ä½œä¸šé€‚æ—¶è¿›è¡Œæ€»ç»“å’Œè®²è¯„','i087'),
('i089','c004','è®²è¯„è®¤çœŸï¼Œæ—¢è¦å¯¹å­¦ç”Ÿä½œä¸šä¸­çš„å…±æ€§é”™è¯¯è¿›è¡Œçº æ­£ï¼Œä¹Ÿè¦å¯¹å­¦ç”Ÿä¸åŒæ€è·¯è¿›è¡Œæ€»ç»“å’Œä»‹ç»','i087');

/*Table structure for table `tb_index_cassification` */

DROP TABLE IF EXISTS `tb_index_cassification`;

CREATE TABLE `tb_index_cassification` (
  `classification_id` varchar(9) NOT NULL COMMENT 'æŒ‡æ ‡åˆ†ç±»ç¼–å·ï¼Œå”¯ä¸€æ ‡è¯†',
  `cassification` varchar(10) DEFAULT NULL COMMENT 'åˆ†ç±»åç§°',
  PRIMARY KEY (`classification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_index_cassification` */

insert  into `tb_index_cassification`(`classification_id`,`cassification`) values 
('c001','å®žè®­æ•™å­¦'),
('c002','æœŸæœ«è€ƒæ ¸'),
('c003','è¯¾ç¨‹æ•™å­¦'),
('c004','ä½œä¸šçŽ¯èŠ‚');

/*Table structure for table `tb_opinion` */

DROP TABLE IF EXISTS `tb_opinion`;

CREATE TABLE `tb_opinion` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_opinion` */

insert  into `tb_opinion`(`oid`,`type`,`content`,`time`) values 
(6,'director2','åŒæ„ï¼ï¼ï¼','2020-04-16 16:28:38'),
(7,'president2','ä¸å¥½','2020-04-16 16:29:01');

/*Table structure for table `tb_second_index_score` */

DROP TABLE IF EXISTS `tb_second_index_score`;

CREATE TABLE `tb_second_index_score` (
  `sid` int(9) NOT NULL AUTO_INCREMENT COMMENT 'å”¯ä¸€æ ‡è¯†',
  `second_indicator_id` varchar(9) DEFAULT NULL COMMENT 'äºŒçº§æŒ‡æ ‡ç¼–å·',
  `score` float DEFAULT NULL COMMENT 'äºŒçº§æŒ‡æ ‡å¾—åˆ†',
  `parent_id` varchar(9) DEFAULT NULL COMMENT 'çˆ¶ç±»ç´¢å¼•',
  `cid` varchar(9) DEFAULT NULL COMMENT 'è¯¾ç¨‹ç¼–å·',
  `weight` char(10) DEFAULT NULL COMMENT 'æƒé‡',
  `school_year` varchar(20) DEFAULT NULL COMMENT 'å­¦å¹´',
  `semester` int(11) DEFAULT NULL COMMENT 'å­¦æœŸ',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `tb_second_index_score` */

insert  into `tb_second_index_score`(`sid`,`second_indicator_id`,`score`,`parent_id`,`cid`,`weight`,`school_year`,`semester`) values 
(19,'i066',75,'i065','c001','50','2019-2020',2),
(20,'i067',62.5,'i065','c001','50','2019-2020',2),
(21,'i074',87.5,'i073','c001','50','2019-2020',2),
(22,'i075',75,'i073','c001','50','2019-2020',2),
(23,'i071',87.5,'i070','c001','50','2019-2020',2),
(24,'i072',75,'i070','c001','50','2019-2020',2);

/*Table structure for table `tb_temp_evaluation_template` */

DROP TABLE IF EXISTS `tb_temp_evaluation_template`;

CREATE TABLE `tb_temp_evaluation_template` (
  `eid` int(11) NOT NULL COMMENT 'æŒ‡æ ‡æ¨¡æ¿ç¼–å·ï¼Œå”¯ä¸€æ ‡è¯†',
  `classification_id` varchar(9) DEFAULT NULL COMMENT 'æŒ‡æ ‡åˆ†ç±»ç¼–å·',
  `indicator_id` varchar(9) DEFAULT NULL COMMENT 'æŒ‡æ ‡ç¼–å·',
  `indicator_name` varchar(50) DEFAULT NULL COMMENT 'æŒ‡æ ‡å†…å®¹',
  `parent_id` varchar(9) DEFAULT NULL COMMENT 'çˆ¶æŒ‡æ ‡ç¼–å·ï¼Œ0ä¸ºä¸€çº§æŒ‡æ ‡',
  `weight` char(10) DEFAULT NULL COMMENT 'æƒé‡',
  `status` int(11) DEFAULT NULL COMMENT 'çŠ¶æ€ï¼Œ1è¡¨ç¤ºè¯¾ç¨‹è¯„ä»·ï¼Œ2è¡¨ç¤ºå®žè®­è¯„ä»·',
  `version` int(11) DEFAULT NULL COMMENT 'ç‰ˆæœ¬',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_temp_evaluation_template` */

insert  into `tb_temp_evaluation_template`(`eid`,`classification_id`,`indicator_id`,`indicator_name`,`parent_id`,`weight`,`status`,`version`) values 
(1,'c001','i025','èµ„æ–™å½’æ¡£','0','30',2,1),
(2,'c001','ioo7','å®žè®­å‡†å¤‡','0','40',2,1),
(3,'c001','i018','å®žè®­æŠ¥å‘Š','0','30',2,1),
(4,'c001','i026','åŠæ—¶è®¤çœŸå¡«å†™å„ç§å®žè®­æ•™å­¦èµ„æ–™ï¼Œèµ„æ–™å®Œæ•´ã€å†…å®¹è¯¦å®žã€å·¥æ•´è§„èŒƒ','i025','50',2,1),
(5,'c001','i027','å®šæœŸåšå¥½å„ç±»å®žè®­æ•™å­¦èµ„æ–™çš„å½’ç±»æ•´ç†ï¼ŒæŒ‰æ—¶æŠ¥é€ï¼ŒåŠæ—¶å½’æ¡£','i025','50',2,1),
(6,'c001','ioo8','ç†Ÿæ‚‰ä¸Žæœ¬å®žè®­æœ‰å…³çš„ä¼äº‹ä¸šå•ä½çš„ç”Ÿäº§ã€ç®¡ç†ã€ç»è¥ã€å»ºè®¾å’Œå‘å±•å®žé™…','ioo7','50',2,1),
(7,'c001','i009','ç†Ÿæ‚‰ç”Ÿäº§è¿‡ç¨‹çš„å„ä¸ªçŽ¯èŠ‚,èƒ½åŠæ—¶å‘çŽ°é—®é¢˜ï¼Œå¹¶æå‡ºè§£å†³é—®é¢˜çš„æ–¹æ³•','ioo7','50',2,1),
(8,'c001','i019','å®žè®­æŠ¥å‘Šæ’°å†™è®¤çœŸï¼Œæ•°æ®çœŸå®žã€å¤„ç†æ­£ç¡®ï¼Œå¯¹å®žè®­ç»“æžœå’Œé—®é¢˜è¿›è¡Œè®¤çœŸåˆ†æžï¼Œå®žè®­æŠ¥å‘Šæ•´æ´è§„èŒƒ','i018','50',2,1),
(9,'c001','i020','æ‰¹æ”¹è®¤çœŸï¼Œå‡†ç¡®æ— è¯¯ã€æœ‰æ‰¹è¯­ã€æœ‰è¦æ±‚ï¼Œå®žè®­æˆç»©åˆ†å¸ƒåˆç†ï¼ŒçœŸå®žæœ‰æ•ˆ','i018','50',2,1);

/*Table structure for table `tb_user_info` */

DROP TABLE IF EXISTS `tb_user_info`;

CREATE TABLE `tb_user_info` (
  `uid` varchar(9) NOT NULL COMMENT 'ç”¨æˆ·ç¼–å·ï¼Œå”¯ä¸€æ ‡è¯†',
  `uname` varchar(50) NOT NULL COMMENT 'ç”¨æˆ·å',
  `password` varchar(50) NOT NULL COMMENT 'å¯†ç ,md5åŠ å¯†',
  `tname` varchar(50) DEFAULT NULL COMMENT 'æ•™å¸ˆå§“å/ç”¨æˆ·å§“å',
  `sex` char(2) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `title` varchar(10) DEFAULT NULL COMMENT 'èŒç§°ï¼Œå®¡æ ¸æµç¨‹ä½¿ç”¨',
  `phone` char(15) DEFAULT NULL COMMENT 'ç”µè¯',
  `email` char(16) DEFAULT NULL COMMENT 'é‚®ç®±',
  `if_privilege` int(11) DEFAULT NULL COMMENT 'æ˜¯å¦ç‰¹æƒ,0è¡¨æ— ç‰¹æƒï¼Œ1è¡¨ç®¡ç†å‘˜ï¼Œ2è¡¨ç³»ç»Ÿç®¡ç†å‘˜',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_user_info` */

insert  into `tb_user_info`(`uid`,`uname`,`password`,`tname`,`sex`,`title`,`phone`,`email`,`if_privilege`) values 
('u001','èµµè€å¸ˆ','827ccb0eea8a706c4c34a16891f84e7b','èµµå…­','ç”·','manager','15271229485','852707783@qq.com',1),
('u002','çŽ‹è€å¸ˆ','827ccb0eea8a706c4c34a16891f84e7b','çŽ‹äº”','ç”·','director','16516123167','85270993@qq.com',0),
('u003','æŽè€å¸ˆ','827ccb0eea8a706c4c34a16891f84e7b','æŽå››','ç”·','president','12456311562','78462626@qq.com',0),
('u004','','827ccb0eea8a706c4c34a16891f84e7b','å¼ ä¸‰','ç”·','teacher','12456311562','78462626@qq.com',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
