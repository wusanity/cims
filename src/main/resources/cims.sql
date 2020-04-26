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
('2',1,'diagrams/releaseAndVerify.png','1','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0��|\0\01�IDATx���_l��}�k\r�C��n�v�3�_l�Zђ���O�VKC��\";�ET�C�֟�D�,��.�ZD���M|e�\nXe� ̣@S !@�O�K�c���Cb\'���qw�؎s|���9=��^����9�s��^�Sǉ{2\0\0\0�}\0\0\0t;i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0\0@0i\n\0�j�Zmbb��[o.������%����j5�:�4\0X�z��������ݹ�w?2?|��[n����H__ߦM���ƢO�cHS\0���߿�\\.׋����f�V��b��?����>q� M\0.l�����|x�#�҅���}W_}��m�j�Z�#\0(4i\n\0��zU�������*J��\\.���D?�⒦\0\0�U��M�6����ݥ͟�����t�((i\n\0p^###�]����z���^�eIS\0��m߾=��x��Ν�\rG?,�\"��\0\0�ؿ���`�]:?�������P8�\0`�.}z�����o~�S%?���4\0Xlbbbxx8�.��/|�w����E�\0,V.�W�+LW��i�C(i\n\0p�j���׷F]:?7nܳgO�(i\n\0p����J���iz�w���F?P���\0\0�ضm�]wݵ�i���G��r�(i\n\0p����������~�S��\nP �\0�k�kc��c�{{{�(@�HS\0�s���z��5M�����k���\0�100��)��d\'\0�cM��k\n�,i\n\0p�J�r�=��i�>��7n�~�\0\"M\0αcǎ/|��4M��u�D?P���\0\0瘞�.�Jk��[�lٵkW�(i\n\0�ؚ�OHG�����jя�@�)\0�bk�3�_��W�7��E�\0,V��J��Z�vӣǎ�S�����P,�\0`�����p��L.i\n\0�����gv�/�.�ށ6l8z�x�#(i\n\0��j��q�Ƽ�?����w�F?,�\"��\0\0�555U��zO�w��|�3|���PP�\0`%���߰a�c�?��s���ե\0+��\0\0P�V����[n������*J�;��|e����@�IS\0���j�4�⊁zjփ��.���{���\\���(:i\n\0Ъ����n�����w>�zy>�wߢ�_r����n��u�LOOG�2@g��\0\0�S��&&&*�ʆ\rz�U��ޥ����j5�4:�4\0HU���S\0�l�\0 UO��S$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0Ў���z�����?����y�e�MMME�\Z@瑦\0\0����{�ؼy���D��ti\n\0ЎZ�v饗.��+������Z�F�\Z@瑦\0\0m���׭[�L�o�qtt4��\0:�4\0h������n(�J�Z-��\0:�4\0hߣ�>z�%���thhȿ2h�4\0Hr�5�̧i�\0t0i\n\0�dff���~g@\ni\n\0����ѧ\0�٬Q\0�@j�������H�\\.�JKq(���j���{n�␦\0@Q�ڵ�N�.���{޽�ՃO�Κ|���֟۝;wnݺ��l�5��p�4\0�U��J��e˖Co:5{�\\�9���z�֟�����\0��)\0�ޥ���w�swx�u�<��6n�8==�B\0��4\0�U*�����S�\'M�<��᫯����դ)\0i׮][�\\{j�c;_���~�m�/�{IS\0 L�V+�J��x=<���cnذ�og�HS\0 ���X�R���5g��o��KP^��2w�q���h��R�\03<<�����h~6_���,�����셓ٳ\'�������|��\'Oe߭eOֲ�Nd}���c�v��W4���}��~Q\0]J�\0a��L����cYv�L��\\����D��ɟ}���~rӵ�o�f�Nf�>Φk٫s�7��l�����Q�c�?���~Q\0]J�\0a����;���܉��������g�4w�����~���o��\\���>��ޟͪY��S�5���w��j�K�Z�\0���ǛS���\\v����P�V���_��o�z譙���g�S�d}bﳋ�kri\nD�}\0�0ˤ������c�l��:yr��+zz>���{��m]xŧ�=#M�)���\0�4��Xs����G�[G�w?Ξ>�����bݏ�����s�����]��2��b�\0\0a\Zyy�9�O?:��_;���Ᏻ�OM��O�g����?��,;v2;q����Ԣ�\\F�Ql\0 ��4�_X��g�Neo�}���\r�r�����wOf�Բwkّ�Y=N{R�JS�G��\0�i���4����܋�<��Ԟ�S��z����x��=��w���}/{�K�?�Ҟg_~������{������5��4��>\0@�F�~�p>��m=-���[tE��HS ��\0�i�i�g�)��\0�HӢ�4��>\0@�z��}`�3��b�\0\0a\Zi��)�HS ��\0���Ei\nD�}\0�0�4=b�3��b�\0\0aΦ���LqF�Ql\0 �4-�HS ��\0�i��aS���@�\0�H�wMqF�Ql\0 �4-�HS ��\0�i��;�8#M�(�\0���3�8#M�(�\0�����;�E�j�F.f�KS ��\0�iD��k1o�|_���ֳ�Vn��Ǿv�Ҳ���\0���\0������o��,��E����V�p��䂧t����d�}ޢ_@��}\0�0kTY+ti�WL���O��{\\���@A�>\0@�Ft�����.��W\\�A+���uW����_ՙ���E�(�.e�\0\0a\Z��ƚN�w����� �9�y���6�?�ͮ|��YZx_�/\n�K�>\0@����Uu�oT^�c��K/_��[y�w�7i\nD�}\0�0��:�vs��[��/Y��\n��XVu�+��Z?c�/\n�K�>\0@�Fq��F3��b�=6/Y���}����������ʍ�~nk�E�(�.e�\0\0a֮�ڈ�6�t�K�tQ�.[����a�\0\0a\Z����g���z��Zx��>^�6W��U����y���Ew��\0���\0�9�Zg��eo��;Zx�����ӹ�������^k�-7OcU$�ً~Q\0]��\0¬uh-,��E�3���J��e��JS���>\0@�Fb����\rϖ._zX�x��.{>��F����\0���\0�i���MqF�Ql\0 �4-�HS ��\0�i��AS���@�\0�H�WMqF�Ql\0 �4-�HS ��\0�i��+�8#M�(�\0�Bgμl�3��b�\0\0a�i�F�Ql\0 L#M_2�i\nD�}\0�0�4�2�i\nD�}\0�0�4}�g�)��\0�HӢ�4��>\0@�F��`�3��b�\0\0a\Ziz�g�)��\0�HӢ�4��>\0@���ޏj{�d�3i\nD�}\0�0�R��o�ɞ7i\nD�}\0�0CCC����3���Կ\rD�(�.%M�0۷o��3�s��OcY�T�_@���\0@���遁_�՞̲gM�o����~Q\0]J�\0�n=k[x�����~9\0�K�\0�j�Z�|՞=��e�M����(U�ߎ~9\0�K�\0��������?˞1ff.��������դ)\0oϞ=�:ݾ���;��fb�+%]\n���\0@!�j���J��鱱���y(�����j�����jdd��p��q�7@�\0E299Y��v�������~jd��z�F�~H�\0��oH!M\0r���U\0�C\0r MRء\0\09��\0)�P\0�HS�v(\0@�)@\n;\0 � �\n\0�i\n��\0ȁ4Ha�\0�@���C\0r MRء\0\09��\0)�P\0�HS�v(\0@�)@\n;\0 � �\n\0�i\n��\0ȁ4Ha�\0�@���C\0r MRء\0\09��\0)�P\0�HS�v(\0@�)@\n;\0 � �\n\0�i\n��\0ȁ4Ha�\0�@���C\0r MRء\0\09��\0)�P\0�HS�v(\0@�)@\n;\0 � �\n\0�i\n��\0ȁ4Ha�\0�@���C\0r MRء\0\09��\0)�P\0�HS�v(\0@�)@\n;\0 � �\n\0�i\n��\0ȁ4Ha�\0�@���C\0r MRء\0\09��\0)�P\0�HS�v(\0@�)@\n;\0 � �\n\0�i\n��\0ȁ4Ha�\0�@���C\0r MRء\0\0m\Z�ioo���`��������]v���T��ti\n\0Ц�￿g�͛7OLLD�\Z@���\0\0m��j�^z��.���+�����j��ti\n\0о�o�yݺu�4���GGG�O\n��HS\0�$�ׯ���n��T*�j��3�<�\0 ɣ�>z�%���thhȿ2h�4\0Hu�5�̧i�\0t*i\n\0�jff���~g@ۤ)\0@�i\Z}\n\0�\0\n�V����������R���7�҆�3Y>���������8�)\0PD�v�GT�K��އw�~���S��&}��d��ܹs�֭[��p=P���\0gIS\0�X��j�Rٲeˡ7��=e�n�w����zff&��t;i\n\0H�K����l�y��lܸqzz:��t5i\n\0H�R���<5{�\\�yx��W_����|��IS\0�(v�ڵe˵�f?6���?���ۢ_@���\0@!�j�R�t���#�;��7l��W�Q�)\0Pccc�Jev�֜�C���/DYx-���q�m����/�KIS\0����w����s���k���e?8��2��p2{�d�����=�o~��컵��Z�؉졏��{���n�\\��ٻﻃ���/�KIS\0���̤���cYv�L��\\����D��ɟ}���~rӵ�o�f�Nf�>Φk٫s�7��l������9v������Х�)\0P}}}�y{v����k������_�;s���[?�����y.ˎ�e�f��f�,{��\Ziz¤O���}\0]��\0\n���ǛS���\\v����P�V���_��o�z譙���g�S�d}bﳋ�k�i\nD�}\0�BX&MOg�Od��f���ɓW\\��󉞞��~o��+>��i*M�Ng�\0\0����c͙���#eo���8{���ׯ_��u?��r���Iӧ��[t]��HS ��\0B#/�6���Gg��kg�5=�q����_���O���]���_��o|�e�Nf\'N���c{�Zt]��HS ��\0��4�_X��g�Neo�}���\r�r�����wOf�Բwkّ�Y=N{R�JS���>\0@!4���S�\\~��W�~~j�����M=���O<w�|�;Ͽ�辗���ǟyiϳ/?���w��=��p��뚶G�Ql\0�\Zi���������w��n�M�#M�(�\0P�4��ؑ�@�\0(iZ���@�\0(�z��}`bG�Ql\0�\Zi���i\nD�}\0�B��Ei\nD�}\0�Bh��;��b�\0\0�p6MO�gbG�Ql\0��iF�Ql\0�\Ziz�Ď4��>\0@!4��];��b�\0\0� M�0��b�\0\0��H�wL�HS ��\0B#MgL�HS ��\0B�i��5\n���l�Ƿw��ɑ�@�\0(�FG����,0�i�ϕn���n��;~�a9�ϲ7��G�B\0���\0B=�N�~��<l�����請���K�X�UV8�V[��,z���Ң[�~!\0]��\0\n��pZZ�-�Z+i�z������jo�|OB�Ϫ4��>\0@!4\"����ro\0���*K���%绯ߟ<﹭|�-��Z��ﲷ�B\0���\0B#��he�\\���� ,�X�ॷ�ʑ���X�$W>~�Zn��W�(�_@��}\0�Bh1����jsQ��Ww��Vrw�i����҇�b�JS ��\0B���<�cV�������?b�9��k�����.�����~!\0]��\0\n��N��0�9���]z���p��k��֏Y�Z+��V���Y���Oo���Хl\0�Vn�E��l����-F]�i���+�h�E�Ql\0�\Z����7Ϲ���~��U��E�ҹ�p�+�µV~��^q��ʉ-<8��\0t)�\0(��uf��Yx����^�y�\n�x/�=�֏Y�Z+t�k���_�s�B\0���\0Bi��QW��O��?��1->i\nD�}\0�Bh��k+ς7_[z�\n���K�^�m��~[9��Gw��_����~!\0]��\0\n��N�7�#M�(�\0PҴ#M�(�\0P�4=hbG�Ql\0�\Zi���i\nD�}\0�B��Ei\nD�}\0�Bh��+&v�)��\0\n�EgμlbG�Ql\0��iF�Ql\0�\Zi���i\nD�}\0�Bh�锉i\nD�}\0�Bh��&v�)��\0\nA�a�)��\0\n���/�ؑ�@�\0(�F�0�#M�(�\0PҴ#M�(�\0P������ɾgG�Ql\0�J��k��:�=oG�Ql\0�����c�]�m����Կ\rD��.%M�Bؾ}����ɞ3Q�OcY�T�_@���\0@!LOO�B��d�=kBfxx���D��R�\0(�[��^h�9��=22�\0��4\0��V���W���/Y��\\̙��=0P�V��\0��4\0\ndjjjp�������sqff��r�������]M�\0ŲgϞz�n��G���\r31񕁁�.�IS\0�pj���h�\\����_��<�e�L�S�����_��l.�?���HS\0��&\'\'+����������S##���4���C�\0 7~/(@{�)\0@nzz��\n��\'\0@n�)@{lO\0�|�j�����\0�H�\0 ��ӥR)�,\0:�4\0ȇ4h�4\0ȇ4h�4\0����d�\\�>��$M\0�!M�&M\0�!M�&M\0�1>>>22}\0I�\0�cll�R�D�@G��\0\0���\0m��\0\0�رc�M7�}\0I�\0��ֆ�\0�H�\0 ��m�\0 ���۷o�>��$M\0�Q�T��Ƣ��#IS\0�|HS��IS\0�|HS��IS\0�|�������\0�H�\0 ��m�\0 ��m�\0 SSS�gБ�)\0@>J����t�Y\0t$i\n\0�i\n�6i\n\0�����j�\Z}\0I�\0䣧�߬\0�d�\0�C���\0�A�V���>�N%M\0r0==]*����SIS\0�HS��\0 � �4\0����d�\\�>�N%M\0r MRHS\0�HS��\0 ���###�gЩ�)\0@���*�J�Y\0t*i\n\0�i\n�B�\0�`ǎ7�tS�Y\0t*i\n\0��[���SIS\0�HS��\0 ���۷o�>�N%M\0rP�T��Ƣ��SIS\0�HS��\0 � �4\0�A�\\����>�N%M\0r MRHS\0�HS��\0 SSS�gЩ�)\0@J����t�Y\0t*i\n\0�i\n�B�\0䠯��Z�F�@���\0\09����*��١\0\09��\0)�P\0�T�Z���7�,\0:�4\0H5==]*�����IS\0�T� �4\0H%MIS\0�T����r9�,\0:�4\0H%MIS\0�T� �4\0H5>>>22}\0L�\0�\Z�T*�g���)\0@*i\n�H�\0�ڱc�M7�}\0L�\0���!�,\0:�4\0H%MIS\0�T���۷o�>�&M\0�1>>������;88������?��˦���O\r��HS\0�v���=Kl޼ybb\"��\0:�4\0hG�V���Kv�W^���_�V�O\r��HS\0�6�|���֭k��7�8::\Z}R\0I�\0�o�����-�J�Z-��\0:�4\0hߣ�>z�%��[��W�W�+S��IS\0�$�\\sMoo��گE�@��\0\0Ifff֭[�{����`�\0 U�T����>�&M�©�j���###�r�^}K}(m�?���sxxxll�o��F�\0Ųk׮zDջ��{�}x��W<5;kҧ�L֟ϝ;wnݺ���5�[\r��)\0P�j�R�lٲ���N͞2k7��;\\��S=33�m8K�\0�P�������;<ۺg��7n��d�\"��\0@!T*�����S�\'�Ŝ�w?|�տ����\0@�ڵk˖kO�~l.�|�z��E��n\'M�`�Z�T*z���H��9z��\r6LMME���&M�`ccc�Jev�֜�C���/DYx-���q�m����/��IS\0 �������uv���|햷����Wf�NfϞ̞>6��G����<�}��=Y�;�=�q�w�=��m�k^Ѵ={�}wpp0��\0t5i\n\08p`3�zzz�e��3هs����Y�\'�����M��9�:��8��e��e��γ�7N�Ӯ����z{{�_@W��\0@�������=;wb~�y�tv���/͝9��?�����_��ۿ<�eG�g��g�j�=��s�4=aҧ�Lƾ�.g\0�\Zyy�9�O��eG>�N����j�o�����櫇ޚ�:{&;�H�\'�>�躦푦@,;\0�L������9��f٩�\'�����==����օW|z�3�T�?\Z� \0 X#/�5g�z�|��u4{�����_�~�\'���O\\�ɑ�?\'M�ڻo�uM�#M�Xv\0���G�S���3������8����/o��\'��.�����7>βc\'�\'�^�=O-��i{�)�\0�-M����:�p6��T����\'����+Wm���|�d�N-{��9�����\'��4~D�A\0@�F^�Osʛ�Ͻ����O��?����ǟy����ד/|����������3/�y���_y�ο����_x]��HS �\0k������ӂ߽�EW4m�4b�A\0@�F�VM�HS �\0��Ei\nĲ�\0�`�(����Ď4b�A\0@�F��obG��� \0 �4-�HS �\0k��;��e\0�Φ���L�HS �\0��Ei\nĲ�\0�`�4=lbG��� \0 X#M�5�#M�Xv\0L�a�)�\0�5��;��e\0�\Zi:cbG��� \0 Xl�^�ޗ=��k]���B��� \0 X���^��Y`�V�⪎_�am��Z<?�/���A\0@�z�>��ZO�^�?�9����/o�\ng�������B\0��\0�J�V��W8�VŢ�Z�?/f�JS�8� \0 X#��\\뙿�6�y��^�����}���D���f\0�\Z��Z���,���~z��Wl�..�Ӽ+���>�8#M�Xv\0�b�i��w��\\Z���t�],���ܥ�g\0�\Z%vh��y/���֯�耕?��d�_j�<ӟ����� \0 X��^_�i������W\\��G^�-��7�셭��Z<?�/���A\0@��4]���4��Uu�E�Ri\n���\0�`���Zς�.Ϲp��^�,{�ʟ�p�	Yz&�/���A\0@��%vfz�g�,�d�s��Ң�=��?���Y]��d��F���f\0�B�t�OW�V._է<�\"ש4b�A\0@�F���ֳ�^����M͕���=^��~q���w�B\0��\0k4��M�HS �\0��Ei\nĲ�\0�`�4=hbG��� \0 X#M_5�#M�Xv\0L�a�)�\0�5��;��e\0��Qt���&v�)�\0�I�\"�4b�A\0@�F��dbG��� \0 X#M�L�HS �\0k��&v�)�\0�I�\"�4b�A\0@�F��`bG��� \0 X#M�ؑ�@,;\0&M�0��e\0�z{{?��=�}��4b�A\0@�R������dϛ���@,;\0644���\no�n���m`` ��\0t5i\n\0۾}����ɞ3Q�OcY�T�_@W��\0@���遁_�՞̲gM�o����~!\0]M�\0�n=k[x�u猏����P�K\0�v�\0�W��������,�o.����(U�ߎ~	\0�N�\0�05558x����Y���833�p�|���?D��)\0P{�������l�0_(�R� �)\0P �Zmt�R.zl�/ffʲ}&ߩV�{|��FF���G�~H�\0�399Y��v��������\Z��^���d�sHS\0�T~)(@\"i\n\0����ߩ\0�X�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��)@\"k\0 �4Hd�\0���\0��Q\0�T� �5\n\0�J�$�F\0RIS�D�(\0@*i\n��\Z\0H%MY�\0\0��ioo���`��������]v���T��ti\n\0Ў�￿g�͛7OLLD�\Z@瑦\0\0��j�^z��.���+�����j��ti\n\0Ц�o�yݺu�4���GGG�O\n�#IS\0���_�~�Ko��R�T�բ��#IS\0��=�裗\\rI=M����+S��IS\0�$�\\s�|�F�@��\0\0Ifff�i�w�\0���\0\0��i\Z}\n\0��\Z\0X�Z�611q뭷�����P����������0�\0`�EZ�ў�뮻���\0-��\0\0-���ܴi��t�R���h�4\0��Z�V�T��/��/�;w����G�s�-_ڲeˢ#�����j�\0(4i\n\0�����Eo�~������f��7��;�;����_�������\n@qIS\0�󚞞�We�0���V��E�z�-_j^���wϞ=����)\0��j����Ko���t��{���Gi�S�y/���)\0��FFF�]�s�}mt��<�w___������PD�\0`��.���`��v����\0\nG�\0,cpp���K�t~�����;XD�\0,6>>������f.iz������{�M7E?D�b��\0\0������ɥK���{پ���P,�\0��j���B�z˴9������d�(i\n\0p��������o��糟�������F?P���\0\0�ضm[^�1��yx�#�7�iӦ�\nP �\0�CCC����7�=M_=xp��K�R�(i\n\0p�母yz��Ӵ>��\Z�@\n�N\08G�W��z��Z�i���(@�؉\0\0��O��8�i���+M�\0������~$�.=����`)i\n\0p�J�2_�_������{�����`�(i\n\0p��۷���֭�{��~��7>22�@\nD�\0�cjj��3�G��7M������~�\0\"M\0+�J��s�}9vi��U���G	P �\0`������ܰaC�o���g>3������X�)\0�b�j���Go��\\���ǟh�e����P,�\0`;v��������\"������ݶm[�(i\n\0��M�6��d�*�m�v�=v|Æ\r͛����~d\0�#M\0�7==����Lʧ��k�K��f�K{{{\'\'\'�@IS\0��d�����kw޹�_��9޺;vD? ����\0\0+���h�w:��>��[y���n�Y@��@�\0\\��������ά�-�|�{,-ү�y�-[\\/[?��2i\n\0pa�j��[o����Y�ƍ��������IS\0�V�#�R�,��K���={�D�2@g��\0\0�S������:88�(GK�����]w��R�U��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��\0\0\0��N�q�\\)\0\0\0\0IEND�B`�',0),
('3',1,'diagrams/releaseAndVerify.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"templateVerify\" name=\"templateVerify\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"发布评价表\" activiti:assignee=\"manager\"></userTask>\n    <userTask id=\"usertask2\" name=\"教研室主任审核\" activiti:assignee=\"director\"></userTask>\n    <userTask id=\"usertask3\" name=\"院长审核\" activiti:assignee=\"president\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_templateVerify\">\n    <bpmndi:BPMNPlane bpmnElement=\"templateVerify\" id=\"BPMNPlane_templateVerify\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"778.0\" y=\"111.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"71.0\" width=\"135.0\" x=\"728.0\" y=\"220.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"71.0\" width=\"131.0\" x=\"732.0\" y=\"351.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"71.0\" width=\"131.0\" x=\"730.0\" y=\"500.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"778.0\" y=\"630.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"795.0\" y=\"146.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"795.0\" y=\"220.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"795.0\" y=\"291.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"797.0\" y=\"351.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"797.0\" y=\"422.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"795.0\" y=\"500.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"795.0\" y=\"571.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"795.0\" y=\"630.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

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
('57504','templateVerify:1:4','57501','57502','usertask1','57505',NULL,'发布评价表','userTask','manager','2020-04-16 20:53:29.763','2020-04-16 20:53:29.963',200,NULL,''),
('57507','templateVerify:1:4','57501','57502','usertask2','57508',NULL,'教研室主任审核','userTask','director','2020-04-16 20:53:29.963',NULL,NULL,NULL,'');

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
('57505','templateVerify:1:4','usertask1','57501','57502','发布评价表',NULL,NULL,NULL,'manager','2020-04-16 20:53:29.767',NULL,'2020-04-16 20:53:29.957',190,NULL,50,NULL,NULL,NULL,''),
('57508','templateVerify:1:4','usertask2','57501','57502','教研室主任审核',NULL,NULL,NULL,'director','2020-04-16 20:53:29.963',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

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
('1','评价表发布与审核',NULL,NULL,'','2020-04-14 14:44:56.148',NULL);

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
('57508',1,'57502','57501','templateVerify:1:4','教研室主任审核',NULL,NULL,'usertask2',NULL,'director',NULL,50,'2020-04-16 20:53:29.963',NULL,NULL,1,'',NULL,NULL);

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
  `cid` varchar(9) NOT NULL COMMENT '课程编号，唯一标识',
  `cname` varchar(50) DEFAULT NULL COMMENT '课程名',
  `uid` varchar(9) DEFAULT NULL COMMENT '教师编号/用户编号',
  `type` int(11) DEFAULT NULL COMMENT '课程类型，1表示课程评价（含实验），2表示课程评价（不含实验），3表示实训评价',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_class_info` */

insert  into `tb_class_info`(`cid`,`cname`,`uid`,`type`) values 
('c001','数据结构','u002',1),
('c002','C语言程序设计','u003',1),
('c003','计算机网络技术','u004',1),
('c004','操作系统',NULL,1),
('c005','计算机组成原理',NULL,1),
('c006','算法分析与设计',NULL,1),
('c007','Java程序设计',NULL,1),
('c008','编译原理',NULL,1),
('c009','软件工程',NULL,1),
('c010','软件建模技术',NULL,1),
('c011','需求工程',NULL,1),
('c012','软件过程管理',NULL,1),
('c013','软件体系结构',NULL,1),
('c014','软件文档写作',NULL,1),
('c015','中间件技术',NULL,1),
('c016','网站编程',NULL,1),
('c017','移动平台应用程序设计',NULL,1),
('c018','数据仓库及数据挖掘',NULL,1),
('c019','软件质量与测试',NULL,1),
('c020','软件项目管理',NULL,1);

/*Table structure for table `tb_class_score_info` */

DROP TABLE IF EXISTS `tb_class_score_info`;

CREATE TABLE `tb_class_score_info` (
  `sid` int(9) NOT NULL AUTO_INCREMENT COMMENT '编号，唯一标识',
  `cid` varchar(9) DEFAULT NULL COMMENT '课程编号',
  `score` float DEFAULT NULL COMMENT '得分',
  `school_year` varchar(20) DEFAULT NULL COMMENT '学年',
  `semester` int(11) DEFAULT NULL COMMENT '学期',
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
  `eid` int(11) NOT NULL COMMENT '指标模板编号，唯一标识',
  `classification_id` varchar(9) DEFAULT NULL COMMENT '指标分类编号',
  `indicator_id` varchar(9) DEFAULT NULL COMMENT '指标编号',
  `indicator_name` varchar(50) DEFAULT NULL COMMENT '指标内容',
  `parent_id` varchar(9) DEFAULT NULL COMMENT '父指标编号，0为一级指标',
  `weight` char(10) DEFAULT NULL COMMENT '权重',
  `status` int(11) DEFAULT NULL COMMENT '状态，0表示未启用、1表示课程评价（含实验），2表示课程评价（不含实验），3表示实训评价',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_evaluation_template` */

insert  into `tb_evaluation_template`(`eid`,`classification_id`,`indicator_id`,`indicator_name`,`parent_id`,`weight`,`status`) values 
(1,'c003','i065','教学技能','0','40',1),
(2,'c004','i073','作业态度','0','30',1),
(3,'c003','i070','教学特色','0','30',1),
(4,'c003','i066','教态自然大方，为人师表','i065','50',1),
(5,'c003','i067','语言准确、简洁、流畅，使用普通话，声音宏亮、清晰','i065','50',1),
(6,'c004','i074','态度端正，明确作业的目的，重视作业教学环节','i073','50',1),
(7,'c004','i075','根据课程的性质与特点，为学生开列必读书目，要求学生做读书笔记、资料卡片等','i073','50',1),
(8,'c003','i071','课堂教学中注意运用教学艺术，应用自然、得体，有个人独特的教学风格','i070','50',1),
(9,'c003','i072','教学形式新颖、不落俗套，能使人耳目一新','i070','50',1);

/*Table structure for table `tb_first_index_score` */

DROP TABLE IF EXISTS `tb_first_index_score`;

CREATE TABLE `tb_first_index_score` (
  `fid` int(9) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `classification_id` varchar(9) DEFAULT NULL COMMENT '指标分类编号',
  `first_indicator_id` varchar(9) DEFAULT NULL COMMENT '一级指标编号',
  `score` float DEFAULT NULL COMMENT '一级指标得分',
  `cid` varchar(9) DEFAULT NULL COMMENT '课程编号',
  `weight` char(10) DEFAULT NULL COMMENT '权重',
  `school_year` varchar(20) DEFAULT NULL COMMENT '学年',
  `semester` int(11) DEFAULT NULL COMMENT '学期',
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
  `iid` varchar(9) DEFAULT NULL COMMENT '指标编号，唯一标识',
  `classification_id` varchar(9) DEFAULT NULL COMMENT '指标分类编号',
  `indicator_name` varchar(100) DEFAULT NULL COMMENT '指标内容',
  `parent_id` varchar(9) DEFAULT NULL COMMENT '父类索引，0为一级指标'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_index` */

insert  into `tb_index`(`iid`,`classification_id`,`indicator_name`,`parent_id`) values 
('i001','c001','教学文件','0'),
('i002','c001','有完善的实训课程标准','i001'),
('i003','c001','有统一的实训教材（讲义或指导书）及其配套教学资料','i001'),
('i004','c001','严格按照课程标准选择开设实训项目','i001'),
('i005','c001','开课前制定出实训教学周历','i001'),
('i006','c001','开课前编写实训教学教案','i001'),
('ioo7','c001','实训准备','0'),
('ioo8','c001','熟悉与本实训有关的企事业单位的生产、管理、经营、建设和发展实际','ioo7'),
('i009','c001','熟悉生产过程的各个环节,能及时发现问题，并提出解决问题的方法','ioo7'),
('i010','c001','所需场地条件、设备器材、耗材数量、质量满足实训要求','ioo7'),
('i011','c001','校外实训交通、食宿、安全、卫生条件有保障','ioo7'),
('i012','c001','实训过程','0'),
('i013','c001','实训组织严密，环节紧凑、衔接性好，时间分配合理，效率高','i012'),
('i014','c001','实训内容充实，目标任务明确，学生有充分动手练习的机会，能显著提高学生的实践操作和应用能力','i012'),
('i015','c001','指导教师在实训过程中,应充分发挥学生的主观能动性,精心检查、耐心指导、严格要求','i012'),
('i016','c001','按要求高质量完成各项实训任务','i012'),
('i017','c001','注重对学生的实践动手能力、独立工作能力、分析和解决实际问题能力、社会交往能力、自我约束等能力的培养','i012'),
('i018','c001','实训报告','0'),
('i019','c001','实训报告撰写认真，数据真实、处理正确，对实训结果和问题进行认真分析，实训报告整洁规范','i018'),
('i020','c001','批改认真，准确无误、有批语、有要求，实训成绩分布合理，真实有效','i018'),
('i021','c001','总结考核','0'),
('i022','c001','教师及时查阅学生实训日志、记录，按时收交、评阅学生实训报告','i021'),
('i023','c001','有科学的成绩评定依据和评分办法，突出应用能力培养特点','i021'),
('i024','c001','考核方式灵活多样，过程考核与结果考核相结合','i021'),
('i025','c001','资料归档','0'),
('i026','c001','及时认真填写各种实训教学资料，资料完整、内容详实、工整规范','i025'),
('i027','c001','定期做好各类实训教学资料的归类整理，按时报送，及时归档','i025'),
('i028','c002','工作准备','0'),
('i029','c002','期末考核教学工作规范、课程标准、指导书及参考资料、考核评价标准的实施文件配套齐全','i028'),
('i030','c002','熟悉科研、生产一线工作实际，满足期末考核要求','i028'),
('i031','c002','实施过程','0'),
('i032','c002','题目须符合本门课程教学要求，结合科研、教学和生产实际进行选题','i031'),
('i033','c002','确保每位学生在完成过程中获得必要的专业训练，全面提高学生的能力','i031'),
('i034','c002','在课程考核的过程中，注重发挥学生的主动性和创造性，使学生能独立完成任务','i031'),
('i035','c002','考核报告书写规范、文字通顺、图表清晰、数据完整、结论明确','i031'),
('i036','c002','成绩评定','0'),
('i037','c002','有评分标准，评分标准具体、明确、周密，可操作性强','i036'),
('i038','c002','能严格按照评分标准进行阅卷；评分客观公正，核分准确无误；有复评复查记录','i036'),
('i039','c002','按规定时间和要求录入成绩，成绩登记准确，填写规范、完整','i036'),
('i040','c002','提出的改进学习、提高教学质量的措施得力，可操作性强','i036'),
('i041','c002','总结归档','0'),
('i042','c002','期末考核结束后，对期末考核中的情况进行全面总结','i041'),
('i043','c002','考核过程中的各项资料保存完整，归档及时','i041'),
('i044','c003','教学态度','0'),
('i045','c003','在品德、言行、举止、作风上能为人师表，能以学生为本，尊重学生，对学生的学习体现人本关怀','i044'),
('i046','c003','备课认真，讲课熟练、精神饱满。教案讲稿规范、有特色、质量高','i044'),
('i047','c003','教学目标','0'),
('i048','c003','讲授新课前能准确、简明扼要地向学生展示本教学单元的知识目标，明确学生应掌握的知识点','i047'),
('i049','c003','在讲授新课前，能使学生明确在本章节的教学中，应培养哪些能力，上课前做好这些教学目标的展示','i047'),
('i050','c003','教学内容','0'),
('i051','c003','坚持立德树人，结合教学内容，教育学生树立正确的世界观和人生观，加强职业道德教育，注重学生综合素质的培养','i050'),
('i052','c003','教学内容正确、科学，符合课程标准要求，理论阐述准确，概念清晰，条理分明，论证严密，逻辑性强','i050'),
('i053','c003','讲课内容新颖，注意知识更新，能反映当代科技成果与水平','i050'),
('i054','c003','理论联系实际，突出重点、化解难点，注重提高学生分析问题、解决问题的能力','i050'),
('i055','c003','教学方法','0'),
('i056','c003','教学方法灵活多样，有效促进教学目标的实现','i055'),
('i057','c003','能够根据课程特点和不同的学生状况因材施教，能够根据不同的教学内容选择不同的教学方法','i055'),
('i058','c003','体现现代教育思想、教育理念、熟练运用现代教育技术等教学辅助手段，富有时代气息','i055'),
('i059','c003','能够结合教学内容对学生学习方法和研究方法给予指导，指导正确、有效','i055'),
('i060','c003','教学组织','0'),
('i061','c003','课程导入自然、恰当，目的性强，能够温故知新，对本节课的新授内容有提示和启发作用，具有新颖性，能激发学生学习兴趣','i060'),
('i062','c003','课程讲授生动、完整，能贯彻少而精的原则，突出重点，讲清难点','i060'),
('i063','c003','课末归纳小结清晰、简洁、准确，突出重点，使学生对概念的外延和内涵、知识的内在逻辑联系、一般思想方法的理解有准确的把握','i060'),
('i064','c003','课前复习或复习课，能从新的角度重现讲过的知识，做到安排合理、内容系统、重点突出，使学生有新的收获','i060'),
('i065','c003','教学技能','0'),
('i066','c003','教态自然大方，为人师表','i065'),
('i067','c003','语言准确、简洁、流畅，使用普通话，声音宏亮、清晰','i065'),
('i068','c003','字体规范、工整、美观、清晰，条理清楚、重点突出，简洁易记','i065'),
('i069','c003','善于课堂管理，教学组织紧凑，教学活动生动有趣，创建良好的学习气氛，学生能全神贯注地认真学习','i065'),
('i070','c003','教学特色','0'),
('i071','c003','课堂教学中注意运用教学艺术，应用自然、得体，有个人独特的教学风格','i070'),
('i072','c003','教学形式新颖、不落俗套，能使人耳目一新','i070'),
('i073','c004','作业态度','0'),
('i074','c004','态度端正，明确作业的目的，重视作业教学环节','i073'),
('i075','c004','根据课程的性质与特点，为学生开列必读书目，要求学生做读书笔记、资料卡片等','i073'),
('i076','c004','作业设计','0'),
('i077','c004','类型全面，形式多样，有阅读、口头、书面、实验、操作、调研和社会实践等','i076'),
('i078','c004','内容全面，符合课程标准要求。突出重点，注意基本知识的理解与应用、基本技能和专业技能的培养','i076'),
('i079','c004','作业布置','0'),
('i080','c004','作业布置能与课堂教学内容相结合、相呼应，循序渐进、难易适度','i079'),
('i081','c004','每门课程均应依据其性质布置数量合适、次数适当的作业，以能达到训练目的为度','i079'),
('i082','c004','对学生的作业应达到的标准和完成的时间提出明确要求','i079'),
('i083','c004','作业批改','0'),
('i084','c004','对所有学生的作业认真批改，并注明成绩、批改日期','i083'),
('i085','c004','对不合格的作业，退回重做，对做错的作业要求及时更正','i083'),
('i086','c004','作业批改记录详细，成绩登记认真','i083'),
('i087','c004','作业讲评','0'),
('i088','c004','在作业批改的基础上，对每次作业适时进行总结和讲评','i087'),
('i089','c004','讲评认真，既要对学生作业中的共性错误进行纠正，也要对学生不同思路进行总结和介绍','i087');

/*Table structure for table `tb_index_cassification` */

DROP TABLE IF EXISTS `tb_index_cassification`;

CREATE TABLE `tb_index_cassification` (
  `classification_id` varchar(9) NOT NULL COMMENT '指标分类编号，唯一标识',
  `cassification` varchar(10) DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`classification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_index_cassification` */

insert  into `tb_index_cassification`(`classification_id`,`cassification`) values 
('c001','实训教学'),
('c002','期末考核'),
('c003','课程教学'),
('c004','作业环节');

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
(6,'director2','同意！！！','2020-04-16 16:28:38'),
(7,'president2','不好','2020-04-16 16:29:01');

/*Table structure for table `tb_second_index_score` */

DROP TABLE IF EXISTS `tb_second_index_score`;

CREATE TABLE `tb_second_index_score` (
  `sid` int(9) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `second_indicator_id` varchar(9) DEFAULT NULL COMMENT '二级指标编号',
  `score` float DEFAULT NULL COMMENT '二级指标得分',
  `parent_id` varchar(9) DEFAULT NULL COMMENT '父类索引',
  `cid` varchar(9) DEFAULT NULL COMMENT '课程编号',
  `weight` char(10) DEFAULT NULL COMMENT '权重',
  `school_year` varchar(20) DEFAULT NULL COMMENT '学年',
  `semester` int(11) DEFAULT NULL COMMENT '学期',
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
  `eid` int(11) NOT NULL COMMENT '指标模板编号，唯一标识',
  `classification_id` varchar(9) DEFAULT NULL COMMENT '指标分类编号',
  `indicator_id` varchar(9) DEFAULT NULL COMMENT '指标编号',
  `indicator_name` varchar(50) DEFAULT NULL COMMENT '指标内容',
  `parent_id` varchar(9) DEFAULT NULL COMMENT '父指标编号，0为一级指标',
  `weight` char(10) DEFAULT NULL COMMENT '权重',
  `status` int(11) DEFAULT NULL COMMENT '状态，1表示课程评价，2表示实训评价',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_temp_evaluation_template` */

insert  into `tb_temp_evaluation_template`(`eid`,`classification_id`,`indicator_id`,`indicator_name`,`parent_id`,`weight`,`status`,`version`) values 
(1,'c001','i025','资料归档','0','30',2,1),
(2,'c001','ioo7','实训准备','0','40',2,1),
(3,'c001','i018','实训报告','0','30',2,1),
(4,'c001','i026','及时认真填写各种实训教学资料，资料完整、内容详实、工整规范','i025','50',2,1),
(5,'c001','i027','定期做好各类实训教学资料的归类整理，按时报送，及时归档','i025','50',2,1),
(6,'c001','ioo8','熟悉与本实训有关的企事业单位的生产、管理、经营、建设和发展实际','ioo7','50',2,1),
(7,'c001','i009','熟悉生产过程的各个环节,能及时发现问题，并提出解决问题的方法','ioo7','50',2,1),
(8,'c001','i019','实训报告撰写认真，数据真实、处理正确，对实训结果和问题进行认真分析，实训报告整洁规范','i018','50',2,1),
(9,'c001','i020','批改认真，准确无误、有批语、有要求，实训成绩分布合理，真实有效','i018','50',2,1);

/*Table structure for table `tb_user_info` */

DROP TABLE IF EXISTS `tb_user_info`;

CREATE TABLE `tb_user_info` (
  `uid` varchar(9) NOT NULL COMMENT '用户编号，唯一标识',
  `uname` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码,md5加密',
  `tname` varchar(50) DEFAULT NULL COMMENT '教师姓名/用户姓名',
  `sex` char(2) DEFAULT NULL COMMENT '性别',
  `title` varchar(10) DEFAULT NULL COMMENT '职称，审核流程使用',
  `phone` char(15) DEFAULT NULL COMMENT '电话',
  `email` char(16) DEFAULT NULL COMMENT '邮箱',
  `if_privilege` int(11) DEFAULT NULL COMMENT '是否特权,0表无特权，1表管理员，2表系统管理员',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_user_info` */

insert  into `tb_user_info`(`uid`,`uname`,`password`,`tname`,`sex`,`title`,`phone`,`email`,`if_privilege`) values 
('u001','赵老师','827ccb0eea8a706c4c34a16891f84e7b','赵六','男','manager','15271229485','852707783@qq.com',1),
('u002','王老师','827ccb0eea8a706c4c34a16891f84e7b','王五','男','director','16516123167','85270993@qq.com',0),
('u003','李老师','827ccb0eea8a706c4c34a16891f84e7b','李四','男','president','12456311562','78462626@qq.com',0),
('u004','','827ccb0eea8a706c4c34a16891f84e7b','张三','男','teacher','12456311562','78462626@qq.com',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
