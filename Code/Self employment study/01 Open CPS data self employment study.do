*Opening IPUMS CPS dataset using IPUMS code
set more off
set logtype text
log using "C:\Users\china.layne\Documents\Open IPUMS CPS dataset.txt", replace

clear
quietly infix                    ///
  int     year        1-4        ///
  long    serial      5-9        ///
  float   hwtsupp     10-19      ///
  double  cpsid       20-33      ///
  byte    statefip    34-35      ///
  byte    asecflag    36-36      ///
  byte    hflag       37-37      ///
  int     metarea     38-41      ///
  long    county      42-46      ///
  byte    cbsasz      47-48      ///
  long    metfips     49-53      ///
  byte    month       54-55      ///
  byte    pernum      56-57      ///
  double  cpsidp      58-71      ///
  float   wtsupp      72-81      ///
  float   earnwt      82-91      ///
  byte    repwtp      92-92      ///
  int     relate      93-96      ///
  byte    age         97-98      ///
  byte    sex         99-99      ///
  int     race        100-102    ///
  byte    marst       103-103    ///
  byte    popstat     104-104    ///
  byte    citizen     105-105    ///
  int     hispan      106-108    ///
  int     educ        109-111    ///
  byte    empstat     112-113    ///
  byte    labforce    114-114    ///
  int     occ         115-118    ///
  int     occ2010     119-122    ///
  int     ind1990     123-125    ///
  int     occ1950     126-128    ///
  int     ind         129-132    ///
  int     ind1950     133-135    ///
  byte    classwkr    136-137    ///
  int     occly       138-141    ///
  int     occ50ly     142-144    ///
  int     indly       145-148    ///
  int     ind50ly     149-151    ///
  byte    classwly    152-153    ///
  byte    wkswork1    154-155    ///
  byte    wkswork2    156-156    ///
  int     uhrsworkly  157-159    ///
  int     uhrswork1   160-162    ///
  byte    wksunem1    163-164    ///
  byte    wksunem2    165-165    ///
  byte    durunem2    166-167    ///
  int     durunemp    168-170    ///
  byte    fullpart    171-171    ///
  float   hourwage    172-175    ///
  byte    paidhour    176-176    ///
  byte    pension     177-177    ///
  byte    union       178-178    ///
  byte    firmsize    179-179    ///
  byte    numemps     180-180    ///
  double  ftotval     181-190    ///
  double  inctot      191-198    ///
  long    incwage     199-205    ///
  long    incbus      206-212    ///
  long    incfarm     213-219    ///
  long    incretir    220-225    ///
  float   earnweek    226-233    ///
  long    inclongj    234-240    ///
  long    increti1    241-245    ///
  long    increti2    246-250    ///
  long    oincbus     251-256    ///
  long    oincfarm    257-262    ///
  long    oincwage    263-269    ///
  byte    srcearn     270-270    ///
  byte    srcreti1    271-271    ///
  byte    srcreti2    272-272    ///
  byte    vetstat     273-273    ///
  byte    disabwrk    274-274    ///
  byte    diffany     275-275    ///
  byte    migrate1    276-276    ///
  byte    inclugh     277-277    ///
  byte    himcaid     278-278    ///
  byte    phinsur     279-279    ///
  byte    caid        280-280    ///
  byte    groupown    281-281    ///
  byte    coverpi     282-282    ///
  byte    wkstat      283-284    ///
  byte    workly      285-286    ///
  float   repwtp1     287-296    ///
  float   repwtp2     297-306    ///
  float   repwtp3     307-316    ///
  float   repwtp4     317-326    ///
  float   repwtp5     327-336    ///
  float   repwtp6     337-346    ///
  float   repwtp7     347-356    ///
  float   repwtp8     357-366    ///
  float   repwtp9     367-376    ///
  float   repwtp10    377-386    ///
  float   repwtp11    387-396    ///
  float   repwtp12    397-406    ///
  float   repwtp13    407-416    ///
  float   repwtp14    417-426    ///
  float   repwtp15    427-436    ///
  float   repwtp16    437-446    ///
  float   repwtp17    447-456    ///
  float   repwtp18    457-466    ///
  float   repwtp19    467-476    ///
  float   repwtp20    477-486    ///
  float   repwtp21    487-496    ///
  float   repwtp22    497-506    ///
  float   repwtp23    507-516    ///
  float   repwtp24    517-526    ///
  float   repwtp25    527-536    ///
  float   repwtp26    537-546    ///
  float   repwtp27    547-556    ///
  float   repwtp28    557-566    ///
  float   repwtp29    567-576    ///
  float   repwtp30    577-586    ///
  float   repwtp31    587-596    ///
  float   repwtp32    597-606    ///
  float   repwtp33    607-616    ///
  float   repwtp34    617-626    ///
  float   repwtp35    627-636    ///
  float   repwtp36    637-646    ///
  float   repwtp37    647-656    ///
  float   repwtp38    657-666    ///
  float   repwtp39    667-676    ///
  float   repwtp40    677-686    ///
  float   repwtp41    687-696    ///
  float   repwtp42    697-706    ///
  float   repwtp43    707-716    ///
  float   repwtp44    717-726    ///
  float   repwtp45    727-736    ///
  float   repwtp46    737-746    ///
  float   repwtp47    747-756    ///
  float   repwtp48    757-766    ///
  float   repwtp49    767-776    ///
  float   repwtp50    777-786    ///
  float   repwtp51    787-796    ///
  float   repwtp52    797-806    ///
  float   repwtp53    807-816    ///
  float   repwtp54    817-826    ///
  float   repwtp55    827-836    ///
  float   repwtp56    837-846    ///
  float   repwtp57    847-856    ///
  float   repwtp58    857-866    ///
  float   repwtp59    867-876    ///
  float   repwtp60    877-886    ///
  float   repwtp61    887-896    ///
  float   repwtp62    897-906    ///
  float   repwtp63    907-916    ///
  float   repwtp64    917-926    ///
  float   repwtp65    927-936    ///
  float   repwtp66    937-946    ///
  float   repwtp67    947-956    ///
  float   repwtp68    957-966    ///
  float   repwtp69    967-976    ///
  float   repwtp70    977-986    ///
  float   repwtp71    987-996    ///
  float   repwtp72    997-1006   ///
  float   repwtp73    1007-1016  ///
  float   repwtp74    1017-1026  ///
  float   repwtp75    1027-1036  ///
  float   repwtp76    1037-1046  ///
  float   repwtp77    1047-1056  ///
  float   repwtp78    1057-1066  ///
  float   repwtp79    1067-1076  ///
  float   repwtp80    1077-1086  ///
  float   repwtp81    1087-1096  ///
  float   repwtp82    1097-1106  ///
  float   repwtp83    1107-1116  ///
  float   repwtp84    1117-1126  ///
  float   repwtp85    1127-1136  ///
  float   repwtp86    1137-1146  ///
  float   repwtp87    1147-1156  ///
  float   repwtp88    1157-1166  ///
  float   repwtp89    1167-1176  ///
  float   repwtp90    1177-1186  ///
  float   repwtp91    1187-1196  ///
  float   repwtp92    1197-1206  ///
  float   repwtp93    1207-1216  ///
  float   repwtp94    1217-1226  ///
  float   repwtp95    1227-1236  ///
  float   repwtp96    1237-1246  ///
  float   repwtp97    1247-1256  ///
  float   repwtp98    1257-1266  ///
  float   repwtp99    1267-1276  ///
  float   repwtp100   1277-1286  ///
  float   repwtp101   1287-1296  ///
  float   repwtp102   1297-1306  ///
  float   repwtp103   1307-1316  ///
  float   repwtp104   1317-1326  ///
  float   repwtp105   1327-1336  ///
  float   repwtp106   1337-1346  ///
  float   repwtp107   1347-1356  ///
  float   repwtp108   1357-1366  ///
  float   repwtp109   1367-1376  ///
  float   repwtp110   1377-1386  ///
  float   repwtp111   1387-1396  ///
  float   repwtp112   1397-1406  ///
  float   repwtp113   1407-1416  ///
  float   repwtp114   1417-1426  ///
  float   repwtp115   1427-1436  ///
  float   repwtp116   1437-1446  ///
  float   repwtp117   1447-1456  ///
  float   repwtp118   1457-1466  ///
  float   repwtp119   1467-1476  ///
  float   repwtp120   1477-1486  ///
  float   repwtp121   1487-1496  ///
  float   repwtp122   1497-1506  ///
  float   repwtp123   1507-1516  ///
  float   repwtp124   1517-1526  ///
  float   repwtp125   1527-1536  ///
  float   repwtp126   1537-1546  ///
  float   repwtp127   1547-1556  ///
  float   repwtp128   1557-1566  ///
  float   repwtp129   1567-1576  ///
  float   repwtp130   1577-1586  ///
  float   repwtp131   1587-1596  ///
  float   repwtp132   1597-1606  ///
  float   repwtp133   1607-1616  ///
  float   repwtp134   1617-1626  ///
  float   repwtp135   1627-1636  ///
  float   repwtp136   1637-1646  ///
  float   repwtp137   1647-1656  ///
  float   repwtp138   1657-1666  ///
  float   repwtp139   1667-1676  ///
  float   repwtp140   1677-1686  ///
  float   repwtp141   1687-1696  ///
  float   repwtp142   1697-1706  ///
  float   repwtp143   1707-1716  ///
  float   repwtp144   1717-1726  ///
  float   repwtp145   1727-1736  ///
  float   repwtp146   1737-1746  ///
  float   repwtp147   1747-1756  ///
  float   repwtp148   1757-1766  ///
  float   repwtp149   1767-1776  ///
  float   repwtp150   1777-1786  ///
  float   repwtp151   1787-1796  ///
  float   repwtp152   1797-1806  ///
  float   repwtp153   1807-1816  ///
  float   repwtp154   1817-1826  ///
  float   repwtp155   1827-1836  ///
  float   repwtp156   1837-1846  ///
  float   repwtp157   1847-1856  ///
  float   repwtp158   1857-1866  ///
  float   repwtp159   1867-1876  ///
  float   repwtp160   1877-1886  ///
  using "C:\Users\china.layne\Downloads\cps_00016.dat\cps_00016.dat"

replace hwtsupp    = hwtsupp    / 10000
replace wtsupp     = wtsupp     / 10000
replace earnwt     = earnwt     / 10000
replace hourwage   = hourwage   / 100
replace earnweek   = earnweek   / 100
replace repwtp1    = repwtp1    / 10000
replace repwtp2    = repwtp2    / 10000
replace repwtp3    = repwtp3    / 10000
replace repwtp4    = repwtp4    / 10000
replace repwtp5    = repwtp5    / 10000
replace repwtp6    = repwtp6    / 10000
replace repwtp7    = repwtp7    / 10000
replace repwtp8    = repwtp8    / 10000
replace repwtp9    = repwtp9    / 10000
replace repwtp10   = repwtp10   / 10000
replace repwtp11   = repwtp11   / 10000
replace repwtp12   = repwtp12   / 10000
replace repwtp13   = repwtp13   / 10000
replace repwtp14   = repwtp14   / 10000
replace repwtp15   = repwtp15   / 10000
replace repwtp16   = repwtp16   / 10000
replace repwtp17   = repwtp17   / 10000
replace repwtp18   = repwtp18   / 10000
replace repwtp19   = repwtp19   / 10000
replace repwtp20   = repwtp20   / 10000
replace repwtp21   = repwtp21   / 10000
replace repwtp22   = repwtp22   / 10000
replace repwtp23   = repwtp23   / 10000
replace repwtp24   = repwtp24   / 10000
replace repwtp25   = repwtp25   / 10000
replace repwtp26   = repwtp26   / 10000
replace repwtp27   = repwtp27   / 10000
replace repwtp28   = repwtp28   / 10000
replace repwtp29   = repwtp29   / 10000
replace repwtp30   = repwtp30   / 10000
replace repwtp31   = repwtp31   / 10000
replace repwtp32   = repwtp32   / 10000
replace repwtp33   = repwtp33   / 10000
replace repwtp34   = repwtp34   / 10000
replace repwtp35   = repwtp35   / 10000
replace repwtp36   = repwtp36   / 10000
replace repwtp37   = repwtp37   / 10000
replace repwtp38   = repwtp38   / 10000
replace repwtp39   = repwtp39   / 10000
replace repwtp40   = repwtp40   / 10000
replace repwtp41   = repwtp41   / 10000
replace repwtp42   = repwtp42   / 10000
replace repwtp43   = repwtp43   / 10000
replace repwtp44   = repwtp44   / 10000
replace repwtp45   = repwtp45   / 10000
replace repwtp46   = repwtp46   / 10000
replace repwtp47   = repwtp47   / 10000
replace repwtp48   = repwtp48   / 10000
replace repwtp49   = repwtp49   / 10000
replace repwtp50   = repwtp50   / 10000
replace repwtp51   = repwtp51   / 10000
replace repwtp52   = repwtp52   / 10000
replace repwtp53   = repwtp53   / 10000
replace repwtp54   = repwtp54   / 10000
replace repwtp55   = repwtp55   / 10000
replace repwtp56   = repwtp56   / 10000
replace repwtp57   = repwtp57   / 10000
replace repwtp58   = repwtp58   / 10000
replace repwtp59   = repwtp59   / 10000
replace repwtp60   = repwtp60   / 10000
replace repwtp61   = repwtp61   / 10000
replace repwtp62   = repwtp62   / 10000
replace repwtp63   = repwtp63   / 10000
replace repwtp64   = repwtp64   / 10000
replace repwtp65   = repwtp65   / 10000
replace repwtp66   = repwtp66   / 10000
replace repwtp67   = repwtp67   / 10000
replace repwtp68   = repwtp68   / 10000
replace repwtp69   = repwtp69   / 10000
replace repwtp70   = repwtp70   / 10000
replace repwtp71   = repwtp71   / 10000
replace repwtp72   = repwtp72   / 10000
replace repwtp73   = repwtp73   / 10000
replace repwtp74   = repwtp74   / 10000
replace repwtp75   = repwtp75   / 10000
replace repwtp76   = repwtp76   / 10000
replace repwtp77   = repwtp77   / 10000
replace repwtp78   = repwtp78   / 10000
replace repwtp79   = repwtp79   / 10000
replace repwtp80   = repwtp80   / 10000
replace repwtp81   = repwtp81   / 10000
replace repwtp82   = repwtp82   / 10000
replace repwtp83   = repwtp83   / 10000
replace repwtp84   = repwtp84   / 10000
replace repwtp85   = repwtp85   / 10000
replace repwtp86   = repwtp86   / 10000
replace repwtp87   = repwtp87   / 10000
replace repwtp88   = repwtp88   / 10000
replace repwtp89   = repwtp89   / 10000
replace repwtp90   = repwtp90   / 10000
replace repwtp91   = repwtp91   / 10000
replace repwtp92   = repwtp92   / 10000
replace repwtp93   = repwtp93   / 10000
replace repwtp94   = repwtp94   / 10000
replace repwtp95   = repwtp95   / 10000
replace repwtp96   = repwtp96   / 10000
replace repwtp97   = repwtp97   / 10000
replace repwtp98   = repwtp98   / 10000
replace repwtp99   = repwtp99   / 10000
replace repwtp100  = repwtp100  / 10000
replace repwtp101  = repwtp101  / 10000
replace repwtp102  = repwtp102  / 10000
replace repwtp103  = repwtp103  / 10000
replace repwtp104  = repwtp104  / 10000
replace repwtp105  = repwtp105  / 10000
replace repwtp106  = repwtp106  / 10000
replace repwtp107  = repwtp107  / 10000
replace repwtp108  = repwtp108  / 10000
replace repwtp109  = repwtp109  / 10000
replace repwtp110  = repwtp110  / 10000
replace repwtp111  = repwtp111  / 10000
replace repwtp112  = repwtp112  / 10000
replace repwtp113  = repwtp113  / 10000
replace repwtp114  = repwtp114  / 10000
replace repwtp115  = repwtp115  / 10000
replace repwtp116  = repwtp116  / 10000
replace repwtp117  = repwtp117  / 10000
replace repwtp118  = repwtp118  / 10000
replace repwtp119  = repwtp119  / 10000
replace repwtp120  = repwtp120  / 10000
replace repwtp121  = repwtp121  / 10000
replace repwtp122  = repwtp122  / 10000
replace repwtp123  = repwtp123  / 10000
replace repwtp124  = repwtp124  / 10000
replace repwtp125  = repwtp125  / 10000
replace repwtp126  = repwtp126  / 10000
replace repwtp127  = repwtp127  / 10000
replace repwtp128  = repwtp128  / 10000
replace repwtp129  = repwtp129  / 10000
replace repwtp130  = repwtp130  / 10000
replace repwtp131  = repwtp131  / 10000
replace repwtp132  = repwtp132  / 10000
replace repwtp133  = repwtp133  / 10000
replace repwtp134  = repwtp134  / 10000
replace repwtp135  = repwtp135  / 10000
replace repwtp136  = repwtp136  / 10000
replace repwtp137  = repwtp137  / 10000
replace repwtp138  = repwtp138  / 10000
replace repwtp139  = repwtp139  / 10000
replace repwtp140  = repwtp140  / 10000
replace repwtp141  = repwtp141  / 10000
replace repwtp142  = repwtp142  / 10000
replace repwtp143  = repwtp143  / 10000
replace repwtp144  = repwtp144  / 10000
replace repwtp145  = repwtp145  / 10000
replace repwtp146  = repwtp146  / 10000
replace repwtp147  = repwtp147  / 10000
replace repwtp148  = repwtp148  / 10000
replace repwtp149  = repwtp149  / 10000
replace repwtp150  = repwtp150  / 10000
replace repwtp151  = repwtp151  / 10000
replace repwtp152  = repwtp152  / 10000
replace repwtp153  = repwtp153  / 10000
replace repwtp154  = repwtp154  / 10000
replace repwtp155  = repwtp155  / 10000
replace repwtp156  = repwtp156  / 10000
replace repwtp157  = repwtp157  / 10000
replace repwtp158  = repwtp158  / 10000
replace repwtp159  = repwtp159  / 10000
replace repwtp160  = repwtp160  / 10000

format hwtsupp    %10.4f
format cpsid      %14.0f
format cpsidp     %14.0f
format wtsupp     %10.4f
format earnwt     %10.4f
format hourwage   %4.2f
format ftotval    %10.0f
format inctot     %8.0f
format earnweek   %8.2f
format repwtp1    %10.4f
format repwtp2    %10.4f
format repwtp3    %10.4f
format repwtp4    %10.4f
format repwtp5    %10.4f
format repwtp6    %10.4f
format repwtp7    %10.4f
format repwtp8    %10.4f
format repwtp9    %10.4f
format repwtp10   %10.4f
format repwtp11   %10.4f
format repwtp12   %10.4f
format repwtp13   %10.4f
format repwtp14   %10.4f
format repwtp15   %10.4f
format repwtp16   %10.4f
format repwtp17   %10.4f
format repwtp18   %10.4f
format repwtp19   %10.4f
format repwtp20   %10.4f
format repwtp21   %10.4f
format repwtp22   %10.4f
format repwtp23   %10.4f
format repwtp24   %10.4f
format repwtp25   %10.4f
format repwtp26   %10.4f
format repwtp27   %10.4f
format repwtp28   %10.4f
format repwtp29   %10.4f
format repwtp30   %10.4f
format repwtp31   %10.4f
format repwtp32   %10.4f
format repwtp33   %10.4f
format repwtp34   %10.4f
format repwtp35   %10.4f
format repwtp36   %10.4f
format repwtp37   %10.4f
format repwtp38   %10.4f
format repwtp39   %10.4f
format repwtp40   %10.4f
format repwtp41   %10.4f
format repwtp42   %10.4f
format repwtp43   %10.4f
format repwtp44   %10.4f
format repwtp45   %10.4f
format repwtp46   %10.4f
format repwtp47   %10.4f
format repwtp48   %10.4f
format repwtp49   %10.4f
format repwtp50   %10.4f
format repwtp51   %10.4f
format repwtp52   %10.4f
format repwtp53   %10.4f
format repwtp54   %10.4f
format repwtp55   %10.4f
format repwtp56   %10.4f
format repwtp57   %10.4f
format repwtp58   %10.4f
format repwtp59   %10.4f
format repwtp60   %10.4f
format repwtp61   %10.4f
format repwtp62   %10.4f
format repwtp63   %10.4f
format repwtp64   %10.4f
format repwtp65   %10.4f
format repwtp66   %10.4f
format repwtp67   %10.4f
format repwtp68   %10.4f
format repwtp69   %10.4f
format repwtp70   %10.4f
format repwtp71   %10.4f
format repwtp72   %10.4f
format repwtp73   %10.4f
format repwtp74   %10.4f
format repwtp75   %10.4f
format repwtp76   %10.4f
format repwtp77   %10.4f
format repwtp78   %10.4f
format repwtp79   %10.4f
format repwtp80   %10.4f
format repwtp81   %10.4f
format repwtp82   %10.4f
format repwtp83   %10.4f
format repwtp84   %10.4f
format repwtp85   %10.4f
format repwtp86   %10.4f
format repwtp87   %10.4f
format repwtp88   %10.4f
format repwtp89   %10.4f
format repwtp90   %10.4f
format repwtp91   %10.4f
format repwtp92   %10.4f
format repwtp93   %10.4f
format repwtp94   %10.4f
format repwtp95   %10.4f
format repwtp96   %10.4f
format repwtp97   %10.4f
format repwtp98   %10.4f
format repwtp99   %10.4f
format repwtp100  %10.4f
format repwtp101  %10.4f
format repwtp102  %10.4f
format repwtp103  %10.4f
format repwtp104  %10.4f
format repwtp105  %10.4f
format repwtp106  %10.4f
format repwtp107  %10.4f
format repwtp108  %10.4f
format repwtp109  %10.4f
format repwtp110  %10.4f
format repwtp111  %10.4f
format repwtp112  %10.4f
format repwtp113  %10.4f
format repwtp114  %10.4f
format repwtp115  %10.4f
format repwtp116  %10.4f
format repwtp117  %10.4f
format repwtp118  %10.4f
format repwtp119  %10.4f
format repwtp120  %10.4f
format repwtp121  %10.4f
format repwtp122  %10.4f
format repwtp123  %10.4f
format repwtp124  %10.4f
format repwtp125  %10.4f
format repwtp126  %10.4f
format repwtp127  %10.4f
format repwtp128  %10.4f
format repwtp129  %10.4f
format repwtp130  %10.4f
format repwtp131  %10.4f
format repwtp132  %10.4f
format repwtp133  %10.4f
format repwtp134  %10.4f
format repwtp135  %10.4f
format repwtp136  %10.4f
format repwtp137  %10.4f
format repwtp138  %10.4f
format repwtp139  %10.4f
format repwtp140  %10.4f
format repwtp141  %10.4f
format repwtp142  %10.4f
format repwtp143  %10.4f
format repwtp144  %10.4f
format repwtp145  %10.4f
format repwtp146  %10.4f
format repwtp147  %10.4f
format repwtp148  %10.4f
format repwtp149  %10.4f
format repwtp150  %10.4f
format repwtp151  %10.4f
format repwtp152  %10.4f
format repwtp153  %10.4f
format repwtp154  %10.4f
format repwtp155  %10.4f
format repwtp156  %10.4f
format repwtp157  %10.4f
format repwtp158  %10.4f
format repwtp159  %10.4f
format repwtp160  %10.4f

label var year       `"Survey year"'
label var serial     `"Household serial number"'
label var hwtsupp    `"Household weight, Supplement"'
label var cpsid      `"CPSID, household record"'
label var statefip   `"State (FIPS code)"'
label var asecflag   `"Flag for ASEC"'
label var hflag      `"Flag for the 3/8 file 2014"'
label var metarea    `"Metropolitan area"'
label var county     `"FIPS county code"'
label var cbsasz     `"Core-based statistical area size"'
label var metfips    `"Metropolitan area FIPS code"'
label var month      `"Month"'
label var pernum     `"Person number in sample unit"'
label var cpsidp     `"CPSID, person record"'
label var wtsupp     `"Supplement Weight"'
label var earnwt     `"Earnings weight"'
label var repwtp     `"Person replicate weights"'
label var relate     `"Relationship to household head"'
label var age        `"Age"'
label var sex        `"Sex"'
label var race       `"Race"'
label var marst      `"Marital status"'
label var popstat    `"Adult civilian, armed forces, or child"'
label var citizen    `"Citizenship status"'
label var hispan     `"Hispanic origin"'
label var educ       `"Educational attainment recode"'
label var empstat    `"Employment status"'
label var labforce   `"Labor force status"'
label var occ        `"Occupation"'
label var occ2010    `"Occupation, 2010 basis"'
label var ind1990    `"Industry, 1990 basis"'
label var occ1950    `"Occupation, 1950 basis"'
label var ind        `"Industry"'
label var ind1950    `"Industry, 1950 basis"'
label var classwkr   `"Class of worker"'
label var occly      `"Occupation last year"'
label var occ50ly    `"Occupation last year, 1950 basis"'
label var indly      `"Industry last year"'
label var ind50ly    `"Industry last year, 1950 basis"'
label var classwly   `"Class of worker last year"'
label var wkswork1   `"Weeks worked last year"'
label var wkswork2   `"Weeks worked last year, intervalled"'
label var uhrsworkly `"Usual hours worked per week (last yr)"'
label var uhrswork1  `"Hours usually worked per week at main job"'
label var wksunem1   `"Weeks unemployed last year"'
label var wksunem2   `"Weeks unemployed last year, intervalled"'
label var durunem2   `"Continuous weeks unemployed, intervalled"'
label var durunemp   `"Continuous weeks unemployed"'
label var fullpart   `"Worked full or part time last year"'
label var hourwage   `"Hourly wage"'
label var paidhour   `"Paid by the hour"'
label var pension    `"Pension plan at work"'
label var union      `"Union membership"'
label var firmsize   `"Number of employees"'
label var numemps    `"Number of employers last year"'
label var ftotval    `"Total family income"'
label var inctot     `"Total personal income"'
label var incwage    `"Wage and salary income"'
label var incbus     `"Non-farm business income"'
label var incfarm    `"Farm income"'
label var incretir   `"Retirement income"'
label var earnweek   `"Weekly earnings"'
label var inclongj   `"Earnings from longest job"'
label var increti1   `"Retirement income from first source"'
label var increti2   `"Retirement income from second source"'
label var oincbus    `"Earnings from other work included business self-employment earnings"'
label var oincfarm   `"Earnings from other work included farm self-employment earnings"'
label var oincwage   `"Earnings from other work included wage and salary earnings"'
label var srcearn    `"Source of earnings from longest job"'
label var srcreti1   `"First source of retirement income"'
label var srcreti2   `"Second source of retirement income"'
label var vetstat    `"Veteran status"'
label var disabwrk   `"Work disability"'
label var diffany    `"Any difficulty"'
label var migrate1   `"Migration status, 1 year"'
label var inclugh    `"Included in employer group health plan  last year"'
label var himcaid    `"Covered by Medicaid last year"'
label var phinsur    `"Reported covered by private health insurance last year"'
label var caid       `"Covered by Medicaid last year"'
label var groupown   `"Policyholder for employment-based insurance last year"'
label var coverpi    `"Covered by private health insurance, last year"'
label var wkstat     `"Full or part time status"'
label var workly     `"Worked last year"'
label var repwtp1    `"Person replicate weight 1"'
label var repwtp2    `"Person replicate weight 2"'
label var repwtp3    `"Person replicate weight 3"'
label var repwtp4    `"Person replicate weight 4"'
label var repwtp5    `"Person replicate weight 5"'
label var repwtp6    `"Person replicate weight 6"'
label var repwtp7    `"Person replicate weight 7"'
label var repwtp8    `"Person replicate weight 8"'
label var repwtp9    `"Person replicate weight 9"'
label var repwtp10   `"Person replicate weight 10"'
label var repwtp11   `"Person replicate weight 11"'
label var repwtp12   `"Person replicate weight 12"'
label var repwtp13   `"Person replicate weight 13"'
label var repwtp14   `"Person replicate weight 14"'
label var repwtp15   `"Person replicate weight 15"'
label var repwtp16   `"Person replicate weight 16"'
label var repwtp17   `"Person replicate weight 17"'
label var repwtp18   `"Person replicate weight 18"'
label var repwtp19   `"Person replicate weight 19"'
label var repwtp20   `"Person replicate weight 20"'
label var repwtp21   `"Person replicate weight 21"'
label var repwtp22   `"Person replicate weight 22"'
label var repwtp23   `"Person replicate weight 23"'
label var repwtp24   `"Person replicate weight 24"'
label var repwtp25   `"Person replicate weight 25"'
label var repwtp26   `"Person replicate weight 26"'
label var repwtp27   `"Person replicate weight 27"'
label var repwtp28   `"Person replicate weight 28"'
label var repwtp29   `"Person replicate weight 29"'
label var repwtp30   `"Person replicate weight 30"'
label var repwtp31   `"Person replicate weight 31"'
label var repwtp32   `"Person replicate weight 32"'
label var repwtp33   `"Person replicate weight 33"'
label var repwtp34   `"Person replicate weight 34"'
label var repwtp35   `"Person replicate weight 35"'
label var repwtp36   `"Person replicate weight 36"'
label var repwtp37   `"Person replicate weight 37"'
label var repwtp38   `"Person replicate weight 38"'
label var repwtp39   `"Person replicate weight 39"'
label var repwtp40   `"Person replicate weight 40"'
label var repwtp41   `"Person replicate weight 41"'
label var repwtp42   `"Person replicate weight 42"'
label var repwtp43   `"Person replicate weight 43"'
label var repwtp44   `"Person replicate weight 44"'
label var repwtp45   `"Person replicate weight 45"'
label var repwtp46   `"Person replicate weight 46"'
label var repwtp47   `"Person replicate weight 47"'
label var repwtp48   `"Person replicate weight 48"'
label var repwtp49   `"Person replicate weight 49"'
label var repwtp50   `"Person replicate weight 50"'
label var repwtp51   `"Person replicate weight 51"'
label var repwtp52   `"Person replicate weight 52"'
label var repwtp53   `"Person replicate weight 53"'
label var repwtp54   `"Person replicate weight 54"'
label var repwtp55   `"Person replicate weight 55"'
label var repwtp56   `"Person replicate weight 56"'
label var repwtp57   `"Person replicate weight 57"'
label var repwtp58   `"Person replicate weight 58"'
label var repwtp59   `"Person replicate weight 59"'
label var repwtp60   `"Person replicate weight 60"'
label var repwtp61   `"Person replicate weight 61"'
label var repwtp62   `"Person replicate weight 62"'
label var repwtp63   `"Person replicate weight 63"'
label var repwtp64   `"Person replicate weight 64"'
label var repwtp65   `"Person replicate weight 65"'
label var repwtp66   `"Person replicate weight 66"'
label var repwtp67   `"Person replicate weight 67"'
label var repwtp68   `"Person replicate weight 68"'
label var repwtp69   `"Person replicate weight 69"'
label var repwtp70   `"Person replicate weight 70"'
label var repwtp71   `"Person replicate weight 71"'
label var repwtp72   `"Person replicate weight 72"'
label var repwtp73   `"Person replicate weight 73"'
label var repwtp74   `"Person replicate weight 74"'
label var repwtp75   `"Person replicate weight 75"'
label var repwtp76   `"Person replicate weight 76"'
label var repwtp77   `"Person replicate weight 77"'
label var repwtp78   `"Person replicate weight 78"'
label var repwtp79   `"Person replicate weight 79"'
label var repwtp80   `"Person replicate weight 80"'
label var repwtp81   `"Person replicate weight 81"'
label var repwtp82   `"Person replicate weight 82"'
label var repwtp83   `"Person replicate weight 83"'
label var repwtp84   `"Person replicate weight 84"'
label var repwtp85   `"Person replicate weight 85"'
label var repwtp86   `"Person replicate weight 86"'
label var repwtp87   `"Person replicate weight 87"'
label var repwtp88   `"Person replicate weight 88"'
label var repwtp89   `"Person replicate weight 89"'
label var repwtp90   `"Person replicate weight 90"'
label var repwtp91   `"Person replicate weight 91"'
label var repwtp92   `"Person replicate weight 92"'
label var repwtp93   `"Person replicate weight 93"'
label var repwtp94   `"Person replicate weight 94"'
label var repwtp95   `"Person replicate weight 95"'
label var repwtp96   `"Person replicate weight 96"'
label var repwtp97   `"Person replicate weight 97"'
label var repwtp98   `"Person replicate weight 98"'
label var repwtp99   `"Person replicate weight 99"'
label var repwtp100  `"Person replicate weight 100"'
label var repwtp101  `"Person replicate weight 101"'
label var repwtp102  `"Person replicate weight 102"'
label var repwtp103  `"Person replicate weight 103"'
label var repwtp104  `"Person replicate weight 104"'
label var repwtp105  `"Person replicate weight 105"'
label var repwtp106  `"Person replicate weight 106"'
label var repwtp107  `"Person replicate weight 107"'
label var repwtp108  `"Person replicate weight 108"'
label var repwtp109  `"Person replicate weight 109"'
label var repwtp110  `"Person replicate weight 110"'
label var repwtp111  `"Person replicate weight 111"'
label var repwtp112  `"Person replicate weight 112"'
label var repwtp113  `"Person replicate weight 113"'
label var repwtp114  `"Person replicate weight 114"'
label var repwtp115  `"Person replicate weight 115"'
label var repwtp116  `"Person replicate weight 116"'
label var repwtp117  `"Person replicate weight 117"'
label var repwtp118  `"Person replicate weight 118"'
label var repwtp119  `"Person replicate weight 119"'
label var repwtp120  `"Person replicate weight 120"'
label var repwtp121  `"Person replicate weight 121"'
label var repwtp122  `"Person replicate weight 122"'
label var repwtp123  `"Person replicate weight 123"'
label var repwtp124  `"Person replicate weight 124"'
label var repwtp125  `"Person replicate weight 125"'
label var repwtp126  `"Person replicate weight 126"'
label var repwtp127  `"Person replicate weight 127"'
label var repwtp128  `"Person replicate weight 128"'
label var repwtp129  `"Person replicate weight 129"'
label var repwtp130  `"Person replicate weight 130"'
label var repwtp131  `"Person replicate weight 131"'
label var repwtp132  `"Person replicate weight 132"'
label var repwtp133  `"Person replicate weight 133"'
label var repwtp134  `"Person replicate weight 134"'
label var repwtp135  `"Person replicate weight 135"'
label var repwtp136  `"Person replicate weight 136"'
label var repwtp137  `"Person replicate weight 137"'
label var repwtp138  `"Person replicate weight 138"'
label var repwtp139  `"Person replicate weight 139"'
label var repwtp140  `"Person replicate weight 140"'
label var repwtp141  `"Person replicate weight 141"'
label var repwtp142  `"Person replicate weight 142"'
label var repwtp143  `"Person replicate weight 143"'
label var repwtp144  `"Person replicate weight 144"'
label var repwtp145  `"Person replicate weight 145"'
label var repwtp146  `"Person replicate weight 146"'
label var repwtp147  `"Person replicate weight 147"'
label var repwtp148  `"Person replicate weight 148"'
label var repwtp149  `"Person replicate weight 149"'
label var repwtp150  `"Person replicate weight 150"'
label var repwtp151  `"Person replicate weight 151"'
label var repwtp152  `"Person replicate weight 152"'
label var repwtp153  `"Person replicate weight 153"'
label var repwtp154  `"Person replicate weight 154"'
label var repwtp155  `"Person replicate weight 155"'
label var repwtp156  `"Person replicate weight 156"'
label var repwtp157  `"Person replicate weight 157"'
label var repwtp158  `"Person replicate weight 158"'
label var repwtp159  `"Person replicate weight 159"'
label var repwtp160  `"Person replicate weight 160"'

label define statefip_lbl 01 `"Alabama"'
label define statefip_lbl 02 `"Alaska"', add
label define statefip_lbl 04 `"Arizona"', add
label define statefip_lbl 05 `"Arkansas"', add
label define statefip_lbl 06 `"California"', add
label define statefip_lbl 08 `"Colorado"', add
label define statefip_lbl 09 `"Connecticut"', add
label define statefip_lbl 10 `"Delaware"', add
label define statefip_lbl 11 `"District of Columbia"', add
label define statefip_lbl 12 `"Florida"', add
label define statefip_lbl 13 `"Georgia"', add
label define statefip_lbl 15 `"Hawaii"', add
label define statefip_lbl 16 `"Idaho"', add
label define statefip_lbl 17 `"Illinois"', add
label define statefip_lbl 18 `"Indiana"', add
label define statefip_lbl 19 `"Iowa"', add
label define statefip_lbl 20 `"Kansas"', add
label define statefip_lbl 21 `"Kentucky"', add
label define statefip_lbl 22 `"Louisiana"', add
label define statefip_lbl 23 `"Maine"', add
label define statefip_lbl 24 `"Maryland"', add
label define statefip_lbl 25 `"Massachusetts"', add
label define statefip_lbl 26 `"Michigan"', add
label define statefip_lbl 27 `"Minnesota"', add
label define statefip_lbl 28 `"Mississippi"', add
label define statefip_lbl 29 `"Missouri"', add
label define statefip_lbl 30 `"Montana"', add
label define statefip_lbl 31 `"Nebraska"', add
label define statefip_lbl 32 `"Nevada"', add
label define statefip_lbl 33 `"New Hampshire"', add
label define statefip_lbl 34 `"New Jersey"', add
label define statefip_lbl 35 `"New Mexico"', add
label define statefip_lbl 36 `"New York"', add
label define statefip_lbl 37 `"North Carolina"', add
label define statefip_lbl 38 `"North Dakota"', add
label define statefip_lbl 39 `"Ohio"', add
label define statefip_lbl 40 `"Oklahoma"', add
label define statefip_lbl 41 `"Oregon"', add
label define statefip_lbl 42 `"Pennsylvania"', add
label define statefip_lbl 44 `"Rhode Island"', add
label define statefip_lbl 45 `"South Carolina"', add
label define statefip_lbl 46 `"South Dakota"', add
label define statefip_lbl 47 `"Tennessee"', add
label define statefip_lbl 48 `"Texas"', add
label define statefip_lbl 49 `"Utah"', add
label define statefip_lbl 50 `"Vermont"', add
label define statefip_lbl 51 `"Virginia"', add
label define statefip_lbl 53 `"Washington"', add
label define statefip_lbl 54 `"West Virginia"', add
label define statefip_lbl 55 `"Wisconsin"', add
label define statefip_lbl 56 `"Wyoming"', add
label define statefip_lbl 61 `"Maine-New Hampshire-Vermont"', add
label define statefip_lbl 65 `"Montana-Idaho-Wyoming"', add
label define statefip_lbl 68 `"Alaska-Hawaii"', add
label define statefip_lbl 69 `"Nebraska-North Dakota-South Dakota"', add
label define statefip_lbl 70 `"Maine-Massachusetts-New Hampshire-Rhode Island-Vermont"', add
label define statefip_lbl 71 `"Michigan-Wisconsin"', add
label define statefip_lbl 72 `"Minnesota-Iowa"', add
label define statefip_lbl 73 `"Nebraska-North Dakota-South Dakota-Kansas"', add
label define statefip_lbl 74 `"Delaware-Virginia"', add
label define statefip_lbl 75 `"North Carolina-South Carolina"', add
label define statefip_lbl 76 `"Alabama-Mississippi"', add
label define statefip_lbl 77 `"Arkansas-Oklahoma"', add
label define statefip_lbl 78 `"Arizona-New Mexico-Colorado"', add
label define statefip_lbl 79 `"Idaho-Wyoming-Utah-Montana-Nevada"', add
label define statefip_lbl 80 `"Alaska-Washington-Hawaii"', add
label define statefip_lbl 81 `"New Hampshire-Maine-Vermont-Rhode Island"', add
label define statefip_lbl 83 `"South Carolina-Georgia"', add
label define statefip_lbl 84 `"Kentucky-Tennessee"', add
label define statefip_lbl 85 `"Arkansas-Louisiana-Oklahoma"', add
label define statefip_lbl 87 `"Iowa-N Dakota-S Dakota-Nebraska-Kansas-Minnesota-Missouri"', add
label define statefip_lbl 88 `"Washington-Oregon-Alaska-Hawaii"', add
label define statefip_lbl 89 `"Montana-Wyoming-Colorado-New Mexico-Utah-Nevada-Arizona"', add
label define statefip_lbl 90 `"Delaware-Maryland-Virginia-West Virginia"', add
label define statefip_lbl 99 `"State not identified"', add
label values statefip statefip_lbl

label define asecflag_lbl 1 `"ASEC"'
label define asecflag_lbl 2 `"March Basic"', add
label values asecflag asecflag_lbl

label define hflag_lbl 0 `"5/8 file"'
label define hflag_lbl 1 `"3/8 file"', add
label values hflag hflag_lbl

label define metarea_lbl 0060 `"Abilene, TX"'
label define metarea_lbl 0080 `"Akron, OH"', add
label define metarea_lbl 0120 `"Albany, GA"', add
label define metarea_lbl 0160 `"Albany-Schenectady-Troy, NY"', add
label define metarea_lbl 0200 `"Albuquerque, NM"', add
label define metarea_lbl 0240 `"Allentown-Bethlehem-Easton, PA/NJ"', add
label define metarea_lbl 0280 `"Altoona, PA MSA"', add
label define metarea_lbl 0320 `"Amarillo, TX"', add
label define metarea_lbl 0380 `"Anchorage, AK"', add
label define metarea_lbl 0400 `"Anderson, IN"', add
label define metarea_lbl 0440 `"Ann Arbor, MI"', add
label define metarea_lbl 0450 `"Anniston, AL"', add
label define metarea_lbl 0451 `"Anniston-Oxford, AL"', add
label define metarea_lbl 0460 `"Appleton,Oshkosh-Neenah, WI"', add
label define metarea_lbl 0461 `"Appleton, WI"', add
label define metarea_lbl 0462 `"Oshkosh-Neenah, WI"', add
label define metarea_lbl 0480 `"Asheville, NC"', add
label define metarea_lbl 0500 `"Athens, GA"', add
label define metarea_lbl 0501 `"Athens-Clark County, GA"', add
label define metarea_lbl 0520 `"Atlanta, GA"', add
label define metarea_lbl 0521 `"Atlanta-Sandy Springs-Marietta, GA"', add
label define metarea_lbl 0560 `"Atlantic City, NJ"', add
label define metarea_lbl 0580 `"Auburn-Opelika, AL"', add
label define metarea_lbl 0600 `"Augusta-Aiken, GA-SC"', add
label define metarea_lbl 0601 `"Augusta-Richmond County, GA-SC"', add
label define metarea_lbl 0640 `"Austin, TX"', add
label define metarea_lbl 0641 `"Austin-Round Rock, TX"', add
label define metarea_lbl 0680 `"Bakersfield, CA"', add
label define metarea_lbl 0720 `"Baltimore, MD"', add
label define metarea_lbl 0721 `"Baltimore-Towson, MD"', add
label define metarea_lbl 0722 `"Baltimore-Towson-Columbia, MD"', add
label define metarea_lbl 0730 `"Bangor, ME"', add
label define metarea_lbl 0740 `"Barnstable-Yarmouth, MA"', add
label define metarea_lbl 0741 `"Barnstable Town, MA"', add
label define metarea_lbl 0760 `"Baton Rouge, LA"', add
label define metarea_lbl 0780 `"Battle Creek, MI"', add
label define metarea_lbl 0840 `"Beaumont-Port Arthur-Orange, TX"', add
label define metarea_lbl 0841 `"Beaumont-Port Arthur, TX"', add
label define metarea_lbl 0860 `"Bellingham, WA"', add
label define metarea_lbl 0870 `"Benton Harbor, MI"', add
label define metarea_lbl 0871 `"Niles-Benton Harbor, MI"', add
label define metarea_lbl 0880 `"Billings, MT"', add
label define metarea_lbl 0900 `"Bend, OR"', add
label define metarea_lbl 0920 `"Biloxi-Gulfport, MS"', add
label define metarea_lbl 0960 `"Binghamton, NY"', add
label define metarea_lbl 1000 `"Birmingham, AL"', add
label define metarea_lbl 1001 `"Birmingham-Hoover, AL"', add
label define metarea_lbl 1010 `"Blacksburg-Christiansburg-Radford, VA"', add
label define metarea_lbl 1020 `"Bloomington, IN"', add
label define metarea_lbl 1040 `"Bloomington-Normal, IL"', add
label define metarea_lbl 1041 `"Bloomington, IL"', add
label define metarea_lbl 1080 `"Boise City, ID"', add
label define metarea_lbl 1081 `"Boise City-Nampa, ID"', add
label define metarea_lbl 1120 `"Boston, MA"', add
label define metarea_lbl 1121 `"Lawrence-Haverhill. MA/NH"', add
label define metarea_lbl 1122 `"Lowell, MA/NH"', add
label define metarea_lbl 1123 `"Salem-Gloucester, MA"', add
label define metarea_lbl 1124 `"Boston-Cambridge-Quincy, MA-NH"', add
label define metarea_lbl 1125 `"Boston-Cambridge-Newton, MA-NH"', add
label define metarea_lbl 1130 `"Bowling Green, KY"', add
label define metarea_lbl 1140 `"Bradenton, FL"', add
label define metarea_lbl 1150 `"Bremerton-Silverdale, WA"', add
label define metarea_lbl 1160 `"Bridgeport, CT"', add
label define metarea_lbl 1161 `"Bridgeport-Stamford-Norwalk, CT"', add
label define metarea_lbl 1200 `"Brockton, MA"', add
label define metarea_lbl 1240 `"Brownsville-Harlingen-San Benito,TX"', add
label define metarea_lbl 1241 `"Brownsville-Harlingen, TX"', add
label define metarea_lbl 1280 `"Buffalo-Niagara Falls, NY"', add
label define metarea_lbl 1281 `"Niagara Falls, NY"', add
label define metarea_lbl 1300 `"Burlington, NC"', add
label define metarea_lbl 1310 `"Burlington, VT"', add
label define metarea_lbl 1311 `"Burlington-South Burlington, VT"', add
label define metarea_lbl 1305 `"California-Lexington Park, MD"', add
label define metarea_lbl 1320 `"Canton, OH"', add
label define metarea_lbl 1321 `"Canton-Massillon, OH"', add
label define metarea_lbl 1340 `"Carbondale-Marion, IL"', add
label define metarea_lbl 1360 `"Cedar Rapids, IA"', add
label define metarea_lbl 1390 `"Chambersburg-Waynesboro, PA"', add
label define metarea_lbl 1400 `"Champaign-Urbana-Rantoul, IL"', add
label define metarea_lbl 1401 `"Champaign-Urbana, IL"', add
label define metarea_lbl 1440 `"Charleston-North Charleston, SC"', add
label define metarea_lbl 1480 `"Charleston, WV"', add
label define metarea_lbl 1520 `"Charlotte-Gastonia-Rock Hill, NC/SC"', add
label define metarea_lbl 1521 `"Charlotte-Gastonia-Concord, NC/SC"', add
label define metarea_lbl 1530 `"Charlottesville, VA"', add
label define metarea_lbl 1560 `"Chattanooga, TN/GA"', add
label define metarea_lbl 1600 `"Chicago-Gary-Lake IL"', add
label define metarea_lbl 1601 `"Aurora-Elgin, IL"', add
label define metarea_lbl 1602 `"Gary-Hamond-East Chicago, IN"', add
label define metarea_lbl 1603 `"Joliet, IL"', add
label define metarea_lbl 1604 `"Lake County, IL"', add
label define metarea_lbl 1605 `"Chicago-Naperville-Joliet, IL-IN-WI"', add
label define metarea_lbl 1620 `"Chico,CA"', add
label define metarea_lbl 1640 `"Cincinnati-Hamilton,OH/KY/IN"', add
label define metarea_lbl 1641 `"Cincinnati-Middleton, OH/KY/IN"', add
label define metarea_lbl 1660 `"Clarksville-Hopkinsville,TN/KY"', add
label define metarea_lbl 1661 `"Clarksville, TN/KY, TN/KY"', add
label define metarea_lbl 1680 `"Cleveland, OH"', add
label define metarea_lbl 1681 `"Cleveland-Lorain-Mentor, OH"', add
label define metarea_lbl 1685 `"Cleveland, TN"', add
label define metarea_lbl 1700 `"Coeur d'Alene, ID"', add
label define metarea_lbl 1710 `"College Station-Bryan, TX"', add
label define metarea_lbl 1720 `"Colorado Springs, CO"', add
label define metarea_lbl 1740 `"Columbia, MO"', add
label define metarea_lbl 1760 `"Columbia, SC"', add
label define metarea_lbl 1800 `"Columbus, GA/AL"', add
label define metarea_lbl 1840 `"Columbus, OH"', add
label define metarea_lbl 1880 `"Corpus Christi, TX"', add
label define metarea_lbl 1920 `"Dallas-Fort Worth, TX"', add
label define metarea_lbl 1921 `"Fort Worth-Arlington, TX"', add
label define metarea_lbl 1922 `"Dallas-Fort Worth-Arlington, TX"', add
label define metarea_lbl 1930 `"Danbury, CT"', add
label define metarea_lbl 1940 `"Daphne-Fairhope-Foley, AL"', add
label define metarea_lbl 1960 `"Davenport-Rock Island-Moline, IA/IL"', add
label define metarea_lbl 2000 `"Dayton-Springfield, OH"', add
label define metarea_lbl 2001 `"Springfield, OH"', add
label define metarea_lbl 2002 `"Dayton, OH"', add
label define metarea_lbl 2020 `"Daytona Beach, FL"', add
label define metarea_lbl 2021 `"Deltona-Daytona Beach-Ormond Beach, FL"', add
label define metarea_lbl 2030 `"Decatur, AL"', add
label define metarea_lbl 2040 `"Decatur, IL"', add
label define metarea_lbl 2080 `"Denver-Boulder-Longmont, CO"', add
label define metarea_lbl 2081 `"Boulder-Longmont, CO"', add
label define metarea_lbl 2082 `"Boulder, CO"', add
label define metarea_lbl 2083 `"Denver-Aurora, CO"', add
label define metarea_lbl 2120 `"Des Moines, IA"', add
label define metarea_lbl 2160 `"Detroit, MI"', add
label define metarea_lbl 2161 `"Detroit-Warren-Livonia, MI"', add
label define metarea_lbl 2190 `"Dover, DE"', add
label define metarea_lbl 2240 `"Duluth-Superior, MN/WI"', add
label define metarea_lbl 2241 `"Duluth, MN/WI"', add
label define metarea_lbl 2281 `"Dutchess County, NY"', add
label define metarea_lbl 2285 `"East Stroudsburg, PA"', add
label define metarea_lbl 2290 `"Eau Claire, WI"', add
label define metarea_lbl 2300 `"El Centro, CA"', add
label define metarea_lbl 2310 `"El Paso, TX"', add
label define metarea_lbl 2330 `"Elkhart-Goshen, IN"', add
label define metarea_lbl 2360 `"Erie, PA"', add
label define metarea_lbl 2400 `"Eugene-Springfield, OR"', add
label define metarea_lbl 2440 `"Evansville, IN/KY"', add
label define metarea_lbl 2520 `"Fargo-Moorhead, ND/MN"', add
label define metarea_lbl 2521 `"Fargo, ND/MN"', add
label define metarea_lbl 2540 `"Farmington, NM"', add
label define metarea_lbl 2560 `"Fayetteville, NC"', add
label define metarea_lbl 2580 `"Fayetteville-Springdale, AR"', add
label define metarea_lbl 2581 `"Fayetteville-Springdale-Rogers, AR-MO"', add
label define metarea_lbl 2600 `"Fitchburg-Leominster, MA"', add
label define metarea_lbl 2601 `"Leominster-Fitchburg-Gardner, MA"', add
label define metarea_lbl 2640 `"Flint, MI"', add
label define metarea_lbl 2650 `"Florence, AL"', add
label define metarea_lbl 2651 `"Florence-Muscle Shoals, AL"', add
label define metarea_lbl 2660 `"Florence, SC"', add
label define metarea_lbl 2670 `"Fort Collins-Loveland, CO"', add
label define metarea_lbl 2680 `"Fort Lauderdale-Hollywood-Pompano Beach, FL"', add
label define metarea_lbl 2700 `"Fort Myers-Cape Coral, FL"', add
label define metarea_lbl 2710 `"Fort Pierce, FL"', add
label define metarea_lbl 2711 `"Port St. Lucie-Fort Pierce, FL"', add
label define metarea_lbl 2720 `"Fort Smith, AR/OK"', add
label define metarea_lbl 2750 `"Fort Walton Beach, FL"', add
label define metarea_lbl 2751 `"Fort Walton Beach-Crestview-Destin, FL"', add
label define metarea_lbl 2760 `"Fort Wayne, IN"', add
label define metarea_lbl 2840 `"Fresno, CA"', add
label define metarea_lbl 2880 `"Gadsden, AL"', add
label define metarea_lbl 2900 `"Gainesville, FL"', add
label define metarea_lbl 2905 `"Gainesville, GA"', add
label define metarea_lbl 2920 `"Galveston-Texas City, TX"', add
label define metarea_lbl 2940 `"Glens Falls, NY"', add
label define metarea_lbl 2980 `"Goldsboro, NC"', add
label define metarea_lbl 3000 `"Grand Rapids, MI"', add
label define metarea_lbl 3001 `"Grand Rapids-Wyoming, MI"', add
label define metarea_lbl 3002 `"Grand Rapids-Muskegon-Holland, MI MSA"', add
label define metarea_lbl 3003 `"Holland-Grand Haven, MI"', add
label define metarea_lbl 3060 `"Greeley, CO"', add
label define metarea_lbl 3080 `"Green Bay, WI"', add
label define metarea_lbl 3120 `"Greensboro-Winston Salem, NC"', add
label define metarea_lbl 3121 `"Winston-Salem, NC"', add
label define metarea_lbl 3122 `"Greensboro-High Point, NC"', add
label define metarea_lbl 3150 `"Greenville, NC"', add
label define metarea_lbl 3160 `"Greenville-Spartanburg-Anderson, SC"', add
label define metarea_lbl 3161 `"Anderson, SC"', add
label define metarea_lbl 3162 `"Greenville, SC"', add
label define metarea_lbl 3163 `"Spartanburg, SC"', add
label define metarea_lbl 3180 `"Hagerstown, MD"', add
label define metarea_lbl 3181 `"Hagerstown-Martinsburg, MD-WV"', add
label define metarea_lbl 3200 `"Hamilton-Middleton, OH"', add
label define metarea_lbl 3220 `"Hanford-Corcoran, CA"', add
label define metarea_lbl 3240 `"Harrisburg-Lebanon-Carlisle, PA"', add
label define metarea_lbl 3241 `"Harrisburg-Carlisle, PA"', add
label define metarea_lbl 3260 `"Harrisonburg, VA"', add
label define metarea_lbl 3280 `"Hartford-Bristol-Middleton- New Britain, CT"', add
label define metarea_lbl 3283 `"New Britain, CT"', add
label define metarea_lbl 3284 `"Hartford-West Hartford-East Hartford, CT"', add
label define metarea_lbl 3285 `"Hartford, CT"', add
label define metarea_lbl 3290 `"Hickory-Morganton, NC"', add
label define metarea_lbl 3291 `"Hickory-Morganton-Lenoir, NC"', add
label define metarea_lbl 3310 `"Hilton Head Island-Bluffton-Beaufort, SC"', add
label define metarea_lbl 3320 `"Honolulu, HI"', add
label define metarea_lbl 3350 `"Houma-Thibodaux, LA"', add
label define metarea_lbl 3351 `"Houma-Bayou Cane-Thibodaux, LA"', add
label define metarea_lbl 3360 `"Houston-Brazoria,TX"', add
label define metarea_lbl 3361 `"Brazoria, TX"', add
label define metarea_lbl 3362 `"Houston-Baytown-Sugar Land, TX"', add
label define metarea_lbl 3400 `"Huntington-Ashland,WV/KY/OH"', add
label define metarea_lbl 3440 `"Huntsville,AL"', add
label define metarea_lbl 3460 `"Idaho Falls, ID"', add
label define metarea_lbl 3480 `"Indianapolis, IN"', add
label define metarea_lbl 3500 `"Iowa City, IA"', add
label define metarea_lbl 3520 `"Jackson, MI"', add
label define metarea_lbl 3560 `"Jackson, MS"', add
label define metarea_lbl 3590 `"Jacksonville,FL"', add
label define metarea_lbl 3600 `"Jacksonville, NC"', add
label define metarea_lbl 3610 `"Jamestown-Dunkirk, NY"', add
label define metarea_lbl 3611 `"Jamestown, NY MSA"', add
label define metarea_lbl 3620 `"Janesville-Beloit, WI"', add
label define metarea_lbl 3621 `"Janvesville, WI"', add
label define metarea_lbl 3660 `"Johnson City-Kingsport-Bristol, TN/VA"', add
label define metarea_lbl 3661 `"Johnson City, TN"', add
label define metarea_lbl 3662 `"Kingsport-Bristol, TN-VA"', add
label define metarea_lbl 3680 `"Johnstown, PA"', add
label define metarea_lbl 3710 `"Joplin, MO"', add
label define metarea_lbl 3715 `"Kahului-Wailuku-Lahaina, HI"', add
label define metarea_lbl 3720 `"Kalamazoo-Portage, MI"', add
label define metarea_lbl 3721 `"Kalamazoo-Battle Creek, MI MSA"', add
label define metarea_lbl 3740 `"Kankakee, IL"', add
label define metarea_lbl 3741 `"Kankakee-Bradley, IL"', add
label define metarea_lbl 3760 `"Kansas City, MO/KS"', add
label define metarea_lbl 3790 `"Kennewick-Richland, WA"', add
label define metarea_lbl 3810 `"Killeen-Temple,TX"', add
label define metarea_lbl 3811 `"Killeen-Temple-Fort Hood, TX"', add
label define metarea_lbl 3830 `"Kingston, NY"', add
label define metarea_lbl 3840 `"Knoxville, TN"', add
label define metarea_lbl 3870 `"LaCrosse, WI"', add
label define metarea_lbl 3880 `"Lafayette, LA"', add
label define metarea_lbl 3890 `"Lafayette-West Lafayette, IN"', add
label define metarea_lbl 3960 `"Lake Charles, LA"', add
label define metarea_lbl 3980 `"Lakeland-Winterhaven, FL"', add
label define metarea_lbl 4000 `"Lancaster, PA"', add
label define metarea_lbl 4040 `"Lansing-East Lansing, MI"', add
label define metarea_lbl 4080 `"Laredo, TX"', add
label define metarea_lbl 4100 `"Las Cruces, NM"', add
label define metarea_lbl 4120 `"Las Vegas, NV"', add
label define metarea_lbl 4130 `"Las Vegas-Paradise, NV"', add
label define metarea_lbl 4150 `"Lawrence, KS"', add
label define metarea_lbl 4200 `"Lawton, OK"', add
label define metarea_lbl 4290 `"Lewiston-Auburn, ME"', add
label define metarea_lbl 4280 `"Lexington-Fayette, KY"', add
label define metarea_lbl 4320 `"Lima, OH"', add
label define metarea_lbl 4360 `"Lincoln, NE"', add
label define metarea_lbl 4400 `"Little Rock-North Little Rock, AR"', add
label define metarea_lbl 4420 `"Longview-Marshall, TX"', add
label define metarea_lbl 4421 `"Longview, TX"', add
label define metarea_lbl 4430 `"Longview, WA"', add
label define metarea_lbl 4440 `"Lorain-Elyria, OH"', add
label define metarea_lbl 4480 `"Los Angeles-Long Beach, CA"', add
label define metarea_lbl 4481 `"Anaheim-Santa Ana- Garden Grove, CA"', add
label define metarea_lbl 4482 `"Orange County, CA"', add
label define metarea_lbl 4483 `"Los Angeles-Long Beach-Santa Ana, CA"', add
label define metarea_lbl 4484 `"Los Angeles-Long Beach-Anaheim, CA"', add
label define metarea_lbl 4520 `"Louisville, KY/IN"', add
label define metarea_lbl 4600 `"Lubbock, TX"', add
label define metarea_lbl 4640 `"Lynchburg, VA"', add
label define metarea_lbl 4680 `"Macon-Warner Robins, GA"', add
label define metarea_lbl 4681 `"Macon, GA"', add
label define metarea_lbl 4682 `"Warner Robins, GA"', add
label define metarea_lbl 4700 `"Madera, CA"', add
label define metarea_lbl 4720 `"Madison, WI"', add
label define metarea_lbl 4760 `"Manchester, NH"', add
label define metarea_lbl 4761 `"Manchester-Nashua, NH"', add
label define metarea_lbl 4770 `"Manhattan, KS"', add
label define metarea_lbl 4800 `"Mansfield, OH"', add
label define metarea_lbl 4880 `"McAllen-Edinburg-Pharr-Mission, TX"', add
label define metarea_lbl 4881 `"McAllen-Edinburg-Pharr, TX"', add
label define metarea_lbl 4890 `"Medford, OR"', add
label define metarea_lbl 4900 `"Melbourne-Titusville-Cocoa-Palm Beach, FL"', add
label define metarea_lbl 4901 `"Palm Bay-Melbourne-Titusville, FL"', add
label define metarea_lbl 4920 `"Memphis, TN/AR/MS"', add
label define metarea_lbl 4940 `"Merced, CA"', add
label define metarea_lbl 5000 `"Miami-Hialeah, FL"', add
label define metarea_lbl 5001 `"Miami-Fort Lauderdale-Miami Beach, FL"', add
label define metarea_lbl 5020 `"Michigan City-La Porte, IN"', add
label define metarea_lbl 5080 `"Milwaukee, WI"', add
label define metarea_lbl 5081 `"Milwaukee-Waukesha-West Allis, WI"', add
label define metarea_lbl 5120 `"Minneapolis-St. Paul, MN"', add
label define metarea_lbl 5121 `"Minneapolis-St. Paul-Bloomington, MN/WI"', add
label define metarea_lbl 5160 `"Mobile, AL"', add
label define metarea_lbl 5170 `"Modesto, CA"', add
label define metarea_lbl 5190 `"Monmouth-Ocean, NJ"', add
label define metarea_lbl 5200 `"Monroe, LA"', add
label define metarea_lbl 5220 `"Monroe, MI"', add
label define metarea_lbl 5240 `"Montgomery, Al"', add
label define metarea_lbl 5260 `"Morgantown, WV"', add
label define metarea_lbl 5270 `"Mount Vernon-Anacortes, WA"', add
label define metarea_lbl 5320 `"Muskegon-Norton Shores-Muskegon Heights, MI"', add
label define metarea_lbl 5321 `"Muskegon-Norton Shores, MI"', add
label define metarea_lbl 5330 `"Myrtle Beach, SC"', add
label define metarea_lbl 5331 `"Myrtle Beach-Conway-North Myrtle Beach, SC"', add
label define metarea_lbl 5340 `"Naples, FL"', add
label define metarea_lbl 5341 `"Naples-Marco Island, FL"', add
label define metarea_lbl 5350 `"Nashua, NH"', add
label define metarea_lbl 5360 `"Nashville, TN"', add
label define metarea_lbl 5361 `"Nashville-Davidson-Murfreesboro, TN"', add
label define metarea_lbl 5400 `"New Bedford, MA"', add
label define metarea_lbl 5480 `"New Haven-Meriden, CT"', add
label define metarea_lbl 5481 `"New Haven, CT"', add
label define metarea_lbl 5482 `"New Haven-Milford, CT"', add
label define metarea_lbl 5520 `"New London-Norwich, CT/RI"', add
label define metarea_lbl 5560 `"New Orleans, LA"', add
label define metarea_lbl 5561 `"New Orleans-Metairie-Kenner, LA"', add
label define metarea_lbl 5600 `"New York-Northeastern NJ"', add
label define metarea_lbl 5601 `"Nassau-Suffolk, NY"', add
label define metarea_lbl 5602 `"Bergen-Passaic, NJ"', add
label define metarea_lbl 5603 `"Jersey City, NJ"', add
label define metarea_lbl 5604 `"Middlesex-Somerset-Hunterdon, NJ"', add
label define metarea_lbl 5605 `"Newark, NJ"', add
label define metarea_lbl 5606 `"New York-Northern New Jersey-Long Island, NY-NJ-PA"', add
label define metarea_lbl 5607 `"New York, NY"', add
label define metarea_lbl 5640 `"Newark, OH"', add
label define metarea_lbl 5660 `"Newburgh-Middletown, NY"', add
label define metarea_lbl 5720 `"Norfolk-Virginia Beach-Newport News, VA"', add
label define metarea_lbl 5721 `"Virginia Beach-Norfolk-Newport News, VA/NC"', add
label define metarea_lbl 5740 `"North Port-Sarasota-Bradenton, FL"', add
label define metarea_lbl 5760 `"Norwalk, CT"', add
label define metarea_lbl 5770 `"Norwich-New London, CT"', add
label define metarea_lbl 5790 `"Ocala, FL"', add
label define metarea_lbl 5800 `"Odessa, TX"', add
label define metarea_lbl 5801 `"Midland, TX"', add
label define metarea_lbl 5840 `"Ocean City, NJ"', add
label define metarea_lbl 5880 `"Oklahoma City, OK"', add
label define metarea_lbl 5910 `"Olympia, WA"', add
label define metarea_lbl 5920 `"Omaha, NE/IA"', add
label define metarea_lbl 5921 `"Omaha-Council Bluffs, NE/IA"', add
label define metarea_lbl 5950 `"Orange, NY"', add
label define metarea_lbl 5960 `"Orlando, FL"', add
label define metarea_lbl 6010 `"Panama City, FL"', add
label define metarea_lbl 6011 `"Panama City-Lynn Haven, FL"', add
label define metarea_lbl 6080 `"Pensacola, FL"', add
label define metarea_lbl 6081 `"Pensacola-Ferry Pass-Brent, FL"', add
label define metarea_lbl 6120 `"Peoria, IL"', add
label define metarea_lbl 6160 `"Philadelphia, PA/NJ"', add
label define metarea_lbl 6161 `"Philadelphia-Camden-Wilmington, PA/NJ/DE"', add
label define metarea_lbl 6200 `"Phoenix, AZ"', add
label define metarea_lbl 6201 `"Phoenix-Mesa-Scottsdale, AZ"', add
label define metarea_lbl 6250 `"Pine Bluff, AR"', add
label define metarea_lbl 6280 `"Pittsburg, PA"', add
label define metarea_lbl 6281 `"Beaver County"', add
label define metarea_lbl 6400 `"Portland, ME"', add
label define metarea_lbl 6401 `"Portland-South Portland, ME"', add
label define metarea_lbl 6440 `"Portland-Vancouver, OR/WA"', add
label define metarea_lbl 6441 `"Vancouver, WA"', add
label define metarea_lbl 6442 `"Portland-Vancouver-Beaverton, OR/WA"', add
label define metarea_lbl 6450 `"Portsmouth-Dover-Rochester, NH/ME"', add
label define metarea_lbl 6451 `"Portsmouth-Rochester, NH/ME MSA"', add
label define metarea_lbl 6452 `"Rochester-Dover, NH/ME"', add
label define metarea_lbl 6460 `"Poughkeepsie, NY"', add
label define metarea_lbl 6461 `"Poughkeepsie-Newburgh-Middletown, NY"', add
label define metarea_lbl 6470 `"Prescott, AZ"', add
label define metarea_lbl 6480 `"Providence-Fall River-Pawtucket, MA/RI"', add
label define metarea_lbl 6482 `"Pawtuckett-Woonsocket-Attleboro, RI/MA"', add
label define metarea_lbl 6483 `"Providence-Fall River-Warwick, MA-RI"', add
label define metarea_lbl 6484 `"Providence-Warwick, RI-MA"', add
label define metarea_lbl 6520 `"Provo-Orem, UT"', add
label define metarea_lbl 6560 `"Pueblo, CO"', add
label define metarea_lbl 6580 `"Punta Gorda, FL"', add
label define metarea_lbl 6600 `"Racine, WI"', add
label define metarea_lbl 6640 `"Raleigh-Durham, NC"', add
label define metarea_lbl 6641 `"Durham, NC"', add
label define metarea_lbl 6642 `"Raleigh-Carey, NC"', add
label define metarea_lbl 6680 `"Reading, PA"', add
label define metarea_lbl 6690 `"Redding, CA"', add
label define metarea_lbl 6720 `"Reno, NV"', add
label define metarea_lbl 6721 `"Reno-Sparks, NV"', add
label define metarea_lbl 6760 `"Richmond-Petersburg, VA"', add
label define metarea_lbl 6761 `"Richmond, VA"', add
label define metarea_lbl 6780 `"Riverside-San Bernadino, CA"', add
label define metarea_lbl 6800 `"Roanoke, VA"', add
label define metarea_lbl 6840 `"Rochester, NY"', add
label define metarea_lbl 6880 `"Rockford, IL"', add
label define metarea_lbl 6920 `"Sacramento, CA"', add
label define metarea_lbl 6921 `"Sacramento-Arden Arcade-Roseville, CA"', add
label define metarea_lbl 6960 `"Saginaw-Bay City-Midland, MI"', add
label define metarea_lbl 6961 `"Saginaw-Saginaw Township North, MI"', add
label define metarea_lbl 6980 `"St. Cloud, MN"', add
label define metarea_lbl 7000 `"St. George, UT"', add
label define metarea_lbl 7040 `"St. Louis, MO/IL"', add
label define metarea_lbl 7080 `"Salem, OR"', add
label define metarea_lbl 7120 `"Salinas-Sea Side-Monterey, CA"', add
label define metarea_lbl 7121 `"Salinas, CA"', add
label define metarea_lbl 7130 `"Salisbury, MD"', add
label define metarea_lbl 7160 `"Salt Lake City-Ogden, UT"', add
label define metarea_lbl 7161 `"Salt Lake City, UT"', add
label define metarea_lbl 7162 `"Ogden-Clearfield, UT"', add
label define metarea_lbl 7240 `"San Antonio, TX"', add
label define metarea_lbl 7320 `"San Diego, CA"', add
label define metarea_lbl 7321 `"San Diego-Carlsbad-San Marcos, CA"', add
label define metarea_lbl 7360 `"San Francisco-Oaklan-Vallejo, CA"', add
label define metarea_lbl 7361 `"Oakland, CA"', add
label define metarea_lbl 7362 `"Vallejo-Fairfield-Napa, CA"', add
label define metarea_lbl 7363 `"Vallejo-Fairfield, CA"', add
label define metarea_lbl 7364 `"Napa, CA"', add
label define metarea_lbl 7365 `"San Francisco-Oakland-Fremont, CA"', add
label define metarea_lbl 7400 `"San Jose, CA"', add
label define metarea_lbl 7401 `"San Jose-Sunnyvale-Santa Clara, CA"', add
label define metarea_lbl 7460 `"San Luis Obispo-Atascadero-Paso Robles, CA"', add
label define metarea_lbl 7461 `"San Luis Obispo-Paso Robles, CA"', add
label define metarea_lbl 7470 `"Santa Barbara-Santa Maria-Lompoc, CA"', add
label define metarea_lbl 7471 `"Santa Barbara-Santa Maria-Goleta, CA"', add
label define metarea_lbl 7472 `"Santa Barbara-Santa Maria, CA"', add
label define metarea_lbl 7480 `"Santa Cruz, CA"', add
label define metarea_lbl 7481 `"Santa Cruz-Watsonville, CA"', add
label define metarea_lbl 7490 `"Santa Fe, NM"', add
label define metarea_lbl 7500 `"Santa Rosa-Petaluma, CA"', add
label define metarea_lbl 7510 `"Sarasota, FL"', add
label define metarea_lbl 7511 `"Sarasota-Bradenton-Venice, FL"', add
label define metarea_lbl 7520 `"Savannah, GA"', add
label define metarea_lbl 7560 `"Scranton-Wilkes-Barre, PA"', add
label define metarea_lbl 7600 `"Seattle-Everett, WA"', add
label define metarea_lbl 7601 `"Seattle-Tacoma-Bellevue, WA"', add
label define metarea_lbl 7610 `"Sharon, PA"', add
label define metarea_lbl 7640 `"Sherman-Denison, TX"', add
label define metarea_lbl 7680 `"Shreveport, LA"', add
label define metarea_lbl 7681 `"Shreveport-Bossier City, LA"', add
label define metarea_lbl 7720 `"Sioux City, IA-NE"', add
label define metarea_lbl 7760 `"Sioux Falls, SD"', add
label define metarea_lbl 7800 `"South Bend-Mishawaka, IN"', add
label define metarea_lbl 7840 `"Spokane, WA"', add
label define metarea_lbl 7880 `"Springfield, IL"', add
label define metarea_lbl 7920 `"Springfield, MO"', add
label define metarea_lbl 8000 `"Springfield-Holyoke-Chicopee, MA"', add
label define metarea_lbl 8001 `"Springfield, MA/CT"', add
label define metarea_lbl 8040 `"Stamford, CT"', add
label define metarea_lbl 8120 `"Stockton, CA"', add
label define metarea_lbl 8160 `"Syracuse, NY"', add
label define metarea_lbl 8200 `"Tacoma, WA"', add
label define metarea_lbl 8240 `"Tallahassee, FL"', add
label define metarea_lbl 8280 `"Tampa-St. Petersburg-Clearwater, FL"', add
label define metarea_lbl 8320 `"Terre Haute, IN"', add
label define metarea_lbl 8400 `"Toledo, OH/MI"', add
label define metarea_lbl 8440 `"Topeka, KS"', add
label define metarea_lbl 8480 `"Trenton, NJ"', add
label define metarea_lbl 8481 `"Trenton-Ewing, NJ"', add
label define metarea_lbl 8520 `"Tucson, AZ"', add
label define metarea_lbl 8560 `"Tulsa, OK"', add
label define metarea_lbl 8600 `"Tuscaloosa, AL"', add
label define metarea_lbl 8620 `"Tyler, TX"', add
label define metarea_lbl 8640 `"Urban Honolulu, HI"', add
label define metarea_lbl 8680 `"Utica-Rome, NY"', add
label define metarea_lbl 8700 `"Valdosta, GA"', add
label define metarea_lbl 8730 `"Ventura-Oxnard-Simi Valley, CA"', add
label define metarea_lbl 8731 `"Oxnard-Thousand Oaks-Ventura, CA"', add
label define metarea_lbl 8740 `"Vero Beach, FL"', add
label define metarea_lbl 8750 `"Victoria, TX"', add
label define metarea_lbl 8760 `"Vineland-Milville-Bridgetown, NJ"', add
label define metarea_lbl 8780 `"Visalia-Tulare-Porterville, CA"', add
label define metarea_lbl 8781 `"Visalia-Porterville, CA"', add
label define metarea_lbl 8800 `"Waco, TX"', add
label define metarea_lbl 8840 `"Washington, DC/MD/VA"', add
label define metarea_lbl 8880 `"Waterbury, CT"', add
label define metarea_lbl 8920 `"Waterloo-Cedar Falls, IA"', add
label define metarea_lbl 8930 `"Watertown-Fort Drum, NY"', add
label define metarea_lbl 8940 `"Wausau, WI"', add
label define metarea_lbl 8960 `"West Palm Beach-Boca Raton-Delray Beach, FL"', add
label define metarea_lbl 9000 `"Wheeling, WV/OH"', add
label define metarea_lbl 9040 `"Wichita, KS"', add
label define metarea_lbl 9050 `"Wichita Falls, TX"', add
label define metarea_lbl 9140 `"Williamsport, PA"', add
label define metarea_lbl 9160 `"Wilmington, DE/NJ/MD"', add
label define metarea_lbl 9200 `"Wilmington, NC"', add
label define metarea_lbl 9220 `"Winchester, VA-WV"', add
label define metarea_lbl 9240 `"Worcester, MA"', add
label define metarea_lbl 9260 `"Yakima, WA"', add
label define metarea_lbl 9270 `"Yolo, CA"', add
label define metarea_lbl 9280 `"York, PA"', add
label define metarea_lbl 9281 `"York-Hanover, PA"', add
label define metarea_lbl 9320 `"Youngstown-Warren, OH/PA"', add
label define metarea_lbl 9321 `"Youngstown-Warren-Boardman, OH"', add
label define metarea_lbl 9340 `"Yuba City, CA"', add
label define metarea_lbl 9360 `"Yuma, AZ"', add
label define metarea_lbl 9997 `"Other metropolitan areas, unidentified"', add
label define metarea_lbl 9998 `"NIU, household not in a metropolitan area"', add
label define metarea_lbl 9999 `"Missing data"', add
label values metarea metarea_lbl

label define cbsasz_lbl 00 `"Not identified or nonmetropolitan"'
label define cbsasz_lbl 01 `"100,000 - 249,999"', add
label define cbsasz_lbl 02 `"250,000 - 499,999"', add
label define cbsasz_lbl 03 `"500,000 - 999,999"', add
label define cbsasz_lbl 04 `"1,000,000 - 2,499,999"', add
label define cbsasz_lbl 05 `"2,500,000 - 4,999,999"', add
label define cbsasz_lbl 06 `"5,000,000 or more"', add
label values cbsasz cbsasz_lbl

label define month_lbl 01 `"January"'
label define month_lbl 02 `"February"', add
label define month_lbl 03 `"March"', add
label define month_lbl 04 `"April"', add
label define month_lbl 05 `"May"', add
label define month_lbl 06 `"June"', add
label define month_lbl 07 `"July"', add
label define month_lbl 08 `"August"', add
label define month_lbl 09 `"September"', add
label define month_lbl 10 `"October"', add
label define month_lbl 11 `"November"', add
label define month_lbl 12 `"December"', add
label values month month_lbl

label define relate_lbl 0101 `"Head/householder"'
label define relate_lbl 0201 `"Spouse"', add
label define relate_lbl 0301 `"Child"', add
label define relate_lbl 0303 `"Stepchild"', add
label define relate_lbl 0501 `"Parent"', add
label define relate_lbl 0701 `"Sibling"', add
label define relate_lbl 0901 `"Grandchild"', add
label define relate_lbl 1001 `"Other relatives, n.s."', add
label define relate_lbl 1113 `"Partner/roommate"', add
label define relate_lbl 1114 `"Unmarried partner"', add
label define relate_lbl 1115 `"Housemate/roomate"', add
label define relate_lbl 1241 `"Roomer/boarder/lodger"', add
label define relate_lbl 1242 `"Foster children"', add
label define relate_lbl 1260 `"Other nonrelatives"', add
label define relate_lbl 9100 `"Armed Forces, relationship unknown"', add
label define relate_lbl 9200 `"Age under 14, relationship unknown"', add
label define relate_lbl 9900 `"Relationship unknown"', add
label define relate_lbl 9999 `"NIU"', add
label values relate relate_lbl

label define age_lbl 00 `"Under 1 year"'
label define age_lbl 01 `"1"', add
label define age_lbl 02 `"2"', add
label define age_lbl 03 `"3"', add
label define age_lbl 04 `"4"', add
label define age_lbl 05 `"5"', add
label define age_lbl 06 `"6"', add
label define age_lbl 07 `"7"', add
label define age_lbl 08 `"8"', add
label define age_lbl 09 `"9"', add
label define age_lbl 10 `"10"', add
label define age_lbl 11 `"11"', add
label define age_lbl 12 `"12"', add
label define age_lbl 13 `"13"', add
label define age_lbl 14 `"14"', add
label define age_lbl 15 `"15"', add
label define age_lbl 16 `"16"', add
label define age_lbl 17 `"17"', add
label define age_lbl 18 `"18"', add
label define age_lbl 19 `"19"', add
label define age_lbl 20 `"20"', add
label define age_lbl 21 `"21"', add
label define age_lbl 22 `"22"', add
label define age_lbl 23 `"23"', add
label define age_lbl 24 `"24"', add
label define age_lbl 25 `"25"', add
label define age_lbl 26 `"26"', add
label define age_lbl 27 `"27"', add
label define age_lbl 28 `"28"', add
label define age_lbl 29 `"29"', add
label define age_lbl 30 `"30"', add
label define age_lbl 31 `"31"', add
label define age_lbl 32 `"32"', add
label define age_lbl 33 `"33"', add
label define age_lbl 34 `"34"', add
label define age_lbl 35 `"35"', add
label define age_lbl 36 `"36"', add
label define age_lbl 37 `"37"', add
label define age_lbl 38 `"38"', add
label define age_lbl 39 `"39"', add
label define age_lbl 40 `"40"', add
label define age_lbl 41 `"41"', add
label define age_lbl 42 `"42"', add
label define age_lbl 43 `"43"', add
label define age_lbl 44 `"44"', add
label define age_lbl 45 `"45"', add
label define age_lbl 46 `"46"', add
label define age_lbl 47 `"47"', add
label define age_lbl 48 `"48"', add
label define age_lbl 49 `"49"', add
label define age_lbl 50 `"50"', add
label define age_lbl 51 `"51"', add
label define age_lbl 52 `"52"', add
label define age_lbl 53 `"53"', add
label define age_lbl 54 `"54"', add
label define age_lbl 55 `"55"', add
label define age_lbl 56 `"56"', add
label define age_lbl 57 `"57"', add
label define age_lbl 58 `"58"', add
label define age_lbl 59 `"59"', add
label define age_lbl 60 `"60"', add
label define age_lbl 61 `"61"', add
label define age_lbl 62 `"62"', add
label define age_lbl 63 `"63"', add
label define age_lbl 64 `"64"', add
label define age_lbl 65 `"65"', add
label define age_lbl 66 `"66"', add
label define age_lbl 67 `"67"', add
label define age_lbl 68 `"68"', add
label define age_lbl 69 `"69"', add
label define age_lbl 70 `"70"', add
label define age_lbl 71 `"71"', add
label define age_lbl 72 `"72"', add
label define age_lbl 73 `"73"', add
label define age_lbl 74 `"74"', add
label define age_lbl 75 `"75"', add
label define age_lbl 76 `"76"', add
label define age_lbl 77 `"77"', add
label define age_lbl 78 `"78"', add
label define age_lbl 79 `"79"', add
label define age_lbl 80 `"80"', add
label define age_lbl 81 `"81"', add
label define age_lbl 82 `"82"', add
label define age_lbl 83 `"83"', add
label define age_lbl 84 `"84"', add
label define age_lbl 85 `"85"', add
label define age_lbl 86 `"86"', add
label define age_lbl 87 `"87"', add
label define age_lbl 88 `"88"', add
label define age_lbl 89 `"89"', add
label define age_lbl 90 `"90 (90+, 1988-2002)"', add
label define age_lbl 91 `"91"', add
label define age_lbl 92 `"92"', add
label define age_lbl 93 `"93"', add
label define age_lbl 94 `"94"', add
label define age_lbl 95 `"95"', add
label define age_lbl 96 `"96"', add
label define age_lbl 97 `"97"', add
label define age_lbl 98 `"98"', add
label define age_lbl 99 `"99+"', add
label values age age_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label define sex_lbl 9 `"NIU"', add
label values sex sex_lbl

label define race_lbl 100 `"White"'
label define race_lbl 200 `"Black/Negro"', add
label define race_lbl 300 `"American Indian/Aleut/Eskimo"', add
label define race_lbl 650 `"Asian or Pacific Islander"', add
label define race_lbl 651 `"Asian only"', add
label define race_lbl 652 `"Hawaiian/Pacific Islander only"', add
label define race_lbl 700 `"Other (single) race, n.e.c."', add
label define race_lbl 801 `"White-Black"', add
label define race_lbl 802 `"White-American Indian"', add
label define race_lbl 803 `"White-Asian"', add
label define race_lbl 804 `"White-Hawaiian/Pacific Islander"', add
label define race_lbl 805 `"Black-American Indian"', add
label define race_lbl 806 `"Black-Asian"', add
label define race_lbl 807 `"Black-Hawaiian/Pacific Islander"', add
label define race_lbl 808 `"American Indian-Asian"', add
label define race_lbl 809 `"Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 810 `"White-Black-American Indian"', add
label define race_lbl 811 `"White-Black-Asian"', add
label define race_lbl 812 `"White-American Indian-Asian"', add
label define race_lbl 813 `"White-Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 814 `"White-Black-American Indian-Asian"', add
label define race_lbl 815 `"American Indian-Hawaiian/Pacific Islander"', add
label define race_lbl 816 `"White-Black--Hawaiian/Pacific Islander"', add
label define race_lbl 817 `"White-American Indian-Hawaiian/Pacific Islander"', add
label define race_lbl 818 `"Black-American Indian-Asian"', add
label define race_lbl 819 `"White-American Indian-Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 820 `"Two or three races, unspecified"', add
label define race_lbl 830 `"Four or five races, unspecified"', add
label define race_lbl 999 `"Blank"', add
label values race race_lbl

label define marst_lbl 1 `"Married, spouse present"'
label define marst_lbl 2 `"Married, spouse absent"', add
label define marst_lbl 3 `"Separated"', add
label define marst_lbl 4 `"Divorced"', add
label define marst_lbl 5 `"Widowed"', add
label define marst_lbl 6 `"Never married/single"', add
label define marst_lbl 7 `"Widowed or Divorced"', add
label define marst_lbl 9 `"NIU"', add
label values marst marst_lbl

label define popstat_lbl 1 `"Adult civilian"'
label define popstat_lbl 2 `"Armed Forces"', add
label define popstat_lbl 3 `"Child"', add
label values popstat popstat_lbl

label define citizen_lbl 0 `"NIU"'
label define citizen_lbl 1 `"Born abroad of American parents"', add
label define citizen_lbl 2 `"Naturalized citizen"', add
label define citizen_lbl 3 `"Not a citizen"', add
label define citizen_lbl 9 `"NIU"', add
label values citizen citizen_lbl

label define hispan_lbl 000 `"Not Hispanic"'
label define hispan_lbl 100 `"Mexican"', add
label define hispan_lbl 102 `"Mexican American"', add
label define hispan_lbl 103 `"Mexicano/Mexicana"', add
label define hispan_lbl 104 `"Chicano/Chicana"', add
label define hispan_lbl 108 `"Mexican (Mexicano)"', add
label define hispan_lbl 109 `"Mexicano/Chicano"', add
label define hispan_lbl 200 `"Puerto Rican"', add
label define hispan_lbl 300 `"Cuban"', add
label define hispan_lbl 400 `"Dominican"', add
label define hispan_lbl 500 `"Salvadoran"', add
label define hispan_lbl 401 `"Other Hispanic"', add
label define hispan_lbl 410 `"Central/South American"', add
label define hispan_lbl 411 `"Central American, (excluding Salvadoran)"', add
label define hispan_lbl 412 `"South American"', add
label define hispan_lbl 901 `"Do not know"', add
label define hispan_lbl 902 `"N/A (and no response 1985-87)"', add
label values hispan hispan_lbl

label define educ_lbl 000 `"NIU or no schooling"'
label define educ_lbl 001 `"NIU or blank"', add
label define educ_lbl 002 `"None or preschool"', add
label define educ_lbl 010 `"Grades 1, 2, 3, or 4"', add
label define educ_lbl 011 `"Grade 1"', add
label define educ_lbl 012 `"Grade 2"', add
label define educ_lbl 013 `"Grade 3"', add
label define educ_lbl 014 `"Grade 4"', add
label define educ_lbl 020 `"Grades 5 or 6"', add
label define educ_lbl 021 `"Grade 5"', add
label define educ_lbl 022 `"Grade 6"', add
label define educ_lbl 030 `"Grades 7 or 8"', add
label define educ_lbl 031 `"Grade 7"', add
label define educ_lbl 032 `"Grade 8"', add
label define educ_lbl 040 `"Grade 9"', add
label define educ_lbl 050 `"Grade 10"', add
label define educ_lbl 060 `"Grade 11"', add
label define educ_lbl 070 `"Grade 12"', add
label define educ_lbl 071 `"12th grade, no diploma"', add
label define educ_lbl 072 `"12th grade, diploma unclear"', add
label define educ_lbl 073 `"High school diploma or equivalent"', add
label define educ_lbl 080 `"1 year of college"', add
label define educ_lbl 081 `"Some college but no degree"', add
label define educ_lbl 090 `"2 years of college"', add
label define educ_lbl 091 `"Associate's degree, occupational/vocational program"', add
label define educ_lbl 092 `"Associate's degree, academic program"', add
label define educ_lbl 100 `"3 years of college"', add
label define educ_lbl 110 `"4 years of college"', add
label define educ_lbl 111 `"Bachelor's degree"', add
label define educ_lbl 120 `"5+ years of college"', add
label define educ_lbl 121 `"5 years of college"', add
label define educ_lbl 122 `"6+ years of college"', add
label define educ_lbl 123 `"Master's degree"', add
label define educ_lbl 124 `"Professional school degree"', add
label define educ_lbl 125 `"Doctorate degree"', add
label define educ_lbl 999 `"Missing/Unknown"', add
label values educ educ_lbl

label define empstat_lbl 00 `"NIU"'
label define empstat_lbl 01 `"Armed Forces"', add
label define empstat_lbl 10 `"At work"', add
label define empstat_lbl 12 `"Has job, not at work last week"', add
label define empstat_lbl 20 `"Unemployed"', add
label define empstat_lbl 21 `"Unemployed, experienced worker"', add
label define empstat_lbl 22 `"Unemployed, new worker"', add
label define empstat_lbl 30 `"Not in labor force"', add
label define empstat_lbl 31 `"NILF, housework"', add
label define empstat_lbl 32 `"NILF, unable to work"', add
label define empstat_lbl 33 `"NILF, school"', add
label define empstat_lbl 34 `"NILF, other"', add
label define empstat_lbl 35 `"NILF, unpaid, lt 15 hours"', add
label define empstat_lbl 36 `"NILF, retired"', add
label values empstat empstat_lbl

label define labforce_lbl 0 `"NIU"'
label define labforce_lbl 1 `"No, not in the labor force"', add
label define labforce_lbl 2 `"Yes, in the labor force"', add
label values labforce labforce_lbl

label define occ2010_lbl 0010 `"Chief executives and legislators/public administration"'
label define occ2010_lbl 0020 `"General and Operations Managers"', add
label define occ2010_lbl 0030 `"Managers in Marketing, Advertising, and Public Relations"', add
label define occ2010_lbl 0100 `"Administrative Services Managers"', add
label define occ2010_lbl 0110 `"Computer and Information Systems Managers"', add
label define occ2010_lbl 0120 `"Financial Managers"', add
label define occ2010_lbl 0130 `"Human Resources Managers"', add
label define occ2010_lbl 0140 `"Industrial Production Managers"', add
label define occ2010_lbl 0150 `"Purchasing Managers"', add
label define occ2010_lbl 0160 `"Transportation, Storage, and Distribution Managers"', add
label define occ2010_lbl 0205 `"Farmers, Ranchers, and Other Agricultural Managers"', add
label define occ2010_lbl 0220 `"Constructions Managers"', add
label define occ2010_lbl 0230 `"Education Administrators"', add
label define occ2010_lbl 0300 `"Architectural and Engineering Managers"', add
label define occ2010_lbl 0310 `"Food Service and Lodging Managers"', add
label define occ2010_lbl 0320 `"Funeral Directors"', add
label define occ2010_lbl 0330 `"Gaming Managers"', add
label define occ2010_lbl 0350 `"Medical and Health Services Managers"', add
label define occ2010_lbl 0360 `"Natural Science Managers"', add
label define occ2010_lbl 0410 `"Property, Real Estate, and Community Association Managers"', add
label define occ2010_lbl 0420 `"Social and Community Service Managers"', add
label define occ2010_lbl 0430 `"Managers, nec (including Postmasters)"', add
label define occ2010_lbl 0500 `"Agents and Business Managers of Artists, Performers, and Athletes"', add
label define occ2010_lbl 0510 `"Buyers and Purchasing Agents, Farm Products"', add
label define occ2010_lbl 0520 `"Wholesale and Retail Buyers, Except Farm Products"', add
label define occ2010_lbl 0530 `"Purchasing Agents, Except Wholesale, Retail, and Farm Products"', add
label define occ2010_lbl 0540 `"Claims Adjusters, Appraisers, Examiners, and Investigators"', add
label define occ2010_lbl 0560 `"Compliance Officers, Except Agriculture"', add
label define occ2010_lbl 0600 `"Cost Estimators"', add
label define occ2010_lbl 0620 `"Human Resources, Training, and Labor Relations Specialists"', add
label define occ2010_lbl 0700 `"Logisticians"', add
label define occ2010_lbl 0710 `"Management Analysts"', add
label define occ2010_lbl 0720 `"Meeting and Convention Planners"', add
label define occ2010_lbl 0730 `"Other Business Operations and Management Specialists"', add
label define occ2010_lbl 0800 `"Accountants and Auditors"', add
label define occ2010_lbl 0810 `"Appraisers and Assessors of Real Estate"', add
label define occ2010_lbl 0820 `"Budget Analysts"', add
label define occ2010_lbl 0830 `"Credit Analysts"', add
label define occ2010_lbl 0840 `"Financial Analysts"', add
label define occ2010_lbl 0850 `"Personal Financial Advisors"', add
label define occ2010_lbl 0860 `"Insurance Underwriters"', add
label define occ2010_lbl 0900 `"Financial Examiners"', add
label define occ2010_lbl 0910 `"Credit Counselors and Loan Officers"', add
label define occ2010_lbl 0930 `"Tax Examiners and Collectors, and Revenue Agents"', add
label define occ2010_lbl 0940 `"Tax Preparers"', add
label define occ2010_lbl 0950 `"Financial Specialists, nec"', add
label define occ2010_lbl 1000 `"Computer Scientists and Systems Analysts/Network systems Analysts/Web Developers"', add
label define occ2010_lbl 1010 `"Computer Programmers"', add
label define occ2010_lbl 1020 `"Software Developers, Applications and Systems Software"', add
label define occ2010_lbl 1050 `"Computer Support Specialists"', add
label define occ2010_lbl 1060 `"Database Administrators"', add
label define occ2010_lbl 1100 `"Network and Computer Systems Administrators"', add
label define occ2010_lbl 1200 `"Actuaries"', add
label define occ2010_lbl 1220 `"Operations Research Analysts"', add
label define occ2010_lbl 1230 `"Statisticians"', add
label define occ2010_lbl 1240 `"Mathematical science occupations, nec"', add
label define occ2010_lbl 1300 `"Architects, Except Naval"', add
label define occ2010_lbl 1310 `"Surveyors, Cartographers, and Photogrammetrists"', add
label define occ2010_lbl 1320 `"Aerospace Engineers"', add
label define occ2010_lbl 1350 `"Chemical Engineers"', add
label define occ2010_lbl 1360 `"Civil Engineers"', add
label define occ2010_lbl 1400 `"Computer Hardware Engineers"', add
label define occ2010_lbl 1410 `"Electrical and Electronics Engineers"', add
label define occ2010_lbl 1420 `"Environmental Engineers"', add
label define occ2010_lbl 1430 `"Industrial Engineers, including Health and Safety"', add
label define occ2010_lbl 1440 `"Marine Engineers and Naval Architects"', add
label define occ2010_lbl 1450 `"Materials Engineers"', add
label define occ2010_lbl 1460 `"Mechanical Engineers"', add
label define occ2010_lbl 1520 `"Petroleum, mining and geological engineers, including mining safety engineers"', add
label define occ2010_lbl 1530 `"Engineers, nec"', add
label define occ2010_lbl 1540 `"Drafters"', add
label define occ2010_lbl 1550 `"Engineering Technicians, Except Drafters"', add
label define occ2010_lbl 1560 `"Surveying and Mapping Technicians"', add
label define occ2010_lbl 1600 `"Agricultural and Food Scientists"', add
label define occ2010_lbl 1610 `"Biological Scientists"', add
label define occ2010_lbl 1640 `"Conservation Scientists and Foresters"', add
label define occ2010_lbl 1650 `"Medical Scientists, and Life Scientists, All Other"', add
label define occ2010_lbl 1700 `"Astronomers and Physicists"', add
label define occ2010_lbl 1710 `"Atmospheric and Space Scientists"', add
label define occ2010_lbl 1720 `"Chemists and Materials Scientists"', add
label define occ2010_lbl 1740 `"Environmental Scientists and Geoscientists"', add
label define occ2010_lbl 1760 `"Physical Scientists, nec"', add
label define occ2010_lbl 1800 `"Economists and market researchers"', add
label define occ2010_lbl 1820 `"Psychologists"', add
label define occ2010_lbl 1830 `"Urban and Regional Planners"', add
label define occ2010_lbl 1840 `"Social Scientists, nec"', add
label define occ2010_lbl 1900 `"Agricultural and Food Science Technicians"', add
label define occ2010_lbl 1910 `"Biological Technicians"', add
label define occ2010_lbl 1920 `"Chemical Technicians"', add
label define occ2010_lbl 1930 `"Geological and Petroleum Technicians, and Nuclear Technicians"', add
label define occ2010_lbl 1960 `"Life, Physical, and Social Science Technicians, nec"', add
label define occ2010_lbl 1980 `"Professional, Research, or Technical Workers, nec"', add
label define occ2010_lbl 2000 `"Counselors"', add
label define occ2010_lbl 2010 `"Social Workers"', add
label define occ2010_lbl 2020 `"Community and Social Service Specialists, nec"', add
label define occ2010_lbl 2040 `"Clergy"', add
label define occ2010_lbl 2050 `"Directors, Religious Activities and Education"', add
label define occ2010_lbl 2060 `"Religious Workers, nec"', add
label define occ2010_lbl 2100 `"Lawyers, and judges, magistrates, and other judicial workers"', add
label define occ2010_lbl 2140 `"Paralegals and Legal Assistants"', add
label define occ2010_lbl 2150 `"Legal Support Workers, nec"', add
label define occ2010_lbl 2200 `"Postsecondary Teachers"', add
label define occ2010_lbl 2300 `"Preschool and Kindergarten Teachers"', add
label define occ2010_lbl 2310 `"Elementary and Middle School Teachers"', add
label define occ2010_lbl 2320 `"Secondary School Teachers"', add
label define occ2010_lbl 2330 `"Special Education Teachers"', add
label define occ2010_lbl 2340 `"Other Teachers and Instructors"', add
label define occ2010_lbl 2400 `"Archivists, Curators, and Museum Technicians"', add
label define occ2010_lbl 2430 `"Librarians"', add
label define occ2010_lbl 2440 `"Library Technicians"', add
label define occ2010_lbl 2540 `"Teacher Assistants"', add
label define occ2010_lbl 2550 `"Education, Training, and Library Workers, nec"', add
label define occ2010_lbl 2600 `"Artists and Related Workers"', add
label define occ2010_lbl 2630 `"Designers"', add
label define occ2010_lbl 2700 `"Actors, Producers, and Directors"', add
label define occ2010_lbl 2720 `"Athletes, Coaches, Umpires, and Related Workers"', add
label define occ2010_lbl 2740 `"Dancers and Choreographers"', add
label define occ2010_lbl 2750 `"Musicians, Singers, and Related Workers"', add
label define occ2010_lbl 2760 `"Entertainers and Performers, Sports and Related Workers, All Other"', add
label define occ2010_lbl 2800 `"Announcers"', add
label define occ2010_lbl 2810 `"Editors, News Analysts, Reporters, and Correspondents"', add
label define occ2010_lbl 2825 `"Public Relations Specialists"', add
label define occ2010_lbl 2840 `"Technical Writers"', add
label define occ2010_lbl 2850 `"Writers and Authors"', add
label define occ2010_lbl 2860 `"Media and Communication Workers, nec"', add
label define occ2010_lbl 2900 `"Broadcast and Sound Engineering Technicians and Radio Operators, and media and communication equipment workers, all other"', add
label define occ2010_lbl 2910 `"Photographers"', add
label define occ2010_lbl 2920 `"Television, Video, and Motion Picture Camera Operators and Editors"', add
label define occ2010_lbl 3000 `"Chiropractors"', add
label define occ2010_lbl 3010 `"Dentists"', add
label define occ2010_lbl 3030 `"Dieticians and Nutritionists"', add
label define occ2010_lbl 3040 `"Optometrists"', add
label define occ2010_lbl 3050 `"Pharmacists"', add
label define occ2010_lbl 3060 `"Physicians and Surgeons"', add
label define occ2010_lbl 3110 `"Physician Assistants"', add
label define occ2010_lbl 3120 `"Podiatrists"', add
label define occ2010_lbl 3130 `"Registered Nurses"', add
label define occ2010_lbl 3140 `"Audiologists"', add
label define occ2010_lbl 3150 `"Occupational Therapists"', add
label define occ2010_lbl 3160 `"Physical Therapists"', add
label define occ2010_lbl 3200 `"Radiation Therapists"', add
label define occ2010_lbl 3210 `"Recreational Therapists"', add
label define occ2010_lbl 3220 `"Respiratory Therapists"', add
label define occ2010_lbl 3230 `"Speech Language Pathologists"', add
label define occ2010_lbl 3240 `"Therapists, nec"', add
label define occ2010_lbl 3250 `"Veterinarians"', add
label define occ2010_lbl 3260 `"Health Diagnosing and Treating Practitioners, nec"', add
label define occ2010_lbl 3300 `"Clinical Laboratory Technologists and Technicians"', add
label define occ2010_lbl 3310 `"Dental Hygienists"', add
label define occ2010_lbl 3320 `"Diagnostic Related Technologists and Technicians"', add
label define occ2010_lbl 3400 `"Emergency Medical Technicians and Paramedics"', add
label define occ2010_lbl 3410 `"Health Diagnosing and Treating Practitioner Support Technicians"', add
label define occ2010_lbl 3500 `"Licensed Practical and Licensed Vocational Nurses"', add
label define occ2010_lbl 3510 `"Medical Records and Health Information Technicians"', add
label define occ2010_lbl 3520 `"Opticians, Dispensing"', add
label define occ2010_lbl 3530 `"Health Technologists and Technicians, nec"', add
label define occ2010_lbl 3540 `"Healthcare Practitioners and Technical Occupations, nec"', add
label define occ2010_lbl 3600 `"Nursing, Psychiatric, and Home Health Aides"', add
label define occ2010_lbl 3610 `"Occupational Therapy Assistants and Aides"', add
label define occ2010_lbl 3620 `"Physical Therapist Assistants and Aides"', add
label define occ2010_lbl 3630 `"Massage Therapists"', add
label define occ2010_lbl 3640 `"Dental Assistants"', add
label define occ2010_lbl 3650 `"Medical Assistants and Other Healthcare Support Occupations, nec"', add
label define occ2010_lbl 3700 `"First-Line Supervisors of Correctional Officers"', add
label define occ2010_lbl 3710 `"First-Line Supervisors of Police and Detectives"', add
label define occ2010_lbl 3720 `"First-Line Supervisors of Fire Fighting and Prevention Workers"', add
label define occ2010_lbl 3730 `"Supervisors, Protective Service Workers, All Other"', add
label define occ2010_lbl 3740 `"Firefighters"', add
label define occ2010_lbl 3750 `"Fire Inspectors"', add
label define occ2010_lbl 3800 `"Sheriffs, Bailiffs, Correctional Officers, and Jailers"', add
label define occ2010_lbl 3820 `"Police Officers and Detectives"', add
label define occ2010_lbl 3900 `"Animal Control"', add
label define occ2010_lbl 3910 `"Private Detectives and Investigators"', add
label define occ2010_lbl 3930 `"Security Guards and Gaming Surveillance Officers"', add
label define occ2010_lbl 3940 `"Crossing Guards"', add
label define occ2010_lbl 3950 `"Law enforcement workers, nec"', add
label define occ2010_lbl 4000 `"Chefs and Cooks"', add
label define occ2010_lbl 4010 `"First-Line Supervisors of Food Preparation and Serving Workers"', add
label define occ2010_lbl 4030 `"Food Preparation Workers"', add
label define occ2010_lbl 4040 `"Bartenders"', add
label define occ2010_lbl 4050 `"Combined Food Preparation and Serving Workers, Including Fast Food"', add
label define occ2010_lbl 4060 `"Counter Attendant, Cafeteria, Food Concession, and Coffee Shop"', add
label define occ2010_lbl 4110 `"Waiters and Waitresses"', add
label define occ2010_lbl 4120 `"Food Servers, Nonrestaurant"', add
label define occ2010_lbl 4130 `"Food preparation and serving related workers, nec"', add
label define occ2010_lbl 4140 `"Dishwashers"', add
label define occ2010_lbl 4150 `"Host and Hostesses, Restaurant, Lounge, and Coffee Shop"', add
label define occ2010_lbl 4200 `"First-Line Supervisors of Housekeeping and Janitorial Workers"', add
label define occ2010_lbl 4210 `"First-Line Supervisors of Landscaping, Lawn Service, and Groundskeeping Workers"', add
label define occ2010_lbl 4220 `"Janitors and Building Cleaners"', add
label define occ2010_lbl 4230 `"Maids and Housekeeping Cleaners"', add
label define occ2010_lbl 4240 `"Pest Control Workers"', add
label define occ2010_lbl 4250 `"Grounds Maintenance Workers"', add
label define occ2010_lbl 4300 `"First-Line Supervisors of Gaming Workers"', add
label define occ2010_lbl 4320 `"First-Line Supervisors of Personal Service Workers"', add
label define occ2010_lbl 4340 `"Animal Trainers"', add
label define occ2010_lbl 4350 `"Nonfarm Animal Caretakers"', add
label define occ2010_lbl 4400 `"Gaming Services Workers"', add
label define occ2010_lbl 4420 `"Ushers, Lobby Attendants, and Ticket Takers"', add
label define occ2010_lbl 4430 `"Entertainment Attendants and Related Workers, nec"', add
label define occ2010_lbl 4460 `"Funeral Service Workers and Embalmers"', add
label define occ2010_lbl 4500 `"Barbers"', add
label define occ2010_lbl 4510 `"Hairdressers, Hairstylists, and Cosmetologists"', add
label define occ2010_lbl 4520 `"Personal Appearance Workers, nec"', add
label define occ2010_lbl 4530 `"Baggage Porters, Bellhops, and Concierges"', add
label define occ2010_lbl 4540 `"Tour and Travel Guides"', add
label define occ2010_lbl 4600 `"Childcare Workers"', add
label define occ2010_lbl 4610 `"Personal Care Aides"', add
label define occ2010_lbl 4620 `"Recreation and Fitness Workers"', add
label define occ2010_lbl 4640 `"Residential Advisors"', add
label define occ2010_lbl 4650 `"Personal Care and Service Workers, All Other"', add
label define occ2010_lbl 4700 `"First-Line Supervisors of Sales Workers"', add
label define occ2010_lbl 4720 `"Cashiers"', add
label define occ2010_lbl 4740 `"Counter and Rental Clerks"', add
label define occ2010_lbl 4750 `"Parts Salespersons"', add
label define occ2010_lbl 4760 `"Retail Salespersons"', add
label define occ2010_lbl 4800 `"Advertising Sales Agents"', add
label define occ2010_lbl 4810 `"Insurance Sales Agents"', add
label define occ2010_lbl 4820 `"Securities, Commodities, and Financial Services Sales Agents"', add
label define occ2010_lbl 4830 `"Travel Agents"', add
label define occ2010_lbl 4840 `"Sales Representatives, Services, All Other"', add
label define occ2010_lbl 4850 `"Sales Representatives, Wholesale and Manufacturing"', add
label define occ2010_lbl 4900 `"Models, Demonstrators, and Product Promoters"', add
label define occ2010_lbl 4920 `"Real Estate Brokers and Sales Agents"', add
label define occ2010_lbl 4930 `"Sales Engineers"', add
label define occ2010_lbl 4940 `"Telemarketers"', add
label define occ2010_lbl 4950 `"Door-to-Door Sales Workers, News and Street Vendors, and Related Workers"', add
label define occ2010_lbl 4965 `"Sales and Related Workers, All Other"', add
label define occ2010_lbl 5000 `"First-Line Supervisors of Office and Administrative Support Workers"', add
label define occ2010_lbl 5010 `"Switchboard Operators, Including Answering Service"', add
label define occ2010_lbl 5020 `"Telephone Operators"', add
label define occ2010_lbl 5030 `"Communications Equipment Operators, All Other"', add
label define occ2010_lbl 5100 `"Bill and Account Collectors"', add
label define occ2010_lbl 5110 `"Billing and Posting Clerks"', add
label define occ2010_lbl 5120 `"Bookkeeping, Accounting, and Auditing Clerks"', add
label define occ2010_lbl 5130 `"Gaming Cage Workers"', add
label define occ2010_lbl 5140 `"Payroll and Timekeeping Clerks"', add
label define occ2010_lbl 5150 `"Procurement Clerks"', add
label define occ2010_lbl 5160 `"Bank Tellers"', add
label define occ2010_lbl 5165 `"Financial Clerks, nec"', add
label define occ2010_lbl 5200 `"Brokerage Clerks"', add
label define occ2010_lbl 5220 `"Court, Municipal, and License Clerks"', add
label define occ2010_lbl 5230 `"Credit Authorizers, Checkers, and Clerks"', add
label define occ2010_lbl 5240 `"Customer Service Representatives"', add
label define occ2010_lbl 5250 `"Eligibility Interviewers, Government Programs"', add
label define occ2010_lbl 5260 `"File Clerks"', add
label define occ2010_lbl 5300 `"Hotel, Motel, and Resort Desk Clerks"', add
label define occ2010_lbl 5310 `"Interviewers, Except Eligibility and Loan"', add
label define occ2010_lbl 5320 `"Library Assistants, Clerical"', add
label define occ2010_lbl 5330 `"Loan Interviewers and Clerks"', add
label define occ2010_lbl 5340 `"New Account Clerks"', add
label define occ2010_lbl 5350 `"Correspondent clerks and order clerks"', add
label define occ2010_lbl 5360 `"Human Resources Assistants, Except Payroll and Timekeeping"', add
label define occ2010_lbl 5400 `"Receptionists and Information Clerks"', add
label define occ2010_lbl 5410 `"Reservation and Transportation Ticket Agents and Travel Clerks"', add
label define occ2010_lbl 5420 `"Information and Record Clerks, All Other"', add
label define occ2010_lbl 5500 `"Cargo and Freight Agents"', add
label define occ2010_lbl 5510 `"Couriers and Messengers"', add
label define occ2010_lbl 5520 `"Dispatchers"', add
label define occ2010_lbl 5530 `"Meter Readers, Utilities"', add
label define occ2010_lbl 5540 `"Postal Service Clerks"', add
label define occ2010_lbl 5550 `"Postal Service Mail Carriers"', add
label define occ2010_lbl 5560 `"Postal Service Mail Sorters, Processors, and Processing Machine Operators"', add
label define occ2010_lbl 5600 `"Production, Planning, and Expediting Clerks"', add
label define occ2010_lbl 5610 `"Shipping, Receiving, and Traffic Clerks"', add
label define occ2010_lbl 5620 `"Stock Clerks and Order Fillers"', add
label define occ2010_lbl 5630 `"Weighers, Measurers, Checkers, and Samplers, Recordkeeping"', add
label define occ2010_lbl 5700 `"Secretaries and Administrative Assistants"', add
label define occ2010_lbl 5800 `"Computer Operators"', add
label define occ2010_lbl 5810 `"Data Entry Keyers"', add
label define occ2010_lbl 5820 `"Word Processors and Typists"', add
label define occ2010_lbl 5840 `"Insurance Claims and Policy Processing Clerks"', add
label define occ2010_lbl 5850 `"Mail Clerks and Mail Machine Operators, Except Postal Service"', add
label define occ2010_lbl 5860 `"Office Clerks, General"', add
label define occ2010_lbl 5900 `"Office Machine Operators, Except Computer"', add
label define occ2010_lbl 5910 `"Proofreaders and Copy Markers"', add
label define occ2010_lbl 5920 `"Statistical Assistants"', add
label define occ2010_lbl 5940 `"Office and administrative support workers, nec"', add
label define occ2010_lbl 6005 `"First-Line Supervisors of Farming, Fishing, and Forestry Workers"', add
label define occ2010_lbl 6010 `"Agricultural Inspectors"', add
label define occ2010_lbl 6040 `"Graders and Sorters, Agricultural Products"', add
label define occ2010_lbl 6050 `"Agricultural workers, nec"', add
label define occ2010_lbl 6100 `"Fishing and hunting workers"', add
label define occ2010_lbl 6120 `"Forest and Conservation Workers"', add
label define occ2010_lbl 6130 `"Logging Workers"', add
label define occ2010_lbl 6200 `"First-Line Supervisors of Construction Trades and Extraction Workers"', add
label define occ2010_lbl 6210 `"Boilermakers"', add
label define occ2010_lbl 6220 `"Brickmasons, Blockmasons, and Stonemasons"', add
label define occ2010_lbl 6230 `"Carpenters"', add
label define occ2010_lbl 6240 `"Carpet, Floor, and Tile Installers and Finishers"', add
label define occ2010_lbl 6250 `"Cement Masons, Concrete Finishers, and Terrazzo Workers"', add
label define occ2010_lbl 6260 `"Construction Laborers"', add
label define occ2010_lbl 6300 `"Paving, Surfacing, and Tamping Equipment Operators"', add
label define occ2010_lbl 6320 `"Construction equipment operators except paving, surfacing, and tamping equipment operators"', add
label define occ2010_lbl 6330 `"Drywall Installers, Ceiling Tile Installers, and Tapers"', add
label define occ2010_lbl 6355 `"Electricians"', add
label define occ2010_lbl 6360 `"Glaziers"', add
label define occ2010_lbl 6400 `"Insulation Workers"', add
label define occ2010_lbl 6420 `"Painters, Construction and Maintenance"', add
label define occ2010_lbl 6430 `"Paperhangers"', add
label define occ2010_lbl 6440 `"Pipelayers, Plumbers, Pipefitters, and Steamfitters"', add
label define occ2010_lbl 6460 `"Plasterers and Stucco Masons"', add
label define occ2010_lbl 6500 `"Reinforcing Iron and Rebar Workers"', add
label define occ2010_lbl 6515 `"Roofers"', add
label define occ2010_lbl 6520 `"Sheet Metal Workers, metal-working"', add
label define occ2010_lbl 6530 `"Structural Iron and Steel Workers"', add
label define occ2010_lbl 6600 `"Helpers, Construction Trades"', add
label define occ2010_lbl 6660 `"Construction and Building Inspectors"', add
label define occ2010_lbl 6700 `"Elevator Installers and Repairers"', add
label define occ2010_lbl 6710 `"Fence Erectors"', add
label define occ2010_lbl 6720 `"Hazardous Materials Removal Workers"', add
label define occ2010_lbl 6730 `"Highway Maintenance Workers"', add
label define occ2010_lbl 6740 `"Rail-Track Laying and Maintenance Equipment Operators"', add
label define occ2010_lbl 6765 `"Construction workers, nec"', add
label define occ2010_lbl 6800 `"Derrick, rotary drill, and service unit operators, and roustabouts, oil, gas, and mining"', add
label define occ2010_lbl 6820 `"Earth Drillers, Except Oil and Gas"', add
label define occ2010_lbl 6830 `"Explosives Workers, Ordnance Handling Experts, and Blasters"', add
label define occ2010_lbl 6840 `"Mining Machine Operators"', add
label define occ2010_lbl 6940 `"Extraction workers, nec"', add
label define occ2010_lbl 7000 `"First-Line Supervisors of Mechanics, Installers, and Repairers"', add
label define occ2010_lbl 7010 `"Computer, Automated Teller, and Office Machine Repairers"', add
label define occ2010_lbl 7020 `"Radio and Telecommunications Equipment Installers and Repairers"', add
label define occ2010_lbl 7030 `"Avionics Technicians"', add
label define occ2010_lbl 7040 `"Electric Motor, Power Tool, and Related Repairers"', add
label define occ2010_lbl 7100 `"Electrical and electronics repairers, transportation equipment, and industrial and utility"', add
label define occ2010_lbl 7110 `"Electronic Equipment Installers and Repairers, Motor Vehicles"', add
label define occ2010_lbl 7120 `"Electronic Home Entertainment Equipment Installers and Repairers"', add
label define occ2010_lbl 7125 `"Electronic Repairs, nec"', add
label define occ2010_lbl 7130 `"Security and Fire Alarm Systems Installers"', add
label define occ2010_lbl 7140 `"Aircraft Mechanics and Service Technicians"', add
label define occ2010_lbl 7150 `"Automotive Body and Related Repairers"', add
label define occ2010_lbl 7160 `"Automotive Glass Installers and Repairers"', add
label define occ2010_lbl 7200 `"Automotive Service Technicians and Mechanics"', add
label define occ2010_lbl 7210 `"Bus and Truck Mechanics and Diesel Engine Specialists"', add
label define occ2010_lbl 7220 `"Heavy Vehicle and Mobile Equipment Service Technicians and Mechanics"', add
label define occ2010_lbl 7240 `"Small Engine Mechanics"', add
label define occ2010_lbl 7260 `"Vehicle and Mobile Equipment Mechanics, Installers, and Repairers, nec"', add
label define occ2010_lbl 7300 `"Control and Valve Installers and Repairers"', add
label define occ2010_lbl 7315 `"Heating, Air Conditioning, and Refrigeration Mechanics and Installers"', add
label define occ2010_lbl 7320 `"Home Appliance Repairers"', add
label define occ2010_lbl 7330 `"Industrial and Refractory Machinery Mechanics"', add
label define occ2010_lbl 7340 `"Maintenance and Repair Workers, General"', add
label define occ2010_lbl 7350 `"Maintenance Workers, Machinery"', add
label define occ2010_lbl 7360 `"Millwrights"', add
label define occ2010_lbl 7410 `"Electrical Power-Line Installers and Repairers"', add
label define occ2010_lbl 7420 `"Telecommunications Line Installers and Repairers"', add
label define occ2010_lbl 7430 `"Precision Instrument and Equipment Repairers"', add
label define occ2010_lbl 7510 `"Coin, Vending, and Amusement Machine Servicers and Repairers"', add
label define occ2010_lbl 7540 `"Locksmiths and Safe Repairers"', add
label define occ2010_lbl 7550 `"Manufactured Building and Mobile Home Installers"', add
label define occ2010_lbl 7560 `"Riggers"', add
label define occ2010_lbl 7610 `"Helpers--Installation, Maintenance, and Repair Workers"', add
label define occ2010_lbl 7630 `"Other Installation, Maintenance, and Repair Workers Including Wind Turbine Service Technicians, and Commercial Divers, and Signal and Track Switch Repairers"', add
label define occ2010_lbl 7700 `"First-Line Supervisors of Production and Operating Workers"', add
label define occ2010_lbl 7710 `"Aircraft Structure, Surfaces, Rigging, and Systems Assemblers"', add
label define occ2010_lbl 7720 `"Electrical, Electronics, and Electromechanical Assemblers"', add
label define occ2010_lbl 7730 `"Engine and Other Machine Assemblers"', add
label define occ2010_lbl 7740 `"Structural Metal Fabricators and Fitters"', add
label define occ2010_lbl 7750 `"Assemblers and Fabricators, nec"', add
label define occ2010_lbl 7800 `"Bakers"', add
label define occ2010_lbl 7810 `"Butchers and Other Meat, Poultry, and Fish Processing Workers"', add
label define occ2010_lbl 7830 `"Food and Tobacco Roasting, Baking, and Drying Machine Operators and Tenders"', add
label define occ2010_lbl 7840 `"Food Batchmakers"', add
label define occ2010_lbl 7850 `"Food Cooking Machine Operators and Tenders"', add
label define occ2010_lbl 7855 `"Food Processing, nec"', add
label define occ2010_lbl 7900 `"Computer Control Programmers and Operators"', add
label define occ2010_lbl 7920 `"Extruding and Drawing Machine Setters, Operators, and Tenders, Metal and Plastic"', add
label define occ2010_lbl 7930 `"Forging Machine Setters, Operators, and Tenders, Metal and Plastic"', add
label define occ2010_lbl 7940 `"Rolling Machine Setters, Operators, and Tenders, metal and Plastic"', add
label define occ2010_lbl 7950 `"Cutting, Punching, and Press Machine Setters, Operators, and Tenders, Metal and Plastic"', add
label define occ2010_lbl 7960 `"Drilling and Boring Machine Tool Setters, Operators, and Tenders, Metal and Plastic"', add
label define occ2010_lbl 8000 `"Grinding, Lapping, Polishing, and Buffing Machine Tool Setters, Operators, and Tenders, Metal and Plastic"', add
label define occ2010_lbl 8010 `"Lathe and Turning Machine Tool Setters, Operators, and Tenders, Metal and Plastic"', add
label define occ2010_lbl 8030 `"Machinists"', add
label define occ2010_lbl 8040 `"Metal Furnace Operators, Tenders, Pourers, and Casters"', add
label define occ2010_lbl 8060 `"Model Makers and Patternmakers, Metal and Plastic"', add
label define occ2010_lbl 8100 `"Molders and Molding Machine Setters, Operators, and Tenders, Metal and Plastic"', add
label define occ2010_lbl 8130 `"Tool and Die Makers"', add
label define occ2010_lbl 8140 `"Welding, Soldering, and Brazing Workers"', add
label define occ2010_lbl 8150 `"Heat Treating Equipment Setters, Operators, and Tenders, Metal and Plastic"', add
label define occ2010_lbl 8200 `"Plating and Coating Machine Setters, Operators, and Tenders, Metal and Plastic"', add
label define occ2010_lbl 8210 `"Tool Grinders, Filers, and Sharpeners"', add
label define occ2010_lbl 8220 `"Metal workers and plastic workers, nec"', add
label define occ2010_lbl 8230 `"Bookbinders, Printing Machine Operators, and Job Printers"', add
label define occ2010_lbl 8250 `"Prepress Technicians and Workers"', add
label define occ2010_lbl 8300 `"Laundry and Dry-Cleaning Workers"', add
label define occ2010_lbl 8310 `"Pressers, Textile, Garment, and Related Materials"', add
label define occ2010_lbl 8320 `"Sewing Machine Operators"', add
label define occ2010_lbl 8330 `"Shoe and Leather Workers and Repairers"', add
label define occ2010_lbl 8340 `"Shoe Machine Operators and Tenders"', add
label define occ2010_lbl 8350 `"Tailors, Dressmakers, and Sewers"', add
label define occ2010_lbl 8400 `"Textile bleaching and dyeing, and cutting machine setters, operators, and tenders"', add
label define occ2010_lbl 8410 `"Textile Knitting and Weaving Machine Setters, Operators, and Tenders"', add
label define occ2010_lbl 8420 `"Textile Winding, Twisting, and Drawing Out Machine Setters, Operators, and Tenders"', add
label define occ2010_lbl 8450 `"Upholsterers"', add
label define occ2010_lbl 8460 `"Textile, Apparel, and Furnishings workers, nec"', add
label define occ2010_lbl 8500 `"Cabinetmakers and Bench Carpenters"', add
label define occ2010_lbl 8510 `"Furniture Finishers"', add
label define occ2010_lbl 8530 `"Sawing Machine Setters, Operators, and Tenders, Wood"', add
label define occ2010_lbl 8540 `"Woodworking Machine Setters, Operators, and Tenders, Except Sawing"', add
label define occ2010_lbl 8550 `"Woodworkers including model makers and patternmakers, nec"', add
label define occ2010_lbl 8600 `"Power Plant Operators, Distributors, and Dispatchers"', add
label define occ2010_lbl 8610 `"Stationary Engineers and Boiler Operators"', add
label define occ2010_lbl 8620 `"Water Wastewater Treatment Plant and System Operators"', add
label define occ2010_lbl 8630 `"Plant and System Operators, nec"', add
label define occ2010_lbl 8640 `"Chemical Processing Machine Setters, Operators, and Tenders"', add
label define occ2010_lbl 8650 `"Crushing, Grinding, Polishing, Mixing, and Blending Workers"', add
label define occ2010_lbl 8710 `"Cutting Workers"', add
label define occ2010_lbl 8720 `"Extruding, Forming, Pressing, and Compacting Machine Setters, Operators, and Tenders"', add
label define occ2010_lbl 8730 `"Furnace, Kiln, Oven, Drier, and Kettle Operators and Tenders"', add
label define occ2010_lbl 8740 `"Inspectors, Testers, Sorters, Samplers, and Weighers"', add
label define occ2010_lbl 8750 `"Jewelers and Precious Stone and Metal Workers"', add
label define occ2010_lbl 8760 `"Medical, Dental, and Ophthalmic Laboratory Technicians"', add
label define occ2010_lbl 8800 `"Packaging and Filling Machine Operators and Tenders"', add
label define occ2010_lbl 8810 `"Painting Workers and Dyers"', add
label define occ2010_lbl 8830 `"Photographic Process Workers and Processing Machine Operators"', add
label define occ2010_lbl 8850 `"Adhesive Bonding Machine Operators and Tenders"', add
label define occ2010_lbl 8860 `"Cleaning, Washing, and Metal Pickling Equipment Operators and Tenders"', add
label define occ2010_lbl 8910 `"Etchers, Engravers, and Lithographers"', add
label define occ2010_lbl 8920 `"Molders, Shapers, and Casters, Except Metal and Plastic"', add
label define occ2010_lbl 8930 `"Paper Goods Machine Setters, Operators, and Tenders"', add
label define occ2010_lbl 8940 `"Tire Builders"', add
label define occ2010_lbl 8950 `"Helpers--Production Workers"', add
label define occ2010_lbl 8965 `"Other production workers including semiconductor processors and cooling and freezing equipment operators"', add
label define occ2010_lbl 9000 `"Supervisors of Transportation and Material Moving Workers"', add
label define occ2010_lbl 9030 `"Aircraft Pilots and Flight Engineers"', add
label define occ2010_lbl 9040 `"Air Traffic Controllers and Airfield Operations Specialists"', add
label define occ2010_lbl 9050 `"Flight Attendants and Transportation Workers and Attendants"', add
label define occ2010_lbl 9100 `"Bus and Ambulance Drivers and Attendants"', add
label define occ2010_lbl 9130 `"Driver/Sales Workers and Truck Drivers"', add
label define occ2010_lbl 9140 `"Taxi Drivers and Chauffeurs"', add
label define occ2010_lbl 9150 `"Motor Vehicle Operators, All Other"', add
label define occ2010_lbl 9200 `"Locomotive Engineers and Operators"', add
label define occ2010_lbl 9230 `"Railroad Brake, Signal, and Switch Operators"', add
label define occ2010_lbl 9240 `"Railroad Conductors and Yardmasters"', add
label define occ2010_lbl 9260 `"Subway, Streetcar, and Other Rail Transportation Workers"', add
label define occ2010_lbl 9300 `"Sailors and marine oilers, and ship engineers"', add
label define occ2010_lbl 9310 `"Ship and Boat Captains and Operators"', add
label define occ2010_lbl 9350 `"Parking Lot Attendants"', add
label define occ2010_lbl 9360 `"Automotive and Watercraft Service Attendants"', add
label define occ2010_lbl 9410 `"Transportation Inspectors"', add
label define occ2010_lbl 9420 `"Transportation workers, nec"', add
label define occ2010_lbl 9510 `"Crane and Tower Operators"', add
label define occ2010_lbl 9520 `"Dredge, Excavating, and Loading Machine Operators"', add
label define occ2010_lbl 9560 `"Conveyor operators and tenders, and hoist and winch operators"', add
label define occ2010_lbl 9600 `"Industrial Truck and Tractor Operators"', add
label define occ2010_lbl 9610 `"Cleaners of Vehicles and Equipment"', add
label define occ2010_lbl 9620 `"Laborers and Freight, Stock, and Material Movers, Hand"', add
label define occ2010_lbl 9630 `"Machine Feeders and Offbearers"', add
label define occ2010_lbl 9640 `"Packers and Packagers, Hand"', add
label define occ2010_lbl 9650 `"Pumping Station Operators"', add
label define occ2010_lbl 9720 `"Refuse and Recyclable Material Collectors"', add
label define occ2010_lbl 9750 `"Material moving workers, nec"', add
label define occ2010_lbl 9800 `"Military Officer Special and Tactical Operations Leaders"', add
label define occ2010_lbl 9810 `"First-Line Enlisted Military Supervisors"', add
label define occ2010_lbl 9820 `"Military Enlisted Tactical Operations and Air/Weapons Specialists and Crew Members"', add
label define occ2010_lbl 9830 `"Military, Rank Not Specified"', add
label define occ2010_lbl 9920 `"Unemployed, with No Work Experience in the Last 5 Years or Earlier or Never Worked"', add
label define occ2010_lbl 9999 `"Unknown"', add
label values occ2010 occ2010_lbl

label define ind1990_lbl 000 `"NIU"'
label define ind1990_lbl 010 `"   Agricultural production, crops"', add
label define ind1990_lbl 011 `"   Agricultural production, livestock"', add
label define ind1990_lbl 012 `"   Veterinary services"', add
label define ind1990_lbl 020 `"   Landscape and horticultural services"', add
label define ind1990_lbl 030 `"   Agricultural services, n.e.c."', add
label define ind1990_lbl 031 `"   Forestry"', add
label define ind1990_lbl 032 `"   Fishing, hunting, and trapping "', add
label define ind1990_lbl 040 `"   Metal mining"', add
label define ind1990_lbl 041 `"   Coal mining"', add
label define ind1990_lbl 042 `"   Oil and gas extraction"', add
label define ind1990_lbl 050 `"   Nonmetallic mining and quarrying, except fuels "', add
label define ind1990_lbl 060 `"   All construction "', add
label define ind1990_lbl 100 `"         Meat products"', add
label define ind1990_lbl 101 `"         Dairy products"', add
label define ind1990_lbl 102 `"         Canned, frozen, and preserved fruits and vegetables"', add
label define ind1990_lbl 110 `"         Grain mill products"', add
label define ind1990_lbl 111 `"         Bakery products"', add
label define ind1990_lbl 112 `"         Sugar and confectionery products"', add
label define ind1990_lbl 120 `"         Beverage industries"', add
label define ind1990_lbl 121 `"         Misc. food preparations and kindred products"', add
label define ind1990_lbl 122 `"         Food industries, n.s."', add
label define ind1990_lbl 130 `"      Tobacco manufactures"', add
label define ind1990_lbl 132 `"         Knitting mills"', add
label define ind1990_lbl 140 `"         Dyeing and finishing textiles, except wool and knit goods"', add
label define ind1990_lbl 141 `"         Carpets and rugs"', add
label define ind1990_lbl 142 `"         Yarn, thread, and fabric mills"', add
label define ind1990_lbl 150 `"         Miscellaneous textile mill products"', add
label define ind1990_lbl 151 `"         Apparel and accessories, except knit"', add
label define ind1990_lbl 152 `"         Miscellaneous fabricated textile products"', add
label define ind1990_lbl 160 `"         Pulp, paper, and paperboard mills"', add
label define ind1990_lbl 161 `"         Miscellaneous paper and pulp products"', add
label define ind1990_lbl 162 `"         Paperboard containers and boxes"', add
label define ind1990_lbl 171 `"         Newspaper publishing and printing"', add
label define ind1990_lbl 172 `"         Printing, publishing, and allied industries, except newspapers"', add
label define ind1990_lbl 180 `"         Plastics, synthetics, and resins"', add
label define ind1990_lbl 181 `"         Drugs"', add
label define ind1990_lbl 182 `"         Soaps and cosmetics"', add
label define ind1990_lbl 190 `"         Paints, varnishes, and related products"', add
label define ind1990_lbl 191 `"         Agricultural chemicals"', add
label define ind1990_lbl 192 `"         Industrial and miscellaneous chemicals"', add
label define ind1990_lbl 200 `"         Petroleum refining"', add
label define ind1990_lbl 201 `"         Miscellaneous petroleum and coal products"', add
label define ind1990_lbl 210 `"         Tires and inner tubes"', add
label define ind1990_lbl 211 `"         Other rubber products, and plastics footwear and belting"', add
label define ind1990_lbl 212 `"         Miscellaneous plastics products"', add
label define ind1990_lbl 220 `"         Leather tanning and finishing"', add
label define ind1990_lbl 221 `"         Footwear, except rubber and plastic"', add
label define ind1990_lbl 222 `"         Leather products, except footwear"', add
label define ind1990_lbl 229 `"Manufacturing, non-durable - allocated"', add
label define ind1990_lbl 230 `"         Logging"', add
label define ind1990_lbl 231 `"         Sawmills, planing mills, and millwork"', add
label define ind1990_lbl 232 `"         Wood buildings and mobile homes"', add
label define ind1990_lbl 241 `"         Miscellaneous wood products"', add
label define ind1990_lbl 242 `"      Furniture and fixtures"', add
label define ind1990_lbl 250 `"         Glass and glass products"', add
label define ind1990_lbl 251 `"         Cement, concrete, gypsum, and plaster products"', add
label define ind1990_lbl 252 `"         Structural clay products"', add
label define ind1990_lbl 261 `"         Pottery and related products"', add
label define ind1990_lbl 262 `"         Misc. nonmetallic mineral and stone products"', add
label define ind1990_lbl 270 `"         Blast furnaces, steelworks, rolling and finishing mills"', add
label define ind1990_lbl 271 `"         Iron and steel foundries"', add
label define ind1990_lbl 272 `"         Primary aluminum industries"', add
label define ind1990_lbl 280 `"         Other primary metal industries"', add
label define ind1990_lbl 281 `"         Cutlery, handtools, and general hardware"', add
label define ind1990_lbl 282 `"         Fabricated structural metal products"', add
label define ind1990_lbl 290 `"         Screw machine products"', add
label define ind1990_lbl 291 `"         Metal forgings and stampings"', add
label define ind1990_lbl 292 `"         Ordnance"', add
label define ind1990_lbl 300 `"         Miscellaneous fabricated metal products"', add
label define ind1990_lbl 301 `"         Metal industries, n.s."', add
label define ind1990_lbl 310 `"         Engines and turbines"', add
label define ind1990_lbl 311 `"         Farm machinery and equipment"', add
label define ind1990_lbl 312 `"         Construction and material handling machines"', add
label define ind1990_lbl 320 `"         Metalworking machinery"', add
label define ind1990_lbl 321 `"         Office and accounting machines"', add
label define ind1990_lbl 322 `"         Computers and related equipment"', add
label define ind1990_lbl 331 `"         Machinery, except electrical, n.e.c."', add
label define ind1990_lbl 332 `"         Machinery, n.s."', add
label define ind1990_lbl 340 `"         Household appliances"', add
label define ind1990_lbl 341 `"         Radio, TV, and communication equipment"', add
label define ind1990_lbl 342 `"         Electrical machinery, equipment, and supplies, n.e.c."', add
label define ind1990_lbl 350 `"         Electrical machinery, equipment, and supplies, n.s."', add
label define ind1990_lbl 351 `"         Motor vehicles and motor vehicle equipment"', add
label define ind1990_lbl 352 `"         Aircraft and parts"', add
label define ind1990_lbl 360 `"         Ship and boat building and repairing"', add
label define ind1990_lbl 361 `"         Railroad locomotives and equipment"', add
label define ind1990_lbl 362 `"         Guided missiles, space vehicles, and parts"', add
label define ind1990_lbl 370 `"         Cycles and miscellaneous transportation equipment"', add
label define ind1990_lbl 371 `"         Scientific and controlling instruments"', add
label define ind1990_lbl 372 `"         Medical, dental, and optical instruments and supplies"', add
label define ind1990_lbl 380 `"         Photographic equipment and supplies"', add
label define ind1990_lbl 381 `"         Watches, clocks, and clockwork operated devices"', add
label define ind1990_lbl 390 `"      Toys, amusement, and sporting goods"', add
label define ind1990_lbl 391 `"      Miscellaneous manufacturing industries"', add
label define ind1990_lbl 392 `"      Manufacturing industries, n.s. "', add
label define ind1990_lbl 400 `"      Railroads"', add
label define ind1990_lbl 401 `"      Bus service and urban transit"', add
label define ind1990_lbl 402 `"      Taxicab service"', add
label define ind1990_lbl 410 `"      Trucking service"', add
label define ind1990_lbl 411 `"      Warehousing and storage"', add
label define ind1990_lbl 412 `"      U.S. Postal Service"', add
label define ind1990_lbl 420 `"      Water transportation"', add
label define ind1990_lbl 421 `"      Air transportation"', add
label define ind1990_lbl 422 `"      Pipe lines, except natural gas"', add
label define ind1990_lbl 432 `"      Services incidental to transportation"', add
label define ind1990_lbl 440 `"      Radio and television broadcasting and cable"', add
label define ind1990_lbl 441 `"      Wired communications"', add
label define ind1990_lbl 442 `"      Telegraph and miscellaneous communications services"', add
label define ind1990_lbl 450 `"      Electric light and power"', add
label define ind1990_lbl 451 `"      Gas and steam supply systems"', add
label define ind1990_lbl 452 `"      Electric and gas, and other combinations"', add
label define ind1990_lbl 470 `"      Water supply and irrigation"', add
label define ind1990_lbl 471 `"      Sanitary services"', add
label define ind1990_lbl 472 `"      Utilities, n.s. "', add
label define ind1990_lbl 500 `"      Motor vehicles and equipment"', add
label define ind1990_lbl 501 `"      Furniture and home furnishings"', add
label define ind1990_lbl 502 `"      Lumber and construction materials"', add
label define ind1990_lbl 510 `"      Professional and commercial equipment and supplies"', add
label define ind1990_lbl 511 `"      Metals and minerals, except petroleum"', add
label define ind1990_lbl 512 `"      Electrical goods"', add
label define ind1990_lbl 521 `"      Hardware, plumbing and heating supplies"', add
label define ind1990_lbl 530 `"      Machinery, equipment, and supplies"', add
label define ind1990_lbl 531 `"      Scrap and waste materials"', add
label define ind1990_lbl 532 `"      Miscellaneous wholesale, durable goods"', add
label define ind1990_lbl 540 `"      Paper and paper products"', add
label define ind1990_lbl 541 `"      Drugs, chemicals, and allied products"', add
label define ind1990_lbl 542 `"      Apparel, fabrics, and notions"', add
label define ind1990_lbl 550 `"      Groceries and related products"', add
label define ind1990_lbl 551 `"      Farm-product raw materials"', add
label define ind1990_lbl 552 `"      Petroleum products"', add
label define ind1990_lbl 560 `"      Alcoholic beverages"', add
label define ind1990_lbl 561 `"      Farm supplies"', add
label define ind1990_lbl 562 `"      Miscellaneous wholesale, nondurable goods"', add
label define ind1990_lbl 571 `"      Wholesale trade, n.s. "', add
label define ind1990_lbl 580 `"   Lumber and building material retailing"', add
label define ind1990_lbl 581 `"   Hardware stores"', add
label define ind1990_lbl 582 `"   Retail nurseries and garden stores"', add
label define ind1990_lbl 590 `"   Mobile home dealers"', add
label define ind1990_lbl 591 `"   Department stores"', add
label define ind1990_lbl 592 `"   Variety stores"', add
label define ind1990_lbl 600 `"   Miscellaneous general merchandise stores"', add
label define ind1990_lbl 601 `"   Grocery stores"', add
label define ind1990_lbl 602 `"   Dairy products stores"', add
label define ind1990_lbl 610 `"   Retail bakeries"', add
label define ind1990_lbl 611 `"   Food stores, n.e.c."', add
label define ind1990_lbl 612 `"   Motor vehicle dealers"', add
label define ind1990_lbl 620 `"   Auto and home supply stores"', add
label define ind1990_lbl 621 `"   Gasoline service stations"', add
label define ind1990_lbl 622 `"   Miscellaneous vehicle dealers"', add
label define ind1990_lbl 623 `"   Apparel and accessory stores, except shoe"', add
label define ind1990_lbl 630 `"   Shoe stores"', add
label define ind1990_lbl 631 `"   Furniture and home furnishings stores"', add
label define ind1990_lbl 632 `"   Household appliance stores"', add
label define ind1990_lbl 633 `"   Radio, TV, and computer stores"', add
label define ind1990_lbl 640 `"   Music stores"', add
label define ind1990_lbl 641 `"   Eating and drinking places"', add
label define ind1990_lbl 642 `"   Drug stores"', add
label define ind1990_lbl 650 `"   Liquor stores"', add
label define ind1990_lbl 651 `"   Sporting goods, bicycles, and hobby stores"', add
label define ind1990_lbl 652 `"   Book and stationery stores"', add
label define ind1990_lbl 660 `"   Jewelry stores"', add
label define ind1990_lbl 661 `"   Gift, novelty, and souvenir shops"', add
label define ind1990_lbl 662 `"   Sewing, needlework, and piece goods stores"', add
label define ind1990_lbl 663 `"   Catalog and mail order houses"', add
label define ind1990_lbl 670 `"   Vending machine operators"', add
label define ind1990_lbl 671 `"   Direct selling establishments"', add
label define ind1990_lbl 672 `"   Fuel dealers"', add
label define ind1990_lbl 681 `"   Retail florists"', add
label define ind1990_lbl 682 `"   Miscellaneous retail stores"', add
label define ind1990_lbl 691 `"   Retail trade, n.s. "', add
label define ind1990_lbl 700 `"   Banking"', add
label define ind1990_lbl 701 `"   Savings institutions, including credit unions"', add
label define ind1990_lbl 702 `"   Credit agencies, n.e.c."', add
label define ind1990_lbl 710 `"   Security, commodity brokerage, and investment companies"', add
label define ind1990_lbl 711 `"   Insurance"', add
label define ind1990_lbl 712 `"   Real estate, including real estate-insurance offices "', add
label define ind1990_lbl 721 `"   Advertising"', add
label define ind1990_lbl 722 `"   Services to dwellings and other buildings"', add
label define ind1990_lbl 731 `"   Personnel supply services"', add
label define ind1990_lbl 732 `"   Computer and data processing services"', add
label define ind1990_lbl 740 `"   Detective and protective services"', add
label define ind1990_lbl 741 `"   Business services, n.e.c."', add
label define ind1990_lbl 742 `"   Automotive rental and leasing, without drivers"', add
label define ind1990_lbl 750 `"   Automobile parking and carwashes"', add
label define ind1990_lbl 751 `"   Automotive repair and related services"', add
label define ind1990_lbl 752 `"   Electrical repair shops"', add
label define ind1990_lbl 760 `"   Miscellaneous repair services "', add
label define ind1990_lbl 761 `"   Private households"', add
label define ind1990_lbl 762 `"   Hotels and motels"', add
label define ind1990_lbl 770 `"   Lodging places, except hotels and motels"', add
label define ind1990_lbl 771 `"   Laundry, cleaning, and garment services"', add
label define ind1990_lbl 772 `"   Beauty shops"', add
label define ind1990_lbl 780 `"   Barber shops"', add
label define ind1990_lbl 781 `"   Funeral service and crematories"', add
label define ind1990_lbl 782 `"   Shoe repair shops"', add
label define ind1990_lbl 790 `"   Dressmaking shops"', add
label define ind1990_lbl 791 `"   Miscellaneous personal services "', add
label define ind1990_lbl 800 `"   Theaters and motion pictures"', add
label define ind1990_lbl 801 `"   Video tape rental"', add
label define ind1990_lbl 802 `"   Bowling centers"', add
label define ind1990_lbl 810 `"   Miscellaneous entertainment and recreation services "', add
label define ind1990_lbl 812 `"   Offices and clinics of physicians"', add
label define ind1990_lbl 820 `"   Offices and clinics of dentists"', add
label define ind1990_lbl 821 `"   Offices and clinics of chiropractors"', add
label define ind1990_lbl 822 `"   Offices and clinics of optometrists"', add
label define ind1990_lbl 830 `"   Offices and clinics of health practitioners, n.e.c."', add
label define ind1990_lbl 831 `"   Hospitals"', add
label define ind1990_lbl 832 `"   Nursing and personal care facilities"', add
label define ind1990_lbl 840 `"   Health services, n.e.c."', add
label define ind1990_lbl 841 `"   Legal services"', add
label define ind1990_lbl 842 `"   Elementary and secondary schools"', add
label define ind1990_lbl 850 `"   Colleges and universities"', add
label define ind1990_lbl 851 `"   Vocational schools"', add
label define ind1990_lbl 852 `"   Libraries"', add
label define ind1990_lbl 860 `"   Educational services, n.e.c."', add
label define ind1990_lbl 861 `"   Job training and vocational rehabilitation services"', add
label define ind1990_lbl 862 `"   Child day care services"', add
label define ind1990_lbl 863 `"   Family child care homes"', add
label define ind1990_lbl 870 `"   Residential care facilities, without nursing"', add
label define ind1990_lbl 871 `"   Social services, n.e.c."', add
label define ind1990_lbl 872 `"   Museums, art galleries, and zoos"', add
label define ind1990_lbl 873 `"   Labor unions"', add
label define ind1990_lbl 880 `"   Religious organizations"', add
label define ind1990_lbl 881 `"   Membership organizations, n.e.c."', add
label define ind1990_lbl 882 `"   Engineering, architectural, and surveying services"', add
label define ind1990_lbl 890 `"   Accounting, auditing, and bookkeeping services"', add
label define ind1990_lbl 891 `"   Research, development, and testing services"', add
label define ind1990_lbl 892 `"   Management and public relations services"', add
label define ind1990_lbl 893 `"   Miscellaneous professional and related services "', add
label define ind1990_lbl 900 `"   Executive and legislative offices"', add
label define ind1990_lbl 901 `"   General government, n.e.c."', add
label define ind1990_lbl 910 `"   Justice, public order, and safety"', add
label define ind1990_lbl 921 `"   Public finance, taxation, and monetary policy"', add
label define ind1990_lbl 922 `"   Administration of human resources programs"', add
label define ind1990_lbl 930 `"   Administration of environmental quality and housing programs"', add
label define ind1990_lbl 931 `"   Administration of economic programs"', add
label define ind1990_lbl 932 `"   National security and international affairs "', add
label define ind1990_lbl 940 `"      Army"', add
label define ind1990_lbl 941 `"      Air Force"', add
label define ind1990_lbl 942 `"      Navy"', add
label define ind1990_lbl 950 `"      Marines"', add
label define ind1990_lbl 951 `"      Coast Guard"', add
label define ind1990_lbl 952 `"      Armed Forces, branch not specified"', add
label define ind1990_lbl 960 `"      Military Reserves or National Guard "', add
label define ind1990_lbl 998 `"Unknown"', add
label values ind1990 ind1990_lbl

label define occ1950_lbl 000 `"Accountants and auditors"'
label define occ1950_lbl 001 `"Actors and actresses"', add
label define occ1950_lbl 002 `"Airplane pilots and navigators"', add
label define occ1950_lbl 003 `"Architects"', add
label define occ1950_lbl 004 `"Artists and art teachers"', add
label define occ1950_lbl 005 `"Athletes"', add
label define occ1950_lbl 006 `"Authors"', add
label define occ1950_lbl 007 `"Chemists"', add
label define occ1950_lbl 008 `"Chiropractors"', add
label define occ1950_lbl 009 `"Clergymen"', add
label define occ1950_lbl 010 `"College presidents and deans"', add
label define occ1950_lbl 012 `"Agricultural sciences"', add
label define occ1950_lbl 013 `"Biological sciences"', add
label define occ1950_lbl 014 `"Chemistry"', add
label define occ1950_lbl 015 `"Economics"', add
label define occ1950_lbl 016 `"Engineering"', add
label define occ1950_lbl 017 `"Geology and geophysics"', add
label define occ1950_lbl 018 `"Mathematics"', add
label define occ1950_lbl 019 `"Medical sciences"', add
label define occ1950_lbl 023 `"Physics"', add
label define occ1950_lbl 024 `"Psychology"', add
label define occ1950_lbl 025 `"Statistics"', add
label define occ1950_lbl 026 `"Natural science (n.e.c.)"', add
label define occ1950_lbl 027 `"Social sciences (n.e.c.)"', add
label define occ1950_lbl 028 `"Nonscientific subjects"', add
label define occ1950_lbl 029 `"Subject not specified"', add
label define occ1950_lbl 031 `"Dancers and dancing teachers"', add
label define occ1950_lbl 032 `"Dentists"', add
label define occ1950_lbl 033 `"Designers"', add
label define occ1950_lbl 034 `"Dieticians and nutritionists"', add
label define occ1950_lbl 035 `"Draftsmen"', add
label define occ1950_lbl 036 `"Editors and reporters"', add
label define occ1950_lbl 041 `"Engineers, aeronautical"', add
label define occ1950_lbl 042 `"Engineers, chemical"', add
label define occ1950_lbl 043 `"Engineers, civil"', add
label define occ1950_lbl 044 `"Engineers, electrical"', add
label define occ1950_lbl 045 `"Engineers, industrial"', add
label define occ1950_lbl 046 `"Engineers, mechanical"', add
label define occ1950_lbl 047 `"Engineers, metallurgical, metallurgists"', add
label define occ1950_lbl 048 `"Engineers, mining"', add
label define occ1950_lbl 049 `"Engineers (n.e.c.)"', add
label define occ1950_lbl 051 `"Entertainers (n.e.c.)"', add
label define occ1950_lbl 052 `"Farm and home management advisors"', add
label define occ1950_lbl 053 `"Foresters and conservationists"', add
label define occ1950_lbl 054 `"Funeral directors and embalmers"', add
label define occ1950_lbl 055 `"Lawyers and judges"', add
label define occ1950_lbl 056 `"Librarians"', add
label define occ1950_lbl 057 `"Musicians and music teachers"', add
label define occ1950_lbl 058 `"Nurses, professional"', add
label define occ1950_lbl 059 `"Nurses, student professional"', add
label define occ1950_lbl 061 `"Agricultural scientists"', add
label define occ1950_lbl 062 `"Biological scientists"', add
label define occ1950_lbl 063 `"Geologists and geophysicists"', add
label define occ1950_lbl 067 `"Mathematicians"', add
label define occ1950_lbl 068 `"Physicists"', add
label define occ1950_lbl 069 `"Miscellaneous natural scientists"', add
label define occ1950_lbl 070 `"Optometrists"', add
label define occ1950_lbl 071 `"Osteopaths"', add
label define occ1950_lbl 072 `"Personnel and labor relations workers"', add
label define occ1950_lbl 073 `"Pharmacists"', add
label define occ1950_lbl 074 `"Photographers"', add
label define occ1950_lbl 075 `"Physicians and surgeons"', add
label define occ1950_lbl 076 `"Radio operators"', add
label define occ1950_lbl 077 `"Recreation and group workers"', add
label define occ1950_lbl 078 `"Religious workers"', add
label define occ1950_lbl 079 `"Social and welfare workers, except group"', add
label define occ1950_lbl 081 `"Economists"', add
label define occ1950_lbl 082 `"Psychologists"', add
label define occ1950_lbl 083 `"Statisticians and actuaries"', add
label define occ1950_lbl 084 `"Miscellaneous social scientists"', add
label define occ1950_lbl 091 `"Sports instructors and officials"', add
label define occ1950_lbl 092 `"Surveyors"', add
label define occ1950_lbl 093 `"Teachers (n.e.c.)"', add
label define occ1950_lbl 094 `"Technicians, medical and dental"', add
label define occ1950_lbl 095 `"Technicians, testing"', add
label define occ1950_lbl 096 `"Technicians (n.e.c.)"', add
label define occ1950_lbl 097 `"Therapists and healers (n.e.c.)"', add
label define occ1950_lbl 098 `"Veterinarians"', add
label define occ1950_lbl 099 `"Professional, technical and kindred workers (n.e.c.)"', add
label define occ1950_lbl 100 `"Farmers (owners and tenants)"', add
label define occ1950_lbl 123 `"Farm managers"', add
label define occ1950_lbl 200 `"Buyers and department heads, store"', add
label define occ1950_lbl 201 `"Buyers and shippers, farm products"', add
label define occ1950_lbl 203 `"Conductors, railroad"', add
label define occ1950_lbl 204 `"Credit men"', add
label define occ1950_lbl 205 `"Floormen and floor managers, store"', add
label define occ1950_lbl 210 `"Inspectors, public administration"', add
label define occ1950_lbl 230 `"Managers and superintendents, building"', add
label define occ1950_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define occ1950_lbl 250 `"Officials and administrators (n.e.c.), public administration"', add
label define occ1950_lbl 260 `"Officials, lodge, society, union, etc."', add
label define occ1950_lbl 270 `"Postmasters"', add
label define occ1950_lbl 280 `"Purchasing agents and buyers (n.e.c.)"', add
label define occ1950_lbl 290 `"Managers, officials, and proprietors (n.e.c.)"', add
label define occ1950_lbl 300 `"Agents (n.e.c.)"', add
label define occ1950_lbl 301 `"Attendants and assistants, library"', add
label define occ1950_lbl 302 `"Attendants, physicians and dentists office"', add
label define occ1950_lbl 304 `"Baggagemen, transportation"', add
label define occ1950_lbl 305 `"Bank tellers"', add
label define occ1950_lbl 310 `"Bookkeepers"', add
label define occ1950_lbl 320 `"Cashiers"', add
label define occ1950_lbl 321 `"Collectors, bill and account"', add
label define occ1950_lbl 322 `"Dispatchers and starters, vehicle"', add
label define occ1950_lbl 325 `"Express messengers and railway mail clerks"', add
label define occ1950_lbl 335 `"Mail carriers"', add
label define occ1950_lbl 340 `"Messengers and office boys"', add
label define occ1950_lbl 341 `"Office machine operators"', add
label define occ1950_lbl 342 `"Shipping and receiving clerks"', add
label define occ1950_lbl 350 `"Stenographers, typists, and secretaries"', add
label define occ1950_lbl 360 `"Telegraph messengers"', add
label define occ1950_lbl 365 `"Telegraph operators"', add
label define occ1950_lbl 370 `"Telephone operators"', add
label define occ1950_lbl 380 `"Ticket, station, and express agents"', add
label define occ1950_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define occ1950_lbl 400 `"Advertising agents and salesmen"', add
label define occ1950_lbl 410 `"Auctioneers"', add
label define occ1950_lbl 420 `"Demonstrators"', add
label define occ1950_lbl 430 `"Hucksters and peddlers"', add
label define occ1950_lbl 450 `"Insurance agents and brokers"', add
label define occ1950_lbl 460 `"Newsboys"', add
label define occ1950_lbl 470 `"Real estate agents and brokers"', add
label define occ1950_lbl 480 `"Stock and bond salesmen"', add
label define occ1950_lbl 490 `"Salesmen and sales clerks (n.e.c.)"', add
label define occ1950_lbl 500 `"Bakers"', add
label define occ1950_lbl 501 `"Blacksmiths"', add
label define occ1950_lbl 502 `"Bookbinders"', add
label define occ1950_lbl 503 `"Boilermakers"', add
label define occ1950_lbl 504 `"Brickmasons, stonemasons, and tile setters"', add
label define occ1950_lbl 505 `"Cabinetmakers"', add
label define occ1950_lbl 510 `"Carpenters"', add
label define occ1950_lbl 511 `"Cement and concrete finishers"', add
label define occ1950_lbl 512 `"Compositors and typesetters"', add
label define occ1950_lbl 513 `"Cranemen, derrickmen, and hoistmen"', add
label define occ1950_lbl 514 `"Decorators and window dressers"', add
label define occ1950_lbl 515 `"Electricians"', add
label define occ1950_lbl 520 `"Electrotypers and stereotypers"', add
label define occ1950_lbl 521 `"Engravers, except photoengravers"', add
label define occ1950_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define occ1950_lbl 523 `"Foremen (n.e.c.)"', add
label define occ1950_lbl 524 `"Forgemen and hammermen"', add
label define occ1950_lbl 525 `"Furriers"', add
label define occ1950_lbl 530 `"Glaziers"', add
label define occ1950_lbl 531 `"Heat treaters, annealers, temperers"', add
label define occ1950_lbl 532 `"Inspectors, scalers, and graders, log and lumber"', add
label define occ1950_lbl 533 `"Inspectors (n.e.c.)"', add
label define occ1950_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define occ1950_lbl 535 `"Job setters, metal"', add
label define occ1950_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define occ1950_lbl 541 `"Locomotive engineers"', add
label define occ1950_lbl 542 `"Locomotive firemen"', add
label define occ1950_lbl 543 `"Loom fixers"', add
label define occ1950_lbl 544 `"Machinists"', add
label define occ1950_lbl 545 `"Mechanics and repairmen, airplane"', add
label define occ1950_lbl 550 `"Mechanics and repairmen, automobile"', add
label define occ1950_lbl 551 `"Mechanics and repairmen, office machine"', add
label define occ1950_lbl 552 `"Mechanics and repairmen, radio and television"', add
label define occ1950_lbl 553 `"Mechanics and repairmen, railroad and car shop"', add
label define occ1950_lbl 554 `"Mechanics and repairmen (n.e.c.)"', add
label define occ1950_lbl 555 `"Millers, grain, flour, feed, etc."', add
label define occ1950_lbl 560 `"Millwrights"', add
label define occ1950_lbl 561 `"Molders, metal"', add
label define occ1950_lbl 562 `"Motion picture projectionists"', add
label define occ1950_lbl 563 `"Opticians and lens grinders and polishers"', add
label define occ1950_lbl 564 `"Painters, construction and maintenance"', add
label define occ1950_lbl 565 `"Paperhangers"', add
label define occ1950_lbl 570 `"Pattern and model makers, except paper"', add
label define occ1950_lbl 571 `"Photoengravers and lithographers"', add
label define occ1950_lbl 572 `"Piano and organ tuners and repairmen"', add
label define occ1950_lbl 573 `"Plasterers"', add
label define occ1950_lbl 574 `"Plumbers and pipe fitters"', add
label define occ1950_lbl 575 `"Pressmen and plate printers, printing"', add
label define occ1950_lbl 580 `"Rollers and roll hands, metal"', add
label define occ1950_lbl 581 `"Roofers and slaters"', add
label define occ1950_lbl 582 `"Shoemakers and repairers, except factory"', add
label define occ1950_lbl 583 `"Stationary engineers"', add
label define occ1950_lbl 584 `"Stone cutters and stone carvers"', add
label define occ1950_lbl 585 `"Structural metal workers"', add
label define occ1950_lbl 590 `"Tailors and tailoresses"', add
label define occ1950_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ1950_lbl 592 `"Tool makers, and die makers and setters"', add
label define occ1950_lbl 593 `"Upholsterers"', add
label define occ1950_lbl 594 `"Craftsmen and kindred workers (n.e.c.)"', add
label define occ1950_lbl 595 `"Members of the armed services"', add
label define occ1950_lbl 600 `"Apprentice auto mechanics"', add
label define occ1950_lbl 601 `"Apprentice bricklayers and masons"', add
label define occ1950_lbl 602 `"Apprentice carpenters"', add
label define occ1950_lbl 603 `"Apprentice electricians"', add
label define occ1950_lbl 604 `"Apprentice machinists and toolmakers"', add
label define occ1950_lbl 605 `"Apprentice mechanics, except auto"', add
label define occ1950_lbl 610 `"Apprentice plumbers and pipe fitters"', add
label define occ1950_lbl 611 `"Apprentices, building trades (n.e.c.)"', add
label define occ1950_lbl 612 `"Apprentices, metalworking trades (n.e.c.)"', add
label define occ1950_lbl 613 `"Apprentices, printing trades"', add
label define occ1950_lbl 614 `"Apprentices, other specified trades"', add
label define occ1950_lbl 615 `"Apprentices, trade not specified"', add
label define occ1950_lbl 620 `"Asbestos and insulation workers"', add
label define occ1950_lbl 621 `"Attendants, auto service and parking"', add
label define occ1950_lbl 622 `"Blasters and powdermen"', add
label define occ1950_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define occ1950_lbl 624 `"Brakemen, railroad"', add
label define occ1950_lbl 625 `"Bus drivers"', add
label define occ1950_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define occ1950_lbl 631 `"Conductors, bus and street railway"', add
label define occ1950_lbl 632 `"Deliverymen and routemen"', add
label define occ1950_lbl 633 `"Dressmakers and seamstresses, except factory"', add
label define occ1950_lbl 634 `"Dyers"', add
label define occ1950_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define occ1950_lbl 640 `"Fruit, nut, veg graders and packers, except factory"', add
label define occ1950_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define occ1950_lbl 642 `"Heaters, metal"', add
label define occ1950_lbl 643 `"Laundry and dry cleaning operatives"', add
label define occ1950_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define occ1950_lbl 645 `"Milliners"', add
label define occ1950_lbl 650 `"Mine operatives and laborers"', add
label define occ1950_lbl 660 `"Motormen, mine, factory, logging camp, etc."', add
label define occ1950_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define occ1950_lbl 662 `"Oilers and greaser, except auto"', add
label define occ1950_lbl 670 `"Painters, except construction or maintenance"', add
label define occ1950_lbl 671 `"Photographic process workers"', add
label define occ1950_lbl 672 `"Power station operators"', add
label define occ1950_lbl 673 `"Sailors and deck hands"', add
label define occ1950_lbl 674 `"Sawyers"', add
label define occ1950_lbl 675 `"Spinners, textile"', add
label define occ1950_lbl 680 `"Stationary firemen"', add
label define occ1950_lbl 681 `"Switchmen, railroad"', add
label define occ1950_lbl 682 `"Taxicab drivers and chauffers"', add
label define occ1950_lbl 683 `"Truck and tractor drivers"', add
label define occ1950_lbl 684 `"Weavers, textile"', add
label define occ1950_lbl 685 `"Welders and flame cutters"', add
label define occ1950_lbl 690 `"Operative and kindred workers (n.e.c.)"', add
label define occ1950_lbl 700 `"Housekeepers, private household"', add
label define occ1950_lbl 710 `"Laundressses, private household"', add
label define occ1950_lbl 720 `"Private household workers (n.e.c.)"', add
label define occ1950_lbl 730 `"Attendants, hospital and other institution"', add
label define occ1950_lbl 731 `"Attendants, professional and personal service (n.e.c.)"', add
label define occ1950_lbl 732 `"Attendants, recreation and amusement"', add
label define occ1950_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define occ1950_lbl 750 `"Bartenders"', add
label define occ1950_lbl 751 `"Bootblacks"', add
label define occ1950_lbl 752 `"Boarding and lodging house keepers"', add
label define occ1950_lbl 753 `"Charwomen and cleaners"', add
label define occ1950_lbl 754 `"Cooks, except private household"', add
label define occ1950_lbl 760 `"Counter and fountain workers"', add
label define occ1950_lbl 761 `"Elevator operators"', add
label define occ1950_lbl 762 `"Firemen, fire protection"', add
label define occ1950_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define occ1950_lbl 764 `"Housekeepers and stewards, except private household"', add
label define occ1950_lbl 770 `"Janitors and sextons"', add
label define occ1950_lbl 771 `"Marshals and constables"', add
label define occ1950_lbl 772 `"Midwives"', add
label define occ1950_lbl 773 `"Policemen and detectives"', add
label define occ1950_lbl 780 `"Porters"', add
label define occ1950_lbl 781 `"Practical nurses"', add
label define occ1950_lbl 782 `"Sheriffs and bailiffs"', add
label define occ1950_lbl 783 `"Ushers, recreation and amusement"', add
label define occ1950_lbl 784 `"Waiters and waitresses"', add
label define occ1950_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define occ1950_lbl 790 `"Service workers, except private household (n.e.c.)"', add
label define occ1950_lbl 810 `"Farm foremen"', add
label define occ1950_lbl 820 `"Farm laborers, wage workers"', add
label define occ1950_lbl 830 `"Farm laborers, unpaid family workers"', add
label define occ1950_lbl 840 `"Farm service laborers, self-employed"', add
label define occ1950_lbl 910 `"Fishermen and oystermen"', add
label define occ1950_lbl 920 `"Garage laborers and car washers and greasers"', add
label define occ1950_lbl 930 `"Gardeners, except farm, and groundskeepers"', add
label define occ1950_lbl 940 `"Longshoremen and stevedores"', add
label define occ1950_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define occ1950_lbl 960 `"Teamsters"', add
label define occ1950_lbl 970 `"Laborers (n.e.c.)"', add
label define occ1950_lbl 997 `"Unknown"', add
label define occ1950_lbl 999 `"Unemployed- last worked over x years ago"', add
label values occ1950 occ1950_lbl

label define ind1950_lbl 000 `"NIU"'
label define ind1950_lbl 105 `"Agriculture"', add
label define ind1950_lbl 116 `"Forestry"', add
label define ind1950_lbl 126 `"Fisheries"', add
label define ind1950_lbl 206 `"Metal mining"', add
label define ind1950_lbl 216 `"Coal mining"', add
label define ind1950_lbl 226 `"Crude petroleum and natural gas extraction"', add
label define ind1950_lbl 236 `"Nonmetallic mining and quarrying, except fuel"', add
label define ind1950_lbl 246 `"Construction"', add
label define ind1950_lbl 306 `"Logging"', add
label define ind1950_lbl 307 `"Sawmills, planing mills, and millwork"', add
label define ind1950_lbl 308 `"Misc wood products"', add
label define ind1950_lbl 309 `"Furniture and fixtures"', add
label define ind1950_lbl 316 `"Glass and glass products"', add
label define ind1950_lbl 317 `"Cement, concrete, gypsum and plaster products"', add
label define ind1950_lbl 318 `"Structural clay products"', add
label define ind1950_lbl 319 `"Pottery and related products"', add
label define ind1950_lbl 326 `"Miscellaneous nonmetallic mineral and stone products"', add
label define ind1950_lbl 336 `"Blast furnaces, steel works, and rolling mills"', add
label define ind1950_lbl 337 `"Other primary iron and steel industries"', add
label define ind1950_lbl 338 `"Primary nonferrous industries"', add
label define ind1950_lbl 346 `"Fabricated steel products"', add
label define ind1950_lbl 347 `"Fabricated nonferrous metal products"', add
label define ind1950_lbl 348 `"Not specified metal industries"', add
label define ind1950_lbl 356 `"Agricultural machinery and tractors"', add
label define ind1950_lbl 357 `"Office and store machines and devices"', add
label define ind1950_lbl 358 `"Miscellaneous machinery"', add
label define ind1950_lbl 367 `"Electrical machinery, equipment, and supplies"', add
label define ind1950_lbl 376 `"Motor vehicles and motor vehicle equipment"', add
label define ind1950_lbl 377 `"Aircraft and parts"', add
label define ind1950_lbl 378 `"Ship and boat building and repairing"', add
label define ind1950_lbl 379 `"Railroad and miscellaneous transportation equipment"', add
label define ind1950_lbl 386 `"Professional equipment and supplies"', add
label define ind1950_lbl 387 `"Photographic equipment and supplies"', add
label define ind1950_lbl 388 `"Watches, clocks, and clockwork-operated devices"', add
label define ind1950_lbl 399 `"Miscellaneous manufacturing industries"', add
label define ind1950_lbl 406 `"Meat products"', add
label define ind1950_lbl 407 `"Dairy products"', add
label define ind1950_lbl 408 `"Canning and preserving fruits, vegetables, and seafoods"', add
label define ind1950_lbl 409 `"Grain-mill products"', add
label define ind1950_lbl 416 `"Bakery products"', add
label define ind1950_lbl 417 `"Confectionery and related products"', add
label define ind1950_lbl 418 `"Beverage industries"', add
label define ind1950_lbl 419 `"Miscellaneous food preparations and kindred products"', add
label define ind1950_lbl 426 `"Not specified food industries"', add
label define ind1950_lbl 429 `"Tobacco manufactures"', add
label define ind1950_lbl 436 `"Knitting mills"', add
label define ind1950_lbl 437 `"Dyeing and finishing textiles, except knit goods"', add
label define ind1950_lbl 438 `"Carpets, rugs, and other floor coverings"', add
label define ind1950_lbl 439 `"Yarn, thread, and fabric mills"', add
label define ind1950_lbl 446 `"Miscellaneous textile mill products"', add
label define ind1950_lbl 448 `"Apparel and accessories"', add
label define ind1950_lbl 449 `"Miscellaneous fabricated textile products"', add
label define ind1950_lbl 456 `"Pulp, paper, and paperboard mills"', add
label define ind1950_lbl 457 `"Paperboard containers and boxes"', add
label define ind1950_lbl 458 `"Miscellaneous paper and pulp products"', add
label define ind1950_lbl 459 `"Printing, publishing, and allied industries"', add
label define ind1950_lbl 466 `"Synthetic fibers"', add
label define ind1950_lbl 467 `"Drugs and medicines"', add
label define ind1950_lbl 468 `"Paints, varnishes, and related products"', add
label define ind1950_lbl 469 `"Miscellaneous chemicals and allied products"', add
label define ind1950_lbl 476 `"Petroleum refining"', add
label define ind1950_lbl 477 `"Miscellaneous petroleum and coal products"', add
label define ind1950_lbl 478 `"Rubber products"', add
label define ind1950_lbl 487 `"Leather: tanned, curried, and finished"', add
label define ind1950_lbl 488 `"Footwear, except rubber"', add
label define ind1950_lbl 489 `"Leather products, except footwear"', add
label define ind1950_lbl 499 `"Not specified manufacturing industries"', add
label define ind1950_lbl 506 `"Railroads and railway express service"', add
label define ind1950_lbl 516 `"Street railways and bus lines"', add
label define ind1950_lbl 526 `"Trucking service"', add
label define ind1950_lbl 527 `"Warehousing and storage"', add
label define ind1950_lbl 536 `"Taxicab service"', add
label define ind1950_lbl 546 `"Water transportation"', add
label define ind1950_lbl 556 `"Air transportation"', add
label define ind1950_lbl 567 `"Petroleum and gasoline pipe lines"', add
label define ind1950_lbl 568 `"Services incidental to transportation"', add
label define ind1950_lbl 578 `"Telephone"', add
label define ind1950_lbl 579 `"Telegraph"', add
label define ind1950_lbl 586 `"Electric light and power"', add
label define ind1950_lbl 587 `"Gas and steam supply systems"', add
label define ind1950_lbl 588 `"Electric-gas utilities"', add
label define ind1950_lbl 596 `"Water supply"', add
label define ind1950_lbl 597 `"Sanitary services"', add
label define ind1950_lbl 598 `"Other and not specified utilities"', add
label define ind1950_lbl 606 `"Motor vehicles and equipment"', add
label define ind1950_lbl 607 `"Drugs, chemicals, and allied products"', add
label define ind1950_lbl 608 `"Dry goods apparel"', add
label define ind1950_lbl 609 `"Food and related products"', add
label define ind1950_lbl 616 `"Electrical goods, hardware, and plumbing equipment"', add
label define ind1950_lbl 617 `"Machinery, equipment, and supplies"', add
label define ind1950_lbl 618 `"Petroleum products"', add
label define ind1950_lbl 619 `"Farm products--raw materials"', add
label define ind1950_lbl 626 `"Miscellaneous wholesale trade"', add
label define ind1950_lbl 627 `"Not specified wholesale trade"', add
label define ind1950_lbl 636 `"Food stores, except dairy products"', add
label define ind1950_lbl 637 `"Dairy products stores and milk retailing"', add
label define ind1950_lbl 646 `"General merchandise stores"', add
label define ind1950_lbl 647 `"Five and ten cent stores"', add
label define ind1950_lbl 656 `"Apparel and accessories stores, except shoe"', add
label define ind1950_lbl 657 `"Shoe stores"', add
label define ind1950_lbl 658 `"Furniture and house furnishing stores"', add
label define ind1950_lbl 659 `"Household appliance and radio stores"', add
label define ind1950_lbl 667 `"Motor vehicles and accessories retailing"', add
label define ind1950_lbl 668 `"Gasoline service stations"', add
label define ind1950_lbl 669 `"Drug stores"', add
label define ind1950_lbl 679 `"Eating and drinking places"', add
label define ind1950_lbl 686 `"Hardware and farm implement stores"', add
label define ind1950_lbl 687 `"Lumber and building material retailing"', add
label define ind1950_lbl 688 `"Liquor stores"', add
label define ind1950_lbl 689 `"Retail florists"', add
label define ind1950_lbl 696 `"Jewelry stores"', add
label define ind1950_lbl 697 `"Fuel and ice retailing"', add
label define ind1950_lbl 698 `"Miscellaneous retail stores"', add
label define ind1950_lbl 699 `"Not specified retail trade"', add
label define ind1950_lbl 716 `"Banking and credit agencies"', add
label define ind1950_lbl 726 `"Security and commodity brokerage and investment companies"', add
label define ind1950_lbl 736 `"Insurance"', add
label define ind1950_lbl 746 `"Real estate"', add
label define ind1950_lbl 806 `"Advertising"', add
label define ind1950_lbl 807 `"Accounting, auditing, and bookkeeping services"', add
label define ind1950_lbl 808 `"Miscellaneous business services"', add
label define ind1950_lbl 816 `"Auto repair services and garages"', add
label define ind1950_lbl 817 `"Miscellaneous repair services"', add
label define ind1950_lbl 826 `"Private households"', add
label define ind1950_lbl 836 `"Hotels and lodging places"', add
label define ind1950_lbl 846 `"Laundering, cleaning, and dyeing services"', add
label define ind1950_lbl 847 `"Dressmaking shops"', add
label define ind1950_lbl 848 `"Shoe repair shops"', add
label define ind1950_lbl 849 `"Miscellaneous personal services"', add
label define ind1950_lbl 856 `"Radio broadcasting and television"', add
label define ind1950_lbl 857 `"Theaters and motion pictures"', add
label define ind1950_lbl 858 `"Bowling alleys, and billiard and pool parlors"', add
label define ind1950_lbl 859 `"Miscellaneous entertainment and recreation services"', add
label define ind1950_lbl 868 `"Medical and other health services, except hospitals"', add
label define ind1950_lbl 869 `"Hospitals"', add
label define ind1950_lbl 879 `"Legal services"', add
label define ind1950_lbl 888 `"Educational services"', add
label define ind1950_lbl 896 `"Welfare and religious services"', add
label define ind1950_lbl 897 `"Nonprofit membership organizations"', add
label define ind1950_lbl 898 `"Engineering and architectural services"', add
label define ind1950_lbl 899 `"Miscellaneous professional and related services"', add
label define ind1950_lbl 906 `"Postal service"', add
label define ind1950_lbl 916 `"Federal public administration"', add
label define ind1950_lbl 926 `"State public administration"', add
label define ind1950_lbl 936 `"Local public administration"', add
label define ind1950_lbl 997 `"Nonclassifiable"', add
label define ind1950_lbl 998 `"Industry not reported"', add
label values ind1950 ind1950_lbl

label define classwkr_lbl 00 `"NIU"'
label define classwkr_lbl 10 `"Self-employed"', add
label define classwkr_lbl 13 `"Self-employed, not incorporated"', add
label define classwkr_lbl 14 `"Self-employed, incorporated"', add
label define classwkr_lbl 20 `"Works for wages or salary"', add
label define classwkr_lbl 21 `"Wage/salary, private"', add
label define classwkr_lbl 22 `"Private, for profit"', add
label define classwkr_lbl 23 `"Private, nonprofit"', add
label define classwkr_lbl 24 `"Wage/salary, government"', add
label define classwkr_lbl 25 `"Federal government employee"', add
label define classwkr_lbl 26 `"Armed forces"', add
label define classwkr_lbl 27 `"State government employee"', add
label define classwkr_lbl 28 `"Local government employee"', add
label define classwkr_lbl 29 `"Unpaid family worker"', add
label define classwkr_lbl 99 `"Missing/Unknown"', add
label values classwkr classwkr_lbl

label define occ50ly_lbl 000 `"Accountants and auditors"'
label define occ50ly_lbl 001 `"Actors and actresses"', add
label define occ50ly_lbl 002 `"Airplane pilots and navigators"', add
label define occ50ly_lbl 003 `"Architects"', add
label define occ50ly_lbl 004 `"Artists and art teachers"', add
label define occ50ly_lbl 005 `"Athletes"', add
label define occ50ly_lbl 006 `"Authors"', add
label define occ50ly_lbl 007 `"Chemists"', add
label define occ50ly_lbl 008 `"Chiropractors"', add
label define occ50ly_lbl 009 `"Clergymen"', add
label define occ50ly_lbl 010 `"College presidents and deans"', add
label define occ50ly_lbl 012 `"Agricultural sciences"', add
label define occ50ly_lbl 013 `"Biological sciences"', add
label define occ50ly_lbl 014 `"Chemistry"', add
label define occ50ly_lbl 015 `"Economics"', add
label define occ50ly_lbl 016 `"Engineering"', add
label define occ50ly_lbl 017 `"Geology and geophysics"', add
label define occ50ly_lbl 018 `"Mathematics"', add
label define occ50ly_lbl 019 `"Medical sciences"', add
label define occ50ly_lbl 023 `"Physics"', add
label define occ50ly_lbl 024 `"Psychology"', add
label define occ50ly_lbl 025 `"Statistics"', add
label define occ50ly_lbl 026 `"Natural science (n.e.c.)"', add
label define occ50ly_lbl 027 `"Social sciences (n.e.c.)"', add
label define occ50ly_lbl 028 `"Nonscientific subjects"', add
label define occ50ly_lbl 029 `"Subject not specified"', add
label define occ50ly_lbl 031 `"Dancers and dancing teachers"', add
label define occ50ly_lbl 032 `"Dentists"', add
label define occ50ly_lbl 033 `"Designers"', add
label define occ50ly_lbl 034 `"Dieticians and nutritionists"', add
label define occ50ly_lbl 035 `"Draftsmen"', add
label define occ50ly_lbl 036 `"Editors and reporters"', add
label define occ50ly_lbl 041 `"Engineers, aeronautical"', add
label define occ50ly_lbl 042 `"Engineers, chemical"', add
label define occ50ly_lbl 043 `"Engineers, civil"', add
label define occ50ly_lbl 044 `"Engineers, electrical"', add
label define occ50ly_lbl 045 `"Engineers, industrial"', add
label define occ50ly_lbl 046 `"Engineers, mechanical"', add
label define occ50ly_lbl 047 `"Engineers, metallurgical, metallurgists"', add
label define occ50ly_lbl 048 `"Engineers, mining"', add
label define occ50ly_lbl 049 `"Engineers (n.e.c.)"', add
label define occ50ly_lbl 051 `"Entertainers (n.e.c.)"', add
label define occ50ly_lbl 052 `"Farm and home management advisors"', add
label define occ50ly_lbl 053 `"Foresters and conservationists"', add
label define occ50ly_lbl 054 `"Funeral directors and embalmers"', add
label define occ50ly_lbl 055 `"Lawyers and judges"', add
label define occ50ly_lbl 056 `"Librarians"', add
label define occ50ly_lbl 057 `"Musicians and music teachers"', add
label define occ50ly_lbl 058 `"Nurses, professional"', add
label define occ50ly_lbl 059 `"Nurses, student professional"', add
label define occ50ly_lbl 061 `"Agricultural scientists"', add
label define occ50ly_lbl 062 `"Biological scientists"', add
label define occ50ly_lbl 063 `"Geologists and geophysicists"', add
label define occ50ly_lbl 067 `"Mathematicians"', add
label define occ50ly_lbl 068 `"Physicists"', add
label define occ50ly_lbl 069 `"Miscellaneous natural scientists"', add
label define occ50ly_lbl 070 `"Optometrists"', add
label define occ50ly_lbl 071 `"Osteopaths"', add
label define occ50ly_lbl 072 `"Personnel and labor relations workers"', add
label define occ50ly_lbl 073 `"Pharmacists"', add
label define occ50ly_lbl 074 `"Photographers"', add
label define occ50ly_lbl 075 `"Physicians and surgeons"', add
label define occ50ly_lbl 076 `"Radio operators"', add
label define occ50ly_lbl 077 `"Recreation and group workers"', add
label define occ50ly_lbl 078 `"Religious workers"', add
label define occ50ly_lbl 079 `"Social and welfare workers, except group"', add
label define occ50ly_lbl 081 `"Economists"', add
label define occ50ly_lbl 082 `"Psychologists"', add
label define occ50ly_lbl 083 `"Statisticians and actuaries"', add
label define occ50ly_lbl 084 `"Miscellaneous social scientists"', add
label define occ50ly_lbl 091 `"Sports instructors and officials"', add
label define occ50ly_lbl 092 `"Surveyors"', add
label define occ50ly_lbl 093 `"Teachers (n.e.c.)"', add
label define occ50ly_lbl 094 `"Technicians, medical and dental"', add
label define occ50ly_lbl 095 `"Technicians, testing"', add
label define occ50ly_lbl 096 `"Technicians (n.e.c.)"', add
label define occ50ly_lbl 097 `"Therapists and healers (n.e.c.)"', add
label define occ50ly_lbl 098 `"Veterinarians"', add
label define occ50ly_lbl 099 `"Professional, technical and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 100 `"Farmers (owners and tenants)"', add
label define occ50ly_lbl 123 `"Farm managers"', add
label define occ50ly_lbl 200 `"Buyers and department heads, store"', add
label define occ50ly_lbl 201 `"Buyers and shippers, farm products"', add
label define occ50ly_lbl 203 `"Conductors, railroad"', add
label define occ50ly_lbl 204 `"Credit men"', add
label define occ50ly_lbl 205 `"Floormen and floor managers, store"', add
label define occ50ly_lbl 210 `"Inspectors, public administration"', add
label define occ50ly_lbl 230 `"Managers and superintendents, building"', add
label define occ50ly_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define occ50ly_lbl 250 `"Officials and administrators (n.e.c.), public administration"', add
label define occ50ly_lbl 260 `"Officials, lodge, society, union, etc."', add
label define occ50ly_lbl 270 `"Postmasters"', add
label define occ50ly_lbl 280 `"Purchasing agents and buyers (n.e.c.)"', add
label define occ50ly_lbl 290 `"Managers, officials, and proprietors (n.e.c.)"', add
label define occ50ly_lbl 300 `"Agents (n.e.c.)"', add
label define occ50ly_lbl 301 `"Attendants and assistants, library"', add
label define occ50ly_lbl 302 `"Attendants, physicians and dentists office"', add
label define occ50ly_lbl 304 `"Baggagemen, transportation"', add
label define occ50ly_lbl 305 `"Bank tellers"', add
label define occ50ly_lbl 310 `"Bookkeepers"', add
label define occ50ly_lbl 320 `"Cashiers"', add
label define occ50ly_lbl 321 `"Collectors, bill and account"', add
label define occ50ly_lbl 322 `"Dispatchers and starters, vehicle"', add
label define occ50ly_lbl 325 `"Express messengers and railway mail clerks"', add
label define occ50ly_lbl 335 `"Mail carriers"', add
label define occ50ly_lbl 340 `"Messengers and office boys"', add
label define occ50ly_lbl 341 `"Office machine operators"', add
label define occ50ly_lbl 342 `"Shipping and receiving clerks"', add
label define occ50ly_lbl 350 `"Stenographers, typists, and secretaries"', add
label define occ50ly_lbl 360 `"Telegraph messengers"', add
label define occ50ly_lbl 365 `"Telegraph operators"', add
label define occ50ly_lbl 370 `"Telephone operators"', add
label define occ50ly_lbl 380 `"Ticket, station, and express agents"', add
label define occ50ly_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 400 `"Advertising agents and salesmen"', add
label define occ50ly_lbl 410 `"Auctioneers"', add
label define occ50ly_lbl 420 `"Demonstrators"', add
label define occ50ly_lbl 430 `"Hucksters and peddlers"', add
label define occ50ly_lbl 450 `"Insurance agents and brokers"', add
label define occ50ly_lbl 460 `"Newsboys"', add
label define occ50ly_lbl 470 `"Real estate agents and brokers"', add
label define occ50ly_lbl 480 `"Stock and bond salesmen"', add
label define occ50ly_lbl 490 `"Salesmen and sales clerks (n.e.c.)"', add
label define occ50ly_lbl 500 `"Bakers"', add
label define occ50ly_lbl 501 `"Blacksmiths"', add
label define occ50ly_lbl 502 `"Bookbinders"', add
label define occ50ly_lbl 503 `"Boilermakers"', add
label define occ50ly_lbl 504 `"Brickmasons, stonemasons, and tile setters"', add
label define occ50ly_lbl 505 `"Cabinetmakers"', add
label define occ50ly_lbl 510 `"Carpenters"', add
label define occ50ly_lbl 511 `"Cement and concrete finishers"', add
label define occ50ly_lbl 512 `"Compositors and typesetters"', add
label define occ50ly_lbl 513 `"Cranemen, derrickmen, and hoistmen"', add
label define occ50ly_lbl 514 `"Decorators and window dressers"', add
label define occ50ly_lbl 515 `"Electricians"', add
label define occ50ly_lbl 520 `"Electrotypers and stereotypers"', add
label define occ50ly_lbl 521 `"Engravers, except photoengravers"', add
label define occ50ly_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define occ50ly_lbl 523 `"Foremen (n.e.c.)"', add
label define occ50ly_lbl 524 `"Forgemen and hammermen"', add
label define occ50ly_lbl 525 `"Furriers"', add
label define occ50ly_lbl 530 `"Glaziers"', add
label define occ50ly_lbl 531 `"Heat treaters, annealers, temperers"', add
label define occ50ly_lbl 532 `"Inspectors, scalers, and graders, log and lumber"', add
label define occ50ly_lbl 533 `"Inspectors (n.e.c.)"', add
label define occ50ly_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define occ50ly_lbl 535 `"Job setters, metal"', add
label define occ50ly_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define occ50ly_lbl 541 `"Locomotive engineers"', add
label define occ50ly_lbl 542 `"Locomotive firemen"', add
label define occ50ly_lbl 543 `"Loom fixers"', add
label define occ50ly_lbl 544 `"Machinists"', add
label define occ50ly_lbl 545 `"Mechanics and repairmen, airplane"', add
label define occ50ly_lbl 550 `"Mechanics and repairmen, automobile"', add
label define occ50ly_lbl 551 `"Mechanics and repairmen, office machine"', add
label define occ50ly_lbl 552 `"Mechanics and repairmen, radio and television"', add
label define occ50ly_lbl 553 `"Mechanics and repairmen, railroad and car shop"', add
label define occ50ly_lbl 554 `"Mechanics and repairmen (n.e.c.)"', add
label define occ50ly_lbl 555 `"Millers, grain, flour, feed, etc."', add
label define occ50ly_lbl 560 `"Millwrights"', add
label define occ50ly_lbl 561 `"Molders, metal"', add
label define occ50ly_lbl 562 `"Motion picture projectionists"', add
label define occ50ly_lbl 563 `"Opticians and lens grinders and polishers"', add
label define occ50ly_lbl 564 `"Painters, construction and maintenance"', add
label define occ50ly_lbl 565 `"Paperhangers"', add
label define occ50ly_lbl 570 `"Pattern and model makers, except paper"', add
label define occ50ly_lbl 571 `"Photoengravers and lithographers"', add
label define occ50ly_lbl 572 `"Piano and organ tuners and repairmen"', add
label define occ50ly_lbl 573 `"Plasterers"', add
label define occ50ly_lbl 574 `"Plumbers and pipe fitters"', add
label define occ50ly_lbl 575 `"Pressmen and plate printers, printing"', add
label define occ50ly_lbl 580 `"Rollers and roll hands, metal"', add
label define occ50ly_lbl 581 `"Roofers and slaters"', add
label define occ50ly_lbl 582 `"Shoemakers and repairers, except factory"', add
label define occ50ly_lbl 583 `"Stationary engineers"', add
label define occ50ly_lbl 584 `"Stone cutters and stone carvers"', add
label define occ50ly_lbl 585 `"Structural metal workers"', add
label define occ50ly_lbl 590 `"Tailors and tailoresses"', add
label define occ50ly_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ50ly_lbl 592 `"Tool makers, and die makers and setters"', add
label define occ50ly_lbl 593 `"Upholsterers"', add
label define occ50ly_lbl 594 `"Craftsmen and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 595 `"Members of the armed services"', add
label define occ50ly_lbl 600 `"Apprentice auto mechanics"', add
label define occ50ly_lbl 601 `"Apprentice bricklayers and masons"', add
label define occ50ly_lbl 602 `"Apprentice carpenters"', add
label define occ50ly_lbl 603 `"Apprentice electricians"', add
label define occ50ly_lbl 604 `"Apprentice machinists and toolmakers"', add
label define occ50ly_lbl 605 `"Apprentice mechanics, except auto"', add
label define occ50ly_lbl 610 `"Apprentice plumbers and pipe fitters"', add
label define occ50ly_lbl 611 `"Apprentices, building trades (n.e.c.)"', add
label define occ50ly_lbl 612 `"Apprentices, metalworking trades (n.e.c.)"', add
label define occ50ly_lbl 613 `"Apprentices, printing trades"', add
label define occ50ly_lbl 614 `"Apprentices, other specified trades"', add
label define occ50ly_lbl 615 `"Apprentices, trade not specified"', add
label define occ50ly_lbl 620 `"Asbestos and insulation workers"', add
label define occ50ly_lbl 621 `"Attendants, auto service and parking"', add
label define occ50ly_lbl 622 `"Blasters and powdermen"', add
label define occ50ly_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define occ50ly_lbl 624 `"Brakemen, railroad"', add
label define occ50ly_lbl 625 `"Bus drivers"', add
label define occ50ly_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define occ50ly_lbl 631 `"Conductors, bus and street railway"', add
label define occ50ly_lbl 632 `"Deliverymen and routemen"', add
label define occ50ly_lbl 633 `"Dressmakers and seamstresses, except factory"', add
label define occ50ly_lbl 634 `"Dyers"', add
label define occ50ly_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define occ50ly_lbl 640 `"Fruit, nut, veg graders and packers, except factory"', add
label define occ50ly_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define occ50ly_lbl 642 `"Heaters, metal"', add
label define occ50ly_lbl 643 `"Laundry and dry cleaning operatives"', add
label define occ50ly_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define occ50ly_lbl 645 `"Milliners"', add
label define occ50ly_lbl 650 `"Mine operatives and laborers"', add
label define occ50ly_lbl 660 `"Motormen, mine, factory, logging camp, etc."', add
label define occ50ly_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define occ50ly_lbl 662 `"Oilers and greaser, except auto"', add
label define occ50ly_lbl 670 `"Painters, except construction or maintenance"', add
label define occ50ly_lbl 671 `"Photographic process workers"', add
label define occ50ly_lbl 672 `"Power station operators"', add
label define occ50ly_lbl 673 `"Sailors and deck hands"', add
label define occ50ly_lbl 674 `"Sawyers"', add
label define occ50ly_lbl 675 `"Spinners, textile"', add
label define occ50ly_lbl 680 `"Stationary firemen"', add
label define occ50ly_lbl 681 `"Switchmen, railroad"', add
label define occ50ly_lbl 682 `"Taxicab drivers and chauffers"', add
label define occ50ly_lbl 683 `"Truck and tractor drivers"', add
label define occ50ly_lbl 684 `"Weavers, textile"', add
label define occ50ly_lbl 685 `"Welders and flame cutters"', add
label define occ50ly_lbl 690 `"Operative and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 700 `"Housekeepers, private household"', add
label define occ50ly_lbl 710 `"Laundressses, private household"', add
label define occ50ly_lbl 720 `"Private household workers (n.e.c.)"', add
label define occ50ly_lbl 730 `"Attendants, hospital and other institution"', add
label define occ50ly_lbl 731 `"Attendants, professional and personal service (n.e.c.)"', add
label define occ50ly_lbl 732 `"Attendants, recreation and amusement"', add
label define occ50ly_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define occ50ly_lbl 750 `"Bartenders"', add
label define occ50ly_lbl 751 `"Bootblacks"', add
label define occ50ly_lbl 752 `"Boarding and lodging house keepers"', add
label define occ50ly_lbl 753 `"Charwomen and cleaners"', add
label define occ50ly_lbl 754 `"Cooks, except private household"', add
label define occ50ly_lbl 760 `"Counter and fountain workers"', add
label define occ50ly_lbl 761 `"Elevator operators"', add
label define occ50ly_lbl 762 `"Firemen, fire protection"', add
label define occ50ly_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define occ50ly_lbl 764 `"Housekeepers and stewards, except private household"', add
label define occ50ly_lbl 770 `"Janitors and sextons"', add
label define occ50ly_lbl 771 `"Marshals and constables"', add
label define occ50ly_lbl 772 `"Midwives"', add
label define occ50ly_lbl 773 `"Policemen and detectives"', add
label define occ50ly_lbl 780 `"Porters"', add
label define occ50ly_lbl 781 `"Practical nurses"', add
label define occ50ly_lbl 782 `"Sheriffs and bailiffs"', add
label define occ50ly_lbl 783 `"Ushers, recreation and amusement"', add
label define occ50ly_lbl 784 `"Waiters and waitresses"', add
label define occ50ly_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define occ50ly_lbl 790 `"Service workers, except private household (n.e.c.)"', add
label define occ50ly_lbl 810 `"Farm foremen"', add
label define occ50ly_lbl 820 `"Farm laborers, wage workers"', add
label define occ50ly_lbl 830 `"Farm laborers, unpaid family workers"', add
label define occ50ly_lbl 840 `"Farm service laborers, self-employed"', add
label define occ50ly_lbl 910 `"Fishermen and oystermen"', add
label define occ50ly_lbl 920 `"Garage laborers and car washers and greasers"', add
label define occ50ly_lbl 930 `"Gardeners, except farm, and groundskeepers"', add
label define occ50ly_lbl 940 `"Longshoremen and stevedores"', add
label define occ50ly_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define occ50ly_lbl 960 `"Teamsters"', add
label define occ50ly_lbl 970 `"Laborers (n.e.c.)"', add
label define occ50ly_lbl 997 `"Unknown"', add
label define occ50ly_lbl 999 `"Unemployed- last worked over x years ago"', add
label values occ50ly occ50ly_lbl

label define ind50ly_lbl 000 `"NIU"'
label define ind50ly_lbl 105 `"Agriculture"', add
label define ind50ly_lbl 116 `"Forestry"', add
label define ind50ly_lbl 126 `"Fisheries"', add
label define ind50ly_lbl 206 `"Metal mining"', add
label define ind50ly_lbl 216 `"Coal mining"', add
label define ind50ly_lbl 226 `"Crude petroleum and natural gas extraction"', add
label define ind50ly_lbl 236 `"Nonmetallic mining and quarrying, except fuel"', add
label define ind50ly_lbl 239 `"Mining not specified"', add
label define ind50ly_lbl 246 `"Construction"', add
label define ind50ly_lbl 306 `"Logging"', add
label define ind50ly_lbl 307 `"Sawmills, planing mills, and millwork"', add
label define ind50ly_lbl 308 `"Misc wood products"', add
label define ind50ly_lbl 309 `"Furniture and fixtures"', add
label define ind50ly_lbl 316 `"Glass and glass products"', add
label define ind50ly_lbl 317 `"Cement, concrete, gypsum and plaster products"', add
label define ind50ly_lbl 318 `"Structural clay products"', add
label define ind50ly_lbl 319 `"Pottery and related products"', add
label define ind50ly_lbl 326 `"Miscellaneous nonmetallic mineral and stone products"', add
label define ind50ly_lbl 336 `"Blast furnaces, steel works, and rolling mills"', add
label define ind50ly_lbl 337 `"Other primary iron and steel industries"', add
label define ind50ly_lbl 338 `"Primary nonferrous industries"', add
label define ind50ly_lbl 346 `"Fabricated steel products"', add
label define ind50ly_lbl 347 `"Fabricated nonferrous metal products"', add
label define ind50ly_lbl 348 `"Not specified metal industries"', add
label define ind50ly_lbl 356 `"Agricultural machinery and tractors"', add
label define ind50ly_lbl 357 `"Office and store machines and devices"', add
label define ind50ly_lbl 358 `"Miscellaneous machinery"', add
label define ind50ly_lbl 367 `"Electrical machinery, equipment, and supplies"', add
label define ind50ly_lbl 376 `"Motor vehicles and motor vehicle equipment"', add
label define ind50ly_lbl 377 `"Aircraft and parts"', add
label define ind50ly_lbl 378 `"Ship and boat building and repairing"', add
label define ind50ly_lbl 379 `"Railroad and miscellaneous transportation equipment"', add
label define ind50ly_lbl 386 `"Professional equipment and supplies"', add
label define ind50ly_lbl 387 `"Photographic equipment and supplies"', add
label define ind50ly_lbl 388 `"Watches, clocks, and clockwork-operated devices"', add
label define ind50ly_lbl 399 `"Miscellaneous manufacturing industries"', add
label define ind50ly_lbl 406 `"Meat products"', add
label define ind50ly_lbl 407 `"Dairy products"', add
label define ind50ly_lbl 408 `"Canning and preserving fruits, vegetables, and seafoods"', add
label define ind50ly_lbl 409 `"Grain-mill products"', add
label define ind50ly_lbl 416 `"Bakery products"', add
label define ind50ly_lbl 417 `"Confectionery and related products"', add
label define ind50ly_lbl 418 `"Beverage industries"', add
label define ind50ly_lbl 419 `"Miscellaneous food preparations and kindred products"', add
label define ind50ly_lbl 426 `"Not specified food industries"', add
label define ind50ly_lbl 429 `"Tobacco manufactures"', add
label define ind50ly_lbl 436 `"Knitting mills"', add
label define ind50ly_lbl 437 `"Dyeing and finishing textiles, except knit goods"', add
label define ind50ly_lbl 438 `"Carpets, rugs, and other floor coverings"', add
label define ind50ly_lbl 439 `"Yarn, thread, and fabric mills"', add
label define ind50ly_lbl 446 `"Miscellaneous textile mill products"', add
label define ind50ly_lbl 448 `"Apparel and accessories"', add
label define ind50ly_lbl 449 `"Miscellaneous fabricated textile products"', add
label define ind50ly_lbl 456 `"Pulp, paper, and paperboard mills"', add
label define ind50ly_lbl 457 `"Paperboard containers and boxes"', add
label define ind50ly_lbl 458 `"Miscellaneous paper and pulp products"', add
label define ind50ly_lbl 459 `"Printing, publishing, and allied industries"', add
label define ind50ly_lbl 466 `"Synthetic fibers"', add
label define ind50ly_lbl 467 `"Drugs and medicines"', add
label define ind50ly_lbl 468 `"Paints, varnishes, and related products"', add
label define ind50ly_lbl 469 `"Miscellaneous chemicals and allied products"', add
label define ind50ly_lbl 476 `"Petroleum refining"', add
label define ind50ly_lbl 477 `"Miscellaneous petroleum and coal products"', add
label define ind50ly_lbl 478 `"Rubber products"', add
label define ind50ly_lbl 487 `"Leather: tanned, curried, and finished"', add
label define ind50ly_lbl 488 `"Footwear, except rubber"', add
label define ind50ly_lbl 489 `"Leather products, except footwear"', add
label define ind50ly_lbl 499 `"Not specified manufacturing industries"', add
label define ind50ly_lbl 506 `"Railroads and railway express service"', add
label define ind50ly_lbl 516 `"Street railways and bus lines"', add
label define ind50ly_lbl 526 `"Trucking service"', add
label define ind50ly_lbl 527 `"Warehousing and storage"', add
label define ind50ly_lbl 536 `"Taxicab service"', add
label define ind50ly_lbl 546 `"Water transportation"', add
label define ind50ly_lbl 556 `"Air transportation"', add
label define ind50ly_lbl 567 `"Petroleum and gasoline pipe lines"', add
label define ind50ly_lbl 568 `"Services incidental to transportation"', add
label define ind50ly_lbl 578 `"Telephone"', add
label define ind50ly_lbl 579 `"Telegraph"', add
label define ind50ly_lbl 586 `"Electric light and power"', add
label define ind50ly_lbl 587 `"Gas and steam supply systems"', add
label define ind50ly_lbl 588 `"Electric-gas utilities"', add
label define ind50ly_lbl 596 `"Water supply"', add
label define ind50ly_lbl 597 `"Sanitary services"', add
label define ind50ly_lbl 598 `"Other and not specified utilities"', add
label define ind50ly_lbl 606 `"Motor vehicles and equipment"', add
label define ind50ly_lbl 607 `"Drugs, chemicals, and allied products"', add
label define ind50ly_lbl 608 `"Dry goods apparel"', add
label define ind50ly_lbl 609 `"Food and related products"', add
label define ind50ly_lbl 616 `"Electrical goods, hardware, and plumbing equipment"', add
label define ind50ly_lbl 617 `"Machinery, equipment, and supplies"', add
label define ind50ly_lbl 618 `"Petroleum products"', add
label define ind50ly_lbl 619 `"Farm products--raw materials"', add
label define ind50ly_lbl 626 `"Miscellaneous wholesale trade"', add
label define ind50ly_lbl 627 `"Not specified wholesale trade"', add
label define ind50ly_lbl 636 `"Food stores, except dairy products"', add
label define ind50ly_lbl 637 `"Dairy products stores and milk retailing"', add
label define ind50ly_lbl 646 `"General merchandise stores"', add
label define ind50ly_lbl 647 `"Five and ten cent stores"', add
label define ind50ly_lbl 656 `"Apparel and accessories stores, except shoe"', add
label define ind50ly_lbl 657 `"Shoe stores"', add
label define ind50ly_lbl 658 `"Furniture and house furnishing stores"', add
label define ind50ly_lbl 659 `"Household appliance and radio stores"', add
label define ind50ly_lbl 667 `"Motor vehicles and accessories retailing"', add
label define ind50ly_lbl 668 `"Gasoline service stations"', add
label define ind50ly_lbl 669 `"Drug stores"', add
label define ind50ly_lbl 679 `"Eating and drinking places"', add
label define ind50ly_lbl 686 `"Hardware and farm implement stores"', add
label define ind50ly_lbl 687 `"Lumber and building material retailing"', add
label define ind50ly_lbl 688 `"Liquor stores"', add
label define ind50ly_lbl 689 `"Retail florists"', add
label define ind50ly_lbl 696 `"Jewelry stores"', add
label define ind50ly_lbl 697 `"Fuel and ice retailing"', add
label define ind50ly_lbl 698 `"Miscellaneous retail stores"', add
label define ind50ly_lbl 699 `"Not specified retail trade"', add
label define ind50ly_lbl 716 `"Banking and credit agencies"', add
label define ind50ly_lbl 726 `"Security and commodity brokerage and investment companies"', add
label define ind50ly_lbl 736 `"Insurance"', add
label define ind50ly_lbl 746 `"Real estate"', add
label define ind50ly_lbl 806 `"Advertising"', add
label define ind50ly_lbl 807 `"Accounting, auditing, and bookkeeping services"', add
label define ind50ly_lbl 808 `"Miscellaneous business services"', add
label define ind50ly_lbl 816 `"Auto repair services and garages"', add
label define ind50ly_lbl 817 `"Miscellaneous repair services"', add
label define ind50ly_lbl 826 `"Private households"', add
label define ind50ly_lbl 836 `"Hotels and lodging places"', add
label define ind50ly_lbl 846 `"Laundering, cleaning, and dyeing services"', add
label define ind50ly_lbl 847 `"Dressmaking shops"', add
label define ind50ly_lbl 848 `"Shoe repair shops"', add
label define ind50ly_lbl 849 `"Miscellaneous personal services"', add
label define ind50ly_lbl 856 `"Radio broadcasting and television"', add
label define ind50ly_lbl 857 `"Theaters and motion pictures"', add
label define ind50ly_lbl 858 `"Bowling alleys, and billiard and pool parlors"', add
label define ind50ly_lbl 859 `"Miscellaneous entertainment and recreation services"', add
label define ind50ly_lbl 868 `"Medical and other health services, except hospitals"', add
label define ind50ly_lbl 869 `"Hospitals"', add
label define ind50ly_lbl 879 `"Legal services"', add
label define ind50ly_lbl 888 `"Educational services"', add
label define ind50ly_lbl 896 `"Welfare and religious services"', add
label define ind50ly_lbl 897 `"Nonprofit membership organizations"', add
label define ind50ly_lbl 898 `"Engineering and architectural services"', add
label define ind50ly_lbl 899 `"Miscellaneous professional and related services"', add
label define ind50ly_lbl 906 `"Postal service"', add
label define ind50ly_lbl 916 `"Federal public administration"', add
label define ind50ly_lbl 926 `"State public administration"', add
label define ind50ly_lbl 936 `"Local public administration"', add
label define ind50ly_lbl 997 `"Nonclassifiable"', add
label define ind50ly_lbl 998 `"Industry not reported"', add
label values ind50ly ind50ly_lbl

label define classwly_lbl 00 `"NIU"'
label define classwly_lbl 10 `"Self-employed"', add
label define classwly_lbl 13 `"Self-employed, not incorporated"', add
label define classwly_lbl 14 `"Self-employed, incorporated"', add
label define classwly_lbl 20 `"Works for wages or salary"', add
label define classwly_lbl 22 `"Wage/salary, private"', add
label define classwly_lbl 24 `"Wage/salary, government"', add
label define classwly_lbl 25 `"Federal government employee"', add
label define classwly_lbl 27 `"State government employee"', add
label define classwly_lbl 28 `"Local government employee"', add
label define classwly_lbl 29 `"Unpaid family worker"', add
label define classwly_lbl 99 `"Missing/Unknown"', add
label values classwly classwly_lbl

label define wkswork2_lbl 0 `"NIU"'
label define wkswork2_lbl 1 `"1-13 weeks"', add
label define wkswork2_lbl 2 `"14-26 weeks"', add
label define wkswork2_lbl 3 `"27-39 weeks"', add
label define wkswork2_lbl 4 `"40-47 weeks"', add
label define wkswork2_lbl 5 `"48-49 weeks"', add
label define wkswork2_lbl 6 `"50-52 weeks"', add
label define wkswork2_lbl 9 `"Missing data"', add
label values wkswork2 wkswork2_lbl

label define uhrswork1_lbl 000 `"0 hours"'
label define uhrswork1_lbl 997 `"Hours vary"', add
label define uhrswork1_lbl 999 `"NIU/Missing"', add
label values uhrswork1 uhrswork1_lbl

label define wksunem2_lbl 0 `"None"'
label define wksunem2_lbl 1 `"1-4 weeks"', add
label define wksunem2_lbl 2 `"5-10 weeks"', add
label define wksunem2_lbl 3 `"11-14 weeks"', add
label define wksunem2_lbl 4 `"15-26 weeks"', add
label define wksunem2_lbl 5 `"27-39 weeks"', add
label define wksunem2_lbl 6 `"40+ weeks"', add
label define wksunem2_lbl 7 `"Over 26 weeks (1962-1967)"', add
label define wksunem2_lbl 8 `"Missing/Unknown"', add
label define wksunem2_lbl 9 `"NIU"', add
label values wksunem2 wksunem2_lbl

label define durunem2_lbl 00 `"0"'
label define durunem2_lbl 01 `"1"', add
label define durunem2_lbl 02 `"2"', add
label define durunem2_lbl 03 `"3"', add
label define durunem2_lbl 04 `"4"', add
label define durunem2_lbl 05 `"5"', add
label define durunem2_lbl 06 `"6"', add
label define durunem2_lbl 07 `"7-10"', add
label define durunem2_lbl 08 `"11-14"', add
label define durunem2_lbl 09 `"15-18"', add
label define durunem2_lbl 10 `"19-22"', add
label define durunem2_lbl 11 `"23-26"', add
label define durunem2_lbl 12 `"27-34"', add
label define durunem2_lbl 13 `"35-42"', add
label define durunem2_lbl 14 `"43-50"', add
label define durunem2_lbl 15 `"51-52"', add
label define durunem2_lbl 16 `"Over 52 weeks"', add
label define durunem2_lbl 99 `"NIU"', add
label values durunem2 durunem2_lbl

label define fullpart_lbl 0 `"NIU"'
label define fullpart_lbl 1 `"Full-time"', add
label define fullpart_lbl 2 `"Part-time"', add
label define fullpart_lbl 9 `"Unknown"', add
label values fullpart fullpart_lbl

label define paidhour_lbl 0 `"NIU"'
label define paidhour_lbl 1 `"No"', add
label define paidhour_lbl 2 `"Yes"', add
label define paidhour_lbl 6 `"Refused"', add
label define paidhour_lbl 7 `"Don't Know"', add
label values paidhour paidhour_lbl

label define pension_lbl 0 `"NIU"'
label define pension_lbl 1 `"No pension plan at work"', add
label define pension_lbl 2 `"Pension plan at work, but not included"', add
label define pension_lbl 3 `"Included in pension plan at work"', add
label values pension pension_lbl

label define union_lbl 0 `"NIU"'
label define union_lbl 1 `"No union coverage"', add
label define union_lbl 2 `"Member of labor union"', add
label define union_lbl 3 `"Covered by union but not a member"', add
label values union union_lbl

label define firmsize_lbl 0 `"NIU"'
label define firmsize_lbl 1 `"Under 10"', add
label define firmsize_lbl 2 `"10 to 24"', add
label define firmsize_lbl 3 `"Under 25"', add
label define firmsize_lbl 4 `"10 to 49"', add
label define firmsize_lbl 5 `"25 to 99"', add
label define firmsize_lbl 6 `"50 to 99"', add
label define firmsize_lbl 7 `"100 to 499"', add
label define firmsize_lbl 8 `"500 to 999"', add
label define firmsize_lbl 9 `"1000+"', add
label values firmsize firmsize_lbl

label define srcearn_lbl 0 `"NIU"'
label define srcearn_lbl 1 `"Wage and salary"', add
label define srcearn_lbl 2 `"Self employment"', add
label define srcearn_lbl 3 `"Farm self employment"', add
label define srcearn_lbl 4 `"Without pay"', add
label values srcearn srcearn_lbl

label define srcreti1_lbl 0 `"NIU"'
label define srcreti1_lbl 1 `"Company or Union  pension"', add
label define srcreti1_lbl 2 `"Federal Government retirement Pension"', add
label define srcreti1_lbl 3 `"US Military retirement pension"', add
label define srcreti1_lbl 4 `"State or local Govt retirement pension"', add
label define srcreti1_lbl 5 `"US Railroad retirement pension"', add
label define srcreti1_lbl 6 `"Regular payments from annuities or paid-up insurance policies"', add
label define srcreti1_lbl 7 `"Regular payments from IRA, KEOGH, or 401K accounts"', add
label define srcreti1_lbl 8 `"Other or don't know"', add
label values srcreti1 srcreti1_lbl

label define srcreti2_lbl 0 `"NIU"'
label define srcreti2_lbl 1 `"Company or Union  pension"', add
label define srcreti2_lbl 2 `"Federal Government retirement Pension"', add
label define srcreti2_lbl 3 `"US Military retirement pension"', add
label define srcreti2_lbl 4 `"State or local Govt retirement pension"', add
label define srcreti2_lbl 5 `"US Railroad retirement pension"', add
label define srcreti2_lbl 6 `"Regular payments from annuities or paid-up insurance policies"', add
label define srcreti2_lbl 7 `"Regular payments from IRA, KEOGH, or 401K accounts"', add
label define srcreti2_lbl 8 `"Other or do not know"', add
label values srcreti2 srcreti2_lbl

label define vetstat_lbl 0 `"NIU"'
label define vetstat_lbl 1 `"No service"', add
label define vetstat_lbl 2 `"Yes"', add
label define vetstat_lbl 9 `"Unknown"', add
label values vetstat vetstat_lbl

label define disabwrk_lbl 0 `"NIU"'
label define disabwrk_lbl 1 `"No disability that affects work"', add
label define disabwrk_lbl 2 `"Disability limits or prevents work"', add
label values disabwrk disabwrk_lbl

label define diffany_lbl 0 `"NIU"'
label define diffany_lbl 1 `"No difficulty"', add
label define diffany_lbl 2 `"Has difficulty"', add
label values diffany diffany_lbl

label define migrate1_lbl 0 `"NIU"'
label define migrate1_lbl 1 `"Same house"', add
label define migrate1_lbl 2 `"Different house, place not reported"', add
label define migrate1_lbl 3 `"Moved within county"', add
label define migrate1_lbl 4 `"Moved within state, different county"', add
label define migrate1_lbl 5 `"Moved between states"', add
label define migrate1_lbl 6 `"Abroad"', add
label define migrate1_lbl 9 `"Unknown"', add
label values migrate1 migrate1_lbl

label define inclugh_lbl 0 `"NIU"'
label define inclugh_lbl 1 `"No"', add
label define inclugh_lbl 2 `"Yes"', add
label values inclugh inclugh_lbl

label define himcaid_lbl 1 `"No"'
label define himcaid_lbl 2 `"Yes"', add
label values himcaid himcaid_lbl

label define phinsur_lbl 0 `"NIU"'
label define phinsur_lbl 1 `"No"', add
label define phinsur_lbl 2 `"Yes"', add
label values phinsur phinsur_lbl

label define caid_lbl 1 `"No"'
label define caid_lbl 2 `"Yes"', add
label values caid caid_lbl

label define groupown_lbl 0 `"NIU"'
label define groupown_lbl 1 `"No"', add
label define groupown_lbl 2 `"Yes"', add
label values groupown groupown_lbl

label define coverpi_lbl 1 `"No"'
label define coverpi_lbl 2 `"Yes"', add
label values coverpi coverpi_lbl

label define wkstat_lbl 10 `"Full-time schedules"'
label define wkstat_lbl 11 `"Full-time hours (35+), usually full-time"', add
label define wkstat_lbl 12 `"Part-time for non-economic reasons, usually full-time"', add
label define wkstat_lbl 13 `"Not at work, usually full-time"', add
label define wkstat_lbl 14 `"Full-time hours, usually part-time for economic reasons"', add
label define wkstat_lbl 15 `"Full-time hours, usually part-time for non-economic reasons"', add
label define wkstat_lbl 20 `"Part-time for economic reasons"', add
label define wkstat_lbl 21 `"Part-time for economic reasons, usually full-time"', add
label define wkstat_lbl 22 `"Part-time hours, usually part-time for economic reasons"', add
label define wkstat_lbl 40 `"Part-time for non-economic reasons, usually part-time"', add
label define wkstat_lbl 41 `"Part-time hours, usually part-time for non-economic reasons"', add
label define wkstat_lbl 42 `"Not at work, usually part-time"', add
label define wkstat_lbl 50 `"Unemployed, seeking full-time work"', add
label define wkstat_lbl 60 `"Unemployed, seeking part-time work"', add
label define wkstat_lbl 99 `"NIU, blank, or not in labor force"', add
label values wkstat wkstat_lbl

label define workly_lbl 00 `"NIU"'
label define workly_lbl 01 `"No"', add
label define workly_lbl 02 `"Yes"', add
label values workly workly_lbl

save "C:\Users\china.layne\Documents\Bigger CPS 2006 and 2014 to 2016 for retirement and self employment.dta"
