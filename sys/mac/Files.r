#include <MacTypes.r>
#include "date.h"
#include "patchlevel.h"


/* Carbon 'carb' resource
 * has been made obsolete by the 'plst' resource below.
 */

/* Carbon 'plst' resource
 * Single-file applications must have this resource for MacOS X to
 * count it as a Carbon app rather than a Classic app.  It contains
 * an embedded Info.plist file, with the same format as would occur
 * in an application based on a directory bundle.  The attributes
 * declared in this resource override the 'BNDL', 'FREF', and 'vers'
 * resources in MacOS X.
 *
 * For further information, see
 * http://developer.apple.com/technotes/tn/tn2013.html
 */
read 'plst' (0) "carbon.plist";


/* Classic resources
 * These resources are used in MacOS 9.x and earlier.
 */
resource 'vers' (1, purgeable) {
	VERSION_MAJOR, (VERSION_MINOR<<4) | PATCHLEVEL, final, EDITLEVEL, verUS,
	VERSION_STRING,
	VERSION_STRING
};

resource 'vers' (2, purgeable) {
	VERSION_MAJOR, (VERSION_MINOR<<4) | PATCHLEVEL, final, EDITLEVEL, verUS,
	VERSION_STRING,
	"devteam@nethack.org"
};


/* Dungeon librarian files
 * File data and quest.dat have gotten too big to be put into resources!
 */
#ifdef TARGET_API_MAC_CARBON
read 'File' (1000,"cmdhelp") "cmdhelp";
read 'File' (1001,"help") "help";
read 'File' (1002,"hh") "hh";
read 'File' (1003,"history") "history";
read 'File' (1004,"license") "license";
read 'File' (1005,"MacHelp") "MacHelp";
read 'File' (1006,"News") "News";
read 'File' (1007,"opthelp") "opthelp";
read 'File' (1008,"wizhelp") "wizhelp";
read 'File' (1009,"air.lev") "air.lev";
read 'File' (1010,"asmodeus.lev") "asmodeus.lev";
read 'File' (1011,"astral.lev") "astral.lev";
read 'File' (1012,"baalz.lev") "baalz.lev";
read 'File' (1013,"bigrm-1.lev") "bigrm-1.lev";
read 'File' (1014,"bigrm-2.lev") "bigrm-2.lev";
read 'File' (1015,"bigrm-3.lev") "bigrm-3.lev";
read 'File' (1016,"bigrm-4.lev") "bigrm-4.lev";
read 'File' (1017,"bigrm-5.lev") "bigrm-5.lev";
read 'File' (1018,"bigrm-6.lev") "bigrm-6.lev";
read 'File' (1019,"bigrm-7.lev") "bigrm-7.lev";
read 'File' (1020,"bigrm-8.lev") "bigrm-8.lev";
read 'File' (1021,"bigrm-9.lev") "bigrm-9.lev";
read 'File' (1022,"bigrm-10.lev") "bigrm-10.lev";
read 'File' (1023,"castle-1.lev") "castle-1.lev";
read 'File' (1024,"castle-2.lev") "castle-2.lev";
read 'File' (1025,"castle-3.lev") "castle-3.lev";
//read 'File' (1026,"data") "data";
read 'File' (1027,"demogor.lev") "demogor.lev";
read 'File' (1028,"dis.lev") "dis.lev";
read 'File' (1029,"dungeon") "dungeon";
read 'File' (1030,"earth.lev") "earth.lev";
read 'File' (1031,"fakewiz1.lev") "fakewiz1.lev";
read 'File' (1032,"fakewiz2.lev") "fakewiz2.lev";
read 'File' (1033,"fire.lev") "fire.lev";
read 'File' (1034,"geryon.lev") "geryon.lev";
read 'File' (1035,"hellfill.lev") "hellfill.lev";
read 'File' (1036,"icequeen-1.lev") "icequeen-1.lev";
read 'File' (1037,"icequeen-2.lev") "icequeen-2.lev";
read 'File' (1038,"icequeen-3.lev") "icequeen-3.lev";
read 'File' (1039,"juiblex.lev") "juiblex.lev";
read 'File' (1040,"knox-1.lev") "knox-1.lev";
read 'File' (1041,"knox-2.lev") "knox-2.lev";
read 'File' (1042,"knox-3.lev") "knox-3.lev";
read 'File' (1043,"medusa-1.lev") "medusa-1.lev";
read 'File' (1044,"medusa-2.lev") "medusa-2.lev";
read 'File' (1045,"medusa-3.lev") "medusa-3.lev";
read 'File' (1046,"medusa-4.lev") "medusa-4.lev";
read 'File' (1047,"minefill.lev") "minefill.lev";
read 'File' (1048,"minend-1.lev") "minend-1.lev";
read 'File' (1049,"minend-2.lev") "minend-2.lev";
read 'File' (1050,"minend-3.lev") "minend-3.lev";
read 'File' (1051,"minend-4.lev") "minend-4.lev";
read 'File' (1052,"minend-5.lev") "minend-5.lev";
read 'File' (1053,"minetn-1.lev") "minetn-1.lev";
read 'File' (1054,"minetn-2.lev") "minetn-2.lev";
read 'File' (1055,"minetn-3.lev") "minetn-3.lev";
read 'File' (1056,"minetn-4.lev") "minetn-4.lev";
read 'File' (1057,"minetn-5.lev") "minetn-5.lev";
read 'File' (1058,"minetn-6.lev") "minetn-6.lev";
read 'File' (1059,"minetn-7.lev") "minetn-7.lev";
read 'File' (1060,"minetn-8.lev") "minetn-8.lev";
read 'File' (1061,"options") "options";
read 'File' (1062,"oracle.lev") "oracle.lev";
read 'File' (1063,"oracles") "oracles";
read 'File' (1064,"orcus.lev") "orcus.lev";
//read 'File' (1065,"quest.dat") "quest.dat";
read 'File' (1066,"rumors") "rumors";
read 'File' (1067,"sanctum.lev") "sanctum.lev";
read 'File' (1068,"soko1-1.lev") "soko1-1.lev";
read 'File' (1069,"soko1-2.lev") "soko1-2.lev";
read 'File' (1070,"soko2-1.lev") "soko2-1.lev";
read 'File' (1071,"soko2-2.lev") "soko2-2.lev";
read 'File' (1072,"soko3-1.lev") "soko3-1.lev";
read 'File' (1073,"soko3-2.lev") "soko3-2.lev";
read 'File' (1074,"soko4-1.lev") "soko4-1.lev";
read 'File' (1075,"soko4-2.lev") "soko4-2.lev";
read 'File' (1076,"tower1.lev") "tower1.lev";
read 'File' (1077,"tower2.lev") "tower2.lev";
read 'File' (1078,"tower3.lev") "tower3.lev";
read 'File' (1079,"tower4.lev") "tower4.lev";
read 'File' (1080,"valley.lev") "valley.lev";
//read 'File' (1081,"vaults.dat") "vaults.dat";
read 'File' (1082,"vlt-0000.lev") "vlt-0000.lev";
read 'File' (1083,"vlt-0001.lev") "vlt-0001.lev";
read 'File' (1084,"vlt-0002.lev") "vlt-0002.lev";
read 'File' (1085,"vlt-0003.lev") "vlt-0003.lev";
read 'File' (1086,"vlt-0004.lev") "vlt-0004.lev";
read 'File' (1087,"vlt-0005.lev") "vlt-0005.lev";
read 'File' (1088,"vlt-0006.lev") "vlt-0006.lev";
read 'File' (1089,"vlt-0007.lev") "vlt-0007.lev";
read 'File' (1090,"vlt-0008.lev") "vlt-0008.lev";
read 'File' (1091,"vlt-0009.lev") "vlt-0009.lev";
read 'File' (1092,"vlt-0010.lev") "vlt-0010.lev";
read 'File' (1093,"vlt-0011.lev") "vlt-0011.lev";
read 'File' (1094,"vlt-0012.lev") "vlt-0012.lev";
read 'File' (1095,"vlt-0013.lev") "vlt-0013.lev";
read 'File' (1096,"vlt-0014.lev") "vlt-0014.lev";
read 'File' (1097,"vlt-0015.lev") "vlt-0015.lev";
read 'File' (1098,"vlt-0016.lev") "vlt-0016.lev";
read 'File' (1099,"vlt-0017.lev") "vlt-0017.lev";
read 'File' (1100,"vlt-0018.lev") "vlt-0018.lev";
read 'File' (1101,"vlt-0019.lev") "vlt-0019.lev";
read 'File' (1102,"vlt-0020.lev") "vlt-0020.lev";
read 'File' (1103,"vlt-0021.lev") "vlt-0021.lev";
read 'File' (1104,"vlt-0022.lev") "vlt-0022.lev";
read 'File' (1105,"vlt-0023.lev") "vlt-0023.lev";
read 'File' (1106,"vlt-0024.lev") "vlt-0024.lev";
read 'File' (1107,"vlt-0025.lev") "vlt-0025.lev";
read 'File' (1108,"vlt-0026.lev") "vlt-0026.lev";
read 'File' (1109,"vlt-0027.lev") "vlt-0027.lev";
read 'File' (1110,"vlt-0028.lev") "vlt-0028.lev";
read 'File' (1111,"vlt-0029.lev") "vlt-0029.lev";
read 'File' (1112,"vlt-0030.lev") "vlt-0030.lev";
read 'File' (1113,"vlt-0031.lev") "vlt-0031.lev";
read 'File' (1114,"water.lev") "water.lev";
read 'File' (1115,"wizard1.lev") "wizard1.lev";
read 'File' (1116,"wizard2.lev") "wizard2.lev";
read 'File' (1117,"wizard3.lev") "wizard3.lev";
read 'File' (1118,"yeenoghu.lev") "yeenoghu.lev";
read 'File' (1200,"Arc-fila.lev") "Arc-fila.lev";
read 'File' (1201,"Arc-filb.lev") "Arc-filb.lev";
read 'File' (1202,"Arc-goal.lev") "Arc-goal.lev";
read 'File' (1203,"Arc-loca.lev") "Arc-loca.lev";
read 'File' (1204,"Arc-strt.lev") "Arc-strt.lev";
read 'File' (1205,"Bar-fila.lev") "Bar-fila.lev";
read 'File' (1206,"Bar-filb.lev") "Bar-filb.lev";
read 'File' (1207,"Bar-goal.lev") "Bar-goal.lev";
read 'File' (1208,"Bar-loca.lev") "Bar-loca.lev";
read 'File' (1209,"Bar-strt.lev") "Bar-strt.lev";
read 'File' (1210,"Cav-fila.lev") "Cav-fila.lev";
read 'File' (1211,"Cav-filb.lev") "Cav-filb.lev";
read 'File' (1212,"Cav-goal.lev") "Cav-goal.lev";
read 'File' (1213,"Cav-loca.lev") "Cav-loca.lev";
read 'File' (1214,"Cav-strt.lev") "Cav-strt.lev";
read 'File' (1215,"Con-fila.lev") "Con-fila.lev";
read 'File' (1216,"Con-filb.lev") "Con-filb.lev";
read 'File' (1217,"Con-goal.lev") "Con-goal.lev";
read 'File' (1218,"Con-loca.lev") "Con-loca.lev";
read 'File' (1219,"Con-strt.lev") "Con-strt.lev";
read 'File' (1220,"Hea-fila.lev") "Hea-fila.lev";
read 'File' (1221,"Hea-filb.lev") "Hea-filb.lev";
read 'File' (1222,"Hea-goal.lev") "Hea-goal.lev";
read 'File' (1223,"Hea-loca.lev") "Hea-loca.lev";
read 'File' (1224,"Hea-strt.lev") "Hea-strt.lev";
read 'File' (1225,"Kni-fila.lev") "Kni-fila.lev";
read 'File' (1226,"Kni-filb.lev") "Kni-filb.lev";
read 'File' (1227,"Kni-goal.lev") "Kni-goal.lev";
read 'File' (1228,"Kni-loca.lev") "Kni-loca.lev";
read 'File' (1229,"Kni-strt.lev") "Kni-strt.lev";
read 'File' (1230,"Mon-fila.lev") "Mon-fila.lev";
read 'File' (1231,"Mon-filb.lev") "Mon-filb.lev";
read 'File' (1232,"Mon-goal.lev") "Mon-goal.lev";
read 'File' (1233,"Mon-loca.lev") "Mon-loca.lev";
read 'File' (1234,"Mon-strt.lev") "Mon-strt.lev";
read 'File' (1235,"Pri-fila.lev") "Pri-fila.lev";
read 'File' (1236,"Pri-filb.lev") "Pri-filb.lev";
read 'File' (1237,"Pri-goal.lev") "Pri-goal.lev";
read 'File' (1238,"Pri-loca.lev") "Pri-loca.lev";
read 'File' (1239,"Pri-strt.lev") "Pri-strt.lev";
read 'File' (1240,"Ran-fila.lev") "Ran-fila.lev";
read 'File' (1241,"Ran-filb.lev") "Ran-filb.lev";
read 'File' (1242,"Ran-goal.lev") "Ran-goal.lev";
read 'File' (1243,"Ran-loca.lev") "Ran-loca.lev";
read 'File' (1244,"Ran-strt.lev") "Ran-strt.lev";
read 'File' (1245,"Rog-fila.lev") "Rog-fila.lev";
read 'File' (1246,"Rog-filb.lev") "Rog-filb.lev";
read 'File' (1247,"Rog-goal.lev") "Rog-goal.lev";
read 'File' (1248,"Rog-loca.lev") "Rog-loca.lev";
read 'File' (1249,"Rog-strt.lev") "Rog-strt.lev";
read 'File' (1250,"Sam-fila.lev") "Sam-fila.lev";
read 'File' (1251,"Sam-filb.lev") "Sam-filb.lev";
read 'File' (1252,"Sam-goal.lev") "Sam-goal.lev";
read 'File' (1253,"Sam-loca.lev") "Sam-loca.lev";
read 'File' (1254,"Sam-strt.lev") "Sam-strt.lev";
read 'File' (1255,"Tou-fila.lev") "Tou-fila.lev";
read 'File' (1256,"Tou-filb.lev") "Tou-filb.lev";
read 'File' (1257,"Tou-goal.lev") "Tou-goal.lev";
read 'File' (1258,"Tou-loca.lev") "Tou-loca.lev";
read 'File' (1259,"Tou-strt.lev") "Tou-strt.lev";
read 'File' (1260,"Val-fila.lev") "Val-fila.lev";
read 'File' (1261,"Val-filb.lev") "Val-filb.lev";
read 'File' (1262,"Val-goal.lev") "Val-goal.lev";
read 'File' (1263,"Val-loca.lev") "Val-loca.lev";
read 'File' (1264,"Val-strt.lev") "Val-strt.lev";
read 'File' (1265,"Wiz-fila.lev") "Wiz-fila.lev";
read 'File' (1266,"Wiz-filb.lev") "Wiz-filb.lev";
read 'File' (1267,"Wiz-goal.lev") "Wiz-goal.lev";
read 'File' (1268,"Wiz-loca.lev") "Wiz-loca.lev";
read 'File' (1269,"Wiz-strt.lev") "Wiz-strt.lev";
#else
read 'File' (1000,"cmdhelp") ":dat:cmdhelp";
read 'File' (1001,"help") ":dat:help";
read 'File' (1002,"hh") ":dat:hh";
read 'File' (1003,"history") ":dat:history";
read 'File' (1004,"license") ":dat:license";
read 'File' (1005,"MacHelp") ":sys:mac:MacHelp";
read 'File' (1006,"News") ":sys:mac:News";
read 'File' (1007,"opthelp") ":dat:opthelp";
read 'File' (1008,"wizhelp") ":dat:wizhelp";
read 'File' (1009,"air.lev") ":lib:air.lev";
read 'File' (1010,"asmodeus.lev") ":lib:asmodeus.lev";
read 'File' (1011,"astral.lev") ":lib:astral.lev";
read 'File' (1012,"baalz.lev") ":lib:baalz.lev";
read 'File' (1013,"bigrm-1.lev") ":lib:bigrm-1.lev";
read 'File' (1014,"bigrm-2.lev") ":lib:bigrm-2.lev";
read 'File' (1015,"bigrm-3.lev") ":lib:bigrm-3.lev";
read 'File' (1016,"bigrm-4.lev") ":lib:bigrm-4.lev";
read 'File' (1017,"bigrm-5.lev") ":lib:bigrm-5.lev";
read 'File' (1018,"bigrm-6.lev") ":lib:bigrm-6.lev";
read 'File' (1019,"bigrm-7.lev") ":lib:bigrm-7.lev";
read 'File' (1020,"bigrm-8.lev") ":lib:bigrm-8.lev";
read 'File' (1021,"bigrm-9.lev") ":lib:bigrm-9.lev";
read 'File' (1022,"bigrm-10.lev") ":lib:bigrm-10.lev";
read 'File' (1023,"castle-1.lev") ":lib:castle-1.lev";
read 'File' (1024,"castle-2.lev") ":lib:castle-2.lev";
read 'File' (1025,"castle-3.lev") ":lib:castle-3.lev";
read 'File' (1026,"data") ":lib:data";
read 'File' (1027,"demogor.lev") ":lib:demogor.lev";
read 'File' (1028,"dis.lev") ":lib:dis.lev";
read 'File' (1029,"dungeon") ":lib:dungeon";
read 'File' (1030,"earth.lev") ":lib:earth.lev";
read 'File' (1031,"fakewiz1.lev") ":lib:fakewiz1.lev";
read 'File' (1032,"fakewiz2.lev") ":lib:fakewiz2.lev";
read 'File' (1033,"fire.lev") ":lib:fire.lev";
read 'File' (1034,"geryon.lev") ":lib:geryon.lev";
read 'File' (1035,"hellfill.lev") ":lib:hellfill.lev";
read 'File' (1036,"icequeen-1.lev") ":lib:icequeen-1.lev";
read 'File' (1037,"icequeen-2.lev") ":lib:icequeen-2.lev";
read 'File' (1038,"icequeen-3.lev") ":lib:icequeen-3.lev";
read 'File' (1039,"juiblex.lev") ":lib:juiblex.lev";
read 'File' (1040,"knox-1.lev") ":lib:knox-1.lev";
read 'File' (1041,"knox-2.lev") ":lib:knox-2.lev";
read 'File' (1042,"knox-3.lev") ":lib:knox-3.lev";
read 'File' (1043,"medusa-1.lev") ":lib:medusa-1.lev";
read 'File' (1044,"medusa-2.lev") ":lib:medusa-2.lev";
read 'File' (1045,"medusa-3.lev") ":lib:medusa-3.lev";
read 'File' (1046,"medusa-4.lev") ":lib:medusa-4.lev";
read 'File' (1047,"minefill.lev") ":lib:minefill.lev";
read 'File' (1048,"minend-1.lev") ":lib:minend-1.lev";
read 'File' (1049,"minend-2.lev") ":lib:minend-2.lev";
read 'File' (1050,"minend-3.lev") ":lib:minend-3.lev";
read 'File' (1051,"minend-4.lev") ":lib:minend-4.lev";
read 'File' (1052,"minend-5.lev") ":lib:minend-5.lev";
read 'File' (1053,"minetn-1.lev") ":lib:minetn-1.lev";
read 'File' (1054,"minetn-2.lev") ":lib:minetn-2.lev";
read 'File' (1055,"minetn-3.lev") ":lib:minetn-3.lev";
read 'File' (1056,"minetn-4.lev") ":lib:minetn-4.lev";
read 'File' (1057,"minetn-5.lev") ":lib:minetn-5.lev";
read 'File' (1058,"minetn-6.lev") ":lib:minetn-6.lev";
read 'File' (1059,"minetn-7.lev") ":lib:minetn-7.lev";
read 'File' (1060,"minetn-8.lev") ":lib:minetn-8.lev";
read 'File' (1061,"options") ":lib:options";
read 'File' (1062,"oracle.lev") ":lib:oracle.lev";
read 'File' (1063,"oracles") ":lib:oracles";
read 'File' (1064,"orcus.lev") ":lib:orcus.lev";
read 'File' (1065,"quest.dat") ":lib:quest.dat";
read 'File' (1066,"rumors") ":lib:rumors";
read 'File' (1067,"sanctum.lev") ":lib:sanctum.lev";
read 'File' (1068,"soko1-1.lev") ":lib:soko1-1.lev";
read 'File' (1069,"soko1-2.lev") ":lib:soko1-2.lev";
read 'File' (1070,"soko2-1.lev") ":lib:soko2-1.lev";
read 'File' (1071,"soko2-2.lev") ":lib:soko2-2.lev";
read 'File' (1072,"soko3-1.lev") ":lib:soko3-1.lev";
read 'File' (1073,"soko3-2.lev") ":lib:soko3-2.lev";
read 'File' (1074,"soko4-1.lev") ":lib:soko4-1.lev";
read 'File' (1075,"soko4-2.lev") ":lib:soko4-2.lev";
read 'File' (1076,"tower1.lev") ":lib:tower1.lev";
read 'File' (1077,"tower2.lev") ":lib:tower2.lev";
read 'File' (1078,"tower3.lev") ":lib:tower3.lev";
read 'File' (1079,"tower4.lev") ":lib:tower4.lev";
read 'File' (1080,"valley.lev") ":lib:valley.lev";
read 'File' (1081,"vaults.dat") ":lib:vaults.dat";
read 'File' (1082,"vlt-0000.lev") ":lib:vlt-0000.lev";
read 'File' (1083,"vlt-0001.lev") ":lib:vlt-0001.lev";
read 'File' (1084,"vlt-0002.lev") ":lib:vlt-0002.lev";
read 'File' (1085,"vlt-0003.lev") ":lib:vlt-0003.lev";
read 'File' (1086,"vlt-0004.lev") ":lib:vlt-0004.lev";
read 'File' (1087,"vlt-0005.lev") ":lib:vlt-0005.lev";
read 'File' (1088,"vlt-0006.lev") ":lib:vlt-0006.lev";
read 'File' (1089,"vlt-0007.lev") ":lib:vlt-0007.lev";
read 'File' (1090,"vlt-0008.lev") ":lib:vlt-0008.lev";
read 'File' (1091,"vlt-0009.lev") ":lib:vlt-0009.lev";
read 'File' (1092,"vlt-0010.lev") ":lib:vlt-0010.lev";
read 'File' (1093,"vlt-0011.lev") ":lib:vlt-0011.lev";
read 'File' (1094,"vlt-0012.lev") ":lib:vlt-0012.lev";
read 'File' (1095,"vlt-0013.lev") ":lib:vlt-0013.lev";
read 'File' (1096,"vlt-0014.lev") ":lib:vlt-0014.lev";
read 'File' (1097,"vlt-0015.lev") ":lib:vlt-0015.lev";
read 'File' (1098,"vlt-0016.lev") ":lib:vlt-0016.lev";
read 'File' (1099,"vlt-0017.lev") ":lib:vlt-0017.lev";
read 'File' (1100,"vlt-0018.lev") ":lib:vlt-0018.lev";
read 'File' (1101,"vlt-0019.lev") ":lib:vlt-0019.lev";
read 'File' (1102,"vlt-0020.lev") ":lib:vlt-0020.lev";
read 'File' (1103,"vlt-0021.lev") ":lib:vlt-0021.lev";
read 'File' (1104,"vlt-0022.lev") ":lib:vlt-0022.lev";
read 'File' (1105,"vlt-0023.lev") ":lib:vlt-0023.lev";
read 'File' (1106,"vlt-0024.lev") ":lib:vlt-0024.lev";
read 'File' (1107,"vlt-0025.lev") ":lib:vlt-0025.lev";
read 'File' (1108,"vlt-0026.lev") ":lib:vlt-0026.lev";
read 'File' (1109,"vlt-0027.lev") ":lib:vlt-0027.lev";
read 'File' (1110,"vlt-0028.lev") ":lib:vlt-0028.lev";
read 'File' (1111,"vlt-0029.lev") ":lib:vlt-0029.lev";
read 'File' (1112,"vlt-0030.lev") ":lib:vlt-0030.lev";
read 'File' (1113,"vlt-0031.lev") ":lib:vlt-0031.lev";
read 'File' (1114,"water.lev") ":lib:water.lev";
read 'File' (1115,"wizard1.lev") ":lib:wizard1.lev";
read 'File' (1116,"wizard2.lev") ":lib:wizard2.lev";
read 'File' (1117,"wizard3.lev") ":lib:wizard3.lev";
read 'File' (1118,"yeenoghu.lev") ":lib:yeenoghu.lev";
read 'File' (1200,"Arc-fila.lev") ":lib:Arc-fila.lev";
read 'File' (1201,"Arc-filb.lev") ":lib:Arc-filb.lev";
read 'File' (1202,"Arc-goal.lev") ":lib:Arc-goal.lev";
read 'File' (1203,"Arc-loca.lev") ":lib:Arc-loca.lev";
read 'File' (1204,"Arc-strt.lev") ":lib:Arc-strt.lev";
read 'File' (1205,"Bar-fila.lev") ":lib:Bar-fila.lev";
read 'File' (1206,"Bar-filb.lev") ":lib:Bar-filb.lev";
read 'File' (1207,"Bar-goal.lev") ":lib:Bar-goal.lev";
read 'File' (1208,"Bar-loca.lev") ":lib:Bar-loca.lev";
read 'File' (1209,"Bar-strt.lev") ":lib:Bar-strt.lev";
read 'File' (1210,"Cav-fila.lev") ":lib:Cav-fila.lev";
read 'File' (1211,"Cav-filb.lev") ":lib:Cav-filb.lev";
read 'File' (1212,"Cav-goal.lev") ":lib:Cav-goal.lev";
read 'File' (1213,"Cav-loca.lev") ":lib:Cav-loca.lev";
read 'File' (1214,"Cav-strt.lev") ":lib:Cav-strt.lev";
read 'File' (1215,"Con-fila.lev") ":lib:Con-fila.lev";
read 'File' (1216,"Con-filb.lev") ":lib:Con-filb.lev";
read 'File' (1217,"Con-goal.lev") ":lib:Con-goal.lev";
read 'File' (1218,"Con-loca.lev") ":lib:Con-loca.lev";
read 'File' (1219,"Con-strt.lev") ":lib:Con-strt.lev";
read 'File' (1220,"Hea-fila.lev") ":lib:Hea-fila.lev";
read 'File' (1221,"Hea-filb.lev") ":lib:Hea-filb.lev";
read 'File' (1222,"Hea-goal.lev") ":lib:Hea-goal.lev";
read 'File' (1223,"Hea-loca.lev") ":lib:Hea-loca.lev";
read 'File' (1224,"Hea-strt.lev") ":lib:Hea-strt.lev";
read 'File' (1225,"Kni-fila.lev") ":lib:Kni-fila.lev";
read 'File' (1226,"Kni-filb.lev") ":lib:Kni-filb.lev";
read 'File' (1227,"Kni-goal.lev") ":lib:Kni-goal.lev";
read 'File' (1228,"Kni-loca.lev") ":lib:Kni-loca.lev";
read 'File' (1229,"Kni-strt.lev") ":lib:Kni-strt.lev";
read 'File' (1230,"Mon-fila.lev") ":lib:Mon-fila.lev";
read 'File' (1231,"Mon-filb.lev") ":lib:Mon-filb.lev";
read 'File' (1232,"Mon-goal.lev") ":lib:Mon-goal.lev";
read 'File' (1233,"Mon-loca.lev") ":lib:Mon-loca.lev";
read 'File' (1234,"Mon-strt.lev") ":lib:Mon-strt.lev";
read 'File' (1235,"Pri-fila.lev") ":lib:Pri-fila.lev";
read 'File' (1236,"Pri-filb.lev") ":lib:Pri-filb.lev";
read 'File' (1237,"Pri-goal.lev") ":lib:Pri-goal.lev";
read 'File' (1238,"Pri-loca.lev") ":lib:Pri-loca.lev";
read 'File' (1239,"Pri-strt.lev") ":lib:Pri-strt.lev";
read 'File' (1240,"Ran-fila.lev") ":lib:Ran-fila.lev";
read 'File' (1241,"Ran-filb.lev") ":lib:Ran-filb.lev";
read 'File' (1242,"Ran-goal.lev") ":lib:Ran-goal.lev";
read 'File' (1243,"Ran-loca.lev") ":lib:Ran-loca.lev";
read 'File' (1244,"Ran-strt.lev") ":lib:Ran-strt.lev";
read 'File' (1245,"Rog-fila.lev") ":lib:Rog-fila.lev";
read 'File' (1246,"Rog-filb.lev") ":lib:Rog-filb.lev";
read 'File' (1247,"Rog-goal.lev") ":lib:Rog-goal.lev";
read 'File' (1248,"Rog-loca.lev") ":lib:Rog-loca.lev";
read 'File' (1249,"Rog-strt.lev") ":lib:Rog-strt.lev";
read 'File' (1250,"Sam-fila.lev") ":lib:Sam-fila.lev";
read 'File' (1251,"Sam-filb.lev") ":lib:Sam-filb.lev";
read 'File' (1252,"Sam-goal.lev") ":lib:Sam-goal.lev";
read 'File' (1253,"Sam-loca.lev") ":lib:Sam-loca.lev";
read 'File' (1254,"Sam-strt.lev") ":lib:Sam-strt.lev";
read 'File' (1255,"Tou-fila.lev") ":lib:Tou-fila.lev";
read 'File' (1256,"Tou-filb.lev") ":lib:Tou-filb.lev";
read 'File' (1257,"Tou-goal.lev") ":lib:Tou-goal.lev";
read 'File' (1258,"Tou-loca.lev") ":lib:Tou-loca.lev";
read 'File' (1259,"Tou-strt.lev") ":lib:Tou-strt.lev";
read 'File' (1260,"Val-fila.lev") ":lib:Val-fila.lev";
read 'File' (1261,"Val-filb.lev") ":lib:Val-filb.lev";
read 'File' (1262,"Val-goal.lev") ":lib:Val-goal.lev";
read 'File' (1263,"Val-loca.lev") ":lib:Val-loca.lev";
read 'File' (1264,"Val-strt.lev") ":lib:Val-strt.lev";
read 'File' (1265,"Wiz-fila.lev") ":lib:Wiz-fila.lev";
read 'File' (1266,"Wiz-filb.lev") ":lib:Wiz-filb.lev";
read 'File' (1267,"Wiz-goal.lev") ":lib:Wiz-goal.lev";
read 'File' (1268,"Wiz-loca.lev") ":lib:Wiz-loca.lev";
read 'File' (1269,"Wiz-strt.lev") ":lib:Wiz-strt.lev";
#endif
