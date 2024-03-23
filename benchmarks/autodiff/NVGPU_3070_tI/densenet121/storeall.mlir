#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 + d4, d2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
module {
  ml_program.global private mutable @global1946 : tensor<1x7x7x1024xf32>
  ml_program.global private mutable @global1945 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global1944 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global1941 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global1917 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1916 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1913 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1907 : tensor<1x992x7x7xf32>
  ml_program.global private mutable @global1906 : tensor<1x992x7x7xf32>
  ml_program.global private mutable @global1903 : tensor<1x992x1x1xf32>
  ml_program.global private mutable @global1880 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1879 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1876 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1870 : tensor<1x960x7x7xf32>
  ml_program.global private mutable @global1869 : tensor<1x960x7x7xf32>
  ml_program.global private mutable @global1866 : tensor<1x960x1x1xf32>
  ml_program.global private mutable @global1844 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1843 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1840 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1834 : tensor<1x928x7x7xf32>
  ml_program.global private mutable @global1833 : tensor<1x928x7x7xf32>
  ml_program.global private mutable @global1830 : tensor<1x928x1x1xf32>
  ml_program.global private mutable @global1809 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1808 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1805 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1799 : tensor<1x896x7x7xf32>
  ml_program.global private mutable @global1798 : tensor<1x896x7x7xf32>
  ml_program.global private mutable @global1795 : tensor<1x896x1x1xf32>
  ml_program.global private mutable @global1775 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1774 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1771 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1765 : tensor<1x864x7x7xf32>
  ml_program.global private mutable @global1764 : tensor<1x864x7x7xf32>
  ml_program.global private mutable @global1761 : tensor<1x864x1x1xf32>
  ml_program.global private mutable @global1742 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1741 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1738 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1732 : tensor<1x832x7x7xf32>
  ml_program.global private mutable @global1731 : tensor<1x832x7x7xf32>
  ml_program.global private mutable @global1728 : tensor<1x832x1x1xf32>
  ml_program.global private mutable @global1710 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1709 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1706 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1700 : tensor<1x800x7x7xf32>
  ml_program.global private mutable @global1699 : tensor<1x800x7x7xf32>
  ml_program.global private mutable @global1696 : tensor<1x800x1x1xf32>
  ml_program.global private mutable @global1679 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1678 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1675 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1669 : tensor<1x768x7x7xf32>
  ml_program.global private mutable @global1668 : tensor<1x768x7x7xf32>
  ml_program.global private mutable @global1665 : tensor<1x768x1x1xf32>
  ml_program.global private mutable @global1649 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1648 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1645 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1639 : tensor<1x736x7x7xf32>
  ml_program.global private mutable @global1638 : tensor<1x736x7x7xf32>
  ml_program.global private mutable @global1635 : tensor<1x736x1x1xf32>
  ml_program.global private mutable @global1620 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1619 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1616 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1610 : tensor<1x704x7x7xf32>
  ml_program.global private mutable @global1609 : tensor<1x704x7x7xf32>
  ml_program.global private mutable @global1606 : tensor<1x704x1x1xf32>
  ml_program.global private mutable @global1592 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1591 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1588 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1582 : tensor<1x672x7x7xf32>
  ml_program.global private mutable @global1581 : tensor<1x672x7x7xf32>
  ml_program.global private mutable @global1578 : tensor<1x672x1x1xf32>
  ml_program.global private mutable @global1565 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1564 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1561 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1555 : tensor<1x640x7x7xf32>
  ml_program.global private mutable @global1554 : tensor<1x640x7x7xf32>
  ml_program.global private mutable @global1551 : tensor<1x640x1x1xf32>
  ml_program.global private mutable @global1539 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1538 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1535 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1529 : tensor<1x608x7x7xf32>
  ml_program.global private mutable @global1528 : tensor<1x608x7x7xf32>
  ml_program.global private mutable @global1525 : tensor<1x608x1x1xf32>
  ml_program.global private mutable @global1514 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1513 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1510 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1504 : tensor<1x576x7x7xf32>
  ml_program.global private mutable @global1503 : tensor<1x576x7x7xf32>
  ml_program.global private mutable @global1500 : tensor<1x576x1x1xf32>
  ml_program.global private mutable @global1490 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1489 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1486 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1480 : tensor<1x544x7x7xf32>
  ml_program.global private mutable @global1479 : tensor<1x544x7x7xf32>
  ml_program.global private mutable @global1476 : tensor<1x544x1x1xf32>
  ml_program.global private mutable @global1467 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1466 : tensor<1x128x7x7xf32>
  ml_program.global private mutable @global1463 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1457 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1456 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1453 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global1448 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global1444 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1443 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1440 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global1408 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1407 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1404 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1398 : tensor<1x992x14x14xf32>
  ml_program.global private mutable @global1397 : tensor<1x992x14x14xf32>
  ml_program.global private mutable @global1394 : tensor<1x992x1x1xf32>
  ml_program.global private mutable @global1363 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1362 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1359 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1353 : tensor<1x960x14x14xf32>
  ml_program.global private mutable @global1352 : tensor<1x960x14x14xf32>
  ml_program.global private mutable @global1349 : tensor<1x960x1x1xf32>
  ml_program.global private mutable @global1319 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1318 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1315 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1309 : tensor<1x928x14x14xf32>
  ml_program.global private mutable @global1308 : tensor<1x928x14x14xf32>
  ml_program.global private mutable @global1305 : tensor<1x928x1x1xf32>
  ml_program.global private mutable @global1276 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1275 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1272 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1266 : tensor<1x896x14x14xf32>
  ml_program.global private mutable @global1265 : tensor<1x896x14x14xf32>
  ml_program.global private mutable @global1262 : tensor<1x896x1x1xf32>
  ml_program.global private mutable @global1234 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1233 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1230 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1224 : tensor<1x864x14x14xf32>
  ml_program.global private mutable @global1223 : tensor<1x864x14x14xf32>
  ml_program.global private mutable @global1220 : tensor<1x864x1x1xf32>
  ml_program.global private mutable @global1193 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1192 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1189 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1183 : tensor<1x832x14x14xf32>
  ml_program.global private mutable @global1182 : tensor<1x832x14x14xf32>
  ml_program.global private mutable @global1179 : tensor<1x832x1x1xf32>
  ml_program.global private mutable @global1153 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1152 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1149 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1143 : tensor<1x800x14x14xf32>
  ml_program.global private mutable @global1142 : tensor<1x800x14x14xf32>
  ml_program.global private mutable @global1139 : tensor<1x800x1x1xf32>
  ml_program.global private mutable @global1114 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1113 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1110 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1104 : tensor<1x768x14x14xf32>
  ml_program.global private mutable @global1103 : tensor<1x768x14x14xf32>
  ml_program.global private mutable @global1100 : tensor<1x768x1x1xf32>
  ml_program.global private mutable @global1076 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1075 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1072 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1066 : tensor<1x736x14x14xf32>
  ml_program.global private mutable @global1065 : tensor<1x736x14x14xf32>
  ml_program.global private mutable @global1062 : tensor<1x736x1x1xf32>
  ml_program.global private mutable @global1039 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1038 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1035 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global1029 : tensor<1x704x14x14xf32>
  ml_program.global private mutable @global1028 : tensor<1x704x14x14xf32>
  ml_program.global private mutable @global1025 : tensor<1x704x1x1xf32>
  ml_program.global private mutable @global1003 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global1002 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global999 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global993 : tensor<1x672x14x14xf32>
  ml_program.global private mutable @global992 : tensor<1x672x14x14xf32>
  ml_program.global private mutable @global989 : tensor<1x672x1x1xf32>
  ml_program.global private mutable @global968 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global967 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global964 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global958 : tensor<1x640x14x14xf32>
  ml_program.global private mutable @global957 : tensor<1x640x14x14xf32>
  ml_program.global private mutable @global954 : tensor<1x640x1x1xf32>
  ml_program.global private mutable @global934 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global933 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global930 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global924 : tensor<1x608x14x14xf32>
  ml_program.global private mutable @global923 : tensor<1x608x14x14xf32>
  ml_program.global private mutable @global920 : tensor<1x608x1x1xf32>
  ml_program.global private mutable @global901 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global900 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global897 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global891 : tensor<1x576x14x14xf32>
  ml_program.global private mutable @global890 : tensor<1x576x14x14xf32>
  ml_program.global private mutable @global887 : tensor<1x576x1x1xf32>
  ml_program.global private mutable @global869 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global868 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global865 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global859 : tensor<1x544x14x14xf32>
  ml_program.global private mutable @global858 : tensor<1x544x14x14xf32>
  ml_program.global private mutable @global855 : tensor<1x544x1x1xf32>
  ml_program.global private mutable @global838 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global837 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global834 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global828 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global827 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global824 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global808 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global807 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global804 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global798 : tensor<1x480x14x14xf32>
  ml_program.global private mutable @global797 : tensor<1x480x14x14xf32>
  ml_program.global private mutable @global794 : tensor<1x480x1x1xf32>
  ml_program.global private mutable @global779 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global778 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global775 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global769 : tensor<1x448x14x14xf32>
  ml_program.global private mutable @global768 : tensor<1x448x14x14xf32>
  ml_program.global private mutable @global765 : tensor<1x448x1x1xf32>
  ml_program.global private mutable @global751 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global750 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global747 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global741 : tensor<1x416x14x14xf32>
  ml_program.global private mutable @global740 : tensor<1x416x14x14xf32>
  ml_program.global private mutable @global737 : tensor<1x416x1x1xf32>
  ml_program.global private mutable @global724 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global723 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global720 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global714 : tensor<1x384x14x14xf32>
  ml_program.global private mutable @global713 : tensor<1x384x14x14xf32>
  ml_program.global private mutable @global710 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global698 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global697 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global694 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global688 : tensor<1x352x14x14xf32>
  ml_program.global private mutable @global687 : tensor<1x352x14x14xf32>
  ml_program.global private mutable @global684 : tensor<1x352x1x1xf32>
  ml_program.global private mutable @global673 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global672 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global669 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global663 : tensor<1x320x14x14xf32>
  ml_program.global private mutable @global662 : tensor<1x320x14x14xf32>
  ml_program.global private mutable @global659 : tensor<1x320x1x1xf32>
  ml_program.global private mutable @global649 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global648 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global645 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global639 : tensor<1x288x14x14xf32>
  ml_program.global private mutable @global638 : tensor<1x288x14x14xf32>
  ml_program.global private mutable @global635 : tensor<1x288x1x1xf32>
  ml_program.global private mutable @global626 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global625 : tensor<1x128x14x14xf32>
  ml_program.global private mutable @global622 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global616 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global615 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global612 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global607 : tensor<1x28x28x256xf32>
  ml_program.global private mutable @global603 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global602 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global599 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global579 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global578 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global575 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global569 : tensor<1x480x28x28xf32>
  ml_program.global private mutable @global568 : tensor<1x480x28x28xf32>
  ml_program.global private mutable @global565 : tensor<1x480x1x1xf32>
  ml_program.global private mutable @global546 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global545 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global542 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global536 : tensor<1x448x28x28xf32>
  ml_program.global private mutable @global535 : tensor<1x448x28x28xf32>
  ml_program.global private mutable @global532 : tensor<1x448x1x1xf32>
  ml_program.global private mutable @global514 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global513 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global510 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global504 : tensor<1x416x28x28xf32>
  ml_program.global private mutable @global503 : tensor<1x416x28x28xf32>
  ml_program.global private mutable @global500 : tensor<1x416x1x1xf32>
  ml_program.global private mutable @global483 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global482 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global479 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global473 : tensor<1x384x28x28xf32>
  ml_program.global private mutable @global472 : tensor<1x384x28x28xf32>
  ml_program.global private mutable @global469 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global453 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global452 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global449 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global443 : tensor<1x352x28x28xf32>
  ml_program.global private mutable @global442 : tensor<1x352x28x28xf32>
  ml_program.global private mutable @global439 : tensor<1x352x1x1xf32>
  ml_program.global private mutable @global424 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global423 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global420 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global414 : tensor<1x320x28x28xf32>
  ml_program.global private mutable @global413 : tensor<1x320x28x28xf32>
  ml_program.global private mutable @global410 : tensor<1x320x1x1xf32>
  ml_program.global private mutable @global396 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global395 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global392 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global386 : tensor<1x288x28x28xf32>
  ml_program.global private mutable @global385 : tensor<1x288x28x28xf32>
  ml_program.global private mutable @global382 : tensor<1x288x1x1xf32>
  ml_program.global private mutable @global369 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global368 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global365 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global359 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global358 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global355 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global343 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global342 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global339 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global333 : tensor<1x224x28x28xf32>
  ml_program.global private mutable @global332 : tensor<1x224x28x28xf32>
  ml_program.global private mutable @global329 : tensor<1x224x1x1xf32>
  ml_program.global private mutable @global318 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global317 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global314 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global308 : tensor<1x192x28x28xf32>
  ml_program.global private mutable @global307 : tensor<1x192x28x28xf32>
  ml_program.global private mutable @global304 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global294 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global293 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global290 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global284 : tensor<1x160x28x28xf32>
  ml_program.global private mutable @global283 : tensor<1x160x28x28xf32>
  ml_program.global private mutable @global280 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global271 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global270 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global267 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global261 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global260 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global257 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global252 : tensor<1x56x56x128xf32>
  ml_program.global private mutable @global248 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global247 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global244 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global230 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global229 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global226 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global220 : tensor<1x224x56x56xf32>
  ml_program.global private mutable @global219 : tensor<1x224x56x56xf32>
  ml_program.global private mutable @global216 : tensor<1x224x1x1xf32>
  ml_program.global private mutable @global203 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global202 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global199 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global193 : tensor<1x192x56x56xf32>
  ml_program.global private mutable @global192 : tensor<1x192x56x56xf32>
  ml_program.global private mutable @global189 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global177 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global176 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global173 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global167 : tensor<1x160x56x56xf32>
  ml_program.global private mutable @global166 : tensor<1x160x56x56xf32>
  ml_program.global private mutable @global163 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global152 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global151 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global148 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global142 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global141 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global138 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global128 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global127 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global124 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global118 : tensor<1x96x56x56xf32>
  ml_program.global private mutable @global117 : tensor<1x96x56x56xf32>
  ml_program.global private mutable @global114 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global105 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global104 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global101 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global95 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global94 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global91 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global87 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global86 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global85 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global84 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global81 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global74 : tensor<1x1024x1000xf32>
  ml_program.global private mutable @global72 : tensor<512x1x1x1024xf32>
  ml_program.global private mutable @global71 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global70 : tensor<128x1x1x992xf32>
  ml_program.global private mutable @global69 : tensor<1x992x1x1xf32>
  ml_program.global private mutable @global68 : tensor<128x1x1x960xf32>
  ml_program.global private mutable @global67 : tensor<1x960x1x1xf32>
  ml_program.global private mutable @global66 : tensor<128x1x1x928xf32>
  ml_program.global private mutable @global65 : tensor<1x928x1x1xf32>
  ml_program.global private mutable @global64 : tensor<128x1x1x896xf32>
  ml_program.global private mutable @global63 : tensor<1x896x1x1xf32>
  ml_program.global private mutable @global62 : tensor<128x1x1x864xf32>
  ml_program.global private mutable @global61 : tensor<1x864x1x1xf32>
  ml_program.global private mutable @global60 : tensor<128x1x1x832xf32>
  ml_program.global private mutable @global59 : tensor<1x832x1x1xf32>
  ml_program.global private mutable @global58 : tensor<128x1x1x800xf32>
  ml_program.global private mutable @global57 : tensor<1x800x1x1xf32>
  ml_program.global private mutable @global56 : tensor<128x1x1x768xf32>
  ml_program.global private mutable @global55 : tensor<1x768x1x1xf32>
  ml_program.global private mutable @global54 : tensor<128x1x1x736xf32>
  ml_program.global private mutable @global53 : tensor<1x736x1x1xf32>
  ml_program.global private mutable @global52 : tensor<128x1x1x704xf32>
  ml_program.global private mutable @global51 : tensor<1x704x1x1xf32>
  ml_program.global private mutable @global50 : tensor<128x1x1x672xf32>
  ml_program.global private mutable @global49 : tensor<1x672x1x1xf32>
  ml_program.global private mutable @global48 : tensor<128x1x1x640xf32>
  ml_program.global private mutable @global47 : tensor<1x640x1x1xf32>
  ml_program.global private mutable @global46 : tensor<128x1x1x608xf32>
  ml_program.global private mutable @global45 : tensor<1x608x1x1xf32>
  ml_program.global private mutable @global44 : tensor<128x1x1x576xf32>
  ml_program.global private mutable @global43 : tensor<1x576x1x1xf32>
  ml_program.global private mutable @global42 : tensor<128x1x1x544xf32>
  ml_program.global private mutable @global41 : tensor<1x544x1x1xf32>
  ml_program.global private mutable @global40 : tensor<128x1x1x512xf32>
  ml_program.global private mutable @global38 : tensor<256x1x1x512xf32>
  ml_program.global private mutable @global37 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global36 : tensor<128x1x1x480xf32>
  ml_program.global private mutable @global35 : tensor<1x480x1x1xf32>
  ml_program.global private mutable @global34 : tensor<128x1x1x448xf32>
  ml_program.global private mutable @global33 : tensor<1x448x1x1xf32>
  ml_program.global private mutable @global32 : tensor<128x1x1x416xf32>
  ml_program.global private mutable @global31 : tensor<1x416x1x1xf32>
  ml_program.global private mutable @global30 : tensor<128x1x1x384xf32>
  ml_program.global private mutable @global29 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global28 : tensor<128x1x1x352xf32>
  ml_program.global private mutable @global27 : tensor<1x352x1x1xf32>
  ml_program.global private mutable @global26 : tensor<128x1x1x320xf32>
  ml_program.global private mutable @global25 : tensor<1x320x1x1xf32>
  ml_program.global private mutable @global24 : tensor<128x1x1x288xf32>
  ml_program.global private mutable @global23 : tensor<1x288x1x1xf32>
  ml_program.global private mutable @global22 : tensor<128x1x1x256xf32>
  ml_program.global private mutable @global21 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global20 : tensor<128x1x1x224xf32>
  ml_program.global private mutable @global19 : tensor<1x224x1x1xf32>
  ml_program.global private mutable @global18 : tensor<128x1x1x192xf32>
  ml_program.global private mutable @global17 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global16 : tensor<128x1x1x160xf32>
  ml_program.global private mutable @global15 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global14 : tensor<128x1x1x128xf32>
  ml_program.global private mutable @global13 : tensor<128x1x1x96xf32>
  ml_program.global private mutable @global12 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global10 : tensor<32x3x3x128xf32>
  ml_program.global private mutable @global9 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global7 : tensor<128x1x1x64xf32>
  ml_program.global private mutable @global5 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global1 : tensor<64x7x7x3xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x96x56x56xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x128x56x56xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x160x56x56xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x192x56x56xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x224x56x56xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<1x256x56x56xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<1x160x28x28xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<1x192x28x28xf32>
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<1x224x28x28xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<1x256x28x28xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<1x288x28x28xf32>
    %cst_10 = arith.constant dense<0.000000e+00> : tensor<1x320x28x28xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<1x352x28x28xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<1x384x28x28xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<1x416x28x28xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<1x448x28x28xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<1x480x28x28xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<1x512x28x28xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<1x288x14x14xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<1x320x14x14xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<1x352x14x14xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<1x384x14x14xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<1x416x14x14xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<1x448x14x14xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<1x480x14x14xf32>
    %cst_24 = arith.constant dense<0.000000e+00> : tensor<1x512x14x14xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<1x544x14x14xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<1x576x14x14xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<1x608x14x14xf32>
    %cst_28 = arith.constant dense<0.000000e+00> : tensor<1x640x14x14xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<1x672x14x14xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<1x704x14x14xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<1x736x14x14xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<1x768x14x14xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<1x800x14x14xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<1x832x14x14xf32>
    %cst_35 = arith.constant dense<0.000000e+00> : tensor<1x864x14x14xf32>
    %cst_36 = arith.constant dense<0.000000e+00> : tensor<1x896x14x14xf32>
    %cst_37 = arith.constant dense<0.000000e+00> : tensor<1x928x14x14xf32>
    %cst_38 = arith.constant dense<0.000000e+00> : tensor<1x960x14x14xf32>
    %cst_39 = arith.constant dense<0.000000e+00> : tensor<1x992x14x14xf32>
    %cst_40 = arith.constant dense<0.000000e+00> : tensor<1x1024x14x14xf32>
    %cst_41 = arith.constant dense<0.000000e+00> : tensor<1x544x7x7xf32>
    %cst_42 = arith.constant dense<0.000000e+00> : tensor<1x576x7x7xf32>
    %cst_43 = arith.constant dense<0.000000e+00> : tensor<1x608x7x7xf32>
    %cst_44 = arith.constant dense<0.000000e+00> : tensor<1x640x7x7xf32>
    %cst_45 = arith.constant dense<0.000000e+00> : tensor<1x672x7x7xf32>
    %cst_46 = arith.constant dense<0.000000e+00> : tensor<1x704x7x7xf32>
    %cst_47 = arith.constant dense<0.000000e+00> : tensor<1x736x7x7xf32>
    %cst_48 = arith.constant dense<0.000000e+00> : tensor<1x768x7x7xf32>
    %cst_49 = arith.constant dense<0.000000e+00> : tensor<1x800x7x7xf32>
    %cst_50 = arith.constant dense<0.000000e+00> : tensor<1x832x7x7xf32>
    %cst_51 = arith.constant dense<0.000000e+00> : tensor<1x864x7x7xf32>
    %cst_52 = arith.constant dense<0.000000e+00> : tensor<1x896x7x7xf32>
    %cst_53 = arith.constant dense<0.000000e+00> : tensor<1x928x7x7xf32>
    %cst_54 = arith.constant dense<0.000000e+00> : tensor<1x960x7x7xf32>
    %cst_55 = arith.constant dense<0.000000e+00> : tensor<1x992x7x7xf32>
    %cst_56 = arith.constant dense<0.000000e+00> : tensor<1x1024x7x7xf32>
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %2 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %3 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %5 = "tosa.const"() {value = dense<9.99999974E-6> : tensor<f32>} : () -> tensor<f32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %7 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x128xf32>} : () -> tensor<32x3x3x128xf32>
    %10 = "tosa.const"() {value = dense<0.000000e+00> : tensor<32xf32>} : () -> tensor<32xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x96x1x1xf32>} : () -> tensor<1x96x1x1xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x96xf32>} : () -> tensor<128x1x1x96xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x128xf32>} : () -> tensor<128x1x1x128xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x160x1x1xf32>} : () -> tensor<1x160x1x1xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x160xf32>} : () -> tensor<128x1x1x160xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x192x1x1xf32>} : () -> tensor<1x192x1x1xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x192xf32>} : () -> tensor<128x1x1x192xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x224x1x1xf32>} : () -> tensor<1x224x1x1xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x224xf32>} : () -> tensor<128x1x1x224xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x288x1x1xf32>} : () -> tensor<1x288x1x1xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x288xf32>} : () -> tensor<128x1x1x288xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x320x1x1xf32>} : () -> tensor<1x320x1x1xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x320xf32>} : () -> tensor<128x1x1x320xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x352x1x1xf32>} : () -> tensor<1x352x1x1xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x352xf32>} : () -> tensor<128x1x1x352xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x384x1x1xf32>} : () -> tensor<1x384x1x1xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x384xf32>} : () -> tensor<128x1x1x384xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x416x1x1xf32>} : () -> tensor<1x416x1x1xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x416xf32>} : () -> tensor<128x1x1x416xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x448x1x1xf32>} : () -> tensor<1x448x1x1xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x448xf32>} : () -> tensor<128x1x1x448xf32>
    %34 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x480x1x1xf32>} : () -> tensor<1x480x1x1xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x480xf32>} : () -> tensor<128x1x1x480xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %38 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x544x1x1xf32>} : () -> tensor<1x544x1x1xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x544xf32>} : () -> tensor<128x1x1x544xf32>
    %42 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x576x1x1xf32>} : () -> tensor<1x576x1x1xf32>
    %43 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x576xf32>} : () -> tensor<128x1x1x576xf32>
    %44 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x608x1x1xf32>} : () -> tensor<1x608x1x1xf32>
    %45 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x608xf32>} : () -> tensor<128x1x1x608xf32>
    %46 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x640x1x1xf32>} : () -> tensor<1x640x1x1xf32>
    %47 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x640xf32>} : () -> tensor<128x1x1x640xf32>
    %48 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x672x1x1xf32>} : () -> tensor<1x672x1x1xf32>
    %49 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x672xf32>} : () -> tensor<128x1x1x672xf32>
    %50 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x704x1x1xf32>} : () -> tensor<1x704x1x1xf32>
    %51 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x704xf32>} : () -> tensor<128x1x1x704xf32>
    %52 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x736x1x1xf32>} : () -> tensor<1x736x1x1xf32>
    %53 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x736xf32>} : () -> tensor<128x1x1x736xf32>
    %54 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x1x1xf32>} : () -> tensor<1x768x1x1xf32>
    %55 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x768xf32>} : () -> tensor<128x1x1x768xf32>
    %56 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x800x1x1xf32>} : () -> tensor<1x800x1x1xf32>
    %57 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x800xf32>} : () -> tensor<128x1x1x800xf32>
    %58 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x832x1x1xf32>} : () -> tensor<1x832x1x1xf32>
    %59 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x832xf32>} : () -> tensor<128x1x1x832xf32>
    %60 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x864x1x1xf32>} : () -> tensor<1x864x1x1xf32>
    %61 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x864xf32>} : () -> tensor<128x1x1x864xf32>
    %62 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x896x1x1xf32>} : () -> tensor<1x896x1x1xf32>
    %63 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x896xf32>} : () -> tensor<128x1x1x896xf32>
    %64 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x928x1x1xf32>} : () -> tensor<1x928x1x1xf32>
    %65 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x928xf32>} : () -> tensor<128x1x1x928xf32>
    %66 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x960x1x1xf32>} : () -> tensor<1x960x1x1xf32>
    %67 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x960xf32>} : () -> tensor<128x1x1x960xf32>
    %68 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x992x1x1xf32>} : () -> tensor<1x992x1x1xf32>
    %69 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x992xf32>} : () -> tensor<128x1x1x992xf32>
    %70 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %71 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %72 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %73 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1000xf32>} : () -> tensor<1x1024x1000xf32>
    %74 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000xf32>} : () -> tensor<1000xf32>
    ml_program.global_store @global1 = %0 : tensor<64x7x7x3xf32>
    ml_program.global_store @global5 = %4 : tensor<1x64x1x1xf32>
    ml_program.global_store @global7 = %6 : tensor<128x1x1x64xf32>
    ml_program.global_store @global9 = %8 : tensor<1x128x1x1xf32>
    ml_program.global_store @global10 = %9 : tensor<32x3x3x128xf32>
    ml_program.global_store @global12 = %11 : tensor<1x96x1x1xf32>
    ml_program.global_store @global13 = %12 : tensor<128x1x1x96xf32>
    ml_program.global_store @global14 = %13 : tensor<128x1x1x128xf32>
    ml_program.global_store @global15 = %14 : tensor<1x160x1x1xf32>
    ml_program.global_store @global16 = %15 : tensor<128x1x1x160xf32>
    ml_program.global_store @global17 = %16 : tensor<1x192x1x1xf32>
    ml_program.global_store @global18 = %17 : tensor<128x1x1x192xf32>
    ml_program.global_store @global19 = %18 : tensor<1x224x1x1xf32>
    ml_program.global_store @global20 = %19 : tensor<128x1x1x224xf32>
    ml_program.global_store @global21 = %20 : tensor<1x256x1x1xf32>
    ml_program.global_store @global22 = %21 : tensor<128x1x1x256xf32>
    ml_program.global_store @global23 = %22 : tensor<1x288x1x1xf32>
    ml_program.global_store @global24 = %23 : tensor<128x1x1x288xf32>
    ml_program.global_store @global25 = %24 : tensor<1x320x1x1xf32>
    ml_program.global_store @global26 = %25 : tensor<128x1x1x320xf32>
    ml_program.global_store @global27 = %26 : tensor<1x352x1x1xf32>
    ml_program.global_store @global28 = %27 : tensor<128x1x1x352xf32>
    ml_program.global_store @global29 = %28 : tensor<1x384x1x1xf32>
    ml_program.global_store @global30 = %29 : tensor<128x1x1x384xf32>
    ml_program.global_store @global31 = %30 : tensor<1x416x1x1xf32>
    ml_program.global_store @global32 = %31 : tensor<128x1x1x416xf32>
    ml_program.global_store @global33 = %32 : tensor<1x448x1x1xf32>
    ml_program.global_store @global34 = %33 : tensor<128x1x1x448xf32>
    ml_program.global_store @global35 = %34 : tensor<1x480x1x1xf32>
    ml_program.global_store @global36 = %35 : tensor<128x1x1x480xf32>
    ml_program.global_store @global37 = %36 : tensor<1x512x1x1xf32>
    ml_program.global_store @global38 = %37 : tensor<256x1x1x512xf32>
    ml_program.global_store @global40 = %39 : tensor<128x1x1x512xf32>
    ml_program.global_store @global41 = %40 : tensor<1x544x1x1xf32>
    ml_program.global_store @global42 = %41 : tensor<128x1x1x544xf32>
    ml_program.global_store @global43 = %42 : tensor<1x576x1x1xf32>
    ml_program.global_store @global44 = %43 : tensor<128x1x1x576xf32>
    ml_program.global_store @global45 = %44 : tensor<1x608x1x1xf32>
    ml_program.global_store @global46 = %45 : tensor<128x1x1x608xf32>
    ml_program.global_store @global47 = %46 : tensor<1x640x1x1xf32>
    ml_program.global_store @global48 = %47 : tensor<128x1x1x640xf32>
    ml_program.global_store @global49 = %48 : tensor<1x672x1x1xf32>
    ml_program.global_store @global50 = %49 : tensor<128x1x1x672xf32>
    ml_program.global_store @global51 = %50 : tensor<1x704x1x1xf32>
    ml_program.global_store @global52 = %51 : tensor<128x1x1x704xf32>
    ml_program.global_store @global53 = %52 : tensor<1x736x1x1xf32>
    ml_program.global_store @global54 = %53 : tensor<128x1x1x736xf32>
    ml_program.global_store @global55 = %54 : tensor<1x768x1x1xf32>
    ml_program.global_store @global56 = %55 : tensor<128x1x1x768xf32>
    ml_program.global_store @global57 = %56 : tensor<1x800x1x1xf32>
    ml_program.global_store @global58 = %57 : tensor<128x1x1x800xf32>
    ml_program.global_store @global59 = %58 : tensor<1x832x1x1xf32>
    ml_program.global_store @global60 = %59 : tensor<128x1x1x832xf32>
    ml_program.global_store @global61 = %60 : tensor<1x864x1x1xf32>
    ml_program.global_store @global62 = %61 : tensor<128x1x1x864xf32>
    ml_program.global_store @global63 = %62 : tensor<1x896x1x1xf32>
    ml_program.global_store @global64 = %63 : tensor<128x1x1x896xf32>
    ml_program.global_store @global65 = %64 : tensor<1x928x1x1xf32>
    ml_program.global_store @global66 = %65 : tensor<128x1x1x928xf32>
    ml_program.global_store @global67 = %66 : tensor<1x960x1x1xf32>
    ml_program.global_store @global68 = %67 : tensor<128x1x1x960xf32>
    ml_program.global_store @global69 = %68 : tensor<1x992x1x1xf32>
    ml_program.global_store @global70 = %69 : tensor<128x1x1x992xf32>
    ml_program.global_store @global71 = %70 : tensor<1x1024x1x1xf32>
    ml_program.global_store @global72 = %71 : tensor<512x1x1x1024xf32>
    ml_program.global_store @global74 = %73 : tensor<1x1024x1000xf32>
    %75 = "tosa.transpose"(%arg0, %1) : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %76 = "tosa.conv2d"(%75, %0, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %77 = "tosa.transpose"(%76, %3) : (tensor<1x112x112x64xf32>, tensor<4xi64>) -> tensor<1x64x112x112xf32>
    %78 = "tosa.sub"(%77, %4) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %79 = "tosa.add"(%4, %5) : (tensor<1x64x1x1xf32>, tensor<f32>) -> tensor<1x64x1x1xf32>
    %80 = "tosa.rsqrt"(%79) : (tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    ml_program.global_store @global81 = %80 : tensor<1x64x1x1xf32>
    %81 = "tosa.mul"(%78, %80) {shift = 0 : i8} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %82 = "tosa.mul"(%81, %4) {shift = 0 : i8} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %83 = "tosa.add"(%82, %4) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global84 = %83 : tensor<1x64x112x112xf32>
    %84 = "tosa.clamp"(%83) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global85 = %84 : tensor<1x64x112x112xf32>
    %85 = "tosa.transpose"(%84, %1) : (tensor<1x64x112x112xf32>, tensor<4xi64>) -> tensor<1x112x112x64xf32>
    ml_program.global_store @global86 = %85 : tensor<1x112x112x64xf32>
    %86 = "tosa.max_pool2d"(%85) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global87 = %86 : tensor<1x56x56x64xf32>
    %87 = "tosa.transpose"(%86, %3) : (tensor<1x56x56x64xf32>, tensor<4xi64>) -> tensor<1x64x56x56xf32>
    %88 = "tosa.sub"(%87, %4) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global91 = %80 : tensor<1x64x1x1xf32>
    %89 = "tosa.mul"(%88, %80) {shift = 0 : i8} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %90 = "tosa.mul"(%89, %4) {shift = 0 : i8} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %91 = "tosa.add"(%90, %4) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global94 = %91 : tensor<1x64x56x56xf32>
    %92 = "tosa.clamp"(%91) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global95 = %92 : tensor<1x64x56x56xf32>
    %93 = "tosa.transpose"(%92, %1) : (tensor<1x64x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x64xf32>
    %94 = "tosa.conv2d"(%93, %6, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %95 = "tosa.transpose"(%94, %3) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %96 = "tosa.sub"(%95, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %97 = "tosa.add"(%8, %5) : (tensor<1x128x1x1xf32>, tensor<f32>) -> tensor<1x128x1x1xf32>
    %98 = "tosa.rsqrt"(%97) : (tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    ml_program.global_store @global101 = %98 : tensor<1x128x1x1xf32>
    %99 = "tosa.mul"(%96, %98) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %100 = "tosa.mul"(%99, %8) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %101 = "tosa.add"(%100, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global104 = %101 : tensor<1x128x56x56xf32>
    %102 = "tosa.clamp"(%101) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global105 = %102 : tensor<1x128x56x56xf32>
    %103 = "tosa.transpose"(%102, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %104 = "tosa.conv2d"(%103, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %105 = "tosa.transpose"(%104, %3) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice = tensor.insert_slice %87 into %cst[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x96x56x56xf32>
    %inserted_slice_57 = tensor.insert_slice %105 into %inserted_slice[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x96x56x56xf32>
    %106 = "tosa.sub"(%inserted_slice_57, %11) : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %107 = "tosa.add"(%11, %5) : (tensor<1x96x1x1xf32>, tensor<f32>) -> tensor<1x96x1x1xf32>
    %108 = "tosa.rsqrt"(%107) : (tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    ml_program.global_store @global114 = %108 : tensor<1x96x1x1xf32>
    %109 = "tosa.mul"(%106, %108) {shift = 0 : i8} : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %110 = "tosa.mul"(%109, %11) {shift = 0 : i8} : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %111 = "tosa.add"(%110, %11) : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    ml_program.global_store @global117 = %111 : tensor<1x96x56x56xf32>
    %112 = "tosa.clamp"(%111) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    ml_program.global_store @global118 = %112 : tensor<1x96x56x56xf32>
    %113 = "tosa.transpose"(%112, %1) : (tensor<1x96x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x96xf32>
    %114 = "tosa.conv2d"(%113, %12, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x96xf32>, tensor<128x1x1x96xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %115 = "tosa.transpose"(%114, %3) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %116 = "tosa.sub"(%115, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global124 = %98 : tensor<1x128x1x1xf32>
    %117 = "tosa.mul"(%116, %98) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %118 = "tosa.mul"(%117, %8) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %119 = "tosa.add"(%118, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global127 = %119 : tensor<1x128x56x56xf32>
    %120 = "tosa.clamp"(%119) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global128 = %120 : tensor<1x128x56x56xf32>
    %121 = "tosa.transpose"(%120, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %122 = "tosa.conv2d"(%121, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %123 = "tosa.transpose"(%122, %3) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_58 = tensor.insert_slice %87 into %cst_0[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x128x56x56xf32>
    %inserted_slice_59 = tensor.insert_slice %105 into %inserted_slice_58[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x128x56x56xf32>
    %inserted_slice_60 = tensor.insert_slice %123 into %inserted_slice_59[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x128x56x56xf32>
    %124 = "tosa.sub"(%inserted_slice_60, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global138 = %98 : tensor<1x128x1x1xf32>
    %125 = "tosa.mul"(%124, %98) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %126 = "tosa.mul"(%125, %8) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %127 = "tosa.add"(%126, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global141 = %127 : tensor<1x128x56x56xf32>
    %128 = "tosa.clamp"(%127) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global142 = %128 : tensor<1x128x56x56xf32>
    %129 = "tosa.transpose"(%128, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %130 = "tosa.conv2d"(%129, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %131 = "tosa.transpose"(%130, %3) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %132 = "tosa.sub"(%131, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global148 = %98 : tensor<1x128x1x1xf32>
    %133 = "tosa.mul"(%132, %98) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %134 = "tosa.mul"(%133, %8) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %135 = "tosa.add"(%134, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global151 = %135 : tensor<1x128x56x56xf32>
    %136 = "tosa.clamp"(%135) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global152 = %136 : tensor<1x128x56x56xf32>
    %137 = "tosa.transpose"(%136, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %138 = "tosa.conv2d"(%137, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %139 = "tosa.transpose"(%138, %3) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_61 = tensor.insert_slice %87 into %cst_1[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_62 = tensor.insert_slice %105 into %inserted_slice_61[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_63 = tensor.insert_slice %123 into %inserted_slice_62[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_64 = tensor.insert_slice %139 into %inserted_slice_63[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %140 = "tosa.sub"(%inserted_slice_64, %14) : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %141 = "tosa.add"(%14, %5) : (tensor<1x160x1x1xf32>, tensor<f32>) -> tensor<1x160x1x1xf32>
    %142 = "tosa.rsqrt"(%141) : (tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    ml_program.global_store @global163 = %142 : tensor<1x160x1x1xf32>
    %143 = "tosa.mul"(%140, %142) {shift = 0 : i8} : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %144 = "tosa.mul"(%143, %14) {shift = 0 : i8} : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %145 = "tosa.add"(%144, %14) : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    ml_program.global_store @global166 = %145 : tensor<1x160x56x56xf32>
    %146 = "tosa.clamp"(%145) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xf32>
    ml_program.global_store @global167 = %146 : tensor<1x160x56x56xf32>
    %147 = "tosa.transpose"(%146, %1) : (tensor<1x160x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x160xf32>
    %148 = "tosa.conv2d"(%147, %15, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x160xf32>, tensor<128x1x1x160xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %149 = "tosa.transpose"(%148, %3) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %150 = "tosa.sub"(%149, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global173 = %98 : tensor<1x128x1x1xf32>
    %151 = "tosa.mul"(%150, %98) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %152 = "tosa.mul"(%151, %8) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %153 = "tosa.add"(%152, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global176 = %153 : tensor<1x128x56x56xf32>
    %154 = "tosa.clamp"(%153) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global177 = %154 : tensor<1x128x56x56xf32>
    %155 = "tosa.transpose"(%154, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %156 = "tosa.conv2d"(%155, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %157 = "tosa.transpose"(%156, %3) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_65 = tensor.insert_slice %87 into %cst_2[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_66 = tensor.insert_slice %105 into %inserted_slice_65[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_67 = tensor.insert_slice %123 into %inserted_slice_66[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_68 = tensor.insert_slice %139 into %inserted_slice_67[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_69 = tensor.insert_slice %157 into %inserted_slice_68[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %158 = "tosa.sub"(%inserted_slice_69, %16) : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %159 = "tosa.add"(%16, %5) : (tensor<1x192x1x1xf32>, tensor<f32>) -> tensor<1x192x1x1xf32>
    %160 = "tosa.rsqrt"(%159) : (tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    ml_program.global_store @global189 = %160 : tensor<1x192x1x1xf32>
    %161 = "tosa.mul"(%158, %160) {shift = 0 : i8} : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %162 = "tosa.mul"(%161, %16) {shift = 0 : i8} : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %163 = "tosa.add"(%162, %16) : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    ml_program.global_store @global192 = %163 : tensor<1x192x56x56xf32>
    %164 = "tosa.clamp"(%163) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    ml_program.global_store @global193 = %164 : tensor<1x192x56x56xf32>
    %165 = "tosa.transpose"(%164, %1) : (tensor<1x192x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x192xf32>
    %166 = "tosa.conv2d"(%165, %17, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x192xf32>, tensor<128x1x1x192xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %167 = "tosa.transpose"(%166, %3) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %168 = "tosa.sub"(%167, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global199 = %98 : tensor<1x128x1x1xf32>
    %169 = "tosa.mul"(%168, %98) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %170 = "tosa.mul"(%169, %8) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %171 = "tosa.add"(%170, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global202 = %171 : tensor<1x128x56x56xf32>
    %172 = "tosa.clamp"(%171) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global203 = %172 : tensor<1x128x56x56xf32>
    %173 = "tosa.transpose"(%172, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %174 = "tosa.conv2d"(%173, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %175 = "tosa.transpose"(%174, %3) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_70 = tensor.insert_slice %87 into %cst_3[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_71 = tensor.insert_slice %105 into %inserted_slice_70[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_72 = tensor.insert_slice %123 into %inserted_slice_71[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_73 = tensor.insert_slice %139 into %inserted_slice_72[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_74 = tensor.insert_slice %157 into %inserted_slice_73[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_75 = tensor.insert_slice %175 into %inserted_slice_74[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %176 = "tosa.sub"(%inserted_slice_75, %18) : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %177 = "tosa.add"(%18, %5) : (tensor<1x224x1x1xf32>, tensor<f32>) -> tensor<1x224x1x1xf32>
    %178 = "tosa.rsqrt"(%177) : (tensor<1x224x1x1xf32>) -> tensor<1x224x1x1xf32>
    ml_program.global_store @global216 = %178 : tensor<1x224x1x1xf32>
    %179 = "tosa.mul"(%176, %178) {shift = 0 : i8} : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %180 = "tosa.mul"(%179, %18) {shift = 0 : i8} : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %181 = "tosa.add"(%180, %18) : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    ml_program.global_store @global219 = %181 : tensor<1x224x56x56xf32>
    %182 = "tosa.clamp"(%181) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xf32>
    ml_program.global_store @global220 = %182 : tensor<1x224x56x56xf32>
    %183 = "tosa.transpose"(%182, %1) : (tensor<1x224x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x224xf32>
    %184 = "tosa.conv2d"(%183, %19, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x224xf32>, tensor<128x1x1x224xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %185 = "tosa.transpose"(%184, %3) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %186 = "tosa.sub"(%185, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global226 = %98 : tensor<1x128x1x1xf32>
    %187 = "tosa.mul"(%186, %98) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %188 = "tosa.mul"(%187, %8) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %189 = "tosa.add"(%188, %8) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global229 = %189 : tensor<1x128x56x56xf32>
    %190 = "tosa.clamp"(%189) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global230 = %190 : tensor<1x128x56x56xf32>
    %191 = "tosa.transpose"(%190, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %192 = "tosa.conv2d"(%191, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %193 = "tosa.transpose"(%192, %3) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_76 = tensor.insert_slice %87 into %cst_4[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_77 = tensor.insert_slice %105 into %inserted_slice_76[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_78 = tensor.insert_slice %123 into %inserted_slice_77[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_79 = tensor.insert_slice %139 into %inserted_slice_78[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_80 = tensor.insert_slice %157 into %inserted_slice_79[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_81 = tensor.insert_slice %175 into %inserted_slice_80[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_82 = tensor.insert_slice %193 into %inserted_slice_81[0, 224, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %194 = "tosa.sub"(%inserted_slice_82, %20) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %195 = "tosa.add"(%20, %5) : (tensor<1x256x1x1xf32>, tensor<f32>) -> tensor<1x256x1x1xf32>
    %196 = "tosa.rsqrt"(%195) : (tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    ml_program.global_store @global244 = %196 : tensor<1x256x1x1xf32>
    %197 = "tosa.mul"(%194, %196) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %198 = "tosa.mul"(%197, %20) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %199 = "tosa.add"(%198, %20) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global247 = %199 : tensor<1x256x56x56xf32>
    %200 = "tosa.clamp"(%199) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global248 = %200 : tensor<1x256x56x56xf32>
    %201 = "tosa.transpose"(%200, %1) : (tensor<1x256x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x256xf32>
    %202 = "tosa.conv2d"(%201, %21, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    ml_program.global_store @global252 = %202 : tensor<1x56x56x128xf32>
    %203 = "tosa.avg_pool2d"(%202) {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>) -> tensor<1x28x28x128xf32>
    %204 = "tosa.transpose"(%203, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %205 = "tosa.sub"(%204, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global257 = %98 : tensor<1x128x1x1xf32>
    %206 = "tosa.mul"(%205, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.mul"(%206, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %208 = "tosa.add"(%207, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global260 = %208 : tensor<1x128x28x28xf32>
    %209 = "tosa.clamp"(%208) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global261 = %209 : tensor<1x128x28x28xf32>
    %210 = "tosa.transpose"(%209, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %211 = "tosa.conv2d"(%210, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %212 = "tosa.transpose"(%211, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %213 = "tosa.sub"(%212, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global267 = %98 : tensor<1x128x1x1xf32>
    %214 = "tosa.mul"(%213, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %215 = "tosa.mul"(%214, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %216 = "tosa.add"(%215, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global270 = %216 : tensor<1x128x28x28xf32>
    %217 = "tosa.clamp"(%216) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global271 = %217 : tensor<1x128x28x28xf32>
    %218 = "tosa.transpose"(%217, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %219 = "tosa.conv2d"(%218, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %220 = "tosa.transpose"(%219, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_83 = tensor.insert_slice %204 into %cst_5[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x160x28x28xf32>
    %inserted_slice_84 = tensor.insert_slice %220 into %inserted_slice_83[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x160x28x28xf32>
    %221 = "tosa.sub"(%inserted_slice_84, %14) : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    ml_program.global_store @global280 = %142 : tensor<1x160x1x1xf32>
    %222 = "tosa.mul"(%221, %142) {shift = 0 : i8} : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %223 = "tosa.mul"(%222, %14) {shift = 0 : i8} : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %224 = "tosa.add"(%223, %14) : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    ml_program.global_store @global283 = %224 : tensor<1x160x28x28xf32>
    %225 = "tosa.clamp"(%224) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xf32>
    ml_program.global_store @global284 = %225 : tensor<1x160x28x28xf32>
    %226 = "tosa.transpose"(%225, %1) : (tensor<1x160x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x160xf32>
    %227 = "tosa.conv2d"(%226, %15, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x160xf32>, tensor<128x1x1x160xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %228 = "tosa.transpose"(%227, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %229 = "tosa.sub"(%228, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global290 = %98 : tensor<1x128x1x1xf32>
    %230 = "tosa.mul"(%229, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %231 = "tosa.mul"(%230, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %232 = "tosa.add"(%231, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global293 = %232 : tensor<1x128x28x28xf32>
    %233 = "tosa.clamp"(%232) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global294 = %233 : tensor<1x128x28x28xf32>
    %234 = "tosa.transpose"(%233, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %235 = "tosa.conv2d"(%234, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %236 = "tosa.transpose"(%235, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_85 = tensor.insert_slice %204 into %cst_6[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x192x28x28xf32>
    %inserted_slice_86 = tensor.insert_slice %220 into %inserted_slice_85[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x192x28x28xf32>
    %inserted_slice_87 = tensor.insert_slice %236 into %inserted_slice_86[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x192x28x28xf32>
    %237 = "tosa.sub"(%inserted_slice_87, %16) : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    ml_program.global_store @global304 = %160 : tensor<1x192x1x1xf32>
    %238 = "tosa.mul"(%237, %160) {shift = 0 : i8} : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %239 = "tosa.mul"(%238, %16) {shift = 0 : i8} : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %240 = "tosa.add"(%239, %16) : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    ml_program.global_store @global307 = %240 : tensor<1x192x28x28xf32>
    %241 = "tosa.clamp"(%240) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    ml_program.global_store @global308 = %241 : tensor<1x192x28x28xf32>
    %242 = "tosa.transpose"(%241, %1) : (tensor<1x192x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x192xf32>
    %243 = "tosa.conv2d"(%242, %17, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x192xf32>, tensor<128x1x1x192xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %244 = "tosa.transpose"(%243, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %245 = "tosa.sub"(%244, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global314 = %98 : tensor<1x128x1x1xf32>
    %246 = "tosa.mul"(%245, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %247 = "tosa.mul"(%246, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %248 = "tosa.add"(%247, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global317 = %248 : tensor<1x128x28x28xf32>
    %249 = "tosa.clamp"(%248) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global318 = %249 : tensor<1x128x28x28xf32>
    %250 = "tosa.transpose"(%249, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %251 = "tosa.conv2d"(%250, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %252 = "tosa.transpose"(%251, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_88 = tensor.insert_slice %204 into %cst_7[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_89 = tensor.insert_slice %220 into %inserted_slice_88[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_90 = tensor.insert_slice %236 into %inserted_slice_89[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_91 = tensor.insert_slice %252 into %inserted_slice_90[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %253 = "tosa.sub"(%inserted_slice_91, %18) : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    ml_program.global_store @global329 = %178 : tensor<1x224x1x1xf32>
    %254 = "tosa.mul"(%253, %178) {shift = 0 : i8} : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %255 = "tosa.mul"(%254, %18) {shift = 0 : i8} : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %256 = "tosa.add"(%255, %18) : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    ml_program.global_store @global332 = %256 : tensor<1x224x28x28xf32>
    %257 = "tosa.clamp"(%256) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xf32>
    ml_program.global_store @global333 = %257 : tensor<1x224x28x28xf32>
    %258 = "tosa.transpose"(%257, %1) : (tensor<1x224x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x224xf32>
    %259 = "tosa.conv2d"(%258, %19, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x224xf32>, tensor<128x1x1x224xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %260 = "tosa.transpose"(%259, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %261 = "tosa.sub"(%260, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global339 = %98 : tensor<1x128x1x1xf32>
    %262 = "tosa.mul"(%261, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %263 = "tosa.mul"(%262, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %264 = "tosa.add"(%263, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global342 = %264 : tensor<1x128x28x28xf32>
    %265 = "tosa.clamp"(%264) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global343 = %265 : tensor<1x128x28x28xf32>
    %266 = "tosa.transpose"(%265, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %267 = "tosa.conv2d"(%266, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %268 = "tosa.transpose"(%267, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_92 = tensor.insert_slice %204 into %cst_8[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_93 = tensor.insert_slice %220 into %inserted_slice_92[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_94 = tensor.insert_slice %236 into %inserted_slice_93[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_95 = tensor.insert_slice %252 into %inserted_slice_94[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_96 = tensor.insert_slice %268 into %inserted_slice_95[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %269 = "tosa.sub"(%inserted_slice_96, %20) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global355 = %196 : tensor<1x256x1x1xf32>
    %270 = "tosa.mul"(%269, %196) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %271 = "tosa.mul"(%270, %20) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %272 = "tosa.add"(%271, %20) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global358 = %272 : tensor<1x256x28x28xf32>
    %273 = "tosa.clamp"(%272) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global359 = %273 : tensor<1x256x28x28xf32>
    %274 = "tosa.transpose"(%273, %1) : (tensor<1x256x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x256xf32>
    %275 = "tosa.conv2d"(%274, %21, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %276 = "tosa.transpose"(%275, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %277 = "tosa.sub"(%276, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global365 = %98 : tensor<1x128x1x1xf32>
    %278 = "tosa.mul"(%277, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %279 = "tosa.mul"(%278, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %280 = "tosa.add"(%279, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global368 = %280 : tensor<1x128x28x28xf32>
    %281 = "tosa.clamp"(%280) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global369 = %281 : tensor<1x128x28x28xf32>
    %282 = "tosa.transpose"(%281, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %283 = "tosa.conv2d"(%282, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %284 = "tosa.transpose"(%283, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_97 = tensor.insert_slice %204 into %cst_9[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_98 = tensor.insert_slice %220 into %inserted_slice_97[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_99 = tensor.insert_slice %236 into %inserted_slice_98[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_100 = tensor.insert_slice %252 into %inserted_slice_99[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_101 = tensor.insert_slice %268 into %inserted_slice_100[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_102 = tensor.insert_slice %284 into %inserted_slice_101[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %285 = "tosa.sub"(%inserted_slice_102, %22) : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %286 = "tosa.add"(%22, %5) : (tensor<1x288x1x1xf32>, tensor<f32>) -> tensor<1x288x1x1xf32>
    %287 = "tosa.rsqrt"(%286) : (tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    ml_program.global_store @global382 = %287 : tensor<1x288x1x1xf32>
    %288 = "tosa.mul"(%285, %287) {shift = 0 : i8} : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %289 = "tosa.mul"(%288, %22) {shift = 0 : i8} : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %290 = "tosa.add"(%289, %22) : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    ml_program.global_store @global385 = %290 : tensor<1x288x28x28xf32>
    %291 = "tosa.clamp"(%290) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xf32>
    ml_program.global_store @global386 = %291 : tensor<1x288x28x28xf32>
    %292 = "tosa.transpose"(%291, %1) : (tensor<1x288x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x288xf32>
    %293 = "tosa.conv2d"(%292, %23, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x288xf32>, tensor<128x1x1x288xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %294 = "tosa.transpose"(%293, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %295 = "tosa.sub"(%294, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global392 = %98 : tensor<1x128x1x1xf32>
    %296 = "tosa.mul"(%295, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %297 = "tosa.mul"(%296, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %298 = "tosa.add"(%297, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global395 = %298 : tensor<1x128x28x28xf32>
    %299 = "tosa.clamp"(%298) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global396 = %299 : tensor<1x128x28x28xf32>
    %300 = "tosa.transpose"(%299, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %301 = "tosa.conv2d"(%300, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %302 = "tosa.transpose"(%301, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_103 = tensor.insert_slice %204 into %cst_10[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_104 = tensor.insert_slice %220 into %inserted_slice_103[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_105 = tensor.insert_slice %236 into %inserted_slice_104[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_106 = tensor.insert_slice %252 into %inserted_slice_105[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_107 = tensor.insert_slice %268 into %inserted_slice_106[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_108 = tensor.insert_slice %284 into %inserted_slice_107[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_109 = tensor.insert_slice %302 into %inserted_slice_108[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %303 = "tosa.sub"(%inserted_slice_109, %24) : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %304 = "tosa.add"(%24, %5) : (tensor<1x320x1x1xf32>, tensor<f32>) -> tensor<1x320x1x1xf32>
    %305 = "tosa.rsqrt"(%304) : (tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    ml_program.global_store @global410 = %305 : tensor<1x320x1x1xf32>
    %306 = "tosa.mul"(%303, %305) {shift = 0 : i8} : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %307 = "tosa.mul"(%306, %24) {shift = 0 : i8} : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %308 = "tosa.add"(%307, %24) : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    ml_program.global_store @global413 = %308 : tensor<1x320x28x28xf32>
    %309 = "tosa.clamp"(%308) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xf32>
    ml_program.global_store @global414 = %309 : tensor<1x320x28x28xf32>
    %310 = "tosa.transpose"(%309, %1) : (tensor<1x320x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x320xf32>
    %311 = "tosa.conv2d"(%310, %25, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x320xf32>, tensor<128x1x1x320xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %312 = "tosa.transpose"(%311, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %313 = "tosa.sub"(%312, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global420 = %98 : tensor<1x128x1x1xf32>
    %314 = "tosa.mul"(%313, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %315 = "tosa.mul"(%314, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %316 = "tosa.add"(%315, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global423 = %316 : tensor<1x128x28x28xf32>
    %317 = "tosa.clamp"(%316) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global424 = %317 : tensor<1x128x28x28xf32>
    %318 = "tosa.transpose"(%317, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %319 = "tosa.conv2d"(%318, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %320 = "tosa.transpose"(%319, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_110 = tensor.insert_slice %204 into %cst_11[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_111 = tensor.insert_slice %220 into %inserted_slice_110[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_112 = tensor.insert_slice %236 into %inserted_slice_111[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_113 = tensor.insert_slice %252 into %inserted_slice_112[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_114 = tensor.insert_slice %268 into %inserted_slice_113[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_115 = tensor.insert_slice %284 into %inserted_slice_114[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_116 = tensor.insert_slice %302 into %inserted_slice_115[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_117 = tensor.insert_slice %320 into %inserted_slice_116[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %321 = "tosa.sub"(%inserted_slice_117, %26) : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %322 = "tosa.add"(%26, %5) : (tensor<1x352x1x1xf32>, tensor<f32>) -> tensor<1x352x1x1xf32>
    %323 = "tosa.rsqrt"(%322) : (tensor<1x352x1x1xf32>) -> tensor<1x352x1x1xf32>
    ml_program.global_store @global439 = %323 : tensor<1x352x1x1xf32>
    %324 = "tosa.mul"(%321, %323) {shift = 0 : i8} : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %325 = "tosa.mul"(%324, %26) {shift = 0 : i8} : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %326 = "tosa.add"(%325, %26) : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    ml_program.global_store @global442 = %326 : tensor<1x352x28x28xf32>
    %327 = "tosa.clamp"(%326) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xf32>
    ml_program.global_store @global443 = %327 : tensor<1x352x28x28xf32>
    %328 = "tosa.transpose"(%327, %1) : (tensor<1x352x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x352xf32>
    %329 = "tosa.conv2d"(%328, %27, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x352xf32>, tensor<128x1x1x352xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %330 = "tosa.transpose"(%329, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %331 = "tosa.sub"(%330, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global449 = %98 : tensor<1x128x1x1xf32>
    %332 = "tosa.mul"(%331, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %333 = "tosa.mul"(%332, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %334 = "tosa.add"(%333, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global452 = %334 : tensor<1x128x28x28xf32>
    %335 = "tosa.clamp"(%334) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global453 = %335 : tensor<1x128x28x28xf32>
    %336 = "tosa.transpose"(%335, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %337 = "tosa.conv2d"(%336, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %338 = "tosa.transpose"(%337, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_118 = tensor.insert_slice %204 into %cst_12[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_119 = tensor.insert_slice %220 into %inserted_slice_118[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_120 = tensor.insert_slice %236 into %inserted_slice_119[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_121 = tensor.insert_slice %252 into %inserted_slice_120[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_122 = tensor.insert_slice %268 into %inserted_slice_121[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_123 = tensor.insert_slice %284 into %inserted_slice_122[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_124 = tensor.insert_slice %302 into %inserted_slice_123[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_125 = tensor.insert_slice %320 into %inserted_slice_124[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_126 = tensor.insert_slice %338 into %inserted_slice_125[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %339 = "tosa.sub"(%inserted_slice_126, %28) : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %340 = "tosa.add"(%28, %5) : (tensor<1x384x1x1xf32>, tensor<f32>) -> tensor<1x384x1x1xf32>
    %341 = "tosa.rsqrt"(%340) : (tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    ml_program.global_store @global469 = %341 : tensor<1x384x1x1xf32>
    %342 = "tosa.mul"(%339, %341) {shift = 0 : i8} : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %343 = "tosa.mul"(%342, %28) {shift = 0 : i8} : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %344 = "tosa.add"(%343, %28) : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    ml_program.global_store @global472 = %344 : tensor<1x384x28x28xf32>
    %345 = "tosa.clamp"(%344) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    ml_program.global_store @global473 = %345 : tensor<1x384x28x28xf32>
    %346 = "tosa.transpose"(%345, %1) : (tensor<1x384x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x384xf32>
    %347 = "tosa.conv2d"(%346, %29, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x384xf32>, tensor<128x1x1x384xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %348 = "tosa.transpose"(%347, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %349 = "tosa.sub"(%348, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global479 = %98 : tensor<1x128x1x1xf32>
    %350 = "tosa.mul"(%349, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %351 = "tosa.mul"(%350, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %352 = "tosa.add"(%351, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global482 = %352 : tensor<1x128x28x28xf32>
    %353 = "tosa.clamp"(%352) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global483 = %353 : tensor<1x128x28x28xf32>
    %354 = "tosa.transpose"(%353, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %355 = "tosa.conv2d"(%354, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %356 = "tosa.transpose"(%355, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_127 = tensor.insert_slice %204 into %cst_13[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_128 = tensor.insert_slice %220 into %inserted_slice_127[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_129 = tensor.insert_slice %236 into %inserted_slice_128[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_130 = tensor.insert_slice %252 into %inserted_slice_129[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_131 = tensor.insert_slice %268 into %inserted_slice_130[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_132 = tensor.insert_slice %284 into %inserted_slice_131[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_133 = tensor.insert_slice %302 into %inserted_slice_132[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_134 = tensor.insert_slice %320 into %inserted_slice_133[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_135 = tensor.insert_slice %338 into %inserted_slice_134[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_136 = tensor.insert_slice %356 into %inserted_slice_135[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %357 = "tosa.sub"(%inserted_slice_136, %30) : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %358 = "tosa.add"(%30, %5) : (tensor<1x416x1x1xf32>, tensor<f32>) -> tensor<1x416x1x1xf32>
    %359 = "tosa.rsqrt"(%358) : (tensor<1x416x1x1xf32>) -> tensor<1x416x1x1xf32>
    ml_program.global_store @global500 = %359 : tensor<1x416x1x1xf32>
    %360 = "tosa.mul"(%357, %359) {shift = 0 : i8} : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %361 = "tosa.mul"(%360, %30) {shift = 0 : i8} : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %362 = "tosa.add"(%361, %30) : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    ml_program.global_store @global503 = %362 : tensor<1x416x28x28xf32>
    %363 = "tosa.clamp"(%362) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xf32>
    ml_program.global_store @global504 = %363 : tensor<1x416x28x28xf32>
    %364 = "tosa.transpose"(%363, %1) : (tensor<1x416x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x416xf32>
    %365 = "tosa.conv2d"(%364, %31, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x416xf32>, tensor<128x1x1x416xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %366 = "tosa.transpose"(%365, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %367 = "tosa.sub"(%366, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global510 = %98 : tensor<1x128x1x1xf32>
    %368 = "tosa.mul"(%367, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %369 = "tosa.mul"(%368, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %370 = "tosa.add"(%369, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global513 = %370 : tensor<1x128x28x28xf32>
    %371 = "tosa.clamp"(%370) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global514 = %371 : tensor<1x128x28x28xf32>
    %372 = "tosa.transpose"(%371, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %373 = "tosa.conv2d"(%372, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %374 = "tosa.transpose"(%373, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_137 = tensor.insert_slice %204 into %cst_14[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_138 = tensor.insert_slice %220 into %inserted_slice_137[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_139 = tensor.insert_slice %236 into %inserted_slice_138[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_140 = tensor.insert_slice %252 into %inserted_slice_139[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_141 = tensor.insert_slice %268 into %inserted_slice_140[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_142 = tensor.insert_slice %284 into %inserted_slice_141[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_143 = tensor.insert_slice %302 into %inserted_slice_142[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_144 = tensor.insert_slice %320 into %inserted_slice_143[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_145 = tensor.insert_slice %338 into %inserted_slice_144[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_146 = tensor.insert_slice %356 into %inserted_slice_145[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_147 = tensor.insert_slice %374 into %inserted_slice_146[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %375 = "tosa.sub"(%inserted_slice_147, %32) : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %376 = "tosa.add"(%32, %5) : (tensor<1x448x1x1xf32>, tensor<f32>) -> tensor<1x448x1x1xf32>
    %377 = "tosa.rsqrt"(%376) : (tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    ml_program.global_store @global532 = %377 : tensor<1x448x1x1xf32>
    %378 = "tosa.mul"(%375, %377) {shift = 0 : i8} : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %379 = "tosa.mul"(%378, %32) {shift = 0 : i8} : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %380 = "tosa.add"(%379, %32) : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    ml_program.global_store @global535 = %380 : tensor<1x448x28x28xf32>
    %381 = "tosa.clamp"(%380) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xf32>
    ml_program.global_store @global536 = %381 : tensor<1x448x28x28xf32>
    %382 = "tosa.transpose"(%381, %1) : (tensor<1x448x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x448xf32>
    %383 = "tosa.conv2d"(%382, %33, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x448xf32>, tensor<128x1x1x448xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %384 = "tosa.transpose"(%383, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %385 = "tosa.sub"(%384, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global542 = %98 : tensor<1x128x1x1xf32>
    %386 = "tosa.mul"(%385, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %387 = "tosa.mul"(%386, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %388 = "tosa.add"(%387, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global545 = %388 : tensor<1x128x28x28xf32>
    %389 = "tosa.clamp"(%388) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global546 = %389 : tensor<1x128x28x28xf32>
    %390 = "tosa.transpose"(%389, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %391 = "tosa.conv2d"(%390, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %392 = "tosa.transpose"(%391, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_148 = tensor.insert_slice %204 into %cst_15[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_149 = tensor.insert_slice %220 into %inserted_slice_148[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_150 = tensor.insert_slice %236 into %inserted_slice_149[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_151 = tensor.insert_slice %252 into %inserted_slice_150[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_152 = tensor.insert_slice %268 into %inserted_slice_151[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_153 = tensor.insert_slice %284 into %inserted_slice_152[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_154 = tensor.insert_slice %302 into %inserted_slice_153[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_155 = tensor.insert_slice %320 into %inserted_slice_154[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_156 = tensor.insert_slice %338 into %inserted_slice_155[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_157 = tensor.insert_slice %356 into %inserted_slice_156[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_158 = tensor.insert_slice %374 into %inserted_slice_157[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_159 = tensor.insert_slice %392 into %inserted_slice_158[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %393 = "tosa.sub"(%inserted_slice_159, %34) : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %394 = "tosa.add"(%34, %5) : (tensor<1x480x1x1xf32>, tensor<f32>) -> tensor<1x480x1x1xf32>
    %395 = "tosa.rsqrt"(%394) : (tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    ml_program.global_store @global565 = %395 : tensor<1x480x1x1xf32>
    %396 = "tosa.mul"(%393, %395) {shift = 0 : i8} : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %397 = "tosa.mul"(%396, %34) {shift = 0 : i8} : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %398 = "tosa.add"(%397, %34) : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    ml_program.global_store @global568 = %398 : tensor<1x480x28x28xf32>
    %399 = "tosa.clamp"(%398) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xf32>
    ml_program.global_store @global569 = %399 : tensor<1x480x28x28xf32>
    %400 = "tosa.transpose"(%399, %1) : (tensor<1x480x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x480xf32>
    %401 = "tosa.conv2d"(%400, %35, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x480xf32>, tensor<128x1x1x480xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %402 = "tosa.transpose"(%401, %3) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %403 = "tosa.sub"(%402, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global575 = %98 : tensor<1x128x1x1xf32>
    %404 = "tosa.mul"(%403, %98) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %405 = "tosa.mul"(%404, %8) {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %406 = "tosa.add"(%405, %8) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global578 = %406 : tensor<1x128x28x28xf32>
    %407 = "tosa.clamp"(%406) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global579 = %407 : tensor<1x128x28x28xf32>
    %408 = "tosa.transpose"(%407, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %409 = "tosa.conv2d"(%408, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %410 = "tosa.transpose"(%409, %3) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_160 = tensor.insert_slice %204 into %cst_16[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_161 = tensor.insert_slice %220 into %inserted_slice_160[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_162 = tensor.insert_slice %236 into %inserted_slice_161[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_163 = tensor.insert_slice %252 into %inserted_slice_162[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_164 = tensor.insert_slice %268 into %inserted_slice_163[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_165 = tensor.insert_slice %284 into %inserted_slice_164[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_166 = tensor.insert_slice %302 into %inserted_slice_165[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_167 = tensor.insert_slice %320 into %inserted_slice_166[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_168 = tensor.insert_slice %338 into %inserted_slice_167[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_169 = tensor.insert_slice %356 into %inserted_slice_168[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_170 = tensor.insert_slice %374 into %inserted_slice_169[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_171 = tensor.insert_slice %392 into %inserted_slice_170[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_172 = tensor.insert_slice %410 into %inserted_slice_171[0, 480, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %411 = "tosa.sub"(%inserted_slice_172, %36) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %412 = "tosa.add"(%36, %5) : (tensor<1x512x1x1xf32>, tensor<f32>) -> tensor<1x512x1x1xf32>
    %413 = "tosa.rsqrt"(%412) : (tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    ml_program.global_store @global599 = %413 : tensor<1x512x1x1xf32>
    %414 = "tosa.mul"(%411, %413) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %415 = "tosa.mul"(%414, %36) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %416 = "tosa.add"(%415, %36) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global602 = %416 : tensor<1x512x28x28xf32>
    %417 = "tosa.clamp"(%416) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global603 = %417 : tensor<1x512x28x28xf32>
    %418 = "tosa.transpose"(%417, %1) : (tensor<1x512x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x512xf32>
    %419 = "tosa.conv2d"(%418, %37, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    ml_program.global_store @global607 = %419 : tensor<1x28x28x256xf32>
    %420 = "tosa.avg_pool2d"(%419) {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>) -> tensor<1x14x14x256xf32>
    %421 = "tosa.transpose"(%420, %3) : (tensor<1x14x14x256xf32>, tensor<4xi64>) -> tensor<1x256x14x14xf32>
    %422 = "tosa.sub"(%421, %20) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global612 = %196 : tensor<1x256x1x1xf32>
    %423 = "tosa.mul"(%422, %196) {shift = 0 : i8} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %424 = "tosa.mul"(%423, %20) {shift = 0 : i8} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %425 = "tosa.add"(%424, %20) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global615 = %425 : tensor<1x256x14x14xf32>
    %426 = "tosa.clamp"(%425) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global616 = %426 : tensor<1x256x14x14xf32>
    %427 = "tosa.transpose"(%426, %1) : (tensor<1x256x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x256xf32>
    %428 = "tosa.conv2d"(%427, %21, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %429 = "tosa.transpose"(%428, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %430 = "tosa.sub"(%429, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global622 = %98 : tensor<1x128x1x1xf32>
    %431 = "tosa.mul"(%430, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %432 = "tosa.mul"(%431, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %433 = "tosa.add"(%432, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global625 = %433 : tensor<1x128x14x14xf32>
    %434 = "tosa.clamp"(%433) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global626 = %434 : tensor<1x128x14x14xf32>
    %435 = "tosa.transpose"(%434, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %436 = "tosa.conv2d"(%435, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %437 = "tosa.transpose"(%436, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_173 = tensor.insert_slice %421 into %cst_17[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x288x14x14xf32>
    %inserted_slice_174 = tensor.insert_slice %437 into %inserted_slice_173[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x288x14x14xf32>
    %438 = "tosa.sub"(%inserted_slice_174, %22) : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    ml_program.global_store @global635 = %287 : tensor<1x288x1x1xf32>
    %439 = "tosa.mul"(%438, %287) {shift = 0 : i8} : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %440 = "tosa.mul"(%439, %22) {shift = 0 : i8} : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %441 = "tosa.add"(%440, %22) : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    ml_program.global_store @global638 = %441 : tensor<1x288x14x14xf32>
    %442 = "tosa.clamp"(%441) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xf32>
    ml_program.global_store @global639 = %442 : tensor<1x288x14x14xf32>
    %443 = "tosa.transpose"(%442, %1) : (tensor<1x288x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x288xf32>
    %444 = "tosa.conv2d"(%443, %23, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x288xf32>, tensor<128x1x1x288xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %445 = "tosa.transpose"(%444, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %446 = "tosa.sub"(%445, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global645 = %98 : tensor<1x128x1x1xf32>
    %447 = "tosa.mul"(%446, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %448 = "tosa.mul"(%447, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %449 = "tosa.add"(%448, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global648 = %449 : tensor<1x128x14x14xf32>
    %450 = "tosa.clamp"(%449) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global649 = %450 : tensor<1x128x14x14xf32>
    %451 = "tosa.transpose"(%450, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %452 = "tosa.conv2d"(%451, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %453 = "tosa.transpose"(%452, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_175 = tensor.insert_slice %421 into %cst_18[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x320x14x14xf32>
    %inserted_slice_176 = tensor.insert_slice %437 into %inserted_slice_175[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x320x14x14xf32>
    %inserted_slice_177 = tensor.insert_slice %453 into %inserted_slice_176[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x320x14x14xf32>
    %454 = "tosa.sub"(%inserted_slice_177, %24) : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    ml_program.global_store @global659 = %305 : tensor<1x320x1x1xf32>
    %455 = "tosa.mul"(%454, %305) {shift = 0 : i8} : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %456 = "tosa.mul"(%455, %24) {shift = 0 : i8} : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %457 = "tosa.add"(%456, %24) : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    ml_program.global_store @global662 = %457 : tensor<1x320x14x14xf32>
    %458 = "tosa.clamp"(%457) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xf32>
    ml_program.global_store @global663 = %458 : tensor<1x320x14x14xf32>
    %459 = "tosa.transpose"(%458, %1) : (tensor<1x320x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x320xf32>
    %460 = "tosa.conv2d"(%459, %25, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x320xf32>, tensor<128x1x1x320xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %461 = "tosa.transpose"(%460, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %462 = "tosa.sub"(%461, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global669 = %98 : tensor<1x128x1x1xf32>
    %463 = "tosa.mul"(%462, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %464 = "tosa.mul"(%463, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %465 = "tosa.add"(%464, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global672 = %465 : tensor<1x128x14x14xf32>
    %466 = "tosa.clamp"(%465) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global673 = %466 : tensor<1x128x14x14xf32>
    %467 = "tosa.transpose"(%466, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %468 = "tosa.conv2d"(%467, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %469 = "tosa.transpose"(%468, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_178 = tensor.insert_slice %421 into %cst_19[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_179 = tensor.insert_slice %437 into %inserted_slice_178[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_180 = tensor.insert_slice %453 into %inserted_slice_179[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_181 = tensor.insert_slice %469 into %inserted_slice_180[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %470 = "tosa.sub"(%inserted_slice_181, %26) : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    ml_program.global_store @global684 = %323 : tensor<1x352x1x1xf32>
    %471 = "tosa.mul"(%470, %323) {shift = 0 : i8} : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %472 = "tosa.mul"(%471, %26) {shift = 0 : i8} : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %473 = "tosa.add"(%472, %26) : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    ml_program.global_store @global687 = %473 : tensor<1x352x14x14xf32>
    %474 = "tosa.clamp"(%473) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xf32>
    ml_program.global_store @global688 = %474 : tensor<1x352x14x14xf32>
    %475 = "tosa.transpose"(%474, %1) : (tensor<1x352x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x352xf32>
    %476 = "tosa.conv2d"(%475, %27, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x352xf32>, tensor<128x1x1x352xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %477 = "tosa.transpose"(%476, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %478 = "tosa.sub"(%477, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global694 = %98 : tensor<1x128x1x1xf32>
    %479 = "tosa.mul"(%478, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %480 = "tosa.mul"(%479, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %481 = "tosa.add"(%480, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global697 = %481 : tensor<1x128x14x14xf32>
    %482 = "tosa.clamp"(%481) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global698 = %482 : tensor<1x128x14x14xf32>
    %483 = "tosa.transpose"(%482, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %484 = "tosa.conv2d"(%483, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %485 = "tosa.transpose"(%484, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_182 = tensor.insert_slice %421 into %cst_20[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_183 = tensor.insert_slice %437 into %inserted_slice_182[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_184 = tensor.insert_slice %453 into %inserted_slice_183[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_185 = tensor.insert_slice %469 into %inserted_slice_184[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_186 = tensor.insert_slice %485 into %inserted_slice_185[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %486 = "tosa.sub"(%inserted_slice_186, %28) : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    ml_program.global_store @global710 = %341 : tensor<1x384x1x1xf32>
    %487 = "tosa.mul"(%486, %341) {shift = 0 : i8} : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %488 = "tosa.mul"(%487, %28) {shift = 0 : i8} : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %489 = "tosa.add"(%488, %28) : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    ml_program.global_store @global713 = %489 : tensor<1x384x14x14xf32>
    %490 = "tosa.clamp"(%489) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    ml_program.global_store @global714 = %490 : tensor<1x384x14x14xf32>
    %491 = "tosa.transpose"(%490, %1) : (tensor<1x384x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x384xf32>
    %492 = "tosa.conv2d"(%491, %29, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x384xf32>, tensor<128x1x1x384xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %493 = "tosa.transpose"(%492, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %494 = "tosa.sub"(%493, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global720 = %98 : tensor<1x128x1x1xf32>
    %495 = "tosa.mul"(%494, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %496 = "tosa.mul"(%495, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %497 = "tosa.add"(%496, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global723 = %497 : tensor<1x128x14x14xf32>
    %498 = "tosa.clamp"(%497) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global724 = %498 : tensor<1x128x14x14xf32>
    %499 = "tosa.transpose"(%498, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %500 = "tosa.conv2d"(%499, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %501 = "tosa.transpose"(%500, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_187 = tensor.insert_slice %421 into %cst_21[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_188 = tensor.insert_slice %437 into %inserted_slice_187[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_189 = tensor.insert_slice %453 into %inserted_slice_188[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_190 = tensor.insert_slice %469 into %inserted_slice_189[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_191 = tensor.insert_slice %485 into %inserted_slice_190[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_192 = tensor.insert_slice %501 into %inserted_slice_191[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %502 = "tosa.sub"(%inserted_slice_192, %30) : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    ml_program.global_store @global737 = %359 : tensor<1x416x1x1xf32>
    %503 = "tosa.mul"(%502, %359) {shift = 0 : i8} : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %504 = "tosa.mul"(%503, %30) {shift = 0 : i8} : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %505 = "tosa.add"(%504, %30) : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    ml_program.global_store @global740 = %505 : tensor<1x416x14x14xf32>
    %506 = "tosa.clamp"(%505) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xf32>
    ml_program.global_store @global741 = %506 : tensor<1x416x14x14xf32>
    %507 = "tosa.transpose"(%506, %1) : (tensor<1x416x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x416xf32>
    %508 = "tosa.conv2d"(%507, %31, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x416xf32>, tensor<128x1x1x416xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %509 = "tosa.transpose"(%508, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %510 = "tosa.sub"(%509, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global747 = %98 : tensor<1x128x1x1xf32>
    %511 = "tosa.mul"(%510, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %512 = "tosa.mul"(%511, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %513 = "tosa.add"(%512, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global750 = %513 : tensor<1x128x14x14xf32>
    %514 = "tosa.clamp"(%513) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global751 = %514 : tensor<1x128x14x14xf32>
    %515 = "tosa.transpose"(%514, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %516 = "tosa.conv2d"(%515, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %517 = "tosa.transpose"(%516, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_193 = tensor.insert_slice %421 into %cst_22[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_194 = tensor.insert_slice %437 into %inserted_slice_193[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_195 = tensor.insert_slice %453 into %inserted_slice_194[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_196 = tensor.insert_slice %469 into %inserted_slice_195[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_197 = tensor.insert_slice %485 into %inserted_slice_196[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_198 = tensor.insert_slice %501 into %inserted_slice_197[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_199 = tensor.insert_slice %517 into %inserted_slice_198[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %518 = "tosa.sub"(%inserted_slice_199, %32) : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    ml_program.global_store @global765 = %377 : tensor<1x448x1x1xf32>
    %519 = "tosa.mul"(%518, %377) {shift = 0 : i8} : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %520 = "tosa.mul"(%519, %32) {shift = 0 : i8} : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %521 = "tosa.add"(%520, %32) : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    ml_program.global_store @global768 = %521 : tensor<1x448x14x14xf32>
    %522 = "tosa.clamp"(%521) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xf32>
    ml_program.global_store @global769 = %522 : tensor<1x448x14x14xf32>
    %523 = "tosa.transpose"(%522, %1) : (tensor<1x448x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x448xf32>
    %524 = "tosa.conv2d"(%523, %33, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x448xf32>, tensor<128x1x1x448xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %525 = "tosa.transpose"(%524, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %526 = "tosa.sub"(%525, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global775 = %98 : tensor<1x128x1x1xf32>
    %527 = "tosa.mul"(%526, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %528 = "tosa.mul"(%527, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %529 = "tosa.add"(%528, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global778 = %529 : tensor<1x128x14x14xf32>
    %530 = "tosa.clamp"(%529) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global779 = %530 : tensor<1x128x14x14xf32>
    %531 = "tosa.transpose"(%530, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %532 = "tosa.conv2d"(%531, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %533 = "tosa.transpose"(%532, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_200 = tensor.insert_slice %421 into %cst_23[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_201 = tensor.insert_slice %437 into %inserted_slice_200[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_202 = tensor.insert_slice %453 into %inserted_slice_201[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_203 = tensor.insert_slice %469 into %inserted_slice_202[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_204 = tensor.insert_slice %485 into %inserted_slice_203[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_205 = tensor.insert_slice %501 into %inserted_slice_204[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_206 = tensor.insert_slice %517 into %inserted_slice_205[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_207 = tensor.insert_slice %533 into %inserted_slice_206[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %534 = "tosa.sub"(%inserted_slice_207, %34) : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    ml_program.global_store @global794 = %395 : tensor<1x480x1x1xf32>
    %535 = "tosa.mul"(%534, %395) {shift = 0 : i8} : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %536 = "tosa.mul"(%535, %34) {shift = 0 : i8} : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %537 = "tosa.add"(%536, %34) : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    ml_program.global_store @global797 = %537 : tensor<1x480x14x14xf32>
    %538 = "tosa.clamp"(%537) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    ml_program.global_store @global798 = %538 : tensor<1x480x14x14xf32>
    %539 = "tosa.transpose"(%538, %1) : (tensor<1x480x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x480xf32>
    %540 = "tosa.conv2d"(%539, %35, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x480xf32>, tensor<128x1x1x480xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %541 = "tosa.transpose"(%540, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %542 = "tosa.sub"(%541, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global804 = %98 : tensor<1x128x1x1xf32>
    %543 = "tosa.mul"(%542, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %544 = "tosa.mul"(%543, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %545 = "tosa.add"(%544, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global807 = %545 : tensor<1x128x14x14xf32>
    %546 = "tosa.clamp"(%545) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global808 = %546 : tensor<1x128x14x14xf32>
    %547 = "tosa.transpose"(%546, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %548 = "tosa.conv2d"(%547, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %549 = "tosa.transpose"(%548, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_208 = tensor.insert_slice %421 into %cst_24[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_209 = tensor.insert_slice %437 into %inserted_slice_208[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_210 = tensor.insert_slice %453 into %inserted_slice_209[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_211 = tensor.insert_slice %469 into %inserted_slice_210[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_212 = tensor.insert_slice %485 into %inserted_slice_211[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_213 = tensor.insert_slice %501 into %inserted_slice_212[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_214 = tensor.insert_slice %517 into %inserted_slice_213[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_215 = tensor.insert_slice %533 into %inserted_slice_214[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_216 = tensor.insert_slice %549 into %inserted_slice_215[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %550 = "tosa.sub"(%inserted_slice_216, %36) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global824 = %413 : tensor<1x512x1x1xf32>
    %551 = "tosa.mul"(%550, %413) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %552 = "tosa.mul"(%551, %36) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %553 = "tosa.add"(%552, %36) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global827 = %553 : tensor<1x512x14x14xf32>
    %554 = "tosa.clamp"(%553) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global828 = %554 : tensor<1x512x14x14xf32>
    %555 = "tosa.transpose"(%554, %1) : (tensor<1x512x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x512xf32>
    %556 = "tosa.conv2d"(%555, %39, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %557 = "tosa.transpose"(%556, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %558 = "tosa.sub"(%557, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global834 = %98 : tensor<1x128x1x1xf32>
    %559 = "tosa.mul"(%558, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %560 = "tosa.mul"(%559, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %561 = "tosa.add"(%560, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global837 = %561 : tensor<1x128x14x14xf32>
    %562 = "tosa.clamp"(%561) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global838 = %562 : tensor<1x128x14x14xf32>
    %563 = "tosa.transpose"(%562, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %564 = "tosa.conv2d"(%563, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %565 = "tosa.transpose"(%564, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_217 = tensor.insert_slice %421 into %cst_25[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_218 = tensor.insert_slice %437 into %inserted_slice_217[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_219 = tensor.insert_slice %453 into %inserted_slice_218[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_220 = tensor.insert_slice %469 into %inserted_slice_219[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_221 = tensor.insert_slice %485 into %inserted_slice_220[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_222 = tensor.insert_slice %501 into %inserted_slice_221[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_223 = tensor.insert_slice %517 into %inserted_slice_222[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_224 = tensor.insert_slice %533 into %inserted_slice_223[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_225 = tensor.insert_slice %549 into %inserted_slice_224[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_226 = tensor.insert_slice %565 into %inserted_slice_225[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %566 = "tosa.sub"(%inserted_slice_226, %40) : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %567 = "tosa.add"(%40, %5) : (tensor<1x544x1x1xf32>, tensor<f32>) -> tensor<1x544x1x1xf32>
    %568 = "tosa.rsqrt"(%567) : (tensor<1x544x1x1xf32>) -> tensor<1x544x1x1xf32>
    ml_program.global_store @global855 = %568 : tensor<1x544x1x1xf32>
    %569 = "tosa.mul"(%566, %568) {shift = 0 : i8} : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %570 = "tosa.mul"(%569, %40) {shift = 0 : i8} : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %571 = "tosa.add"(%570, %40) : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    ml_program.global_store @global858 = %571 : tensor<1x544x14x14xf32>
    %572 = "tosa.clamp"(%571) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xf32>
    ml_program.global_store @global859 = %572 : tensor<1x544x14x14xf32>
    %573 = "tosa.transpose"(%572, %1) : (tensor<1x544x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x544xf32>
    %574 = "tosa.conv2d"(%573, %41, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x544xf32>, tensor<128x1x1x544xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %575 = "tosa.transpose"(%574, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %576 = "tosa.sub"(%575, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global865 = %98 : tensor<1x128x1x1xf32>
    %577 = "tosa.mul"(%576, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %578 = "tosa.mul"(%577, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %579 = "tosa.add"(%578, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global868 = %579 : tensor<1x128x14x14xf32>
    %580 = "tosa.clamp"(%579) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global869 = %580 : tensor<1x128x14x14xf32>
    %581 = "tosa.transpose"(%580, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %582 = "tosa.conv2d"(%581, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %583 = "tosa.transpose"(%582, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_227 = tensor.insert_slice %421 into %cst_26[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_228 = tensor.insert_slice %437 into %inserted_slice_227[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_229 = tensor.insert_slice %453 into %inserted_slice_228[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_230 = tensor.insert_slice %469 into %inserted_slice_229[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_231 = tensor.insert_slice %485 into %inserted_slice_230[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_232 = tensor.insert_slice %501 into %inserted_slice_231[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_233 = tensor.insert_slice %517 into %inserted_slice_232[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_234 = tensor.insert_slice %533 into %inserted_slice_233[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_235 = tensor.insert_slice %549 into %inserted_slice_234[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_236 = tensor.insert_slice %565 into %inserted_slice_235[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_237 = tensor.insert_slice %583 into %inserted_slice_236[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %584 = "tosa.sub"(%inserted_slice_237, %42) : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %585 = "tosa.add"(%42, %5) : (tensor<1x576x1x1xf32>, tensor<f32>) -> tensor<1x576x1x1xf32>
    %586 = "tosa.rsqrt"(%585) : (tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    ml_program.global_store @global887 = %586 : tensor<1x576x1x1xf32>
    %587 = "tosa.mul"(%584, %586) {shift = 0 : i8} : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %588 = "tosa.mul"(%587, %42) {shift = 0 : i8} : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %589 = "tosa.add"(%588, %42) : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    ml_program.global_store @global890 = %589 : tensor<1x576x14x14xf32>
    %590 = "tosa.clamp"(%589) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xf32>
    ml_program.global_store @global891 = %590 : tensor<1x576x14x14xf32>
    %591 = "tosa.transpose"(%590, %1) : (tensor<1x576x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x576xf32>
    %592 = "tosa.conv2d"(%591, %43, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x576xf32>, tensor<128x1x1x576xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %593 = "tosa.transpose"(%592, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %594 = "tosa.sub"(%593, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global897 = %98 : tensor<1x128x1x1xf32>
    %595 = "tosa.mul"(%594, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %596 = "tosa.mul"(%595, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %597 = "tosa.add"(%596, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global900 = %597 : tensor<1x128x14x14xf32>
    %598 = "tosa.clamp"(%597) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global901 = %598 : tensor<1x128x14x14xf32>
    %599 = "tosa.transpose"(%598, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %600 = "tosa.conv2d"(%599, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %601 = "tosa.transpose"(%600, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_238 = tensor.insert_slice %421 into %cst_27[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_239 = tensor.insert_slice %437 into %inserted_slice_238[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_240 = tensor.insert_slice %453 into %inserted_slice_239[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_241 = tensor.insert_slice %469 into %inserted_slice_240[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_242 = tensor.insert_slice %485 into %inserted_slice_241[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_243 = tensor.insert_slice %501 into %inserted_slice_242[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_244 = tensor.insert_slice %517 into %inserted_slice_243[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_245 = tensor.insert_slice %533 into %inserted_slice_244[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_246 = tensor.insert_slice %549 into %inserted_slice_245[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_247 = tensor.insert_slice %565 into %inserted_slice_246[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_248 = tensor.insert_slice %583 into %inserted_slice_247[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_249 = tensor.insert_slice %601 into %inserted_slice_248[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %602 = "tosa.sub"(%inserted_slice_249, %44) : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %603 = "tosa.add"(%44, %5) : (tensor<1x608x1x1xf32>, tensor<f32>) -> tensor<1x608x1x1xf32>
    %604 = "tosa.rsqrt"(%603) : (tensor<1x608x1x1xf32>) -> tensor<1x608x1x1xf32>
    ml_program.global_store @global920 = %604 : tensor<1x608x1x1xf32>
    %605 = "tosa.mul"(%602, %604) {shift = 0 : i8} : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %606 = "tosa.mul"(%605, %44) {shift = 0 : i8} : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %607 = "tosa.add"(%606, %44) : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    ml_program.global_store @global923 = %607 : tensor<1x608x14x14xf32>
    %608 = "tosa.clamp"(%607) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xf32>
    ml_program.global_store @global924 = %608 : tensor<1x608x14x14xf32>
    %609 = "tosa.transpose"(%608, %1) : (tensor<1x608x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x608xf32>
    %610 = "tosa.conv2d"(%609, %45, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x608xf32>, tensor<128x1x1x608xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %611 = "tosa.transpose"(%610, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %612 = "tosa.sub"(%611, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global930 = %98 : tensor<1x128x1x1xf32>
    %613 = "tosa.mul"(%612, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %614 = "tosa.mul"(%613, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %615 = "tosa.add"(%614, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global933 = %615 : tensor<1x128x14x14xf32>
    %616 = "tosa.clamp"(%615) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global934 = %616 : tensor<1x128x14x14xf32>
    %617 = "tosa.transpose"(%616, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %618 = "tosa.conv2d"(%617, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %619 = "tosa.transpose"(%618, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_250 = tensor.insert_slice %421 into %cst_28[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_251 = tensor.insert_slice %437 into %inserted_slice_250[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_252 = tensor.insert_slice %453 into %inserted_slice_251[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_253 = tensor.insert_slice %469 into %inserted_slice_252[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_254 = tensor.insert_slice %485 into %inserted_slice_253[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_255 = tensor.insert_slice %501 into %inserted_slice_254[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_256 = tensor.insert_slice %517 into %inserted_slice_255[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_257 = tensor.insert_slice %533 into %inserted_slice_256[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_258 = tensor.insert_slice %549 into %inserted_slice_257[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_259 = tensor.insert_slice %565 into %inserted_slice_258[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_260 = tensor.insert_slice %583 into %inserted_slice_259[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_261 = tensor.insert_slice %601 into %inserted_slice_260[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_262 = tensor.insert_slice %619 into %inserted_slice_261[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %620 = "tosa.sub"(%inserted_slice_262, %46) : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %621 = "tosa.add"(%46, %5) : (tensor<1x640x1x1xf32>, tensor<f32>) -> tensor<1x640x1x1xf32>
    %622 = "tosa.rsqrt"(%621) : (tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    ml_program.global_store @global954 = %622 : tensor<1x640x1x1xf32>
    %623 = "tosa.mul"(%620, %622) {shift = 0 : i8} : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %624 = "tosa.mul"(%623, %46) {shift = 0 : i8} : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %625 = "tosa.add"(%624, %46) : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    ml_program.global_store @global957 = %625 : tensor<1x640x14x14xf32>
    %626 = "tosa.clamp"(%625) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xf32>
    ml_program.global_store @global958 = %626 : tensor<1x640x14x14xf32>
    %627 = "tosa.transpose"(%626, %1) : (tensor<1x640x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x640xf32>
    %628 = "tosa.conv2d"(%627, %47, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x640xf32>, tensor<128x1x1x640xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %629 = "tosa.transpose"(%628, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %630 = "tosa.sub"(%629, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global964 = %98 : tensor<1x128x1x1xf32>
    %631 = "tosa.mul"(%630, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %632 = "tosa.mul"(%631, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %633 = "tosa.add"(%632, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global967 = %633 : tensor<1x128x14x14xf32>
    %634 = "tosa.clamp"(%633) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global968 = %634 : tensor<1x128x14x14xf32>
    %635 = "tosa.transpose"(%634, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %636 = "tosa.conv2d"(%635, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %637 = "tosa.transpose"(%636, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_263 = tensor.insert_slice %421 into %cst_29[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_264 = tensor.insert_slice %437 into %inserted_slice_263[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_265 = tensor.insert_slice %453 into %inserted_slice_264[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_266 = tensor.insert_slice %469 into %inserted_slice_265[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_267 = tensor.insert_slice %485 into %inserted_slice_266[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_268 = tensor.insert_slice %501 into %inserted_slice_267[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_269 = tensor.insert_slice %517 into %inserted_slice_268[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_270 = tensor.insert_slice %533 into %inserted_slice_269[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_271 = tensor.insert_slice %549 into %inserted_slice_270[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_272 = tensor.insert_slice %565 into %inserted_slice_271[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_273 = tensor.insert_slice %583 into %inserted_slice_272[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_274 = tensor.insert_slice %601 into %inserted_slice_273[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_275 = tensor.insert_slice %619 into %inserted_slice_274[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_276 = tensor.insert_slice %637 into %inserted_slice_275[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %638 = "tosa.sub"(%inserted_slice_276, %48) : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %639 = "tosa.add"(%48, %5) : (tensor<1x672x1x1xf32>, tensor<f32>) -> tensor<1x672x1x1xf32>
    %640 = "tosa.rsqrt"(%639) : (tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    ml_program.global_store @global989 = %640 : tensor<1x672x1x1xf32>
    %641 = "tosa.mul"(%638, %640) {shift = 0 : i8} : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %642 = "tosa.mul"(%641, %48) {shift = 0 : i8} : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %643 = "tosa.add"(%642, %48) : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    ml_program.global_store @global992 = %643 : tensor<1x672x14x14xf32>
    %644 = "tosa.clamp"(%643) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    ml_program.global_store @global993 = %644 : tensor<1x672x14x14xf32>
    %645 = "tosa.transpose"(%644, %1) : (tensor<1x672x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x672xf32>
    %646 = "tosa.conv2d"(%645, %49, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x672xf32>, tensor<128x1x1x672xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %647 = "tosa.transpose"(%646, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %648 = "tosa.sub"(%647, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global999 = %98 : tensor<1x128x1x1xf32>
    %649 = "tosa.mul"(%648, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %650 = "tosa.mul"(%649, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %651 = "tosa.add"(%650, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1002 = %651 : tensor<1x128x14x14xf32>
    %652 = "tosa.clamp"(%651) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1003 = %652 : tensor<1x128x14x14xf32>
    %653 = "tosa.transpose"(%652, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %654 = "tosa.conv2d"(%653, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %655 = "tosa.transpose"(%654, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_277 = tensor.insert_slice %421 into %cst_30[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_278 = tensor.insert_slice %437 into %inserted_slice_277[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_279 = tensor.insert_slice %453 into %inserted_slice_278[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_280 = tensor.insert_slice %469 into %inserted_slice_279[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_281 = tensor.insert_slice %485 into %inserted_slice_280[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_282 = tensor.insert_slice %501 into %inserted_slice_281[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_283 = tensor.insert_slice %517 into %inserted_slice_282[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_284 = tensor.insert_slice %533 into %inserted_slice_283[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_285 = tensor.insert_slice %549 into %inserted_slice_284[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_286 = tensor.insert_slice %565 into %inserted_slice_285[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_287 = tensor.insert_slice %583 into %inserted_slice_286[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_288 = tensor.insert_slice %601 into %inserted_slice_287[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_289 = tensor.insert_slice %619 into %inserted_slice_288[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_290 = tensor.insert_slice %637 into %inserted_slice_289[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_291 = tensor.insert_slice %655 into %inserted_slice_290[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %656 = "tosa.sub"(%inserted_slice_291, %50) : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %657 = "tosa.add"(%50, %5) : (tensor<1x704x1x1xf32>, tensor<f32>) -> tensor<1x704x1x1xf32>
    %658 = "tosa.rsqrt"(%657) : (tensor<1x704x1x1xf32>) -> tensor<1x704x1x1xf32>
    ml_program.global_store @global1025 = %658 : tensor<1x704x1x1xf32>
    %659 = "tosa.mul"(%656, %658) {shift = 0 : i8} : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %660 = "tosa.mul"(%659, %50) {shift = 0 : i8} : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %661 = "tosa.add"(%660, %50) : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    ml_program.global_store @global1028 = %661 : tensor<1x704x14x14xf32>
    %662 = "tosa.clamp"(%661) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xf32>
    ml_program.global_store @global1029 = %662 : tensor<1x704x14x14xf32>
    %663 = "tosa.transpose"(%662, %1) : (tensor<1x704x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x704xf32>
    %664 = "tosa.conv2d"(%663, %51, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x704xf32>, tensor<128x1x1x704xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %665 = "tosa.transpose"(%664, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %666 = "tosa.sub"(%665, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1035 = %98 : tensor<1x128x1x1xf32>
    %667 = "tosa.mul"(%666, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %668 = "tosa.mul"(%667, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %669 = "tosa.add"(%668, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1038 = %669 : tensor<1x128x14x14xf32>
    %670 = "tosa.clamp"(%669) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1039 = %670 : tensor<1x128x14x14xf32>
    %671 = "tosa.transpose"(%670, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %672 = "tosa.conv2d"(%671, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %673 = "tosa.transpose"(%672, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_292 = tensor.insert_slice %421 into %cst_31[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_293 = tensor.insert_slice %437 into %inserted_slice_292[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_294 = tensor.insert_slice %453 into %inserted_slice_293[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_295 = tensor.insert_slice %469 into %inserted_slice_294[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_296 = tensor.insert_slice %485 into %inserted_slice_295[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_297 = tensor.insert_slice %501 into %inserted_slice_296[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_298 = tensor.insert_slice %517 into %inserted_slice_297[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_299 = tensor.insert_slice %533 into %inserted_slice_298[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_300 = tensor.insert_slice %549 into %inserted_slice_299[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_301 = tensor.insert_slice %565 into %inserted_slice_300[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_302 = tensor.insert_slice %583 into %inserted_slice_301[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_303 = tensor.insert_slice %601 into %inserted_slice_302[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_304 = tensor.insert_slice %619 into %inserted_slice_303[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_305 = tensor.insert_slice %637 into %inserted_slice_304[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_306 = tensor.insert_slice %655 into %inserted_slice_305[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_307 = tensor.insert_slice %673 into %inserted_slice_306[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %674 = "tosa.sub"(%inserted_slice_307, %52) : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %675 = "tosa.add"(%52, %5) : (tensor<1x736x1x1xf32>, tensor<f32>) -> tensor<1x736x1x1xf32>
    %676 = "tosa.rsqrt"(%675) : (tensor<1x736x1x1xf32>) -> tensor<1x736x1x1xf32>
    ml_program.global_store @global1062 = %676 : tensor<1x736x1x1xf32>
    %677 = "tosa.mul"(%674, %676) {shift = 0 : i8} : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %678 = "tosa.mul"(%677, %52) {shift = 0 : i8} : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %679 = "tosa.add"(%678, %52) : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    ml_program.global_store @global1065 = %679 : tensor<1x736x14x14xf32>
    %680 = "tosa.clamp"(%679) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xf32>
    ml_program.global_store @global1066 = %680 : tensor<1x736x14x14xf32>
    %681 = "tosa.transpose"(%680, %1) : (tensor<1x736x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x736xf32>
    %682 = "tosa.conv2d"(%681, %53, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x736xf32>, tensor<128x1x1x736xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %683 = "tosa.transpose"(%682, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %684 = "tosa.sub"(%683, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1072 = %98 : tensor<1x128x1x1xf32>
    %685 = "tosa.mul"(%684, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %686 = "tosa.mul"(%685, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %687 = "tosa.add"(%686, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1075 = %687 : tensor<1x128x14x14xf32>
    %688 = "tosa.clamp"(%687) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1076 = %688 : tensor<1x128x14x14xf32>
    %689 = "tosa.transpose"(%688, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %690 = "tosa.conv2d"(%689, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %691 = "tosa.transpose"(%690, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_308 = tensor.insert_slice %421 into %cst_32[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_309 = tensor.insert_slice %437 into %inserted_slice_308[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_310 = tensor.insert_slice %453 into %inserted_slice_309[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_311 = tensor.insert_slice %469 into %inserted_slice_310[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_312 = tensor.insert_slice %485 into %inserted_slice_311[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_313 = tensor.insert_slice %501 into %inserted_slice_312[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_314 = tensor.insert_slice %517 into %inserted_slice_313[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_315 = tensor.insert_slice %533 into %inserted_slice_314[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_316 = tensor.insert_slice %549 into %inserted_slice_315[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_317 = tensor.insert_slice %565 into %inserted_slice_316[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_318 = tensor.insert_slice %583 into %inserted_slice_317[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_319 = tensor.insert_slice %601 into %inserted_slice_318[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_320 = tensor.insert_slice %619 into %inserted_slice_319[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_321 = tensor.insert_slice %637 into %inserted_slice_320[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_322 = tensor.insert_slice %655 into %inserted_slice_321[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_323 = tensor.insert_slice %673 into %inserted_slice_322[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_324 = tensor.insert_slice %691 into %inserted_slice_323[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %692 = "tosa.sub"(%inserted_slice_324, %54) : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %693 = "tosa.add"(%54, %5) : (tensor<1x768x1x1xf32>, tensor<f32>) -> tensor<1x768x1x1xf32>
    %694 = "tosa.rsqrt"(%693) : (tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    ml_program.global_store @global1100 = %694 : tensor<1x768x1x1xf32>
    %695 = "tosa.mul"(%692, %694) {shift = 0 : i8} : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %696 = "tosa.mul"(%695, %54) {shift = 0 : i8} : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %697 = "tosa.add"(%696, %54) : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    ml_program.global_store @global1103 = %697 : tensor<1x768x14x14xf32>
    %698 = "tosa.clamp"(%697) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    ml_program.global_store @global1104 = %698 : tensor<1x768x14x14xf32>
    %699 = "tosa.transpose"(%698, %1) : (tensor<1x768x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x768xf32>
    %700 = "tosa.conv2d"(%699, %55, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %701 = "tosa.transpose"(%700, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %702 = "tosa.sub"(%701, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1110 = %98 : tensor<1x128x1x1xf32>
    %703 = "tosa.mul"(%702, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %704 = "tosa.mul"(%703, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %705 = "tosa.add"(%704, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1113 = %705 : tensor<1x128x14x14xf32>
    %706 = "tosa.clamp"(%705) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1114 = %706 : tensor<1x128x14x14xf32>
    %707 = "tosa.transpose"(%706, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %708 = "tosa.conv2d"(%707, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %709 = "tosa.transpose"(%708, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_325 = tensor.insert_slice %421 into %cst_33[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_326 = tensor.insert_slice %437 into %inserted_slice_325[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_327 = tensor.insert_slice %453 into %inserted_slice_326[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_328 = tensor.insert_slice %469 into %inserted_slice_327[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_329 = tensor.insert_slice %485 into %inserted_slice_328[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_330 = tensor.insert_slice %501 into %inserted_slice_329[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_331 = tensor.insert_slice %517 into %inserted_slice_330[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_332 = tensor.insert_slice %533 into %inserted_slice_331[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_333 = tensor.insert_slice %549 into %inserted_slice_332[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_334 = tensor.insert_slice %565 into %inserted_slice_333[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_335 = tensor.insert_slice %583 into %inserted_slice_334[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_336 = tensor.insert_slice %601 into %inserted_slice_335[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_337 = tensor.insert_slice %619 into %inserted_slice_336[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_338 = tensor.insert_slice %637 into %inserted_slice_337[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_339 = tensor.insert_slice %655 into %inserted_slice_338[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_340 = tensor.insert_slice %673 into %inserted_slice_339[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_341 = tensor.insert_slice %691 into %inserted_slice_340[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_342 = tensor.insert_slice %709 into %inserted_slice_341[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %710 = "tosa.sub"(%inserted_slice_342, %56) : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %711 = "tosa.add"(%56, %5) : (tensor<1x800x1x1xf32>, tensor<f32>) -> tensor<1x800x1x1xf32>
    %712 = "tosa.rsqrt"(%711) : (tensor<1x800x1x1xf32>) -> tensor<1x800x1x1xf32>
    ml_program.global_store @global1139 = %712 : tensor<1x800x1x1xf32>
    %713 = "tosa.mul"(%710, %712) {shift = 0 : i8} : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %714 = "tosa.mul"(%713, %56) {shift = 0 : i8} : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %715 = "tosa.add"(%714, %56) : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    ml_program.global_store @global1142 = %715 : tensor<1x800x14x14xf32>
    %716 = "tosa.clamp"(%715) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xf32>
    ml_program.global_store @global1143 = %716 : tensor<1x800x14x14xf32>
    %717 = "tosa.transpose"(%716, %1) : (tensor<1x800x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x800xf32>
    %718 = "tosa.conv2d"(%717, %57, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x800xf32>, tensor<128x1x1x800xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %719 = "tosa.transpose"(%718, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %720 = "tosa.sub"(%719, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1149 = %98 : tensor<1x128x1x1xf32>
    %721 = "tosa.mul"(%720, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %722 = "tosa.mul"(%721, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %723 = "tosa.add"(%722, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1152 = %723 : tensor<1x128x14x14xf32>
    %724 = "tosa.clamp"(%723) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1153 = %724 : tensor<1x128x14x14xf32>
    %725 = "tosa.transpose"(%724, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %726 = "tosa.conv2d"(%725, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %727 = "tosa.transpose"(%726, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_343 = tensor.insert_slice %421 into %cst_34[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_344 = tensor.insert_slice %437 into %inserted_slice_343[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_345 = tensor.insert_slice %453 into %inserted_slice_344[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_346 = tensor.insert_slice %469 into %inserted_slice_345[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_347 = tensor.insert_slice %485 into %inserted_slice_346[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_348 = tensor.insert_slice %501 into %inserted_slice_347[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_349 = tensor.insert_slice %517 into %inserted_slice_348[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_350 = tensor.insert_slice %533 into %inserted_slice_349[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_351 = tensor.insert_slice %549 into %inserted_slice_350[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_352 = tensor.insert_slice %565 into %inserted_slice_351[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_353 = tensor.insert_slice %583 into %inserted_slice_352[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_354 = tensor.insert_slice %601 into %inserted_slice_353[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_355 = tensor.insert_slice %619 into %inserted_slice_354[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_356 = tensor.insert_slice %637 into %inserted_slice_355[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_357 = tensor.insert_slice %655 into %inserted_slice_356[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_358 = tensor.insert_slice %673 into %inserted_slice_357[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_359 = tensor.insert_slice %691 into %inserted_slice_358[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_360 = tensor.insert_slice %709 into %inserted_slice_359[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_361 = tensor.insert_slice %727 into %inserted_slice_360[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %728 = "tosa.sub"(%inserted_slice_361, %58) : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %729 = "tosa.add"(%58, %5) : (tensor<1x832x1x1xf32>, tensor<f32>) -> tensor<1x832x1x1xf32>
    %730 = "tosa.rsqrt"(%729) : (tensor<1x832x1x1xf32>) -> tensor<1x832x1x1xf32>
    ml_program.global_store @global1179 = %730 : tensor<1x832x1x1xf32>
    %731 = "tosa.mul"(%728, %730) {shift = 0 : i8} : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %732 = "tosa.mul"(%731, %58) {shift = 0 : i8} : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %733 = "tosa.add"(%732, %58) : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    ml_program.global_store @global1182 = %733 : tensor<1x832x14x14xf32>
    %734 = "tosa.clamp"(%733) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xf32>
    ml_program.global_store @global1183 = %734 : tensor<1x832x14x14xf32>
    %735 = "tosa.transpose"(%734, %1) : (tensor<1x832x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x832xf32>
    %736 = "tosa.conv2d"(%735, %59, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x832xf32>, tensor<128x1x1x832xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %737 = "tosa.transpose"(%736, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %738 = "tosa.sub"(%737, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1189 = %98 : tensor<1x128x1x1xf32>
    %739 = "tosa.mul"(%738, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %740 = "tosa.mul"(%739, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %741 = "tosa.add"(%740, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1192 = %741 : tensor<1x128x14x14xf32>
    %742 = "tosa.clamp"(%741) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1193 = %742 : tensor<1x128x14x14xf32>
    %743 = "tosa.transpose"(%742, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %744 = "tosa.conv2d"(%743, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %745 = "tosa.transpose"(%744, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_362 = tensor.insert_slice %421 into %cst_35[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_363 = tensor.insert_slice %437 into %inserted_slice_362[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_364 = tensor.insert_slice %453 into %inserted_slice_363[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_365 = tensor.insert_slice %469 into %inserted_slice_364[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_366 = tensor.insert_slice %485 into %inserted_slice_365[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_367 = tensor.insert_slice %501 into %inserted_slice_366[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_368 = tensor.insert_slice %517 into %inserted_slice_367[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_369 = tensor.insert_slice %533 into %inserted_slice_368[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_370 = tensor.insert_slice %549 into %inserted_slice_369[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_371 = tensor.insert_slice %565 into %inserted_slice_370[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_372 = tensor.insert_slice %583 into %inserted_slice_371[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_373 = tensor.insert_slice %601 into %inserted_slice_372[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_374 = tensor.insert_slice %619 into %inserted_slice_373[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_375 = tensor.insert_slice %637 into %inserted_slice_374[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_376 = tensor.insert_slice %655 into %inserted_slice_375[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_377 = tensor.insert_slice %673 into %inserted_slice_376[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_378 = tensor.insert_slice %691 into %inserted_slice_377[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_379 = tensor.insert_slice %709 into %inserted_slice_378[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_380 = tensor.insert_slice %727 into %inserted_slice_379[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_381 = tensor.insert_slice %745 into %inserted_slice_380[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %746 = "tosa.sub"(%inserted_slice_381, %60) : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %747 = "tosa.add"(%60, %5) : (tensor<1x864x1x1xf32>, tensor<f32>) -> tensor<1x864x1x1xf32>
    %748 = "tosa.rsqrt"(%747) : (tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    ml_program.global_store @global1220 = %748 : tensor<1x864x1x1xf32>
    %749 = "tosa.mul"(%746, %748) {shift = 0 : i8} : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %750 = "tosa.mul"(%749, %60) {shift = 0 : i8} : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %751 = "tosa.add"(%750, %60) : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    ml_program.global_store @global1223 = %751 : tensor<1x864x14x14xf32>
    %752 = "tosa.clamp"(%751) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xf32>
    ml_program.global_store @global1224 = %752 : tensor<1x864x14x14xf32>
    %753 = "tosa.transpose"(%752, %1) : (tensor<1x864x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x864xf32>
    %754 = "tosa.conv2d"(%753, %61, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x864xf32>, tensor<128x1x1x864xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %755 = "tosa.transpose"(%754, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %756 = "tosa.sub"(%755, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1230 = %98 : tensor<1x128x1x1xf32>
    %757 = "tosa.mul"(%756, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %758 = "tosa.mul"(%757, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %759 = "tosa.add"(%758, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1233 = %759 : tensor<1x128x14x14xf32>
    %760 = "tosa.clamp"(%759) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1234 = %760 : tensor<1x128x14x14xf32>
    %761 = "tosa.transpose"(%760, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %762 = "tosa.conv2d"(%761, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %763 = "tosa.transpose"(%762, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_382 = tensor.insert_slice %421 into %cst_36[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_383 = tensor.insert_slice %437 into %inserted_slice_382[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_384 = tensor.insert_slice %453 into %inserted_slice_383[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_385 = tensor.insert_slice %469 into %inserted_slice_384[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_386 = tensor.insert_slice %485 into %inserted_slice_385[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_387 = tensor.insert_slice %501 into %inserted_slice_386[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_388 = tensor.insert_slice %517 into %inserted_slice_387[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_389 = tensor.insert_slice %533 into %inserted_slice_388[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_390 = tensor.insert_slice %549 into %inserted_slice_389[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_391 = tensor.insert_slice %565 into %inserted_slice_390[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_392 = tensor.insert_slice %583 into %inserted_slice_391[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_393 = tensor.insert_slice %601 into %inserted_slice_392[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_394 = tensor.insert_slice %619 into %inserted_slice_393[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_395 = tensor.insert_slice %637 into %inserted_slice_394[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_396 = tensor.insert_slice %655 into %inserted_slice_395[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_397 = tensor.insert_slice %673 into %inserted_slice_396[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_398 = tensor.insert_slice %691 into %inserted_slice_397[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_399 = tensor.insert_slice %709 into %inserted_slice_398[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_400 = tensor.insert_slice %727 into %inserted_slice_399[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_401 = tensor.insert_slice %745 into %inserted_slice_400[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_402 = tensor.insert_slice %763 into %inserted_slice_401[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %764 = "tosa.sub"(%inserted_slice_402, %62) : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %765 = "tosa.add"(%62, %5) : (tensor<1x896x1x1xf32>, tensor<f32>) -> tensor<1x896x1x1xf32>
    %766 = "tosa.rsqrt"(%765) : (tensor<1x896x1x1xf32>) -> tensor<1x896x1x1xf32>
    ml_program.global_store @global1262 = %766 : tensor<1x896x1x1xf32>
    %767 = "tosa.mul"(%764, %766) {shift = 0 : i8} : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %768 = "tosa.mul"(%767, %62) {shift = 0 : i8} : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %769 = "tosa.add"(%768, %62) : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    ml_program.global_store @global1265 = %769 : tensor<1x896x14x14xf32>
    %770 = "tosa.clamp"(%769) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xf32>
    ml_program.global_store @global1266 = %770 : tensor<1x896x14x14xf32>
    %771 = "tosa.transpose"(%770, %1) : (tensor<1x896x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x896xf32>
    %772 = "tosa.conv2d"(%771, %63, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x896xf32>, tensor<128x1x1x896xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %773 = "tosa.transpose"(%772, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %774 = "tosa.sub"(%773, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1272 = %98 : tensor<1x128x1x1xf32>
    %775 = "tosa.mul"(%774, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %776 = "tosa.mul"(%775, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %777 = "tosa.add"(%776, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1275 = %777 : tensor<1x128x14x14xf32>
    %778 = "tosa.clamp"(%777) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1276 = %778 : tensor<1x128x14x14xf32>
    %779 = "tosa.transpose"(%778, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %780 = "tosa.conv2d"(%779, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %781 = "tosa.transpose"(%780, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_403 = tensor.insert_slice %421 into %cst_37[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_404 = tensor.insert_slice %437 into %inserted_slice_403[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_405 = tensor.insert_slice %453 into %inserted_slice_404[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_406 = tensor.insert_slice %469 into %inserted_slice_405[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_407 = tensor.insert_slice %485 into %inserted_slice_406[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_408 = tensor.insert_slice %501 into %inserted_slice_407[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_409 = tensor.insert_slice %517 into %inserted_slice_408[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_410 = tensor.insert_slice %533 into %inserted_slice_409[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_411 = tensor.insert_slice %549 into %inserted_slice_410[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_412 = tensor.insert_slice %565 into %inserted_slice_411[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_413 = tensor.insert_slice %583 into %inserted_slice_412[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_414 = tensor.insert_slice %601 into %inserted_slice_413[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_415 = tensor.insert_slice %619 into %inserted_slice_414[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_416 = tensor.insert_slice %637 into %inserted_slice_415[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_417 = tensor.insert_slice %655 into %inserted_slice_416[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_418 = tensor.insert_slice %673 into %inserted_slice_417[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_419 = tensor.insert_slice %691 into %inserted_slice_418[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_420 = tensor.insert_slice %709 into %inserted_slice_419[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_421 = tensor.insert_slice %727 into %inserted_slice_420[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_422 = tensor.insert_slice %745 into %inserted_slice_421[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_423 = tensor.insert_slice %763 into %inserted_slice_422[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_424 = tensor.insert_slice %781 into %inserted_slice_423[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %782 = "tosa.sub"(%inserted_slice_424, %64) : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %783 = "tosa.add"(%64, %5) : (tensor<1x928x1x1xf32>, tensor<f32>) -> tensor<1x928x1x1xf32>
    %784 = "tosa.rsqrt"(%783) : (tensor<1x928x1x1xf32>) -> tensor<1x928x1x1xf32>
    ml_program.global_store @global1305 = %784 : tensor<1x928x1x1xf32>
    %785 = "tosa.mul"(%782, %784) {shift = 0 : i8} : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %786 = "tosa.mul"(%785, %64) {shift = 0 : i8} : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %787 = "tosa.add"(%786, %64) : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    ml_program.global_store @global1308 = %787 : tensor<1x928x14x14xf32>
    %788 = "tosa.clamp"(%787) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xf32>
    ml_program.global_store @global1309 = %788 : tensor<1x928x14x14xf32>
    %789 = "tosa.transpose"(%788, %1) : (tensor<1x928x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x928xf32>
    %790 = "tosa.conv2d"(%789, %65, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x928xf32>, tensor<128x1x1x928xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %791 = "tosa.transpose"(%790, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %792 = "tosa.sub"(%791, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1315 = %98 : tensor<1x128x1x1xf32>
    %793 = "tosa.mul"(%792, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %794 = "tosa.mul"(%793, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %795 = "tosa.add"(%794, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1318 = %795 : tensor<1x128x14x14xf32>
    %796 = "tosa.clamp"(%795) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1319 = %796 : tensor<1x128x14x14xf32>
    %797 = "tosa.transpose"(%796, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %798 = "tosa.conv2d"(%797, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %799 = "tosa.transpose"(%798, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_425 = tensor.insert_slice %421 into %cst_38[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_426 = tensor.insert_slice %437 into %inserted_slice_425[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_427 = tensor.insert_slice %453 into %inserted_slice_426[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_428 = tensor.insert_slice %469 into %inserted_slice_427[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_429 = tensor.insert_slice %485 into %inserted_slice_428[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_430 = tensor.insert_slice %501 into %inserted_slice_429[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_431 = tensor.insert_slice %517 into %inserted_slice_430[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_432 = tensor.insert_slice %533 into %inserted_slice_431[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_433 = tensor.insert_slice %549 into %inserted_slice_432[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_434 = tensor.insert_slice %565 into %inserted_slice_433[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_435 = tensor.insert_slice %583 into %inserted_slice_434[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_436 = tensor.insert_slice %601 into %inserted_slice_435[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_437 = tensor.insert_slice %619 into %inserted_slice_436[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_438 = tensor.insert_slice %637 into %inserted_slice_437[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_439 = tensor.insert_slice %655 into %inserted_slice_438[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_440 = tensor.insert_slice %673 into %inserted_slice_439[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_441 = tensor.insert_slice %691 into %inserted_slice_440[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_442 = tensor.insert_slice %709 into %inserted_slice_441[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_443 = tensor.insert_slice %727 into %inserted_slice_442[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_444 = tensor.insert_slice %745 into %inserted_slice_443[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_445 = tensor.insert_slice %763 into %inserted_slice_444[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_446 = tensor.insert_slice %781 into %inserted_slice_445[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_447 = tensor.insert_slice %799 into %inserted_slice_446[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %800 = "tosa.sub"(%inserted_slice_447, %66) : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %801 = "tosa.add"(%66, %5) : (tensor<1x960x1x1xf32>, tensor<f32>) -> tensor<1x960x1x1xf32>
    %802 = "tosa.rsqrt"(%801) : (tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    ml_program.global_store @global1349 = %802 : tensor<1x960x1x1xf32>
    %803 = "tosa.mul"(%800, %802) {shift = 0 : i8} : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %804 = "tosa.mul"(%803, %66) {shift = 0 : i8} : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %805 = "tosa.add"(%804, %66) : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    ml_program.global_store @global1352 = %805 : tensor<1x960x14x14xf32>
    %806 = "tosa.clamp"(%805) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    ml_program.global_store @global1353 = %806 : tensor<1x960x14x14xf32>
    %807 = "tosa.transpose"(%806, %1) : (tensor<1x960x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x960xf32>
    %808 = "tosa.conv2d"(%807, %67, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x960xf32>, tensor<128x1x1x960xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %809 = "tosa.transpose"(%808, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %810 = "tosa.sub"(%809, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1359 = %98 : tensor<1x128x1x1xf32>
    %811 = "tosa.mul"(%810, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %812 = "tosa.mul"(%811, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %813 = "tosa.add"(%812, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1362 = %813 : tensor<1x128x14x14xf32>
    %814 = "tosa.clamp"(%813) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1363 = %814 : tensor<1x128x14x14xf32>
    %815 = "tosa.transpose"(%814, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %816 = "tosa.conv2d"(%815, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %817 = "tosa.transpose"(%816, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_448 = tensor.insert_slice %421 into %cst_39[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_449 = tensor.insert_slice %437 into %inserted_slice_448[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_450 = tensor.insert_slice %453 into %inserted_slice_449[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_451 = tensor.insert_slice %469 into %inserted_slice_450[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_452 = tensor.insert_slice %485 into %inserted_slice_451[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_453 = tensor.insert_slice %501 into %inserted_slice_452[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_454 = tensor.insert_slice %517 into %inserted_slice_453[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_455 = tensor.insert_slice %533 into %inserted_slice_454[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_456 = tensor.insert_slice %549 into %inserted_slice_455[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_457 = tensor.insert_slice %565 into %inserted_slice_456[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_458 = tensor.insert_slice %583 into %inserted_slice_457[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_459 = tensor.insert_slice %601 into %inserted_slice_458[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_460 = tensor.insert_slice %619 into %inserted_slice_459[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_461 = tensor.insert_slice %637 into %inserted_slice_460[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_462 = tensor.insert_slice %655 into %inserted_slice_461[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_463 = tensor.insert_slice %673 into %inserted_slice_462[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_464 = tensor.insert_slice %691 into %inserted_slice_463[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_465 = tensor.insert_slice %709 into %inserted_slice_464[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_466 = tensor.insert_slice %727 into %inserted_slice_465[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_467 = tensor.insert_slice %745 into %inserted_slice_466[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_468 = tensor.insert_slice %763 into %inserted_slice_467[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_469 = tensor.insert_slice %781 into %inserted_slice_468[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_470 = tensor.insert_slice %799 into %inserted_slice_469[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_471 = tensor.insert_slice %817 into %inserted_slice_470[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %818 = "tosa.sub"(%inserted_slice_471, %68) : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %819 = "tosa.add"(%68, %5) : (tensor<1x992x1x1xf32>, tensor<f32>) -> tensor<1x992x1x1xf32>
    %820 = "tosa.rsqrt"(%819) : (tensor<1x992x1x1xf32>) -> tensor<1x992x1x1xf32>
    ml_program.global_store @global1394 = %820 : tensor<1x992x1x1xf32>
    %821 = "tosa.mul"(%818, %820) {shift = 0 : i8} : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %822 = "tosa.mul"(%821, %68) {shift = 0 : i8} : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %823 = "tosa.add"(%822, %68) : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    ml_program.global_store @global1397 = %823 : tensor<1x992x14x14xf32>
    %824 = "tosa.clamp"(%823) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xf32>
    ml_program.global_store @global1398 = %824 : tensor<1x992x14x14xf32>
    %825 = "tosa.transpose"(%824, %1) : (tensor<1x992x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x992xf32>
    %826 = "tosa.conv2d"(%825, %69, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x992xf32>, tensor<128x1x1x992xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %827 = "tosa.transpose"(%826, %3) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %828 = "tosa.sub"(%827, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1404 = %98 : tensor<1x128x1x1xf32>
    %829 = "tosa.mul"(%828, %98) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %830 = "tosa.mul"(%829, %8) {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %831 = "tosa.add"(%830, %8) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1407 = %831 : tensor<1x128x14x14xf32>
    %832 = "tosa.clamp"(%831) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    ml_program.global_store @global1408 = %832 : tensor<1x128x14x14xf32>
    %833 = "tosa.transpose"(%832, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %834 = "tosa.conv2d"(%833, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %835 = "tosa.transpose"(%834, %3) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_472 = tensor.insert_slice %421 into %cst_40[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_473 = tensor.insert_slice %437 into %inserted_slice_472[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_474 = tensor.insert_slice %453 into %inserted_slice_473[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_475 = tensor.insert_slice %469 into %inserted_slice_474[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_476 = tensor.insert_slice %485 into %inserted_slice_475[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_477 = tensor.insert_slice %501 into %inserted_slice_476[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_478 = tensor.insert_slice %517 into %inserted_slice_477[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_479 = tensor.insert_slice %533 into %inserted_slice_478[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_480 = tensor.insert_slice %549 into %inserted_slice_479[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_481 = tensor.insert_slice %565 into %inserted_slice_480[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_482 = tensor.insert_slice %583 into %inserted_slice_481[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_483 = tensor.insert_slice %601 into %inserted_slice_482[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_484 = tensor.insert_slice %619 into %inserted_slice_483[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_485 = tensor.insert_slice %637 into %inserted_slice_484[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_486 = tensor.insert_slice %655 into %inserted_slice_485[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_487 = tensor.insert_slice %673 into %inserted_slice_486[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_488 = tensor.insert_slice %691 into %inserted_slice_487[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_489 = tensor.insert_slice %709 into %inserted_slice_488[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_490 = tensor.insert_slice %727 into %inserted_slice_489[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_491 = tensor.insert_slice %745 into %inserted_slice_490[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_492 = tensor.insert_slice %763 into %inserted_slice_491[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_493 = tensor.insert_slice %781 into %inserted_slice_492[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_494 = tensor.insert_slice %799 into %inserted_slice_493[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_495 = tensor.insert_slice %817 into %inserted_slice_494[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_496 = tensor.insert_slice %835 into %inserted_slice_495[0, 992, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %836 = "tosa.sub"(%inserted_slice_496, %70) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %837 = "tosa.add"(%70, %5) : (tensor<1x1024x1x1xf32>, tensor<f32>) -> tensor<1x1024x1x1xf32>
    %838 = "tosa.rsqrt"(%837) : (tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    ml_program.global_store @global1440 = %838 : tensor<1x1024x1x1xf32>
    %839 = "tosa.mul"(%836, %838) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %840 = "tosa.mul"(%839, %70) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %841 = "tosa.add"(%840, %70) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1443 = %841 : tensor<1x1024x14x14xf32>
    %842 = "tosa.clamp"(%841) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1444 = %842 : tensor<1x1024x14x14xf32>
    %843 = "tosa.transpose"(%842, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x1024xf32>
    %844 = "tosa.conv2d"(%843, %71, %72) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    ml_program.global_store @global1448 = %844 : tensor<1x14x14x512xf32>
    %845 = "tosa.avg_pool2d"(%844) {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    %846 = "tosa.transpose"(%845, %3) : (tensor<1x7x7x512xf32>, tensor<4xi64>) -> tensor<1x512x7x7xf32>
    %847 = "tosa.sub"(%846, %36) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1453 = %413 : tensor<1x512x1x1xf32>
    %848 = "tosa.mul"(%847, %413) {shift = 0 : i8} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %849 = "tosa.mul"(%848, %36) {shift = 0 : i8} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %850 = "tosa.add"(%849, %36) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1456 = %850 : tensor<1x512x7x7xf32>
    %851 = "tosa.clamp"(%850) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1457 = %851 : tensor<1x512x7x7xf32>
    %852 = "tosa.transpose"(%851, %1) : (tensor<1x512x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x512xf32>
    %853 = "tosa.conv2d"(%852, %39, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %854 = "tosa.transpose"(%853, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %855 = "tosa.sub"(%854, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1463 = %98 : tensor<1x128x1x1xf32>
    %856 = "tosa.mul"(%855, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %857 = "tosa.mul"(%856, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %858 = "tosa.add"(%857, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1466 = %858 : tensor<1x128x7x7xf32>
    %859 = "tosa.clamp"(%858) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1467 = %859 : tensor<1x128x7x7xf32>
    %860 = "tosa.transpose"(%859, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %861 = "tosa.conv2d"(%860, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %862 = "tosa.transpose"(%861, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_497 = tensor.insert_slice %846 into %cst_41[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x544x7x7xf32>
    %inserted_slice_498 = tensor.insert_slice %862 into %inserted_slice_497[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x544x7x7xf32>
    %863 = "tosa.sub"(%inserted_slice_498, %40) : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    ml_program.global_store @global1476 = %568 : tensor<1x544x1x1xf32>
    %864 = "tosa.mul"(%863, %568) {shift = 0 : i8} : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %865 = "tosa.mul"(%864, %40) {shift = 0 : i8} : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %866 = "tosa.add"(%865, %40) : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    ml_program.global_store @global1479 = %866 : tensor<1x544x7x7xf32>
    %867 = "tosa.clamp"(%866) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xf32>
    ml_program.global_store @global1480 = %867 : tensor<1x544x7x7xf32>
    %868 = "tosa.transpose"(%867, %1) : (tensor<1x544x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x544xf32>
    %869 = "tosa.conv2d"(%868, %41, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x544xf32>, tensor<128x1x1x544xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %870 = "tosa.transpose"(%869, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %871 = "tosa.sub"(%870, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1486 = %98 : tensor<1x128x1x1xf32>
    %872 = "tosa.mul"(%871, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %873 = "tosa.mul"(%872, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %874 = "tosa.add"(%873, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1489 = %874 : tensor<1x128x7x7xf32>
    %875 = "tosa.clamp"(%874) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1490 = %875 : tensor<1x128x7x7xf32>
    %876 = "tosa.transpose"(%875, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %877 = "tosa.conv2d"(%876, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %878 = "tosa.transpose"(%877, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_499 = tensor.insert_slice %846 into %cst_42[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x576x7x7xf32>
    %inserted_slice_500 = tensor.insert_slice %862 into %inserted_slice_499[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x576x7x7xf32>
    %inserted_slice_501 = tensor.insert_slice %878 into %inserted_slice_500[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x576x7x7xf32>
    %879 = "tosa.sub"(%inserted_slice_501, %42) : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    ml_program.global_store @global1500 = %586 : tensor<1x576x1x1xf32>
    %880 = "tosa.mul"(%879, %586) {shift = 0 : i8} : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %881 = "tosa.mul"(%880, %42) {shift = 0 : i8} : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %882 = "tosa.add"(%881, %42) : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    ml_program.global_store @global1503 = %882 : tensor<1x576x7x7xf32>
    %883 = "tosa.clamp"(%882) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xf32>
    ml_program.global_store @global1504 = %883 : tensor<1x576x7x7xf32>
    %884 = "tosa.transpose"(%883, %1) : (tensor<1x576x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x576xf32>
    %885 = "tosa.conv2d"(%884, %43, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x576xf32>, tensor<128x1x1x576xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %886 = "tosa.transpose"(%885, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %887 = "tosa.sub"(%886, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1510 = %98 : tensor<1x128x1x1xf32>
    %888 = "tosa.mul"(%887, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %889 = "tosa.mul"(%888, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %890 = "tosa.add"(%889, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1513 = %890 : tensor<1x128x7x7xf32>
    %891 = "tosa.clamp"(%890) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1514 = %891 : tensor<1x128x7x7xf32>
    %892 = "tosa.transpose"(%891, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %893 = "tosa.conv2d"(%892, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %894 = "tosa.transpose"(%893, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_502 = tensor.insert_slice %846 into %cst_43[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_503 = tensor.insert_slice %862 into %inserted_slice_502[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_504 = tensor.insert_slice %878 into %inserted_slice_503[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_505 = tensor.insert_slice %894 into %inserted_slice_504[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %895 = "tosa.sub"(%inserted_slice_505, %44) : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    ml_program.global_store @global1525 = %604 : tensor<1x608x1x1xf32>
    %896 = "tosa.mul"(%895, %604) {shift = 0 : i8} : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %897 = "tosa.mul"(%896, %44) {shift = 0 : i8} : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %898 = "tosa.add"(%897, %44) : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    ml_program.global_store @global1528 = %898 : tensor<1x608x7x7xf32>
    %899 = "tosa.clamp"(%898) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xf32>
    ml_program.global_store @global1529 = %899 : tensor<1x608x7x7xf32>
    %900 = "tosa.transpose"(%899, %1) : (tensor<1x608x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x608xf32>
    %901 = "tosa.conv2d"(%900, %45, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x608xf32>, tensor<128x1x1x608xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %902 = "tosa.transpose"(%901, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %903 = "tosa.sub"(%902, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1535 = %98 : tensor<1x128x1x1xf32>
    %904 = "tosa.mul"(%903, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %905 = "tosa.mul"(%904, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %906 = "tosa.add"(%905, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1538 = %906 : tensor<1x128x7x7xf32>
    %907 = "tosa.clamp"(%906) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1539 = %907 : tensor<1x128x7x7xf32>
    %908 = "tosa.transpose"(%907, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %909 = "tosa.conv2d"(%908, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %910 = "tosa.transpose"(%909, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_506 = tensor.insert_slice %846 into %cst_44[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_507 = tensor.insert_slice %862 into %inserted_slice_506[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_508 = tensor.insert_slice %878 into %inserted_slice_507[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_509 = tensor.insert_slice %894 into %inserted_slice_508[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_510 = tensor.insert_slice %910 into %inserted_slice_509[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %911 = "tosa.sub"(%inserted_slice_510, %46) : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    ml_program.global_store @global1551 = %622 : tensor<1x640x1x1xf32>
    %912 = "tosa.mul"(%911, %622) {shift = 0 : i8} : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %913 = "tosa.mul"(%912, %46) {shift = 0 : i8} : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %914 = "tosa.add"(%913, %46) : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    ml_program.global_store @global1554 = %914 : tensor<1x640x7x7xf32>
    %915 = "tosa.clamp"(%914) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xf32>
    ml_program.global_store @global1555 = %915 : tensor<1x640x7x7xf32>
    %916 = "tosa.transpose"(%915, %1) : (tensor<1x640x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x640xf32>
    %917 = "tosa.conv2d"(%916, %47, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x640xf32>, tensor<128x1x1x640xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %918 = "tosa.transpose"(%917, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %919 = "tosa.sub"(%918, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1561 = %98 : tensor<1x128x1x1xf32>
    %920 = "tosa.mul"(%919, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %921 = "tosa.mul"(%920, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %922 = "tosa.add"(%921, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1564 = %922 : tensor<1x128x7x7xf32>
    %923 = "tosa.clamp"(%922) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1565 = %923 : tensor<1x128x7x7xf32>
    %924 = "tosa.transpose"(%923, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %925 = "tosa.conv2d"(%924, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %926 = "tosa.transpose"(%925, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_511 = tensor.insert_slice %846 into %cst_45[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_512 = tensor.insert_slice %862 into %inserted_slice_511[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_513 = tensor.insert_slice %878 into %inserted_slice_512[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_514 = tensor.insert_slice %894 into %inserted_slice_513[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_515 = tensor.insert_slice %910 into %inserted_slice_514[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_516 = tensor.insert_slice %926 into %inserted_slice_515[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %927 = "tosa.sub"(%inserted_slice_516, %48) : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    ml_program.global_store @global1578 = %640 : tensor<1x672x1x1xf32>
    %928 = "tosa.mul"(%927, %640) {shift = 0 : i8} : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %929 = "tosa.mul"(%928, %48) {shift = 0 : i8} : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %930 = "tosa.add"(%929, %48) : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    ml_program.global_store @global1581 = %930 : tensor<1x672x7x7xf32>
    %931 = "tosa.clamp"(%930) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    ml_program.global_store @global1582 = %931 : tensor<1x672x7x7xf32>
    %932 = "tosa.transpose"(%931, %1) : (tensor<1x672x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x672xf32>
    %933 = "tosa.conv2d"(%932, %49, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x672xf32>, tensor<128x1x1x672xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %934 = "tosa.transpose"(%933, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %935 = "tosa.sub"(%934, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1588 = %98 : tensor<1x128x1x1xf32>
    %936 = "tosa.mul"(%935, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %937 = "tosa.mul"(%936, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %938 = "tosa.add"(%937, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1591 = %938 : tensor<1x128x7x7xf32>
    %939 = "tosa.clamp"(%938) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1592 = %939 : tensor<1x128x7x7xf32>
    %940 = "tosa.transpose"(%939, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %941 = "tosa.conv2d"(%940, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %942 = "tosa.transpose"(%941, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_517 = tensor.insert_slice %846 into %cst_46[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_518 = tensor.insert_slice %862 into %inserted_slice_517[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_519 = tensor.insert_slice %878 into %inserted_slice_518[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_520 = tensor.insert_slice %894 into %inserted_slice_519[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_521 = tensor.insert_slice %910 into %inserted_slice_520[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_522 = tensor.insert_slice %926 into %inserted_slice_521[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_523 = tensor.insert_slice %942 into %inserted_slice_522[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %943 = "tosa.sub"(%inserted_slice_523, %50) : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    ml_program.global_store @global1606 = %658 : tensor<1x704x1x1xf32>
    %944 = "tosa.mul"(%943, %658) {shift = 0 : i8} : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %945 = "tosa.mul"(%944, %50) {shift = 0 : i8} : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %946 = "tosa.add"(%945, %50) : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    ml_program.global_store @global1609 = %946 : tensor<1x704x7x7xf32>
    %947 = "tosa.clamp"(%946) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xf32>
    ml_program.global_store @global1610 = %947 : tensor<1x704x7x7xf32>
    %948 = "tosa.transpose"(%947, %1) : (tensor<1x704x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x704xf32>
    %949 = "tosa.conv2d"(%948, %51, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x704xf32>, tensor<128x1x1x704xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %950 = "tosa.transpose"(%949, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %951 = "tosa.sub"(%950, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1616 = %98 : tensor<1x128x1x1xf32>
    %952 = "tosa.mul"(%951, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %953 = "tosa.mul"(%952, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %954 = "tosa.add"(%953, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1619 = %954 : tensor<1x128x7x7xf32>
    %955 = "tosa.clamp"(%954) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1620 = %955 : tensor<1x128x7x7xf32>
    %956 = "tosa.transpose"(%955, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %957 = "tosa.conv2d"(%956, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %958 = "tosa.transpose"(%957, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_524 = tensor.insert_slice %846 into %cst_47[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_525 = tensor.insert_slice %862 into %inserted_slice_524[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_526 = tensor.insert_slice %878 into %inserted_slice_525[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_527 = tensor.insert_slice %894 into %inserted_slice_526[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_528 = tensor.insert_slice %910 into %inserted_slice_527[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_529 = tensor.insert_slice %926 into %inserted_slice_528[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_530 = tensor.insert_slice %942 into %inserted_slice_529[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_531 = tensor.insert_slice %958 into %inserted_slice_530[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %959 = "tosa.sub"(%inserted_slice_531, %52) : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    ml_program.global_store @global1635 = %676 : tensor<1x736x1x1xf32>
    %960 = "tosa.mul"(%959, %676) {shift = 0 : i8} : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %961 = "tosa.mul"(%960, %52) {shift = 0 : i8} : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %962 = "tosa.add"(%961, %52) : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    ml_program.global_store @global1638 = %962 : tensor<1x736x7x7xf32>
    %963 = "tosa.clamp"(%962) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xf32>
    ml_program.global_store @global1639 = %963 : tensor<1x736x7x7xf32>
    %964 = "tosa.transpose"(%963, %1) : (tensor<1x736x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x736xf32>
    %965 = "tosa.conv2d"(%964, %53, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x736xf32>, tensor<128x1x1x736xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %966 = "tosa.transpose"(%965, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %967 = "tosa.sub"(%966, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1645 = %98 : tensor<1x128x1x1xf32>
    %968 = "tosa.mul"(%967, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %969 = "tosa.mul"(%968, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %970 = "tosa.add"(%969, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1648 = %970 : tensor<1x128x7x7xf32>
    %971 = "tosa.clamp"(%970) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1649 = %971 : tensor<1x128x7x7xf32>
    %972 = "tosa.transpose"(%971, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %973 = "tosa.conv2d"(%972, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %974 = "tosa.transpose"(%973, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_532 = tensor.insert_slice %846 into %cst_48[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_533 = tensor.insert_slice %862 into %inserted_slice_532[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_534 = tensor.insert_slice %878 into %inserted_slice_533[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_535 = tensor.insert_slice %894 into %inserted_slice_534[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_536 = tensor.insert_slice %910 into %inserted_slice_535[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_537 = tensor.insert_slice %926 into %inserted_slice_536[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_538 = tensor.insert_slice %942 into %inserted_slice_537[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_539 = tensor.insert_slice %958 into %inserted_slice_538[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_540 = tensor.insert_slice %974 into %inserted_slice_539[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %975 = "tosa.sub"(%inserted_slice_540, %54) : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    ml_program.global_store @global1665 = %694 : tensor<1x768x1x1xf32>
    %976 = "tosa.mul"(%975, %694) {shift = 0 : i8} : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %977 = "tosa.mul"(%976, %54) {shift = 0 : i8} : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %978 = "tosa.add"(%977, %54) : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    ml_program.global_store @global1668 = %978 : tensor<1x768x7x7xf32>
    %979 = "tosa.clamp"(%978) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    ml_program.global_store @global1669 = %979 : tensor<1x768x7x7xf32>
    %980 = "tosa.transpose"(%979, %1) : (tensor<1x768x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x768xf32>
    %981 = "tosa.conv2d"(%980, %55, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %982 = "tosa.transpose"(%981, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %983 = "tosa.sub"(%982, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1675 = %98 : tensor<1x128x1x1xf32>
    %984 = "tosa.mul"(%983, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %985 = "tosa.mul"(%984, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %986 = "tosa.add"(%985, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1678 = %986 : tensor<1x128x7x7xf32>
    %987 = "tosa.clamp"(%986) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1679 = %987 : tensor<1x128x7x7xf32>
    %988 = "tosa.transpose"(%987, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %989 = "tosa.conv2d"(%988, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %990 = "tosa.transpose"(%989, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_541 = tensor.insert_slice %846 into %cst_49[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_542 = tensor.insert_slice %862 into %inserted_slice_541[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_543 = tensor.insert_slice %878 into %inserted_slice_542[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_544 = tensor.insert_slice %894 into %inserted_slice_543[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_545 = tensor.insert_slice %910 into %inserted_slice_544[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_546 = tensor.insert_slice %926 into %inserted_slice_545[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_547 = tensor.insert_slice %942 into %inserted_slice_546[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_548 = tensor.insert_slice %958 into %inserted_slice_547[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_549 = tensor.insert_slice %974 into %inserted_slice_548[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_550 = tensor.insert_slice %990 into %inserted_slice_549[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %991 = "tosa.sub"(%inserted_slice_550, %56) : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    ml_program.global_store @global1696 = %712 : tensor<1x800x1x1xf32>
    %992 = "tosa.mul"(%991, %712) {shift = 0 : i8} : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %993 = "tosa.mul"(%992, %56) {shift = 0 : i8} : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %994 = "tosa.add"(%993, %56) : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    ml_program.global_store @global1699 = %994 : tensor<1x800x7x7xf32>
    %995 = "tosa.clamp"(%994) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xf32>
    ml_program.global_store @global1700 = %995 : tensor<1x800x7x7xf32>
    %996 = "tosa.transpose"(%995, %1) : (tensor<1x800x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x800xf32>
    %997 = "tosa.conv2d"(%996, %57, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x800xf32>, tensor<128x1x1x800xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %998 = "tosa.transpose"(%997, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %999 = "tosa.sub"(%998, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1706 = %98 : tensor<1x128x1x1xf32>
    %1000 = "tosa.mul"(%999, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1001 = "tosa.mul"(%1000, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1002 = "tosa.add"(%1001, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1709 = %1002 : tensor<1x128x7x7xf32>
    %1003 = "tosa.clamp"(%1002) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1710 = %1003 : tensor<1x128x7x7xf32>
    %1004 = "tosa.transpose"(%1003, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1005 = "tosa.conv2d"(%1004, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1006 = "tosa.transpose"(%1005, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_551 = tensor.insert_slice %846 into %cst_50[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_552 = tensor.insert_slice %862 into %inserted_slice_551[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_553 = tensor.insert_slice %878 into %inserted_slice_552[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_554 = tensor.insert_slice %894 into %inserted_slice_553[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_555 = tensor.insert_slice %910 into %inserted_slice_554[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_556 = tensor.insert_slice %926 into %inserted_slice_555[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_557 = tensor.insert_slice %942 into %inserted_slice_556[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_558 = tensor.insert_slice %958 into %inserted_slice_557[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_559 = tensor.insert_slice %974 into %inserted_slice_558[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_560 = tensor.insert_slice %990 into %inserted_slice_559[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_561 = tensor.insert_slice %1006 into %inserted_slice_560[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %1007 = "tosa.sub"(%inserted_slice_561, %58) : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    ml_program.global_store @global1728 = %730 : tensor<1x832x1x1xf32>
    %1008 = "tosa.mul"(%1007, %730) {shift = 0 : i8} : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1009 = "tosa.mul"(%1008, %58) {shift = 0 : i8} : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1010 = "tosa.add"(%1009, %58) : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    ml_program.global_store @global1731 = %1010 : tensor<1x832x7x7xf32>
    %1011 = "tosa.clamp"(%1010) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xf32>
    ml_program.global_store @global1732 = %1011 : tensor<1x832x7x7xf32>
    %1012 = "tosa.transpose"(%1011, %1) : (tensor<1x832x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x832xf32>
    %1013 = "tosa.conv2d"(%1012, %59, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x832xf32>, tensor<128x1x1x832xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1014 = "tosa.transpose"(%1013, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1015 = "tosa.sub"(%1014, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1738 = %98 : tensor<1x128x1x1xf32>
    %1016 = "tosa.mul"(%1015, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1017 = "tosa.mul"(%1016, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1018 = "tosa.add"(%1017, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1741 = %1018 : tensor<1x128x7x7xf32>
    %1019 = "tosa.clamp"(%1018) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1742 = %1019 : tensor<1x128x7x7xf32>
    %1020 = "tosa.transpose"(%1019, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1021 = "tosa.conv2d"(%1020, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1022 = "tosa.transpose"(%1021, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_562 = tensor.insert_slice %846 into %cst_51[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_563 = tensor.insert_slice %862 into %inserted_slice_562[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_564 = tensor.insert_slice %878 into %inserted_slice_563[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_565 = tensor.insert_slice %894 into %inserted_slice_564[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_566 = tensor.insert_slice %910 into %inserted_slice_565[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_567 = tensor.insert_slice %926 into %inserted_slice_566[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_568 = tensor.insert_slice %942 into %inserted_slice_567[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_569 = tensor.insert_slice %958 into %inserted_slice_568[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_570 = tensor.insert_slice %974 into %inserted_slice_569[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_571 = tensor.insert_slice %990 into %inserted_slice_570[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_572 = tensor.insert_slice %1006 into %inserted_slice_571[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_573 = tensor.insert_slice %1022 into %inserted_slice_572[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %1023 = "tosa.sub"(%inserted_slice_573, %60) : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    ml_program.global_store @global1761 = %748 : tensor<1x864x1x1xf32>
    %1024 = "tosa.mul"(%1023, %748) {shift = 0 : i8} : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1025 = "tosa.mul"(%1024, %60) {shift = 0 : i8} : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1026 = "tosa.add"(%1025, %60) : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    ml_program.global_store @global1764 = %1026 : tensor<1x864x7x7xf32>
    %1027 = "tosa.clamp"(%1026) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xf32>
    ml_program.global_store @global1765 = %1027 : tensor<1x864x7x7xf32>
    %1028 = "tosa.transpose"(%1027, %1) : (tensor<1x864x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x864xf32>
    %1029 = "tosa.conv2d"(%1028, %61, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x864xf32>, tensor<128x1x1x864xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1030 = "tosa.transpose"(%1029, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1031 = "tosa.sub"(%1030, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1771 = %98 : tensor<1x128x1x1xf32>
    %1032 = "tosa.mul"(%1031, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1033 = "tosa.mul"(%1032, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1034 = "tosa.add"(%1033, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1774 = %1034 : tensor<1x128x7x7xf32>
    %1035 = "tosa.clamp"(%1034) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1775 = %1035 : tensor<1x128x7x7xf32>
    %1036 = "tosa.transpose"(%1035, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1037 = "tosa.conv2d"(%1036, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1038 = "tosa.transpose"(%1037, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_574 = tensor.insert_slice %846 into %cst_52[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_575 = tensor.insert_slice %862 into %inserted_slice_574[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_576 = tensor.insert_slice %878 into %inserted_slice_575[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_577 = tensor.insert_slice %894 into %inserted_slice_576[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_578 = tensor.insert_slice %910 into %inserted_slice_577[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_579 = tensor.insert_slice %926 into %inserted_slice_578[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_580 = tensor.insert_slice %942 into %inserted_slice_579[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_581 = tensor.insert_slice %958 into %inserted_slice_580[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_582 = tensor.insert_slice %974 into %inserted_slice_581[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_583 = tensor.insert_slice %990 into %inserted_slice_582[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_584 = tensor.insert_slice %1006 into %inserted_slice_583[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_585 = tensor.insert_slice %1022 into %inserted_slice_584[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_586 = tensor.insert_slice %1038 into %inserted_slice_585[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %1039 = "tosa.sub"(%inserted_slice_586, %62) : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    ml_program.global_store @global1795 = %766 : tensor<1x896x1x1xf32>
    %1040 = "tosa.mul"(%1039, %766) {shift = 0 : i8} : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1041 = "tosa.mul"(%1040, %62) {shift = 0 : i8} : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1042 = "tosa.add"(%1041, %62) : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    ml_program.global_store @global1798 = %1042 : tensor<1x896x7x7xf32>
    %1043 = "tosa.clamp"(%1042) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xf32>
    ml_program.global_store @global1799 = %1043 : tensor<1x896x7x7xf32>
    %1044 = "tosa.transpose"(%1043, %1) : (tensor<1x896x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x896xf32>
    %1045 = "tosa.conv2d"(%1044, %63, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x896xf32>, tensor<128x1x1x896xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1046 = "tosa.transpose"(%1045, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1047 = "tosa.sub"(%1046, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1805 = %98 : tensor<1x128x1x1xf32>
    %1048 = "tosa.mul"(%1047, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1049 = "tosa.mul"(%1048, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1050 = "tosa.add"(%1049, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1808 = %1050 : tensor<1x128x7x7xf32>
    %1051 = "tosa.clamp"(%1050) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1809 = %1051 : tensor<1x128x7x7xf32>
    %1052 = "tosa.transpose"(%1051, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1053 = "tosa.conv2d"(%1052, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1054 = "tosa.transpose"(%1053, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_587 = tensor.insert_slice %846 into %cst_53[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_588 = tensor.insert_slice %862 into %inserted_slice_587[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_589 = tensor.insert_slice %878 into %inserted_slice_588[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_590 = tensor.insert_slice %894 into %inserted_slice_589[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_591 = tensor.insert_slice %910 into %inserted_slice_590[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_592 = tensor.insert_slice %926 into %inserted_slice_591[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_593 = tensor.insert_slice %942 into %inserted_slice_592[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_594 = tensor.insert_slice %958 into %inserted_slice_593[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_595 = tensor.insert_slice %974 into %inserted_slice_594[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_596 = tensor.insert_slice %990 into %inserted_slice_595[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_597 = tensor.insert_slice %1006 into %inserted_slice_596[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_598 = tensor.insert_slice %1022 into %inserted_slice_597[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_599 = tensor.insert_slice %1038 into %inserted_slice_598[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_600 = tensor.insert_slice %1054 into %inserted_slice_599[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %1055 = "tosa.sub"(%inserted_slice_600, %64) : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    ml_program.global_store @global1830 = %784 : tensor<1x928x1x1xf32>
    %1056 = "tosa.mul"(%1055, %784) {shift = 0 : i8} : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1057 = "tosa.mul"(%1056, %64) {shift = 0 : i8} : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1058 = "tosa.add"(%1057, %64) : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    ml_program.global_store @global1833 = %1058 : tensor<1x928x7x7xf32>
    %1059 = "tosa.clamp"(%1058) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xf32>
    ml_program.global_store @global1834 = %1059 : tensor<1x928x7x7xf32>
    %1060 = "tosa.transpose"(%1059, %1) : (tensor<1x928x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x928xf32>
    %1061 = "tosa.conv2d"(%1060, %65, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x928xf32>, tensor<128x1x1x928xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1062 = "tosa.transpose"(%1061, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1063 = "tosa.sub"(%1062, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1840 = %98 : tensor<1x128x1x1xf32>
    %1064 = "tosa.mul"(%1063, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1065 = "tosa.mul"(%1064, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1066 = "tosa.add"(%1065, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1843 = %1066 : tensor<1x128x7x7xf32>
    %1067 = "tosa.clamp"(%1066) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1844 = %1067 : tensor<1x128x7x7xf32>
    %1068 = "tosa.transpose"(%1067, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1069 = "tosa.conv2d"(%1068, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1070 = "tosa.transpose"(%1069, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_601 = tensor.insert_slice %846 into %cst_54[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_602 = tensor.insert_slice %862 into %inserted_slice_601[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_603 = tensor.insert_slice %878 into %inserted_slice_602[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_604 = tensor.insert_slice %894 into %inserted_slice_603[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_605 = tensor.insert_slice %910 into %inserted_slice_604[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_606 = tensor.insert_slice %926 into %inserted_slice_605[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_607 = tensor.insert_slice %942 into %inserted_slice_606[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_608 = tensor.insert_slice %958 into %inserted_slice_607[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_609 = tensor.insert_slice %974 into %inserted_slice_608[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_610 = tensor.insert_slice %990 into %inserted_slice_609[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_611 = tensor.insert_slice %1006 into %inserted_slice_610[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_612 = tensor.insert_slice %1022 into %inserted_slice_611[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_613 = tensor.insert_slice %1038 into %inserted_slice_612[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_614 = tensor.insert_slice %1054 into %inserted_slice_613[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_615 = tensor.insert_slice %1070 into %inserted_slice_614[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %1071 = "tosa.sub"(%inserted_slice_615, %66) : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    ml_program.global_store @global1866 = %802 : tensor<1x960x1x1xf32>
    %1072 = "tosa.mul"(%1071, %802) {shift = 0 : i8} : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1073 = "tosa.mul"(%1072, %66) {shift = 0 : i8} : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1074 = "tosa.add"(%1073, %66) : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    ml_program.global_store @global1869 = %1074 : tensor<1x960x7x7xf32>
    %1075 = "tosa.clamp"(%1074) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    ml_program.global_store @global1870 = %1075 : tensor<1x960x7x7xf32>
    %1076 = "tosa.transpose"(%1075, %1) : (tensor<1x960x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x960xf32>
    %1077 = "tosa.conv2d"(%1076, %67, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x960xf32>, tensor<128x1x1x960xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1078 = "tosa.transpose"(%1077, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1079 = "tosa.sub"(%1078, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1876 = %98 : tensor<1x128x1x1xf32>
    %1080 = "tosa.mul"(%1079, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1081 = "tosa.mul"(%1080, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1082 = "tosa.add"(%1081, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1879 = %1082 : tensor<1x128x7x7xf32>
    %1083 = "tosa.clamp"(%1082) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1880 = %1083 : tensor<1x128x7x7xf32>
    %1084 = "tosa.transpose"(%1083, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1085 = "tosa.conv2d"(%1084, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1086 = "tosa.transpose"(%1085, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_616 = tensor.insert_slice %846 into %cst_55[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_617 = tensor.insert_slice %862 into %inserted_slice_616[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_618 = tensor.insert_slice %878 into %inserted_slice_617[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_619 = tensor.insert_slice %894 into %inserted_slice_618[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_620 = tensor.insert_slice %910 into %inserted_slice_619[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_621 = tensor.insert_slice %926 into %inserted_slice_620[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_622 = tensor.insert_slice %942 into %inserted_slice_621[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_623 = tensor.insert_slice %958 into %inserted_slice_622[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_624 = tensor.insert_slice %974 into %inserted_slice_623[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_625 = tensor.insert_slice %990 into %inserted_slice_624[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_626 = tensor.insert_slice %1006 into %inserted_slice_625[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_627 = tensor.insert_slice %1022 into %inserted_slice_626[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_628 = tensor.insert_slice %1038 into %inserted_slice_627[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_629 = tensor.insert_slice %1054 into %inserted_slice_628[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_630 = tensor.insert_slice %1070 into %inserted_slice_629[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_631 = tensor.insert_slice %1086 into %inserted_slice_630[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %1087 = "tosa.sub"(%inserted_slice_631, %68) : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    ml_program.global_store @global1903 = %820 : tensor<1x992x1x1xf32>
    %1088 = "tosa.mul"(%1087, %820) {shift = 0 : i8} : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1089 = "tosa.mul"(%1088, %68) {shift = 0 : i8} : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1090 = "tosa.add"(%1089, %68) : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    ml_program.global_store @global1906 = %1090 : tensor<1x992x7x7xf32>
    %1091 = "tosa.clamp"(%1090) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xf32>
    ml_program.global_store @global1907 = %1091 : tensor<1x992x7x7xf32>
    %1092 = "tosa.transpose"(%1091, %1) : (tensor<1x992x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x992xf32>
    %1093 = "tosa.conv2d"(%1092, %69, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x992xf32>, tensor<128x1x1x992xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1094 = "tosa.transpose"(%1093, %3) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1095 = "tosa.sub"(%1094, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1913 = %98 : tensor<1x128x1x1xf32>
    %1096 = "tosa.mul"(%1095, %98) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1097 = "tosa.mul"(%1096, %8) {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1098 = "tosa.add"(%1097, %8) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1916 = %1098 : tensor<1x128x7x7xf32>
    %1099 = "tosa.clamp"(%1098) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    ml_program.global_store @global1917 = %1099 : tensor<1x128x7x7xf32>
    %1100 = "tosa.transpose"(%1099, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1101 = "tosa.conv2d"(%1100, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1102 = "tosa.transpose"(%1101, %3) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_632 = tensor.insert_slice %846 into %cst_56[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_633 = tensor.insert_slice %862 into %inserted_slice_632[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_634 = tensor.insert_slice %878 into %inserted_slice_633[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_635 = tensor.insert_slice %894 into %inserted_slice_634[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_636 = tensor.insert_slice %910 into %inserted_slice_635[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_637 = tensor.insert_slice %926 into %inserted_slice_636[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_638 = tensor.insert_slice %942 into %inserted_slice_637[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_639 = tensor.insert_slice %958 into %inserted_slice_638[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_640 = tensor.insert_slice %974 into %inserted_slice_639[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_641 = tensor.insert_slice %990 into %inserted_slice_640[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_642 = tensor.insert_slice %1006 into %inserted_slice_641[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_643 = tensor.insert_slice %1022 into %inserted_slice_642[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_644 = tensor.insert_slice %1038 into %inserted_slice_643[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_645 = tensor.insert_slice %1054 into %inserted_slice_644[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_646 = tensor.insert_slice %1070 into %inserted_slice_645[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_647 = tensor.insert_slice %1086 into %inserted_slice_646[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_648 = tensor.insert_slice %1102 into %inserted_slice_647[0, 992, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %1103 = "tosa.sub"(%inserted_slice_648, %70) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global1941 = %838 : tensor<1x1024x1x1xf32>
    %1104 = "tosa.mul"(%1103, %838) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1105 = "tosa.mul"(%1104, %70) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1106 = "tosa.add"(%1105, %70) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global1944 = %1106 : tensor<1x1024x7x7xf32>
    %1107 = "tosa.clamp"(%1106) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global1945 = %1107 : tensor<1x1024x7x7xf32>
    %1108 = "tosa.transpose"(%1107, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x1024xf32>
    ml_program.global_store @global1946 = %1108 : tensor<1x7x7x1024xf32>
    %1109 = "tosa.avg_pool2d"(%1108) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>) -> tensor<1x1x1x1024xf32>
    %1110 = "tosa.reshape"(%1109) {new_shape = array<i64: 1, 1, 1024>} : (tensor<1x1x1x1024xf32>) -> tensor<1x1x1024xf32>
    %1111 = "tosa.matmul"(%1110, %73) : (tensor<1x1x1024xf32>, tensor<1x1024x1000xf32>) -> tensor<1x1x1000xf32>
    %1112 = "tosa.add"(%1111, %74) : (tensor<1x1x1000xf32>, tensor<1000xf32>) -> tensor<1x1x1000xf32>
    %1113 = "tosa.reshape"(%1112) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    return %1113 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x7x7x1024xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<7x7xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<992xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<928xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<896xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<864xf32>
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<832xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<800xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_10 = arith.constant dense<0.000000e+00> : tensor<736xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<704xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<672xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<640xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<608xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<544xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<1x14x14x512xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<2x2xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<480xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<448xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<416xf32>
    %cst_24 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<352xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_28 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<1x28x28x256xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<224xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<1x56x56x128xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_35 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_36 = arith.constant dense<0.000000e+00> : tensor<1x114x114x64xf32>
    %cst_37 = arith.constant dense<0.000000e+00> : tensor<3x3xf32>
    %cst_38 = arith.constant dense<0.000000e+00> : tensor<3xf32>
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst_39 = arith.constant 0.0204081628 : f32
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst_40 = arith.constant 2.500000e-01 : f32
    %cst_41 = arith.constant -3.40282347E+38 : f32
    %cst_42 = arith.constant 0.000000e+00 : f32
    %5 = ml_program.global_load @global1 : tensor<64x7x7x3xf32>
    %6 = ml_program.global_load @global5 : tensor<1x64x1x1xf32>
    %7 = ml_program.global_load @global7 : tensor<128x1x1x64xf32>
    %8 = ml_program.global_load @global9 : tensor<1x128x1x1xf32>
    %9 = ml_program.global_load @global10 : tensor<32x3x3x128xf32>
    %10 = ml_program.global_load @global12 : tensor<1x96x1x1xf32>
    %11 = ml_program.global_load @global13 : tensor<128x1x1x96xf32>
    %12 = ml_program.global_load @global14 : tensor<128x1x1x128xf32>
    %13 = ml_program.global_load @global15 : tensor<1x160x1x1xf32>
    %14 = ml_program.global_load @global16 : tensor<128x1x1x160xf32>
    %15 = ml_program.global_load @global17 : tensor<1x192x1x1xf32>
    %16 = ml_program.global_load @global18 : tensor<128x1x1x192xf32>
    %17 = ml_program.global_load @global19 : tensor<1x224x1x1xf32>
    %18 = ml_program.global_load @global20 : tensor<128x1x1x224xf32>
    %19 = ml_program.global_load @global21 : tensor<1x256x1x1xf32>
    %20 = ml_program.global_load @global22 : tensor<128x1x1x256xf32>
    %21 = ml_program.global_load @global23 : tensor<1x288x1x1xf32>
    %22 = ml_program.global_load @global24 : tensor<128x1x1x288xf32>
    %23 = ml_program.global_load @global25 : tensor<1x320x1x1xf32>
    %24 = ml_program.global_load @global26 : tensor<128x1x1x320xf32>
    %25 = ml_program.global_load @global27 : tensor<1x352x1x1xf32>
    %26 = ml_program.global_load @global28 : tensor<128x1x1x352xf32>
    %27 = ml_program.global_load @global29 : tensor<1x384x1x1xf32>
    %28 = ml_program.global_load @global30 : tensor<128x1x1x384xf32>
    %29 = ml_program.global_load @global31 : tensor<1x416x1x1xf32>
    %30 = ml_program.global_load @global32 : tensor<128x1x1x416xf32>
    %31 = ml_program.global_load @global33 : tensor<1x448x1x1xf32>
    %32 = ml_program.global_load @global34 : tensor<128x1x1x448xf32>
    %33 = ml_program.global_load @global35 : tensor<1x480x1x1xf32>
    %34 = ml_program.global_load @global36 : tensor<128x1x1x480xf32>
    %35 = ml_program.global_load @global37 : tensor<1x512x1x1xf32>
    %36 = ml_program.global_load @global38 : tensor<256x1x1x512xf32>
    %37 = ml_program.global_load @global40 : tensor<128x1x1x512xf32>
    %38 = ml_program.global_load @global41 : tensor<1x544x1x1xf32>
    %39 = ml_program.global_load @global42 : tensor<128x1x1x544xf32>
    %40 = ml_program.global_load @global43 : tensor<1x576x1x1xf32>
    %41 = ml_program.global_load @global44 : tensor<128x1x1x576xf32>
    %42 = ml_program.global_load @global45 : tensor<1x608x1x1xf32>
    %43 = ml_program.global_load @global46 : tensor<128x1x1x608xf32>
    %44 = ml_program.global_load @global47 : tensor<1x640x1x1xf32>
    %45 = ml_program.global_load @global48 : tensor<128x1x1x640xf32>
    %46 = ml_program.global_load @global49 : tensor<1x672x1x1xf32>
    %47 = ml_program.global_load @global50 : tensor<128x1x1x672xf32>
    %48 = ml_program.global_load @global51 : tensor<1x704x1x1xf32>
    %49 = ml_program.global_load @global52 : tensor<128x1x1x704xf32>
    %50 = ml_program.global_load @global53 : tensor<1x736x1x1xf32>
    %51 = ml_program.global_load @global54 : tensor<128x1x1x736xf32>
    %52 = ml_program.global_load @global55 : tensor<1x768x1x1xf32>
    %53 = ml_program.global_load @global56 : tensor<128x1x1x768xf32>
    %54 = ml_program.global_load @global57 : tensor<1x800x1x1xf32>
    %55 = ml_program.global_load @global58 : tensor<128x1x1x800xf32>
    %56 = ml_program.global_load @global59 : tensor<1x832x1x1xf32>
    %57 = ml_program.global_load @global60 : tensor<128x1x1x832xf32>
    %58 = ml_program.global_load @global61 : tensor<1x864x1x1xf32>
    %59 = ml_program.global_load @global62 : tensor<128x1x1x864xf32>
    %60 = ml_program.global_load @global63 : tensor<1x896x1x1xf32>
    %61 = ml_program.global_load @global64 : tensor<128x1x1x896xf32>
    %62 = ml_program.global_load @global65 : tensor<1x928x1x1xf32>
    %63 = ml_program.global_load @global66 : tensor<128x1x1x928xf32>
    %64 = ml_program.global_load @global67 : tensor<1x960x1x1xf32>
    %65 = ml_program.global_load @global68 : tensor<128x1x1x960xf32>
    %66 = ml_program.global_load @global69 : tensor<1x992x1x1xf32>
    %67 = ml_program.global_load @global70 : tensor<128x1x1x992xf32>
    %68 = ml_program.global_load @global71 : tensor<1x1024x1x1xf32>
    %69 = ml_program.global_load @global72 : tensor<512x1x1x1024xf32>
    %70 = ml_program.global_load @global74 : tensor<1x1024x1000xf32>
    %71 = ml_program.global_load @global81 : tensor<1x64x1x1xf32>
    %72 = ml_program.global_load @global84 : tensor<1x64x112x112xf32>
    %73 = ml_program.global_load @global85 : tensor<1x64x112x112xf32>
    %74 = ml_program.global_load @global86 : tensor<1x112x112x64xf32>
    %75 = ml_program.global_load @global87 : tensor<1x56x56x64xf32>
    %76 = ml_program.global_load @global91 : tensor<1x64x1x1xf32>
    %77 = ml_program.global_load @global94 : tensor<1x64x56x56xf32>
    %78 = ml_program.global_load @global95 : tensor<1x64x56x56xf32>
    %79 = ml_program.global_load @global101 : tensor<1x128x1x1xf32>
    %80 = ml_program.global_load @global104 : tensor<1x128x56x56xf32>
    %81 = ml_program.global_load @global105 : tensor<1x128x56x56xf32>
    %82 = ml_program.global_load @global114 : tensor<1x96x1x1xf32>
    %83 = ml_program.global_load @global117 : tensor<1x96x56x56xf32>
    %84 = ml_program.global_load @global118 : tensor<1x96x56x56xf32>
    %85 = ml_program.global_load @global124 : tensor<1x128x1x1xf32>
    %86 = ml_program.global_load @global127 : tensor<1x128x56x56xf32>
    %87 = ml_program.global_load @global128 : tensor<1x128x56x56xf32>
    %88 = ml_program.global_load @global138 : tensor<1x128x1x1xf32>
    %89 = ml_program.global_load @global141 : tensor<1x128x56x56xf32>
    %90 = ml_program.global_load @global142 : tensor<1x128x56x56xf32>
    %91 = ml_program.global_load @global148 : tensor<1x128x1x1xf32>
    %92 = ml_program.global_load @global151 : tensor<1x128x56x56xf32>
    %93 = ml_program.global_load @global152 : tensor<1x128x56x56xf32>
    %94 = ml_program.global_load @global163 : tensor<1x160x1x1xf32>
    %95 = ml_program.global_load @global166 : tensor<1x160x56x56xf32>
    %96 = ml_program.global_load @global167 : tensor<1x160x56x56xf32>
    %97 = ml_program.global_load @global173 : tensor<1x128x1x1xf32>
    %98 = ml_program.global_load @global176 : tensor<1x128x56x56xf32>
    %99 = ml_program.global_load @global177 : tensor<1x128x56x56xf32>
    %100 = ml_program.global_load @global189 : tensor<1x192x1x1xf32>
    %101 = ml_program.global_load @global192 : tensor<1x192x56x56xf32>
    %102 = ml_program.global_load @global193 : tensor<1x192x56x56xf32>
    %103 = ml_program.global_load @global199 : tensor<1x128x1x1xf32>
    %104 = ml_program.global_load @global202 : tensor<1x128x56x56xf32>
    %105 = ml_program.global_load @global203 : tensor<1x128x56x56xf32>
    %106 = ml_program.global_load @global216 : tensor<1x224x1x1xf32>
    %107 = ml_program.global_load @global219 : tensor<1x224x56x56xf32>
    %108 = ml_program.global_load @global220 : tensor<1x224x56x56xf32>
    %109 = ml_program.global_load @global226 : tensor<1x128x1x1xf32>
    %110 = ml_program.global_load @global229 : tensor<1x128x56x56xf32>
    %111 = ml_program.global_load @global230 : tensor<1x128x56x56xf32>
    %112 = ml_program.global_load @global244 : tensor<1x256x1x1xf32>
    %113 = ml_program.global_load @global247 : tensor<1x256x56x56xf32>
    %114 = ml_program.global_load @global248 : tensor<1x256x56x56xf32>
    %115 = ml_program.global_load @global252 : tensor<1x56x56x128xf32>
    %116 = ml_program.global_load @global257 : tensor<1x128x1x1xf32>
    %117 = ml_program.global_load @global260 : tensor<1x128x28x28xf32>
    %118 = ml_program.global_load @global261 : tensor<1x128x28x28xf32>
    %119 = ml_program.global_load @global267 : tensor<1x128x1x1xf32>
    %120 = ml_program.global_load @global270 : tensor<1x128x28x28xf32>
    %121 = ml_program.global_load @global271 : tensor<1x128x28x28xf32>
    %122 = ml_program.global_load @global280 : tensor<1x160x1x1xf32>
    %123 = ml_program.global_load @global283 : tensor<1x160x28x28xf32>
    %124 = ml_program.global_load @global284 : tensor<1x160x28x28xf32>
    %125 = ml_program.global_load @global290 : tensor<1x128x1x1xf32>
    %126 = ml_program.global_load @global293 : tensor<1x128x28x28xf32>
    %127 = ml_program.global_load @global294 : tensor<1x128x28x28xf32>
    %128 = ml_program.global_load @global304 : tensor<1x192x1x1xf32>
    %129 = ml_program.global_load @global307 : tensor<1x192x28x28xf32>
    %130 = ml_program.global_load @global308 : tensor<1x192x28x28xf32>
    %131 = ml_program.global_load @global314 : tensor<1x128x1x1xf32>
    %132 = ml_program.global_load @global317 : tensor<1x128x28x28xf32>
    %133 = ml_program.global_load @global318 : tensor<1x128x28x28xf32>
    %134 = ml_program.global_load @global329 : tensor<1x224x1x1xf32>
    %135 = ml_program.global_load @global332 : tensor<1x224x28x28xf32>
    %136 = ml_program.global_load @global333 : tensor<1x224x28x28xf32>
    %137 = ml_program.global_load @global339 : tensor<1x128x1x1xf32>
    %138 = ml_program.global_load @global342 : tensor<1x128x28x28xf32>
    %139 = ml_program.global_load @global343 : tensor<1x128x28x28xf32>
    %140 = ml_program.global_load @global355 : tensor<1x256x1x1xf32>
    %141 = ml_program.global_load @global358 : tensor<1x256x28x28xf32>
    %142 = ml_program.global_load @global359 : tensor<1x256x28x28xf32>
    %143 = ml_program.global_load @global365 : tensor<1x128x1x1xf32>
    %144 = ml_program.global_load @global368 : tensor<1x128x28x28xf32>
    %145 = ml_program.global_load @global369 : tensor<1x128x28x28xf32>
    %146 = ml_program.global_load @global382 : tensor<1x288x1x1xf32>
    %147 = ml_program.global_load @global385 : tensor<1x288x28x28xf32>
    %148 = ml_program.global_load @global386 : tensor<1x288x28x28xf32>
    %149 = ml_program.global_load @global392 : tensor<1x128x1x1xf32>
    %150 = ml_program.global_load @global395 : tensor<1x128x28x28xf32>
    %151 = ml_program.global_load @global396 : tensor<1x128x28x28xf32>
    %152 = ml_program.global_load @global410 : tensor<1x320x1x1xf32>
    %153 = ml_program.global_load @global413 : tensor<1x320x28x28xf32>
    %154 = ml_program.global_load @global414 : tensor<1x320x28x28xf32>
    %155 = ml_program.global_load @global420 : tensor<1x128x1x1xf32>
    %156 = ml_program.global_load @global423 : tensor<1x128x28x28xf32>
    %157 = ml_program.global_load @global424 : tensor<1x128x28x28xf32>
    %158 = ml_program.global_load @global439 : tensor<1x352x1x1xf32>
    %159 = ml_program.global_load @global442 : tensor<1x352x28x28xf32>
    %160 = ml_program.global_load @global443 : tensor<1x352x28x28xf32>
    %161 = ml_program.global_load @global449 : tensor<1x128x1x1xf32>
    %162 = ml_program.global_load @global452 : tensor<1x128x28x28xf32>
    %163 = ml_program.global_load @global453 : tensor<1x128x28x28xf32>
    %164 = ml_program.global_load @global469 : tensor<1x384x1x1xf32>
    %165 = ml_program.global_load @global472 : tensor<1x384x28x28xf32>
    %166 = ml_program.global_load @global473 : tensor<1x384x28x28xf32>
    %167 = ml_program.global_load @global479 : tensor<1x128x1x1xf32>
    %168 = ml_program.global_load @global482 : tensor<1x128x28x28xf32>
    %169 = ml_program.global_load @global483 : tensor<1x128x28x28xf32>
    %170 = ml_program.global_load @global500 : tensor<1x416x1x1xf32>
    %171 = ml_program.global_load @global503 : tensor<1x416x28x28xf32>
    %172 = ml_program.global_load @global504 : tensor<1x416x28x28xf32>
    %173 = ml_program.global_load @global510 : tensor<1x128x1x1xf32>
    %174 = ml_program.global_load @global513 : tensor<1x128x28x28xf32>
    %175 = ml_program.global_load @global514 : tensor<1x128x28x28xf32>
    %176 = ml_program.global_load @global532 : tensor<1x448x1x1xf32>
    %177 = ml_program.global_load @global535 : tensor<1x448x28x28xf32>
    %178 = ml_program.global_load @global536 : tensor<1x448x28x28xf32>
    %179 = ml_program.global_load @global542 : tensor<1x128x1x1xf32>
    %180 = ml_program.global_load @global545 : tensor<1x128x28x28xf32>
    %181 = ml_program.global_load @global546 : tensor<1x128x28x28xf32>
    %182 = ml_program.global_load @global565 : tensor<1x480x1x1xf32>
    %183 = ml_program.global_load @global568 : tensor<1x480x28x28xf32>
    %184 = ml_program.global_load @global569 : tensor<1x480x28x28xf32>
    %185 = ml_program.global_load @global575 : tensor<1x128x1x1xf32>
    %186 = ml_program.global_load @global578 : tensor<1x128x28x28xf32>
    %187 = ml_program.global_load @global579 : tensor<1x128x28x28xf32>
    %188 = ml_program.global_load @global599 : tensor<1x512x1x1xf32>
    %189 = ml_program.global_load @global602 : tensor<1x512x28x28xf32>
    %190 = ml_program.global_load @global603 : tensor<1x512x28x28xf32>
    %191 = ml_program.global_load @global607 : tensor<1x28x28x256xf32>
    %192 = ml_program.global_load @global612 : tensor<1x256x1x1xf32>
    %193 = ml_program.global_load @global615 : tensor<1x256x14x14xf32>
    %194 = ml_program.global_load @global616 : tensor<1x256x14x14xf32>
    %195 = ml_program.global_load @global622 : tensor<1x128x1x1xf32>
    %196 = ml_program.global_load @global625 : tensor<1x128x14x14xf32>
    %197 = ml_program.global_load @global626 : tensor<1x128x14x14xf32>
    %198 = ml_program.global_load @global635 : tensor<1x288x1x1xf32>
    %199 = ml_program.global_load @global638 : tensor<1x288x14x14xf32>
    %200 = ml_program.global_load @global639 : tensor<1x288x14x14xf32>
    %201 = ml_program.global_load @global645 : tensor<1x128x1x1xf32>
    %202 = ml_program.global_load @global648 : tensor<1x128x14x14xf32>
    %203 = ml_program.global_load @global649 : tensor<1x128x14x14xf32>
    %204 = ml_program.global_load @global659 : tensor<1x320x1x1xf32>
    %205 = ml_program.global_load @global662 : tensor<1x320x14x14xf32>
    %206 = ml_program.global_load @global663 : tensor<1x320x14x14xf32>
    %207 = ml_program.global_load @global669 : tensor<1x128x1x1xf32>
    %208 = ml_program.global_load @global672 : tensor<1x128x14x14xf32>
    %209 = ml_program.global_load @global673 : tensor<1x128x14x14xf32>
    %210 = ml_program.global_load @global684 : tensor<1x352x1x1xf32>
    %211 = ml_program.global_load @global687 : tensor<1x352x14x14xf32>
    %212 = ml_program.global_load @global688 : tensor<1x352x14x14xf32>
    %213 = ml_program.global_load @global694 : tensor<1x128x1x1xf32>
    %214 = ml_program.global_load @global697 : tensor<1x128x14x14xf32>
    %215 = ml_program.global_load @global698 : tensor<1x128x14x14xf32>
    %216 = ml_program.global_load @global710 : tensor<1x384x1x1xf32>
    %217 = ml_program.global_load @global713 : tensor<1x384x14x14xf32>
    %218 = ml_program.global_load @global714 : tensor<1x384x14x14xf32>
    %219 = ml_program.global_load @global720 : tensor<1x128x1x1xf32>
    %220 = ml_program.global_load @global723 : tensor<1x128x14x14xf32>
    %221 = ml_program.global_load @global724 : tensor<1x128x14x14xf32>
    %222 = ml_program.global_load @global737 : tensor<1x416x1x1xf32>
    %223 = ml_program.global_load @global740 : tensor<1x416x14x14xf32>
    %224 = ml_program.global_load @global741 : tensor<1x416x14x14xf32>
    %225 = ml_program.global_load @global747 : tensor<1x128x1x1xf32>
    %226 = ml_program.global_load @global750 : tensor<1x128x14x14xf32>
    %227 = ml_program.global_load @global751 : tensor<1x128x14x14xf32>
    %228 = ml_program.global_load @global765 : tensor<1x448x1x1xf32>
    %229 = ml_program.global_load @global768 : tensor<1x448x14x14xf32>
    %230 = ml_program.global_load @global769 : tensor<1x448x14x14xf32>
    %231 = ml_program.global_load @global775 : tensor<1x128x1x1xf32>
    %232 = ml_program.global_load @global778 : tensor<1x128x14x14xf32>
    %233 = ml_program.global_load @global779 : tensor<1x128x14x14xf32>
    %234 = ml_program.global_load @global794 : tensor<1x480x1x1xf32>
    %235 = ml_program.global_load @global797 : tensor<1x480x14x14xf32>
    %236 = ml_program.global_load @global798 : tensor<1x480x14x14xf32>
    %237 = ml_program.global_load @global804 : tensor<1x128x1x1xf32>
    %238 = ml_program.global_load @global807 : tensor<1x128x14x14xf32>
    %239 = ml_program.global_load @global808 : tensor<1x128x14x14xf32>
    %240 = ml_program.global_load @global824 : tensor<1x512x1x1xf32>
    %241 = ml_program.global_load @global827 : tensor<1x512x14x14xf32>
    %242 = ml_program.global_load @global828 : tensor<1x512x14x14xf32>
    %243 = ml_program.global_load @global834 : tensor<1x128x1x1xf32>
    %244 = ml_program.global_load @global837 : tensor<1x128x14x14xf32>
    %245 = ml_program.global_load @global838 : tensor<1x128x14x14xf32>
    %246 = ml_program.global_load @global855 : tensor<1x544x1x1xf32>
    %247 = ml_program.global_load @global858 : tensor<1x544x14x14xf32>
    %248 = ml_program.global_load @global859 : tensor<1x544x14x14xf32>
    %249 = ml_program.global_load @global865 : tensor<1x128x1x1xf32>
    %250 = ml_program.global_load @global868 : tensor<1x128x14x14xf32>
    %251 = ml_program.global_load @global869 : tensor<1x128x14x14xf32>
    %252 = ml_program.global_load @global887 : tensor<1x576x1x1xf32>
    %253 = ml_program.global_load @global890 : tensor<1x576x14x14xf32>
    %254 = ml_program.global_load @global891 : tensor<1x576x14x14xf32>
    %255 = ml_program.global_load @global897 : tensor<1x128x1x1xf32>
    %256 = ml_program.global_load @global900 : tensor<1x128x14x14xf32>
    %257 = ml_program.global_load @global901 : tensor<1x128x14x14xf32>
    %258 = ml_program.global_load @global920 : tensor<1x608x1x1xf32>
    %259 = ml_program.global_load @global923 : tensor<1x608x14x14xf32>
    %260 = ml_program.global_load @global924 : tensor<1x608x14x14xf32>
    %261 = ml_program.global_load @global930 : tensor<1x128x1x1xf32>
    %262 = ml_program.global_load @global933 : tensor<1x128x14x14xf32>
    %263 = ml_program.global_load @global934 : tensor<1x128x14x14xf32>
    %264 = ml_program.global_load @global954 : tensor<1x640x1x1xf32>
    %265 = ml_program.global_load @global957 : tensor<1x640x14x14xf32>
    %266 = ml_program.global_load @global958 : tensor<1x640x14x14xf32>
    %267 = ml_program.global_load @global964 : tensor<1x128x1x1xf32>
    %268 = ml_program.global_load @global967 : tensor<1x128x14x14xf32>
    %269 = ml_program.global_load @global968 : tensor<1x128x14x14xf32>
    %270 = ml_program.global_load @global989 : tensor<1x672x1x1xf32>
    %271 = ml_program.global_load @global992 : tensor<1x672x14x14xf32>
    %272 = ml_program.global_load @global993 : tensor<1x672x14x14xf32>
    %273 = ml_program.global_load @global999 : tensor<1x128x1x1xf32>
    %274 = ml_program.global_load @global1002 : tensor<1x128x14x14xf32>
    %275 = ml_program.global_load @global1003 : tensor<1x128x14x14xf32>
    %276 = ml_program.global_load @global1025 : tensor<1x704x1x1xf32>
    %277 = ml_program.global_load @global1028 : tensor<1x704x14x14xf32>
    %278 = ml_program.global_load @global1029 : tensor<1x704x14x14xf32>
    %279 = ml_program.global_load @global1035 : tensor<1x128x1x1xf32>
    %280 = ml_program.global_load @global1038 : tensor<1x128x14x14xf32>
    %281 = ml_program.global_load @global1039 : tensor<1x128x14x14xf32>
    %282 = ml_program.global_load @global1062 : tensor<1x736x1x1xf32>
    %283 = ml_program.global_load @global1065 : tensor<1x736x14x14xf32>
    %284 = ml_program.global_load @global1066 : tensor<1x736x14x14xf32>
    %285 = ml_program.global_load @global1072 : tensor<1x128x1x1xf32>
    %286 = ml_program.global_load @global1075 : tensor<1x128x14x14xf32>
    %287 = ml_program.global_load @global1076 : tensor<1x128x14x14xf32>
    %288 = ml_program.global_load @global1100 : tensor<1x768x1x1xf32>
    %289 = ml_program.global_load @global1103 : tensor<1x768x14x14xf32>
    %290 = ml_program.global_load @global1104 : tensor<1x768x14x14xf32>
    %291 = ml_program.global_load @global1110 : tensor<1x128x1x1xf32>
    %292 = ml_program.global_load @global1113 : tensor<1x128x14x14xf32>
    %293 = ml_program.global_load @global1114 : tensor<1x128x14x14xf32>
    %294 = ml_program.global_load @global1139 : tensor<1x800x1x1xf32>
    %295 = ml_program.global_load @global1142 : tensor<1x800x14x14xf32>
    %296 = ml_program.global_load @global1143 : tensor<1x800x14x14xf32>
    %297 = ml_program.global_load @global1149 : tensor<1x128x1x1xf32>
    %298 = ml_program.global_load @global1152 : tensor<1x128x14x14xf32>
    %299 = ml_program.global_load @global1153 : tensor<1x128x14x14xf32>
    %300 = ml_program.global_load @global1179 : tensor<1x832x1x1xf32>
    %301 = ml_program.global_load @global1182 : tensor<1x832x14x14xf32>
    %302 = ml_program.global_load @global1183 : tensor<1x832x14x14xf32>
    %303 = ml_program.global_load @global1189 : tensor<1x128x1x1xf32>
    %304 = ml_program.global_load @global1192 : tensor<1x128x14x14xf32>
    %305 = ml_program.global_load @global1193 : tensor<1x128x14x14xf32>
    %306 = ml_program.global_load @global1220 : tensor<1x864x1x1xf32>
    %307 = ml_program.global_load @global1223 : tensor<1x864x14x14xf32>
    %308 = ml_program.global_load @global1224 : tensor<1x864x14x14xf32>
    %309 = ml_program.global_load @global1230 : tensor<1x128x1x1xf32>
    %310 = ml_program.global_load @global1233 : tensor<1x128x14x14xf32>
    %311 = ml_program.global_load @global1234 : tensor<1x128x14x14xf32>
    %312 = ml_program.global_load @global1262 : tensor<1x896x1x1xf32>
    %313 = ml_program.global_load @global1265 : tensor<1x896x14x14xf32>
    %314 = ml_program.global_load @global1266 : tensor<1x896x14x14xf32>
    %315 = ml_program.global_load @global1272 : tensor<1x128x1x1xf32>
    %316 = ml_program.global_load @global1275 : tensor<1x128x14x14xf32>
    %317 = ml_program.global_load @global1276 : tensor<1x128x14x14xf32>
    %318 = ml_program.global_load @global1305 : tensor<1x928x1x1xf32>
    %319 = ml_program.global_load @global1308 : tensor<1x928x14x14xf32>
    %320 = ml_program.global_load @global1309 : tensor<1x928x14x14xf32>
    %321 = ml_program.global_load @global1315 : tensor<1x128x1x1xf32>
    %322 = ml_program.global_load @global1318 : tensor<1x128x14x14xf32>
    %323 = ml_program.global_load @global1319 : tensor<1x128x14x14xf32>
    %324 = ml_program.global_load @global1349 : tensor<1x960x1x1xf32>
    %325 = ml_program.global_load @global1352 : tensor<1x960x14x14xf32>
    %326 = ml_program.global_load @global1353 : tensor<1x960x14x14xf32>
    %327 = ml_program.global_load @global1359 : tensor<1x128x1x1xf32>
    %328 = ml_program.global_load @global1362 : tensor<1x128x14x14xf32>
    %329 = ml_program.global_load @global1363 : tensor<1x128x14x14xf32>
    %330 = ml_program.global_load @global1394 : tensor<1x992x1x1xf32>
    %331 = ml_program.global_load @global1397 : tensor<1x992x14x14xf32>
    %332 = ml_program.global_load @global1398 : tensor<1x992x14x14xf32>
    %333 = ml_program.global_load @global1404 : tensor<1x128x1x1xf32>
    %334 = ml_program.global_load @global1407 : tensor<1x128x14x14xf32>
    %335 = ml_program.global_load @global1408 : tensor<1x128x14x14xf32>
    %336 = ml_program.global_load @global1440 : tensor<1x1024x1x1xf32>
    %337 = ml_program.global_load @global1443 : tensor<1x1024x14x14xf32>
    %338 = ml_program.global_load @global1444 : tensor<1x1024x14x14xf32>
    %339 = ml_program.global_load @global1448 : tensor<1x14x14x512xf32>
    %340 = ml_program.global_load @global1453 : tensor<1x512x1x1xf32>
    %341 = ml_program.global_load @global1456 : tensor<1x512x7x7xf32>
    %342 = ml_program.global_load @global1457 : tensor<1x512x7x7xf32>
    %343 = ml_program.global_load @global1463 : tensor<1x128x1x1xf32>
    %344 = ml_program.global_load @global1466 : tensor<1x128x7x7xf32>
    %345 = ml_program.global_load @global1467 : tensor<1x128x7x7xf32>
    %346 = ml_program.global_load @global1476 : tensor<1x544x1x1xf32>
    %347 = ml_program.global_load @global1479 : tensor<1x544x7x7xf32>
    %348 = ml_program.global_load @global1480 : tensor<1x544x7x7xf32>
    %349 = ml_program.global_load @global1486 : tensor<1x128x1x1xf32>
    %350 = ml_program.global_load @global1489 : tensor<1x128x7x7xf32>
    %351 = ml_program.global_load @global1490 : tensor<1x128x7x7xf32>
    %352 = ml_program.global_load @global1500 : tensor<1x576x1x1xf32>
    %353 = ml_program.global_load @global1503 : tensor<1x576x7x7xf32>
    %354 = ml_program.global_load @global1504 : tensor<1x576x7x7xf32>
    %355 = ml_program.global_load @global1510 : tensor<1x128x1x1xf32>
    %356 = ml_program.global_load @global1513 : tensor<1x128x7x7xf32>
    %357 = ml_program.global_load @global1514 : tensor<1x128x7x7xf32>
    %358 = ml_program.global_load @global1525 : tensor<1x608x1x1xf32>
    %359 = ml_program.global_load @global1528 : tensor<1x608x7x7xf32>
    %360 = ml_program.global_load @global1529 : tensor<1x608x7x7xf32>
    %361 = ml_program.global_load @global1535 : tensor<1x128x1x1xf32>
    %362 = ml_program.global_load @global1538 : tensor<1x128x7x7xf32>
    %363 = ml_program.global_load @global1539 : tensor<1x128x7x7xf32>
    %364 = ml_program.global_load @global1551 : tensor<1x640x1x1xf32>
    %365 = ml_program.global_load @global1554 : tensor<1x640x7x7xf32>
    %366 = ml_program.global_load @global1555 : tensor<1x640x7x7xf32>
    %367 = ml_program.global_load @global1561 : tensor<1x128x1x1xf32>
    %368 = ml_program.global_load @global1564 : tensor<1x128x7x7xf32>
    %369 = ml_program.global_load @global1565 : tensor<1x128x7x7xf32>
    %370 = ml_program.global_load @global1578 : tensor<1x672x1x1xf32>
    %371 = ml_program.global_load @global1581 : tensor<1x672x7x7xf32>
    %372 = ml_program.global_load @global1582 : tensor<1x672x7x7xf32>
    %373 = ml_program.global_load @global1588 : tensor<1x128x1x1xf32>
    %374 = ml_program.global_load @global1591 : tensor<1x128x7x7xf32>
    %375 = ml_program.global_load @global1592 : tensor<1x128x7x7xf32>
    %376 = ml_program.global_load @global1606 : tensor<1x704x1x1xf32>
    %377 = ml_program.global_load @global1609 : tensor<1x704x7x7xf32>
    %378 = ml_program.global_load @global1610 : tensor<1x704x7x7xf32>
    %379 = ml_program.global_load @global1616 : tensor<1x128x1x1xf32>
    %380 = ml_program.global_load @global1619 : tensor<1x128x7x7xf32>
    %381 = ml_program.global_load @global1620 : tensor<1x128x7x7xf32>
    %382 = ml_program.global_load @global1635 : tensor<1x736x1x1xf32>
    %383 = ml_program.global_load @global1638 : tensor<1x736x7x7xf32>
    %384 = ml_program.global_load @global1639 : tensor<1x736x7x7xf32>
    %385 = ml_program.global_load @global1645 : tensor<1x128x1x1xf32>
    %386 = ml_program.global_load @global1648 : tensor<1x128x7x7xf32>
    %387 = ml_program.global_load @global1649 : tensor<1x128x7x7xf32>
    %388 = ml_program.global_load @global1665 : tensor<1x768x1x1xf32>
    %389 = ml_program.global_load @global1668 : tensor<1x768x7x7xf32>
    %390 = ml_program.global_load @global1669 : tensor<1x768x7x7xf32>
    %391 = ml_program.global_load @global1675 : tensor<1x128x1x1xf32>
    %392 = ml_program.global_load @global1678 : tensor<1x128x7x7xf32>
    %393 = ml_program.global_load @global1679 : tensor<1x128x7x7xf32>
    %394 = ml_program.global_load @global1696 : tensor<1x800x1x1xf32>
    %395 = ml_program.global_load @global1699 : tensor<1x800x7x7xf32>
    %396 = ml_program.global_load @global1700 : tensor<1x800x7x7xf32>
    %397 = ml_program.global_load @global1706 : tensor<1x128x1x1xf32>
    %398 = ml_program.global_load @global1709 : tensor<1x128x7x7xf32>
    %399 = ml_program.global_load @global1710 : tensor<1x128x7x7xf32>
    %400 = ml_program.global_load @global1728 : tensor<1x832x1x1xf32>
    %401 = ml_program.global_load @global1731 : tensor<1x832x7x7xf32>
    %402 = ml_program.global_load @global1732 : tensor<1x832x7x7xf32>
    %403 = ml_program.global_load @global1738 : tensor<1x128x1x1xf32>
    %404 = ml_program.global_load @global1741 : tensor<1x128x7x7xf32>
    %405 = ml_program.global_load @global1742 : tensor<1x128x7x7xf32>
    %406 = ml_program.global_load @global1761 : tensor<1x864x1x1xf32>
    %407 = ml_program.global_load @global1764 : tensor<1x864x7x7xf32>
    %408 = ml_program.global_load @global1765 : tensor<1x864x7x7xf32>
    %409 = ml_program.global_load @global1771 : tensor<1x128x1x1xf32>
    %410 = ml_program.global_load @global1774 : tensor<1x128x7x7xf32>
    %411 = ml_program.global_load @global1775 : tensor<1x128x7x7xf32>
    %412 = ml_program.global_load @global1795 : tensor<1x896x1x1xf32>
    %413 = ml_program.global_load @global1798 : tensor<1x896x7x7xf32>
    %414 = ml_program.global_load @global1799 : tensor<1x896x7x7xf32>
    %415 = ml_program.global_load @global1805 : tensor<1x128x1x1xf32>
    %416 = ml_program.global_load @global1808 : tensor<1x128x7x7xf32>
    %417 = ml_program.global_load @global1809 : tensor<1x128x7x7xf32>
    %418 = ml_program.global_load @global1830 : tensor<1x928x1x1xf32>
    %419 = ml_program.global_load @global1833 : tensor<1x928x7x7xf32>
    %420 = ml_program.global_load @global1834 : tensor<1x928x7x7xf32>
    %421 = ml_program.global_load @global1840 : tensor<1x128x1x1xf32>
    %422 = ml_program.global_load @global1843 : tensor<1x128x7x7xf32>
    %423 = ml_program.global_load @global1844 : tensor<1x128x7x7xf32>
    %424 = ml_program.global_load @global1866 : tensor<1x960x1x1xf32>
    %425 = ml_program.global_load @global1869 : tensor<1x960x7x7xf32>
    %426 = ml_program.global_load @global1870 : tensor<1x960x7x7xf32>
    %427 = ml_program.global_load @global1876 : tensor<1x128x1x1xf32>
    %428 = ml_program.global_load @global1879 : tensor<1x128x7x7xf32>
    %429 = ml_program.global_load @global1880 : tensor<1x128x7x7xf32>
    %430 = ml_program.global_load @global1903 : tensor<1x992x1x1xf32>
    %431 = ml_program.global_load @global1906 : tensor<1x992x7x7xf32>
    %432 = ml_program.global_load @global1907 : tensor<1x992x7x7xf32>
    %433 = ml_program.global_load @global1913 : tensor<1x128x1x1xf32>
    %434 = ml_program.global_load @global1916 : tensor<1x128x7x7xf32>
    %435 = ml_program.global_load @global1917 : tensor<1x128x7x7xf32>
    %436 = ml_program.global_load @global1941 : tensor<1x1024x1x1xf32>
    %437 = ml_program.global_load @global1944 : tensor<1x1024x7x7xf32>
    %438 = ml_program.global_load @global1945 : tensor<1x1024x7x7xf32>
    %439 = ml_program.global_load @global1946 : tensor<1x7x7x1024xf32>
    %440 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %441 = "tosa.transpose"(%70, %0) : (tensor<1x1024x1000xf32>, tensor<3xi32>) -> tensor<1x1000x1024xf32>
    %442 = "tosa.matmul"(%440, %441) : (tensor<1x1x1000xf32>, tensor<1x1000x1024xf32>) -> tensor<1x1x1024xf32>
    %443 = "tosa.reshape"(%442) {new_shape = array<i64: 1, 1, 1, 1024>} : (tensor<1x1x1024xf32>) -> tensor<1x1x1x1024xf32>
    %444 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%439, %cst_0, %443 : tensor<1x7x7x1024xf32>, tensor<7x7xf32>, tensor<1x1x1x1024xf32>) outs(%cst : tensor<1x7x7x1024xf32>) {
    ^bb0(%in: f32, %in_636: f32, %in_637: f32, %out: f32):
      %1865 = arith.mulf %in_637, %cst_39 : f32
      %1866 = arith.addf %1865, %out : f32
      linalg.yield %1866 : f32
    } -> tensor<1x7x7x1024xf32>
    %445 = "tosa.transpose"(%444, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi64>) -> tensor<1x1024x7x7xf32>
    %446 = "tosa.equal"(%437, %438) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %447 = "tosa.select"(%446, %445, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %448 = "tosa.mul"(%68, %447) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %449 = "tosa.mul"(%436, %448) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %extracted_slice = tensor.extract_slice %449[0, 992, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_43 = tensor.extract_slice %449[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_44 = tensor.extract_slice %449[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_45 = tensor.extract_slice %449[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_46 = tensor.extract_slice %449[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_47 = tensor.extract_slice %449[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_48 = tensor.extract_slice %449[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_49 = tensor.extract_slice %449[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_50 = tensor.extract_slice %449[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_51 = tensor.extract_slice %449[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_52 = tensor.extract_slice %449[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_53 = tensor.extract_slice %449[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_54 = tensor.extract_slice %449[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_55 = tensor.extract_slice %449[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_56 = tensor.extract_slice %449[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_57 = tensor.extract_slice %449[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_58 = tensor.extract_slice %449[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x512x7x7xf32>
    %450 = "tosa.transpose"(%extracted_slice, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %451 = "tosa.transpose"(%9, %4) : (tensor<32x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x32xf32>
    %452 = "tosa.transpose_conv2d"(%450, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %453 = "tosa.transpose"(%452, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %454 = "tosa.equal"(%434, %435) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %455 = "tosa.select"(%454, %453, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %456 = "tosa.mul"(%8, %455) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %457 = "tosa.mul"(%433, %456) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %458 = "tosa.transpose"(%457, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %459 = "tosa.transpose"(%67, %4) : (tensor<128x1x1x992xf32>, tensor<4xi64>) -> tensor<992x1x1x128xf32>
    %460 = "tosa.transpose_conv2d"(%458, %459, %cst_2) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 992>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<992x1x1x128xf32>, tensor<992xf32>) -> tensor<1x7x7x992xf32>
    %461 = "tosa.transpose"(%460, %2) : (tensor<1x7x7x992xf32>, tensor<4xi64>) -> tensor<1x992x7x7xf32>
    %462 = "tosa.equal"(%431, %432) : (tensor<1x992x7x7xf32>, tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xi1>
    %463 = "tosa.select"(%462, %461, %3) : (tensor<1x992x7x7xi1>, tensor<1x992x7x7xf32>, tensor<f32>) -> tensor<1x992x7x7xf32>
    %464 = "tosa.mul"(%66, %463) {shift = 0 : i8} : (tensor<1x992x1x1xf32>, tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xf32>
    %465 = "tosa.mul"(%430, %464) {shift = 0 : i8} : (tensor<1x992x1x1xf32>, tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xf32>
    %extracted_slice_59 = tensor.extract_slice %465[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %466 = "tosa.add"(%extracted_slice_43, %extracted_slice_59) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_60 = tensor.extract_slice %465[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %467 = "tosa.add"(%extracted_slice_44, %extracted_slice_60) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_61 = tensor.extract_slice %465[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %468 = "tosa.add"(%extracted_slice_45, %extracted_slice_61) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_62 = tensor.extract_slice %465[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %469 = "tosa.add"(%extracted_slice_46, %extracted_slice_62) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_63 = tensor.extract_slice %465[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %470 = "tosa.add"(%extracted_slice_47, %extracted_slice_63) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_64 = tensor.extract_slice %465[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %471 = "tosa.add"(%extracted_slice_48, %extracted_slice_64) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_65 = tensor.extract_slice %465[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %472 = "tosa.add"(%extracted_slice_49, %extracted_slice_65) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_66 = tensor.extract_slice %465[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %473 = "tosa.add"(%extracted_slice_50, %extracted_slice_66) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_67 = tensor.extract_slice %465[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %474 = "tosa.add"(%extracted_slice_51, %extracted_slice_67) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_68 = tensor.extract_slice %465[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %475 = "tosa.add"(%extracted_slice_52, %extracted_slice_68) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_69 = tensor.extract_slice %465[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %476 = "tosa.add"(%extracted_slice_53, %extracted_slice_69) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_70 = tensor.extract_slice %465[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %477 = "tosa.add"(%extracted_slice_54, %extracted_slice_70) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_71 = tensor.extract_slice %465[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %478 = "tosa.add"(%extracted_slice_55, %extracted_slice_71) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_72 = tensor.extract_slice %465[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %479 = "tosa.add"(%extracted_slice_56, %extracted_slice_72) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_73 = tensor.extract_slice %465[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %480 = "tosa.add"(%extracted_slice_57, %extracted_slice_73) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_74 = tensor.extract_slice %465[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x512x7x7xf32>
    %481 = "tosa.add"(%extracted_slice_58, %extracted_slice_74) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %482 = "tosa.transpose"(%466, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %483 = "tosa.transpose_conv2d"(%482, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %484 = "tosa.transpose"(%483, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %485 = "tosa.equal"(%428, %429) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %486 = "tosa.select"(%485, %484, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %487 = "tosa.mul"(%8, %486) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %488 = "tosa.mul"(%427, %487) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %489 = "tosa.transpose"(%488, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %490 = "tosa.transpose"(%65, %4) : (tensor<128x1x1x960xf32>, tensor<4xi64>) -> tensor<960x1x1x128xf32>
    %491 = "tosa.transpose_conv2d"(%489, %490, %cst_3) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 960>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<960x1x1x128xf32>, tensor<960xf32>) -> tensor<1x7x7x960xf32>
    %492 = "tosa.transpose"(%491, %2) : (tensor<1x7x7x960xf32>, tensor<4xi64>) -> tensor<1x960x7x7xf32>
    %493 = "tosa.equal"(%425, %426) : (tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xi1>
    %494 = "tosa.select"(%493, %492, %3) : (tensor<1x960x7x7xi1>, tensor<1x960x7x7xf32>, tensor<f32>) -> tensor<1x960x7x7xf32>
    %495 = "tosa.mul"(%64, %494) {shift = 0 : i8} : (tensor<1x960x1x1xf32>, tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    %496 = "tosa.mul"(%424, %495) {shift = 0 : i8} : (tensor<1x960x1x1xf32>, tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    %extracted_slice_75 = tensor.extract_slice %496[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %497 = "tosa.add"(%467, %extracted_slice_75) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_76 = tensor.extract_slice %496[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %498 = "tosa.add"(%468, %extracted_slice_76) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_77 = tensor.extract_slice %496[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %499 = "tosa.add"(%469, %extracted_slice_77) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_78 = tensor.extract_slice %496[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %500 = "tosa.add"(%470, %extracted_slice_78) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_79 = tensor.extract_slice %496[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %501 = "tosa.add"(%471, %extracted_slice_79) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_80 = tensor.extract_slice %496[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %502 = "tosa.add"(%472, %extracted_slice_80) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_81 = tensor.extract_slice %496[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %503 = "tosa.add"(%473, %extracted_slice_81) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_82 = tensor.extract_slice %496[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %504 = "tosa.add"(%474, %extracted_slice_82) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_83 = tensor.extract_slice %496[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %505 = "tosa.add"(%475, %extracted_slice_83) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_84 = tensor.extract_slice %496[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %506 = "tosa.add"(%476, %extracted_slice_84) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_85 = tensor.extract_slice %496[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %507 = "tosa.add"(%477, %extracted_slice_85) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_86 = tensor.extract_slice %496[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %508 = "tosa.add"(%478, %extracted_slice_86) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_87 = tensor.extract_slice %496[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %509 = "tosa.add"(%479, %extracted_slice_87) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_88 = tensor.extract_slice %496[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %510 = "tosa.add"(%480, %extracted_slice_88) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_89 = tensor.extract_slice %496[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x512x7x7xf32>
    %511 = "tosa.add"(%481, %extracted_slice_89) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %512 = "tosa.transpose"(%497, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %513 = "tosa.transpose_conv2d"(%512, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %514 = "tosa.transpose"(%513, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %515 = "tosa.equal"(%422, %423) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %516 = "tosa.select"(%515, %514, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %517 = "tosa.mul"(%8, %516) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %518 = "tosa.mul"(%421, %517) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %519 = "tosa.transpose"(%518, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %520 = "tosa.transpose"(%63, %4) : (tensor<128x1x1x928xf32>, tensor<4xi64>) -> tensor<928x1x1x128xf32>
    %521 = "tosa.transpose_conv2d"(%519, %520, %cst_4) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 928>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<928x1x1x128xf32>, tensor<928xf32>) -> tensor<1x7x7x928xf32>
    %522 = "tosa.transpose"(%521, %2) : (tensor<1x7x7x928xf32>, tensor<4xi64>) -> tensor<1x928x7x7xf32>
    %523 = "tosa.equal"(%419, %420) : (tensor<1x928x7x7xf32>, tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xi1>
    %524 = "tosa.select"(%523, %522, %3) : (tensor<1x928x7x7xi1>, tensor<1x928x7x7xf32>, tensor<f32>) -> tensor<1x928x7x7xf32>
    %525 = "tosa.mul"(%62, %524) {shift = 0 : i8} : (tensor<1x928x1x1xf32>, tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xf32>
    %526 = "tosa.mul"(%418, %525) {shift = 0 : i8} : (tensor<1x928x1x1xf32>, tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xf32>
    %extracted_slice_90 = tensor.extract_slice %526[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %527 = "tosa.add"(%498, %extracted_slice_90) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_91 = tensor.extract_slice %526[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %528 = "tosa.add"(%499, %extracted_slice_91) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_92 = tensor.extract_slice %526[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %529 = "tosa.add"(%500, %extracted_slice_92) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_93 = tensor.extract_slice %526[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %530 = "tosa.add"(%501, %extracted_slice_93) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_94 = tensor.extract_slice %526[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %531 = "tosa.add"(%502, %extracted_slice_94) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_95 = tensor.extract_slice %526[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %532 = "tosa.add"(%503, %extracted_slice_95) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_96 = tensor.extract_slice %526[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %533 = "tosa.add"(%504, %extracted_slice_96) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_97 = tensor.extract_slice %526[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %534 = "tosa.add"(%505, %extracted_slice_97) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_98 = tensor.extract_slice %526[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %535 = "tosa.add"(%506, %extracted_slice_98) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_99 = tensor.extract_slice %526[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %536 = "tosa.add"(%507, %extracted_slice_99) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_100 = tensor.extract_slice %526[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %537 = "tosa.add"(%508, %extracted_slice_100) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_101 = tensor.extract_slice %526[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %538 = "tosa.add"(%509, %extracted_slice_101) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_102 = tensor.extract_slice %526[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %539 = "tosa.add"(%510, %extracted_slice_102) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_103 = tensor.extract_slice %526[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x512x7x7xf32>
    %540 = "tosa.add"(%511, %extracted_slice_103) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %541 = "tosa.transpose"(%527, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %542 = "tosa.transpose_conv2d"(%541, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %543 = "tosa.transpose"(%542, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %544 = "tosa.equal"(%416, %417) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %545 = "tosa.select"(%544, %543, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %546 = "tosa.mul"(%8, %545) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %547 = "tosa.mul"(%415, %546) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %548 = "tosa.transpose"(%547, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %549 = "tosa.transpose"(%61, %4) : (tensor<128x1x1x896xf32>, tensor<4xi64>) -> tensor<896x1x1x128xf32>
    %550 = "tosa.transpose_conv2d"(%548, %549, %cst_5) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 896>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<896x1x1x128xf32>, tensor<896xf32>) -> tensor<1x7x7x896xf32>
    %551 = "tosa.transpose"(%550, %2) : (tensor<1x7x7x896xf32>, tensor<4xi64>) -> tensor<1x896x7x7xf32>
    %552 = "tosa.equal"(%413, %414) : (tensor<1x896x7x7xf32>, tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xi1>
    %553 = "tosa.select"(%552, %551, %3) : (tensor<1x896x7x7xi1>, tensor<1x896x7x7xf32>, tensor<f32>) -> tensor<1x896x7x7xf32>
    %554 = "tosa.mul"(%60, %553) {shift = 0 : i8} : (tensor<1x896x1x1xf32>, tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xf32>
    %555 = "tosa.mul"(%412, %554) {shift = 0 : i8} : (tensor<1x896x1x1xf32>, tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xf32>
    %extracted_slice_104 = tensor.extract_slice %555[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %556 = "tosa.add"(%528, %extracted_slice_104) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_105 = tensor.extract_slice %555[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %557 = "tosa.add"(%529, %extracted_slice_105) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_106 = tensor.extract_slice %555[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %558 = "tosa.add"(%530, %extracted_slice_106) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_107 = tensor.extract_slice %555[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %559 = "tosa.add"(%531, %extracted_slice_107) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_108 = tensor.extract_slice %555[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %560 = "tosa.add"(%532, %extracted_slice_108) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_109 = tensor.extract_slice %555[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %561 = "tosa.add"(%533, %extracted_slice_109) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_110 = tensor.extract_slice %555[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %562 = "tosa.add"(%534, %extracted_slice_110) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_111 = tensor.extract_slice %555[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %563 = "tosa.add"(%535, %extracted_slice_111) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_112 = tensor.extract_slice %555[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %564 = "tosa.add"(%536, %extracted_slice_112) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_113 = tensor.extract_slice %555[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %565 = "tosa.add"(%537, %extracted_slice_113) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_114 = tensor.extract_slice %555[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %566 = "tosa.add"(%538, %extracted_slice_114) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_115 = tensor.extract_slice %555[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %567 = "tosa.add"(%539, %extracted_slice_115) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_116 = tensor.extract_slice %555[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x512x7x7xf32>
    %568 = "tosa.add"(%540, %extracted_slice_116) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %569 = "tosa.transpose"(%556, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %570 = "tosa.transpose_conv2d"(%569, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %571 = "tosa.transpose"(%570, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %572 = "tosa.equal"(%410, %411) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %573 = "tosa.select"(%572, %571, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %574 = "tosa.mul"(%8, %573) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %575 = "tosa.mul"(%409, %574) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %576 = "tosa.transpose"(%575, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %577 = "tosa.transpose"(%59, %4) : (tensor<128x1x1x864xf32>, tensor<4xi64>) -> tensor<864x1x1x128xf32>
    %578 = "tosa.transpose_conv2d"(%576, %577, %cst_6) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 864>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<864x1x1x128xf32>, tensor<864xf32>) -> tensor<1x7x7x864xf32>
    %579 = "tosa.transpose"(%578, %2) : (tensor<1x7x7x864xf32>, tensor<4xi64>) -> tensor<1x864x7x7xf32>
    %580 = "tosa.equal"(%407, %408) : (tensor<1x864x7x7xf32>, tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xi1>
    %581 = "tosa.select"(%580, %579, %3) : (tensor<1x864x7x7xi1>, tensor<1x864x7x7xf32>, tensor<f32>) -> tensor<1x864x7x7xf32>
    %582 = "tosa.mul"(%58, %581) {shift = 0 : i8} : (tensor<1x864x1x1xf32>, tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xf32>
    %583 = "tosa.mul"(%406, %582) {shift = 0 : i8} : (tensor<1x864x1x1xf32>, tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xf32>
    %extracted_slice_117 = tensor.extract_slice %583[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %584 = "tosa.add"(%557, %extracted_slice_117) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_118 = tensor.extract_slice %583[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %585 = "tosa.add"(%558, %extracted_slice_118) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_119 = tensor.extract_slice %583[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %586 = "tosa.add"(%559, %extracted_slice_119) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_120 = tensor.extract_slice %583[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %587 = "tosa.add"(%560, %extracted_slice_120) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_121 = tensor.extract_slice %583[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %588 = "tosa.add"(%561, %extracted_slice_121) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_122 = tensor.extract_slice %583[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %589 = "tosa.add"(%562, %extracted_slice_122) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_123 = tensor.extract_slice %583[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %590 = "tosa.add"(%563, %extracted_slice_123) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_124 = tensor.extract_slice %583[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %591 = "tosa.add"(%564, %extracted_slice_124) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_125 = tensor.extract_slice %583[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %592 = "tosa.add"(%565, %extracted_slice_125) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_126 = tensor.extract_slice %583[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %593 = "tosa.add"(%566, %extracted_slice_126) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_127 = tensor.extract_slice %583[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %594 = "tosa.add"(%567, %extracted_slice_127) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_128 = tensor.extract_slice %583[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x512x7x7xf32>
    %595 = "tosa.add"(%568, %extracted_slice_128) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %596 = "tosa.transpose"(%584, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %597 = "tosa.transpose_conv2d"(%596, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %598 = "tosa.transpose"(%597, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %599 = "tosa.equal"(%404, %405) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %600 = "tosa.select"(%599, %598, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %601 = "tosa.mul"(%8, %600) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %602 = "tosa.mul"(%403, %601) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %603 = "tosa.transpose"(%602, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %604 = "tosa.transpose"(%57, %4) : (tensor<128x1x1x832xf32>, tensor<4xi64>) -> tensor<832x1x1x128xf32>
    %605 = "tosa.transpose_conv2d"(%603, %604, %cst_7) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 832>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<832x1x1x128xf32>, tensor<832xf32>) -> tensor<1x7x7x832xf32>
    %606 = "tosa.transpose"(%605, %2) : (tensor<1x7x7x832xf32>, tensor<4xi64>) -> tensor<1x832x7x7xf32>
    %607 = "tosa.equal"(%401, %402) : (tensor<1x832x7x7xf32>, tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xi1>
    %608 = "tosa.select"(%607, %606, %3) : (tensor<1x832x7x7xi1>, tensor<1x832x7x7xf32>, tensor<f32>) -> tensor<1x832x7x7xf32>
    %609 = "tosa.mul"(%56, %608) {shift = 0 : i8} : (tensor<1x832x1x1xf32>, tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xf32>
    %610 = "tosa.mul"(%400, %609) {shift = 0 : i8} : (tensor<1x832x1x1xf32>, tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xf32>
    %extracted_slice_129 = tensor.extract_slice %610[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %611 = "tosa.add"(%585, %extracted_slice_129) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_130 = tensor.extract_slice %610[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %612 = "tosa.add"(%586, %extracted_slice_130) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_131 = tensor.extract_slice %610[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %613 = "tosa.add"(%587, %extracted_slice_131) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_132 = tensor.extract_slice %610[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %614 = "tosa.add"(%588, %extracted_slice_132) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_133 = tensor.extract_slice %610[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %615 = "tosa.add"(%589, %extracted_slice_133) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_134 = tensor.extract_slice %610[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %616 = "tosa.add"(%590, %extracted_slice_134) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_135 = tensor.extract_slice %610[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %617 = "tosa.add"(%591, %extracted_slice_135) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_136 = tensor.extract_slice %610[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %618 = "tosa.add"(%592, %extracted_slice_136) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_137 = tensor.extract_slice %610[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %619 = "tosa.add"(%593, %extracted_slice_137) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_138 = tensor.extract_slice %610[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %620 = "tosa.add"(%594, %extracted_slice_138) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_139 = tensor.extract_slice %610[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x512x7x7xf32>
    %621 = "tosa.add"(%595, %extracted_slice_139) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %622 = "tosa.transpose"(%611, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %623 = "tosa.transpose_conv2d"(%622, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %624 = "tosa.transpose"(%623, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %625 = "tosa.equal"(%398, %399) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %626 = "tosa.select"(%625, %624, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %627 = "tosa.mul"(%8, %626) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %628 = "tosa.mul"(%397, %627) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %629 = "tosa.transpose"(%628, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %630 = "tosa.transpose"(%55, %4) : (tensor<128x1x1x800xf32>, tensor<4xi64>) -> tensor<800x1x1x128xf32>
    %631 = "tosa.transpose_conv2d"(%629, %630, %cst_8) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 800>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<800x1x1x128xf32>, tensor<800xf32>) -> tensor<1x7x7x800xf32>
    %632 = "tosa.transpose"(%631, %2) : (tensor<1x7x7x800xf32>, tensor<4xi64>) -> tensor<1x800x7x7xf32>
    %633 = "tosa.equal"(%395, %396) : (tensor<1x800x7x7xf32>, tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xi1>
    %634 = "tosa.select"(%633, %632, %3) : (tensor<1x800x7x7xi1>, tensor<1x800x7x7xf32>, tensor<f32>) -> tensor<1x800x7x7xf32>
    %635 = "tosa.mul"(%54, %634) {shift = 0 : i8} : (tensor<1x800x1x1xf32>, tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xf32>
    %636 = "tosa.mul"(%394, %635) {shift = 0 : i8} : (tensor<1x800x1x1xf32>, tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xf32>
    %extracted_slice_140 = tensor.extract_slice %636[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %637 = "tosa.add"(%612, %extracted_slice_140) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_141 = tensor.extract_slice %636[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %638 = "tosa.add"(%613, %extracted_slice_141) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_142 = tensor.extract_slice %636[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %639 = "tosa.add"(%614, %extracted_slice_142) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_143 = tensor.extract_slice %636[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %640 = "tosa.add"(%615, %extracted_slice_143) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_144 = tensor.extract_slice %636[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %641 = "tosa.add"(%616, %extracted_slice_144) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_145 = tensor.extract_slice %636[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %642 = "tosa.add"(%617, %extracted_slice_145) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_146 = tensor.extract_slice %636[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %643 = "tosa.add"(%618, %extracted_slice_146) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_147 = tensor.extract_slice %636[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %644 = "tosa.add"(%619, %extracted_slice_147) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_148 = tensor.extract_slice %636[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %645 = "tosa.add"(%620, %extracted_slice_148) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_149 = tensor.extract_slice %636[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x512x7x7xf32>
    %646 = "tosa.add"(%621, %extracted_slice_149) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %647 = "tosa.transpose"(%637, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %648 = "tosa.transpose_conv2d"(%647, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %649 = "tosa.transpose"(%648, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %650 = "tosa.equal"(%392, %393) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %651 = "tosa.select"(%650, %649, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %652 = "tosa.mul"(%8, %651) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %653 = "tosa.mul"(%391, %652) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %654 = "tosa.transpose"(%653, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %655 = "tosa.transpose"(%53, %4) : (tensor<128x1x1x768xf32>, tensor<4xi64>) -> tensor<768x1x1x128xf32>
    %656 = "tosa.transpose_conv2d"(%654, %655, %cst_9) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 768>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<768x1x1x128xf32>, tensor<768xf32>) -> tensor<1x7x7x768xf32>
    %657 = "tosa.transpose"(%656, %2) : (tensor<1x7x7x768xf32>, tensor<4xi64>) -> tensor<1x768x7x7xf32>
    %658 = "tosa.equal"(%389, %390) : (tensor<1x768x7x7xf32>, tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xi1>
    %659 = "tosa.select"(%658, %657, %3) : (tensor<1x768x7x7xi1>, tensor<1x768x7x7xf32>, tensor<f32>) -> tensor<1x768x7x7xf32>
    %660 = "tosa.mul"(%52, %659) {shift = 0 : i8} : (tensor<1x768x1x1xf32>, tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %661 = "tosa.mul"(%388, %660) {shift = 0 : i8} : (tensor<1x768x1x1xf32>, tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %extracted_slice_150 = tensor.extract_slice %661[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %662 = "tosa.add"(%638, %extracted_slice_150) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_151 = tensor.extract_slice %661[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %663 = "tosa.add"(%639, %extracted_slice_151) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_152 = tensor.extract_slice %661[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %664 = "tosa.add"(%640, %extracted_slice_152) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_153 = tensor.extract_slice %661[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %665 = "tosa.add"(%641, %extracted_slice_153) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_154 = tensor.extract_slice %661[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %666 = "tosa.add"(%642, %extracted_slice_154) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_155 = tensor.extract_slice %661[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %667 = "tosa.add"(%643, %extracted_slice_155) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_156 = tensor.extract_slice %661[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %668 = "tosa.add"(%644, %extracted_slice_156) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_157 = tensor.extract_slice %661[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %669 = "tosa.add"(%645, %extracted_slice_157) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_158 = tensor.extract_slice %661[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x512x7x7xf32>
    %670 = "tosa.add"(%646, %extracted_slice_158) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %671 = "tosa.transpose"(%662, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %672 = "tosa.transpose_conv2d"(%671, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %673 = "tosa.transpose"(%672, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %674 = "tosa.equal"(%386, %387) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %675 = "tosa.select"(%674, %673, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %676 = "tosa.mul"(%8, %675) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %677 = "tosa.mul"(%385, %676) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %678 = "tosa.transpose"(%677, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %679 = "tosa.transpose"(%51, %4) : (tensor<128x1x1x736xf32>, tensor<4xi64>) -> tensor<736x1x1x128xf32>
    %680 = "tosa.transpose_conv2d"(%678, %679, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 736>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<736x1x1x128xf32>, tensor<736xf32>) -> tensor<1x7x7x736xf32>
    %681 = "tosa.transpose"(%680, %2) : (tensor<1x7x7x736xf32>, tensor<4xi64>) -> tensor<1x736x7x7xf32>
    %682 = "tosa.equal"(%383, %384) : (tensor<1x736x7x7xf32>, tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xi1>
    %683 = "tosa.select"(%682, %681, %3) : (tensor<1x736x7x7xi1>, tensor<1x736x7x7xf32>, tensor<f32>) -> tensor<1x736x7x7xf32>
    %684 = "tosa.mul"(%50, %683) {shift = 0 : i8} : (tensor<1x736x1x1xf32>, tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xf32>
    %685 = "tosa.mul"(%382, %684) {shift = 0 : i8} : (tensor<1x736x1x1xf32>, tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xf32>
    %extracted_slice_159 = tensor.extract_slice %685[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %686 = "tosa.add"(%663, %extracted_slice_159) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_160 = tensor.extract_slice %685[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %687 = "tosa.add"(%664, %extracted_slice_160) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_161 = tensor.extract_slice %685[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %688 = "tosa.add"(%665, %extracted_slice_161) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_162 = tensor.extract_slice %685[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %689 = "tosa.add"(%666, %extracted_slice_162) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_163 = tensor.extract_slice %685[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %690 = "tosa.add"(%667, %extracted_slice_163) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_164 = tensor.extract_slice %685[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %691 = "tosa.add"(%668, %extracted_slice_164) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_165 = tensor.extract_slice %685[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %692 = "tosa.add"(%669, %extracted_slice_165) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_166 = tensor.extract_slice %685[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x512x7x7xf32>
    %693 = "tosa.add"(%670, %extracted_slice_166) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %694 = "tosa.transpose"(%686, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %695 = "tosa.transpose_conv2d"(%694, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %696 = "tosa.transpose"(%695, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %697 = "tosa.equal"(%380, %381) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %698 = "tosa.select"(%697, %696, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %699 = "tosa.mul"(%8, %698) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %700 = "tosa.mul"(%379, %699) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %701 = "tosa.transpose"(%700, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %702 = "tosa.transpose"(%49, %4) : (tensor<128x1x1x704xf32>, tensor<4xi64>) -> tensor<704x1x1x128xf32>
    %703 = "tosa.transpose_conv2d"(%701, %702, %cst_11) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 704>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<704x1x1x128xf32>, tensor<704xf32>) -> tensor<1x7x7x704xf32>
    %704 = "tosa.transpose"(%703, %2) : (tensor<1x7x7x704xf32>, tensor<4xi64>) -> tensor<1x704x7x7xf32>
    %705 = "tosa.equal"(%377, %378) : (tensor<1x704x7x7xf32>, tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xi1>
    %706 = "tosa.select"(%705, %704, %3) : (tensor<1x704x7x7xi1>, tensor<1x704x7x7xf32>, tensor<f32>) -> tensor<1x704x7x7xf32>
    %707 = "tosa.mul"(%48, %706) {shift = 0 : i8} : (tensor<1x704x1x1xf32>, tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xf32>
    %708 = "tosa.mul"(%376, %707) {shift = 0 : i8} : (tensor<1x704x1x1xf32>, tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xf32>
    %extracted_slice_167 = tensor.extract_slice %708[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %709 = "tosa.add"(%687, %extracted_slice_167) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_168 = tensor.extract_slice %708[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %710 = "tosa.add"(%688, %extracted_slice_168) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_169 = tensor.extract_slice %708[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %711 = "tosa.add"(%689, %extracted_slice_169) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_170 = tensor.extract_slice %708[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %712 = "tosa.add"(%690, %extracted_slice_170) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_171 = tensor.extract_slice %708[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %713 = "tosa.add"(%691, %extracted_slice_171) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_172 = tensor.extract_slice %708[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %714 = "tosa.add"(%692, %extracted_slice_172) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_173 = tensor.extract_slice %708[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x512x7x7xf32>
    %715 = "tosa.add"(%693, %extracted_slice_173) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %716 = "tosa.transpose"(%709, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %717 = "tosa.transpose_conv2d"(%716, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %718 = "tosa.transpose"(%717, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %719 = "tosa.equal"(%374, %375) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %720 = "tosa.select"(%719, %718, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %721 = "tosa.mul"(%8, %720) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %722 = "tosa.mul"(%373, %721) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %723 = "tosa.transpose"(%722, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %724 = "tosa.transpose"(%47, %4) : (tensor<128x1x1x672xf32>, tensor<4xi64>) -> tensor<672x1x1x128xf32>
    %725 = "tosa.transpose_conv2d"(%723, %724, %cst_12) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 672>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<672x1x1x128xf32>, tensor<672xf32>) -> tensor<1x7x7x672xf32>
    %726 = "tosa.transpose"(%725, %2) : (tensor<1x7x7x672xf32>, tensor<4xi64>) -> tensor<1x672x7x7xf32>
    %727 = "tosa.equal"(%371, %372) : (tensor<1x672x7x7xf32>, tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xi1>
    %728 = "tosa.select"(%727, %726, %3) : (tensor<1x672x7x7xi1>, tensor<1x672x7x7xf32>, tensor<f32>) -> tensor<1x672x7x7xf32>
    %729 = "tosa.mul"(%46, %728) {shift = 0 : i8} : (tensor<1x672x1x1xf32>, tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    %730 = "tosa.mul"(%370, %729) {shift = 0 : i8} : (tensor<1x672x1x1xf32>, tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    %extracted_slice_174 = tensor.extract_slice %730[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %731 = "tosa.add"(%710, %extracted_slice_174) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_175 = tensor.extract_slice %730[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %732 = "tosa.add"(%711, %extracted_slice_175) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_176 = tensor.extract_slice %730[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %733 = "tosa.add"(%712, %extracted_slice_176) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_177 = tensor.extract_slice %730[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %734 = "tosa.add"(%713, %extracted_slice_177) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_178 = tensor.extract_slice %730[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %735 = "tosa.add"(%714, %extracted_slice_178) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_179 = tensor.extract_slice %730[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x512x7x7xf32>
    %736 = "tosa.add"(%715, %extracted_slice_179) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %737 = "tosa.transpose"(%731, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %738 = "tosa.transpose_conv2d"(%737, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %739 = "tosa.transpose"(%738, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %740 = "tosa.equal"(%368, %369) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %741 = "tosa.select"(%740, %739, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %742 = "tosa.mul"(%8, %741) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %743 = "tosa.mul"(%367, %742) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %744 = "tosa.transpose"(%743, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %745 = "tosa.transpose"(%45, %4) : (tensor<128x1x1x640xf32>, tensor<4xi64>) -> tensor<640x1x1x128xf32>
    %746 = "tosa.transpose_conv2d"(%744, %745, %cst_13) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 640>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<640x1x1x128xf32>, tensor<640xf32>) -> tensor<1x7x7x640xf32>
    %747 = "tosa.transpose"(%746, %2) : (tensor<1x7x7x640xf32>, tensor<4xi64>) -> tensor<1x640x7x7xf32>
    %748 = "tosa.equal"(%365, %366) : (tensor<1x640x7x7xf32>, tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xi1>
    %749 = "tosa.select"(%748, %747, %3) : (tensor<1x640x7x7xi1>, tensor<1x640x7x7xf32>, tensor<f32>) -> tensor<1x640x7x7xf32>
    %750 = "tosa.mul"(%44, %749) {shift = 0 : i8} : (tensor<1x640x1x1xf32>, tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xf32>
    %751 = "tosa.mul"(%364, %750) {shift = 0 : i8} : (tensor<1x640x1x1xf32>, tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xf32>
    %extracted_slice_180 = tensor.extract_slice %751[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x32x7x7xf32>
    %752 = "tosa.add"(%732, %extracted_slice_180) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_181 = tensor.extract_slice %751[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x32x7x7xf32>
    %753 = "tosa.add"(%733, %extracted_slice_181) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_182 = tensor.extract_slice %751[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x32x7x7xf32>
    %754 = "tosa.add"(%734, %extracted_slice_182) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_183 = tensor.extract_slice %751[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x32x7x7xf32>
    %755 = "tosa.add"(%735, %extracted_slice_183) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_184 = tensor.extract_slice %751[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x512x7x7xf32>
    %756 = "tosa.add"(%736, %extracted_slice_184) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %757 = "tosa.transpose"(%752, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %758 = "tosa.transpose_conv2d"(%757, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %759 = "tosa.transpose"(%758, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %760 = "tosa.equal"(%362, %363) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %761 = "tosa.select"(%760, %759, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %762 = "tosa.mul"(%8, %761) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %763 = "tosa.mul"(%361, %762) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %764 = "tosa.transpose"(%763, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %765 = "tosa.transpose"(%43, %4) : (tensor<128x1x1x608xf32>, tensor<4xi64>) -> tensor<608x1x1x128xf32>
    %766 = "tosa.transpose_conv2d"(%764, %765, %cst_14) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 608>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<608x1x1x128xf32>, tensor<608xf32>) -> tensor<1x7x7x608xf32>
    %767 = "tosa.transpose"(%766, %2) : (tensor<1x7x7x608xf32>, tensor<4xi64>) -> tensor<1x608x7x7xf32>
    %768 = "tosa.equal"(%359, %360) : (tensor<1x608x7x7xf32>, tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xi1>
    %769 = "tosa.select"(%768, %767, %3) : (tensor<1x608x7x7xi1>, tensor<1x608x7x7xf32>, tensor<f32>) -> tensor<1x608x7x7xf32>
    %770 = "tosa.mul"(%42, %769) {shift = 0 : i8} : (tensor<1x608x1x1xf32>, tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xf32>
    %771 = "tosa.mul"(%358, %770) {shift = 0 : i8} : (tensor<1x608x1x1xf32>, tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xf32>
    %extracted_slice_185 = tensor.extract_slice %771[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x608x7x7xf32> to tensor<1x32x7x7xf32>
    %772 = "tosa.add"(%753, %extracted_slice_185) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_186 = tensor.extract_slice %771[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x608x7x7xf32> to tensor<1x32x7x7xf32>
    %773 = "tosa.add"(%754, %extracted_slice_186) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_187 = tensor.extract_slice %771[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x608x7x7xf32> to tensor<1x32x7x7xf32>
    %774 = "tosa.add"(%755, %extracted_slice_187) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_188 = tensor.extract_slice %771[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x608x7x7xf32> to tensor<1x512x7x7xf32>
    %775 = "tosa.add"(%756, %extracted_slice_188) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %776 = "tosa.transpose"(%772, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %777 = "tosa.transpose_conv2d"(%776, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %778 = "tosa.transpose"(%777, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %779 = "tosa.equal"(%356, %357) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %780 = "tosa.select"(%779, %778, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %781 = "tosa.mul"(%8, %780) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %782 = "tosa.mul"(%355, %781) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %783 = "tosa.transpose"(%782, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %784 = "tosa.transpose"(%41, %4) : (tensor<128x1x1x576xf32>, tensor<4xi64>) -> tensor<576x1x1x128xf32>
    %785 = "tosa.transpose_conv2d"(%783, %784, %cst_15) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 576>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<576x1x1x128xf32>, tensor<576xf32>) -> tensor<1x7x7x576xf32>
    %786 = "tosa.transpose"(%785, %2) : (tensor<1x7x7x576xf32>, tensor<4xi64>) -> tensor<1x576x7x7xf32>
    %787 = "tosa.equal"(%353, %354) : (tensor<1x576x7x7xf32>, tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xi1>
    %788 = "tosa.select"(%787, %786, %3) : (tensor<1x576x7x7xi1>, tensor<1x576x7x7xf32>, tensor<f32>) -> tensor<1x576x7x7xf32>
    %789 = "tosa.mul"(%40, %788) {shift = 0 : i8} : (tensor<1x576x1x1xf32>, tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xf32>
    %790 = "tosa.mul"(%352, %789) {shift = 0 : i8} : (tensor<1x576x1x1xf32>, tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xf32>
    %extracted_slice_189 = tensor.extract_slice %790[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x576x7x7xf32> to tensor<1x32x7x7xf32>
    %791 = "tosa.add"(%773, %extracted_slice_189) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_190 = tensor.extract_slice %790[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x576x7x7xf32> to tensor<1x32x7x7xf32>
    %792 = "tosa.add"(%774, %extracted_slice_190) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_191 = tensor.extract_slice %790[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x576x7x7xf32> to tensor<1x512x7x7xf32>
    %793 = "tosa.add"(%775, %extracted_slice_191) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %794 = "tosa.transpose"(%791, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %795 = "tosa.transpose_conv2d"(%794, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %796 = "tosa.transpose"(%795, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %797 = "tosa.equal"(%350, %351) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %798 = "tosa.select"(%797, %796, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %799 = "tosa.mul"(%8, %798) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %800 = "tosa.mul"(%349, %799) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %801 = "tosa.transpose"(%800, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %802 = "tosa.transpose"(%39, %4) : (tensor<128x1x1x544xf32>, tensor<4xi64>) -> tensor<544x1x1x128xf32>
    %803 = "tosa.transpose_conv2d"(%801, %802, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 544>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<544x1x1x128xf32>, tensor<544xf32>) -> tensor<1x7x7x544xf32>
    %804 = "tosa.transpose"(%803, %2) : (tensor<1x7x7x544xf32>, tensor<4xi64>) -> tensor<1x544x7x7xf32>
    %805 = "tosa.equal"(%347, %348) : (tensor<1x544x7x7xf32>, tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xi1>
    %806 = "tosa.select"(%805, %804, %3) : (tensor<1x544x7x7xi1>, tensor<1x544x7x7xf32>, tensor<f32>) -> tensor<1x544x7x7xf32>
    %807 = "tosa.mul"(%38, %806) {shift = 0 : i8} : (tensor<1x544x1x1xf32>, tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xf32>
    %808 = "tosa.mul"(%346, %807) {shift = 0 : i8} : (tensor<1x544x1x1xf32>, tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xf32>
    %extracted_slice_192 = tensor.extract_slice %808[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x544x7x7xf32> to tensor<1x32x7x7xf32>
    %809 = "tosa.add"(%792, %extracted_slice_192) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_193 = tensor.extract_slice %808[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x544x7x7xf32> to tensor<1x512x7x7xf32>
    %810 = "tosa.add"(%793, %extracted_slice_193) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %811 = "tosa.transpose"(%809, %1) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %812 = "tosa.transpose_conv2d"(%811, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %813 = "tosa.transpose"(%812, %2) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %814 = "tosa.equal"(%344, %345) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %815 = "tosa.select"(%814, %813, %3) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %816 = "tosa.mul"(%8, %815) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %817 = "tosa.mul"(%343, %816) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %818 = "tosa.transpose"(%817, %1) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %819 = "tosa.transpose"(%37, %4) : (tensor<128x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x128xf32>
    %820 = "tosa.transpose_conv2d"(%818, %819, %cst_17) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %821 = "tosa.transpose"(%820, %2) : (tensor<1x7x7x512xf32>, tensor<4xi64>) -> tensor<1x512x7x7xf32>
    %822 = "tosa.equal"(%341, %342) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %823 = "tosa.select"(%822, %821, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %824 = "tosa.mul"(%35, %823) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %825 = "tosa.mul"(%340, %824) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %826 = "tosa.add"(%810, %825) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %827 = "tosa.transpose"(%826, %1) : (tensor<1x512x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x512xf32>
    %828 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%339, %cst_19, %827 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>) outs(%cst_18 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_636: f32, %in_637: f32, %out: f32):
      %1865 = arith.mulf %in_637, %cst_40 : f32
      %1866 = arith.addf %1865, %out : f32
      linalg.yield %1866 : f32
    } -> tensor<1x14x14x512xf32>
    %829 = "tosa.transpose"(%69, %4) : (tensor<512x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x512xf32>
    %830 = "tosa.transpose_conv2d"(%828, %829, %cst_20) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %831 = "tosa.transpose"(%830, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi64>) -> tensor<1x1024x14x14xf32>
    %832 = "tosa.equal"(%337, %338) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %833 = "tosa.select"(%832, %831, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %834 = "tosa.mul"(%68, %833) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %835 = "tosa.mul"(%336, %834) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %extracted_slice_194 = tensor.extract_slice %835[0, 992, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_195 = tensor.extract_slice %835[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_196 = tensor.extract_slice %835[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_197 = tensor.extract_slice %835[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_198 = tensor.extract_slice %835[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_199 = tensor.extract_slice %835[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_200 = tensor.extract_slice %835[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_201 = tensor.extract_slice %835[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_202 = tensor.extract_slice %835[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_203 = tensor.extract_slice %835[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_204 = tensor.extract_slice %835[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_205 = tensor.extract_slice %835[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_206 = tensor.extract_slice %835[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_207 = tensor.extract_slice %835[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_208 = tensor.extract_slice %835[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_209 = tensor.extract_slice %835[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_210 = tensor.extract_slice %835[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_211 = tensor.extract_slice %835[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_212 = tensor.extract_slice %835[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_213 = tensor.extract_slice %835[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_214 = tensor.extract_slice %835[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_215 = tensor.extract_slice %835[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_216 = tensor.extract_slice %835[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_217 = tensor.extract_slice %835[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_218 = tensor.extract_slice %835[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x256x14x14xf32>
    %836 = "tosa.transpose"(%extracted_slice_194, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %837 = "tosa.transpose_conv2d"(%836, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %838 = "tosa.transpose"(%837, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %839 = "tosa.equal"(%334, %335) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %840 = "tosa.select"(%839, %838, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %841 = "tosa.mul"(%8, %840) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %842 = "tosa.mul"(%333, %841) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %843 = "tosa.transpose"(%842, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %844 = "tosa.transpose_conv2d"(%843, %459, %cst_2) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 992>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<992x1x1x128xf32>, tensor<992xf32>) -> tensor<1x14x14x992xf32>
    %845 = "tosa.transpose"(%844, %2) : (tensor<1x14x14x992xf32>, tensor<4xi64>) -> tensor<1x992x14x14xf32>
    %846 = "tosa.equal"(%331, %332) : (tensor<1x992x14x14xf32>, tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xi1>
    %847 = "tosa.select"(%846, %845, %3) : (tensor<1x992x14x14xi1>, tensor<1x992x14x14xf32>, tensor<f32>) -> tensor<1x992x14x14xf32>
    %848 = "tosa.mul"(%66, %847) {shift = 0 : i8} : (tensor<1x992x1x1xf32>, tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xf32>
    %849 = "tosa.mul"(%330, %848) {shift = 0 : i8} : (tensor<1x992x1x1xf32>, tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xf32>
    %extracted_slice_219 = tensor.extract_slice %849[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %850 = "tosa.add"(%extracted_slice_195, %extracted_slice_219) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_220 = tensor.extract_slice %849[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %851 = "tosa.add"(%extracted_slice_196, %extracted_slice_220) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_221 = tensor.extract_slice %849[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %852 = "tosa.add"(%extracted_slice_197, %extracted_slice_221) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_222 = tensor.extract_slice %849[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %853 = "tosa.add"(%extracted_slice_198, %extracted_slice_222) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_223 = tensor.extract_slice %849[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %854 = "tosa.add"(%extracted_slice_199, %extracted_slice_223) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_224 = tensor.extract_slice %849[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %855 = "tosa.add"(%extracted_slice_200, %extracted_slice_224) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_225 = tensor.extract_slice %849[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %856 = "tosa.add"(%extracted_slice_201, %extracted_slice_225) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_226 = tensor.extract_slice %849[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %857 = "tosa.add"(%extracted_slice_202, %extracted_slice_226) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_227 = tensor.extract_slice %849[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %858 = "tosa.add"(%extracted_slice_203, %extracted_slice_227) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_228 = tensor.extract_slice %849[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %859 = "tosa.add"(%extracted_slice_204, %extracted_slice_228) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_229 = tensor.extract_slice %849[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %860 = "tosa.add"(%extracted_slice_205, %extracted_slice_229) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_230 = tensor.extract_slice %849[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %861 = "tosa.add"(%extracted_slice_206, %extracted_slice_230) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_231 = tensor.extract_slice %849[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %862 = "tosa.add"(%extracted_slice_207, %extracted_slice_231) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_232 = tensor.extract_slice %849[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %863 = "tosa.add"(%extracted_slice_208, %extracted_slice_232) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_233 = tensor.extract_slice %849[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %864 = "tosa.add"(%extracted_slice_209, %extracted_slice_233) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_234 = tensor.extract_slice %849[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %865 = "tosa.add"(%extracted_slice_210, %extracted_slice_234) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_235 = tensor.extract_slice %849[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %866 = "tosa.add"(%extracted_slice_211, %extracted_slice_235) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_236 = tensor.extract_slice %849[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %867 = "tosa.add"(%extracted_slice_212, %extracted_slice_236) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_237 = tensor.extract_slice %849[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %868 = "tosa.add"(%extracted_slice_213, %extracted_slice_237) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_238 = tensor.extract_slice %849[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %869 = "tosa.add"(%extracted_slice_214, %extracted_slice_238) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_239 = tensor.extract_slice %849[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %870 = "tosa.add"(%extracted_slice_215, %extracted_slice_239) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_240 = tensor.extract_slice %849[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %871 = "tosa.add"(%extracted_slice_216, %extracted_slice_240) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_241 = tensor.extract_slice %849[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %872 = "tosa.add"(%extracted_slice_217, %extracted_slice_241) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_242 = tensor.extract_slice %849[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x256x14x14xf32>
    %873 = "tosa.add"(%extracted_slice_218, %extracted_slice_242) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %874 = "tosa.transpose"(%850, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %875 = "tosa.transpose_conv2d"(%874, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %876 = "tosa.transpose"(%875, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %877 = "tosa.equal"(%328, %329) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %878 = "tosa.select"(%877, %876, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %879 = "tosa.mul"(%8, %878) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %880 = "tosa.mul"(%327, %879) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %881 = "tosa.transpose"(%880, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %882 = "tosa.transpose_conv2d"(%881, %490, %cst_3) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 960>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<960x1x1x128xf32>, tensor<960xf32>) -> tensor<1x14x14x960xf32>
    %883 = "tosa.transpose"(%882, %2) : (tensor<1x14x14x960xf32>, tensor<4xi64>) -> tensor<1x960x14x14xf32>
    %884 = "tosa.equal"(%325, %326) : (tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xi1>
    %885 = "tosa.select"(%884, %883, %3) : (tensor<1x960x14x14xi1>, tensor<1x960x14x14xf32>, tensor<f32>) -> tensor<1x960x14x14xf32>
    %886 = "tosa.mul"(%64, %885) {shift = 0 : i8} : (tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    %887 = "tosa.mul"(%324, %886) {shift = 0 : i8} : (tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    %extracted_slice_243 = tensor.extract_slice %887[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %888 = "tosa.add"(%851, %extracted_slice_243) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_244 = tensor.extract_slice %887[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %889 = "tosa.add"(%852, %extracted_slice_244) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_245 = tensor.extract_slice %887[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %890 = "tosa.add"(%853, %extracted_slice_245) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_246 = tensor.extract_slice %887[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %891 = "tosa.add"(%854, %extracted_slice_246) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_247 = tensor.extract_slice %887[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %892 = "tosa.add"(%855, %extracted_slice_247) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_248 = tensor.extract_slice %887[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %893 = "tosa.add"(%856, %extracted_slice_248) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_249 = tensor.extract_slice %887[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %894 = "tosa.add"(%857, %extracted_slice_249) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_250 = tensor.extract_slice %887[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %895 = "tosa.add"(%858, %extracted_slice_250) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_251 = tensor.extract_slice %887[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %896 = "tosa.add"(%859, %extracted_slice_251) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_252 = tensor.extract_slice %887[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %897 = "tosa.add"(%860, %extracted_slice_252) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_253 = tensor.extract_slice %887[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %898 = "tosa.add"(%861, %extracted_slice_253) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_254 = tensor.extract_slice %887[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %899 = "tosa.add"(%862, %extracted_slice_254) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_255 = tensor.extract_slice %887[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %900 = "tosa.add"(%863, %extracted_slice_255) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_256 = tensor.extract_slice %887[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %901 = "tosa.add"(%864, %extracted_slice_256) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_257 = tensor.extract_slice %887[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %902 = "tosa.add"(%865, %extracted_slice_257) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_258 = tensor.extract_slice %887[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %903 = "tosa.add"(%866, %extracted_slice_258) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_259 = tensor.extract_slice %887[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %904 = "tosa.add"(%867, %extracted_slice_259) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_260 = tensor.extract_slice %887[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %905 = "tosa.add"(%868, %extracted_slice_260) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_261 = tensor.extract_slice %887[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %906 = "tosa.add"(%869, %extracted_slice_261) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_262 = tensor.extract_slice %887[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %907 = "tosa.add"(%870, %extracted_slice_262) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_263 = tensor.extract_slice %887[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %908 = "tosa.add"(%871, %extracted_slice_263) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_264 = tensor.extract_slice %887[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %909 = "tosa.add"(%872, %extracted_slice_264) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_265 = tensor.extract_slice %887[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x256x14x14xf32>
    %910 = "tosa.add"(%873, %extracted_slice_265) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %911 = "tosa.transpose"(%888, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %912 = "tosa.transpose_conv2d"(%911, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %913 = "tosa.transpose"(%912, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %914 = "tosa.equal"(%322, %323) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %915 = "tosa.select"(%914, %913, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %916 = "tosa.mul"(%8, %915) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %917 = "tosa.mul"(%321, %916) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %918 = "tosa.transpose"(%917, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %919 = "tosa.transpose_conv2d"(%918, %520, %cst_4) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 928>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<928x1x1x128xf32>, tensor<928xf32>) -> tensor<1x14x14x928xf32>
    %920 = "tosa.transpose"(%919, %2) : (tensor<1x14x14x928xf32>, tensor<4xi64>) -> tensor<1x928x14x14xf32>
    %921 = "tosa.equal"(%319, %320) : (tensor<1x928x14x14xf32>, tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xi1>
    %922 = "tosa.select"(%921, %920, %3) : (tensor<1x928x14x14xi1>, tensor<1x928x14x14xf32>, tensor<f32>) -> tensor<1x928x14x14xf32>
    %923 = "tosa.mul"(%62, %922) {shift = 0 : i8} : (tensor<1x928x1x1xf32>, tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xf32>
    %924 = "tosa.mul"(%318, %923) {shift = 0 : i8} : (tensor<1x928x1x1xf32>, tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xf32>
    %extracted_slice_266 = tensor.extract_slice %924[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %925 = "tosa.add"(%889, %extracted_slice_266) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_267 = tensor.extract_slice %924[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %926 = "tosa.add"(%890, %extracted_slice_267) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_268 = tensor.extract_slice %924[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %927 = "tosa.add"(%891, %extracted_slice_268) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_269 = tensor.extract_slice %924[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %928 = "tosa.add"(%892, %extracted_slice_269) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_270 = tensor.extract_slice %924[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %929 = "tosa.add"(%893, %extracted_slice_270) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_271 = tensor.extract_slice %924[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %930 = "tosa.add"(%894, %extracted_slice_271) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_272 = tensor.extract_slice %924[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %931 = "tosa.add"(%895, %extracted_slice_272) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_273 = tensor.extract_slice %924[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %932 = "tosa.add"(%896, %extracted_slice_273) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_274 = tensor.extract_slice %924[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %933 = "tosa.add"(%897, %extracted_slice_274) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_275 = tensor.extract_slice %924[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %934 = "tosa.add"(%898, %extracted_slice_275) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_276 = tensor.extract_slice %924[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %935 = "tosa.add"(%899, %extracted_slice_276) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_277 = tensor.extract_slice %924[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %936 = "tosa.add"(%900, %extracted_slice_277) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_278 = tensor.extract_slice %924[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %937 = "tosa.add"(%901, %extracted_slice_278) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_279 = tensor.extract_slice %924[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %938 = "tosa.add"(%902, %extracted_slice_279) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_280 = tensor.extract_slice %924[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %939 = "tosa.add"(%903, %extracted_slice_280) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_281 = tensor.extract_slice %924[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %940 = "tosa.add"(%904, %extracted_slice_281) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_282 = tensor.extract_slice %924[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %941 = "tosa.add"(%905, %extracted_slice_282) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_283 = tensor.extract_slice %924[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %942 = "tosa.add"(%906, %extracted_slice_283) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_284 = tensor.extract_slice %924[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %943 = "tosa.add"(%907, %extracted_slice_284) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_285 = tensor.extract_slice %924[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %944 = "tosa.add"(%908, %extracted_slice_285) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_286 = tensor.extract_slice %924[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %945 = "tosa.add"(%909, %extracted_slice_286) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_287 = tensor.extract_slice %924[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x256x14x14xf32>
    %946 = "tosa.add"(%910, %extracted_slice_287) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %947 = "tosa.transpose"(%925, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %948 = "tosa.transpose_conv2d"(%947, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %949 = "tosa.transpose"(%948, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %950 = "tosa.equal"(%316, %317) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %951 = "tosa.select"(%950, %949, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %952 = "tosa.mul"(%8, %951) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %953 = "tosa.mul"(%315, %952) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %954 = "tosa.transpose"(%953, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %955 = "tosa.transpose_conv2d"(%954, %549, %cst_5) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 896>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<896x1x1x128xf32>, tensor<896xf32>) -> tensor<1x14x14x896xf32>
    %956 = "tosa.transpose"(%955, %2) : (tensor<1x14x14x896xf32>, tensor<4xi64>) -> tensor<1x896x14x14xf32>
    %957 = "tosa.equal"(%313, %314) : (tensor<1x896x14x14xf32>, tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xi1>
    %958 = "tosa.select"(%957, %956, %3) : (tensor<1x896x14x14xi1>, tensor<1x896x14x14xf32>, tensor<f32>) -> tensor<1x896x14x14xf32>
    %959 = "tosa.mul"(%60, %958) {shift = 0 : i8} : (tensor<1x896x1x1xf32>, tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xf32>
    %960 = "tosa.mul"(%312, %959) {shift = 0 : i8} : (tensor<1x896x1x1xf32>, tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xf32>
    %extracted_slice_288 = tensor.extract_slice %960[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %961 = "tosa.add"(%926, %extracted_slice_288) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_289 = tensor.extract_slice %960[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %962 = "tosa.add"(%927, %extracted_slice_289) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_290 = tensor.extract_slice %960[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %963 = "tosa.add"(%928, %extracted_slice_290) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_291 = tensor.extract_slice %960[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %964 = "tosa.add"(%929, %extracted_slice_291) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_292 = tensor.extract_slice %960[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %965 = "tosa.add"(%930, %extracted_slice_292) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_293 = tensor.extract_slice %960[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %966 = "tosa.add"(%931, %extracted_slice_293) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_294 = tensor.extract_slice %960[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %967 = "tosa.add"(%932, %extracted_slice_294) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_295 = tensor.extract_slice %960[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %968 = "tosa.add"(%933, %extracted_slice_295) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_296 = tensor.extract_slice %960[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %969 = "tosa.add"(%934, %extracted_slice_296) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_297 = tensor.extract_slice %960[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %970 = "tosa.add"(%935, %extracted_slice_297) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_298 = tensor.extract_slice %960[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %971 = "tosa.add"(%936, %extracted_slice_298) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_299 = tensor.extract_slice %960[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %972 = "tosa.add"(%937, %extracted_slice_299) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_300 = tensor.extract_slice %960[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %973 = "tosa.add"(%938, %extracted_slice_300) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_301 = tensor.extract_slice %960[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %974 = "tosa.add"(%939, %extracted_slice_301) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_302 = tensor.extract_slice %960[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %975 = "tosa.add"(%940, %extracted_slice_302) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_303 = tensor.extract_slice %960[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %976 = "tosa.add"(%941, %extracted_slice_303) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_304 = tensor.extract_slice %960[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %977 = "tosa.add"(%942, %extracted_slice_304) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_305 = tensor.extract_slice %960[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %978 = "tosa.add"(%943, %extracted_slice_305) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_306 = tensor.extract_slice %960[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %979 = "tosa.add"(%944, %extracted_slice_306) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_307 = tensor.extract_slice %960[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %980 = "tosa.add"(%945, %extracted_slice_307) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_308 = tensor.extract_slice %960[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x256x14x14xf32>
    %981 = "tosa.add"(%946, %extracted_slice_308) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %982 = "tosa.transpose"(%961, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %983 = "tosa.transpose_conv2d"(%982, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %984 = "tosa.transpose"(%983, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %985 = "tosa.equal"(%310, %311) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %986 = "tosa.select"(%985, %984, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %987 = "tosa.mul"(%8, %986) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %988 = "tosa.mul"(%309, %987) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %989 = "tosa.transpose"(%988, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %990 = "tosa.transpose_conv2d"(%989, %577, %cst_6) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 864>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<864x1x1x128xf32>, tensor<864xf32>) -> tensor<1x14x14x864xf32>
    %991 = "tosa.transpose"(%990, %2) : (tensor<1x14x14x864xf32>, tensor<4xi64>) -> tensor<1x864x14x14xf32>
    %992 = "tosa.equal"(%307, %308) : (tensor<1x864x14x14xf32>, tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xi1>
    %993 = "tosa.select"(%992, %991, %3) : (tensor<1x864x14x14xi1>, tensor<1x864x14x14xf32>, tensor<f32>) -> tensor<1x864x14x14xf32>
    %994 = "tosa.mul"(%58, %993) {shift = 0 : i8} : (tensor<1x864x1x1xf32>, tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xf32>
    %995 = "tosa.mul"(%306, %994) {shift = 0 : i8} : (tensor<1x864x1x1xf32>, tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xf32>
    %extracted_slice_309 = tensor.extract_slice %995[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %996 = "tosa.add"(%962, %extracted_slice_309) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_310 = tensor.extract_slice %995[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %997 = "tosa.add"(%963, %extracted_slice_310) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_311 = tensor.extract_slice %995[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %998 = "tosa.add"(%964, %extracted_slice_311) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_312 = tensor.extract_slice %995[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %999 = "tosa.add"(%965, %extracted_slice_312) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_313 = tensor.extract_slice %995[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1000 = "tosa.add"(%966, %extracted_slice_313) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_314 = tensor.extract_slice %995[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1001 = "tosa.add"(%967, %extracted_slice_314) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_315 = tensor.extract_slice %995[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1002 = "tosa.add"(%968, %extracted_slice_315) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_316 = tensor.extract_slice %995[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1003 = "tosa.add"(%969, %extracted_slice_316) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_317 = tensor.extract_slice %995[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1004 = "tosa.add"(%970, %extracted_slice_317) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_318 = tensor.extract_slice %995[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1005 = "tosa.add"(%971, %extracted_slice_318) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_319 = tensor.extract_slice %995[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1006 = "tosa.add"(%972, %extracted_slice_319) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_320 = tensor.extract_slice %995[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1007 = "tosa.add"(%973, %extracted_slice_320) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_321 = tensor.extract_slice %995[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1008 = "tosa.add"(%974, %extracted_slice_321) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_322 = tensor.extract_slice %995[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1009 = "tosa.add"(%975, %extracted_slice_322) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_323 = tensor.extract_slice %995[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1010 = "tosa.add"(%976, %extracted_slice_323) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_324 = tensor.extract_slice %995[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1011 = "tosa.add"(%977, %extracted_slice_324) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_325 = tensor.extract_slice %995[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1012 = "tosa.add"(%978, %extracted_slice_325) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_326 = tensor.extract_slice %995[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1013 = "tosa.add"(%979, %extracted_slice_326) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_327 = tensor.extract_slice %995[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1014 = "tosa.add"(%980, %extracted_slice_327) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_328 = tensor.extract_slice %995[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x256x14x14xf32>
    %1015 = "tosa.add"(%981, %extracted_slice_328) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1016 = "tosa.transpose"(%996, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1017 = "tosa.transpose_conv2d"(%1016, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1018 = "tosa.transpose"(%1017, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1019 = "tosa.equal"(%304, %305) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1020 = "tosa.select"(%1019, %1018, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1021 = "tosa.mul"(%8, %1020) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1022 = "tosa.mul"(%303, %1021) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1023 = "tosa.transpose"(%1022, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1024 = "tosa.transpose_conv2d"(%1023, %604, %cst_7) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 832>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<832x1x1x128xf32>, tensor<832xf32>) -> tensor<1x14x14x832xf32>
    %1025 = "tosa.transpose"(%1024, %2) : (tensor<1x14x14x832xf32>, tensor<4xi64>) -> tensor<1x832x14x14xf32>
    %1026 = "tosa.equal"(%301, %302) : (tensor<1x832x14x14xf32>, tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xi1>
    %1027 = "tosa.select"(%1026, %1025, %3) : (tensor<1x832x14x14xi1>, tensor<1x832x14x14xf32>, tensor<f32>) -> tensor<1x832x14x14xf32>
    %1028 = "tosa.mul"(%56, %1027) {shift = 0 : i8} : (tensor<1x832x1x1xf32>, tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xf32>
    %1029 = "tosa.mul"(%300, %1028) {shift = 0 : i8} : (tensor<1x832x1x1xf32>, tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xf32>
    %extracted_slice_329 = tensor.extract_slice %1029[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1030 = "tosa.add"(%997, %extracted_slice_329) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_330 = tensor.extract_slice %1029[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1031 = "tosa.add"(%998, %extracted_slice_330) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_331 = tensor.extract_slice %1029[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1032 = "tosa.add"(%999, %extracted_slice_331) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_332 = tensor.extract_slice %1029[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1033 = "tosa.add"(%1000, %extracted_slice_332) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_333 = tensor.extract_slice %1029[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1034 = "tosa.add"(%1001, %extracted_slice_333) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_334 = tensor.extract_slice %1029[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1035 = "tosa.add"(%1002, %extracted_slice_334) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_335 = tensor.extract_slice %1029[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1036 = "tosa.add"(%1003, %extracted_slice_335) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_336 = tensor.extract_slice %1029[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1037 = "tosa.add"(%1004, %extracted_slice_336) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_337 = tensor.extract_slice %1029[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1038 = "tosa.add"(%1005, %extracted_slice_337) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_338 = tensor.extract_slice %1029[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1039 = "tosa.add"(%1006, %extracted_slice_338) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_339 = tensor.extract_slice %1029[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1040 = "tosa.add"(%1007, %extracted_slice_339) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_340 = tensor.extract_slice %1029[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1041 = "tosa.add"(%1008, %extracted_slice_340) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_341 = tensor.extract_slice %1029[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1042 = "tosa.add"(%1009, %extracted_slice_341) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_342 = tensor.extract_slice %1029[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1043 = "tosa.add"(%1010, %extracted_slice_342) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_343 = tensor.extract_slice %1029[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1044 = "tosa.add"(%1011, %extracted_slice_343) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_344 = tensor.extract_slice %1029[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1045 = "tosa.add"(%1012, %extracted_slice_344) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_345 = tensor.extract_slice %1029[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1046 = "tosa.add"(%1013, %extracted_slice_345) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_346 = tensor.extract_slice %1029[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1047 = "tosa.add"(%1014, %extracted_slice_346) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_347 = tensor.extract_slice %1029[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x256x14x14xf32>
    %1048 = "tosa.add"(%1015, %extracted_slice_347) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1049 = "tosa.transpose"(%1030, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1050 = "tosa.transpose_conv2d"(%1049, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1051 = "tosa.transpose"(%1050, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1052 = "tosa.equal"(%298, %299) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1053 = "tosa.select"(%1052, %1051, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1054 = "tosa.mul"(%8, %1053) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1055 = "tosa.mul"(%297, %1054) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1056 = "tosa.transpose"(%1055, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1057 = "tosa.transpose_conv2d"(%1056, %630, %cst_8) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 800>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<800x1x1x128xf32>, tensor<800xf32>) -> tensor<1x14x14x800xf32>
    %1058 = "tosa.transpose"(%1057, %2) : (tensor<1x14x14x800xf32>, tensor<4xi64>) -> tensor<1x800x14x14xf32>
    %1059 = "tosa.equal"(%295, %296) : (tensor<1x800x14x14xf32>, tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xi1>
    %1060 = "tosa.select"(%1059, %1058, %3) : (tensor<1x800x14x14xi1>, tensor<1x800x14x14xf32>, tensor<f32>) -> tensor<1x800x14x14xf32>
    %1061 = "tosa.mul"(%54, %1060) {shift = 0 : i8} : (tensor<1x800x1x1xf32>, tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xf32>
    %1062 = "tosa.mul"(%294, %1061) {shift = 0 : i8} : (tensor<1x800x1x1xf32>, tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xf32>
    %extracted_slice_348 = tensor.extract_slice %1062[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1063 = "tosa.add"(%1031, %extracted_slice_348) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_349 = tensor.extract_slice %1062[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1064 = "tosa.add"(%1032, %extracted_slice_349) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_350 = tensor.extract_slice %1062[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1065 = "tosa.add"(%1033, %extracted_slice_350) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_351 = tensor.extract_slice %1062[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1066 = "tosa.add"(%1034, %extracted_slice_351) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_352 = tensor.extract_slice %1062[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1067 = "tosa.add"(%1035, %extracted_slice_352) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_353 = tensor.extract_slice %1062[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1068 = "tosa.add"(%1036, %extracted_slice_353) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_354 = tensor.extract_slice %1062[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1069 = "tosa.add"(%1037, %extracted_slice_354) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_355 = tensor.extract_slice %1062[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1070 = "tosa.add"(%1038, %extracted_slice_355) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_356 = tensor.extract_slice %1062[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1071 = "tosa.add"(%1039, %extracted_slice_356) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_357 = tensor.extract_slice %1062[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1072 = "tosa.add"(%1040, %extracted_slice_357) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_358 = tensor.extract_slice %1062[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1073 = "tosa.add"(%1041, %extracted_slice_358) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_359 = tensor.extract_slice %1062[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1074 = "tosa.add"(%1042, %extracted_slice_359) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_360 = tensor.extract_slice %1062[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1075 = "tosa.add"(%1043, %extracted_slice_360) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_361 = tensor.extract_slice %1062[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1076 = "tosa.add"(%1044, %extracted_slice_361) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_362 = tensor.extract_slice %1062[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1077 = "tosa.add"(%1045, %extracted_slice_362) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_363 = tensor.extract_slice %1062[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1078 = "tosa.add"(%1046, %extracted_slice_363) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_364 = tensor.extract_slice %1062[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1079 = "tosa.add"(%1047, %extracted_slice_364) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_365 = tensor.extract_slice %1062[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x256x14x14xf32>
    %1080 = "tosa.add"(%1048, %extracted_slice_365) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1081 = "tosa.transpose"(%1063, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1082 = "tosa.transpose_conv2d"(%1081, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1083 = "tosa.transpose"(%1082, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1084 = "tosa.equal"(%292, %293) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1085 = "tosa.select"(%1084, %1083, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1086 = "tosa.mul"(%8, %1085) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1087 = "tosa.mul"(%291, %1086) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1088 = "tosa.transpose"(%1087, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1089 = "tosa.transpose_conv2d"(%1088, %655, %cst_9) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 768>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<768x1x1x128xf32>, tensor<768xf32>) -> tensor<1x14x14x768xf32>
    %1090 = "tosa.transpose"(%1089, %2) : (tensor<1x14x14x768xf32>, tensor<4xi64>) -> tensor<1x768x14x14xf32>
    %1091 = "tosa.equal"(%289, %290) : (tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xi1>
    %1092 = "tosa.select"(%1091, %1090, %3) : (tensor<1x768x14x14xi1>, tensor<1x768x14x14xf32>, tensor<f32>) -> tensor<1x768x14x14xf32>
    %1093 = "tosa.mul"(%52, %1092) {shift = 0 : i8} : (tensor<1x768x1x1xf32>, tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %1094 = "tosa.mul"(%288, %1093) {shift = 0 : i8} : (tensor<1x768x1x1xf32>, tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %extracted_slice_366 = tensor.extract_slice %1094[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1095 = "tosa.add"(%1064, %extracted_slice_366) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_367 = tensor.extract_slice %1094[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1096 = "tosa.add"(%1065, %extracted_slice_367) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_368 = tensor.extract_slice %1094[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1097 = "tosa.add"(%1066, %extracted_slice_368) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_369 = tensor.extract_slice %1094[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1098 = "tosa.add"(%1067, %extracted_slice_369) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_370 = tensor.extract_slice %1094[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1099 = "tosa.add"(%1068, %extracted_slice_370) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_371 = tensor.extract_slice %1094[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1100 = "tosa.add"(%1069, %extracted_slice_371) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_372 = tensor.extract_slice %1094[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1101 = "tosa.add"(%1070, %extracted_slice_372) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_373 = tensor.extract_slice %1094[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1102 = "tosa.add"(%1071, %extracted_slice_373) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_374 = tensor.extract_slice %1094[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1103 = "tosa.add"(%1072, %extracted_slice_374) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_375 = tensor.extract_slice %1094[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1104 = "tosa.add"(%1073, %extracted_slice_375) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_376 = tensor.extract_slice %1094[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1105 = "tosa.add"(%1074, %extracted_slice_376) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_377 = tensor.extract_slice %1094[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1106 = "tosa.add"(%1075, %extracted_slice_377) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_378 = tensor.extract_slice %1094[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1107 = "tosa.add"(%1076, %extracted_slice_378) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_379 = tensor.extract_slice %1094[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1108 = "tosa.add"(%1077, %extracted_slice_379) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_380 = tensor.extract_slice %1094[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1109 = "tosa.add"(%1078, %extracted_slice_380) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_381 = tensor.extract_slice %1094[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1110 = "tosa.add"(%1079, %extracted_slice_381) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_382 = tensor.extract_slice %1094[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x256x14x14xf32>
    %1111 = "tosa.add"(%1080, %extracted_slice_382) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1112 = "tosa.transpose"(%1095, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1113 = "tosa.transpose_conv2d"(%1112, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1114 = "tosa.transpose"(%1113, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1115 = "tosa.equal"(%286, %287) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1116 = "tosa.select"(%1115, %1114, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1117 = "tosa.mul"(%8, %1116) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1118 = "tosa.mul"(%285, %1117) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1119 = "tosa.transpose"(%1118, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1120 = "tosa.transpose_conv2d"(%1119, %679, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 736>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<736x1x1x128xf32>, tensor<736xf32>) -> tensor<1x14x14x736xf32>
    %1121 = "tosa.transpose"(%1120, %2) : (tensor<1x14x14x736xf32>, tensor<4xi64>) -> tensor<1x736x14x14xf32>
    %1122 = "tosa.equal"(%283, %284) : (tensor<1x736x14x14xf32>, tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xi1>
    %1123 = "tosa.select"(%1122, %1121, %3) : (tensor<1x736x14x14xi1>, tensor<1x736x14x14xf32>, tensor<f32>) -> tensor<1x736x14x14xf32>
    %1124 = "tosa.mul"(%50, %1123) {shift = 0 : i8} : (tensor<1x736x1x1xf32>, tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xf32>
    %1125 = "tosa.mul"(%282, %1124) {shift = 0 : i8} : (tensor<1x736x1x1xf32>, tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xf32>
    %extracted_slice_383 = tensor.extract_slice %1125[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1126 = "tosa.add"(%1096, %extracted_slice_383) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_384 = tensor.extract_slice %1125[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1127 = "tosa.add"(%1097, %extracted_slice_384) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_385 = tensor.extract_slice %1125[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1128 = "tosa.add"(%1098, %extracted_slice_385) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_386 = tensor.extract_slice %1125[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1129 = "tosa.add"(%1099, %extracted_slice_386) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_387 = tensor.extract_slice %1125[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1130 = "tosa.add"(%1100, %extracted_slice_387) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_388 = tensor.extract_slice %1125[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1131 = "tosa.add"(%1101, %extracted_slice_388) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_389 = tensor.extract_slice %1125[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1132 = "tosa.add"(%1102, %extracted_slice_389) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_390 = tensor.extract_slice %1125[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1133 = "tosa.add"(%1103, %extracted_slice_390) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_391 = tensor.extract_slice %1125[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1134 = "tosa.add"(%1104, %extracted_slice_391) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_392 = tensor.extract_slice %1125[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1135 = "tosa.add"(%1105, %extracted_slice_392) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_393 = tensor.extract_slice %1125[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1136 = "tosa.add"(%1106, %extracted_slice_393) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_394 = tensor.extract_slice %1125[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1137 = "tosa.add"(%1107, %extracted_slice_394) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_395 = tensor.extract_slice %1125[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1138 = "tosa.add"(%1108, %extracted_slice_395) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_396 = tensor.extract_slice %1125[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1139 = "tosa.add"(%1109, %extracted_slice_396) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_397 = tensor.extract_slice %1125[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1140 = "tosa.add"(%1110, %extracted_slice_397) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_398 = tensor.extract_slice %1125[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x256x14x14xf32>
    %1141 = "tosa.add"(%1111, %extracted_slice_398) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1142 = "tosa.transpose"(%1126, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1143 = "tosa.transpose_conv2d"(%1142, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1144 = "tosa.transpose"(%1143, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1145 = "tosa.equal"(%280, %281) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1146 = "tosa.select"(%1145, %1144, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1147 = "tosa.mul"(%8, %1146) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1148 = "tosa.mul"(%279, %1147) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1149 = "tosa.transpose"(%1148, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1150 = "tosa.transpose_conv2d"(%1149, %702, %cst_11) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 704>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<704x1x1x128xf32>, tensor<704xf32>) -> tensor<1x14x14x704xf32>
    %1151 = "tosa.transpose"(%1150, %2) : (tensor<1x14x14x704xf32>, tensor<4xi64>) -> tensor<1x704x14x14xf32>
    %1152 = "tosa.equal"(%277, %278) : (tensor<1x704x14x14xf32>, tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xi1>
    %1153 = "tosa.select"(%1152, %1151, %3) : (tensor<1x704x14x14xi1>, tensor<1x704x14x14xf32>, tensor<f32>) -> tensor<1x704x14x14xf32>
    %1154 = "tosa.mul"(%48, %1153) {shift = 0 : i8} : (tensor<1x704x1x1xf32>, tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xf32>
    %1155 = "tosa.mul"(%276, %1154) {shift = 0 : i8} : (tensor<1x704x1x1xf32>, tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xf32>
    %extracted_slice_399 = tensor.extract_slice %1155[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1156 = "tosa.add"(%1127, %extracted_slice_399) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_400 = tensor.extract_slice %1155[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1157 = "tosa.add"(%1128, %extracted_slice_400) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_401 = tensor.extract_slice %1155[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1158 = "tosa.add"(%1129, %extracted_slice_401) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_402 = tensor.extract_slice %1155[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1159 = "tosa.add"(%1130, %extracted_slice_402) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_403 = tensor.extract_slice %1155[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1160 = "tosa.add"(%1131, %extracted_slice_403) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_404 = tensor.extract_slice %1155[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1161 = "tosa.add"(%1132, %extracted_slice_404) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_405 = tensor.extract_slice %1155[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1162 = "tosa.add"(%1133, %extracted_slice_405) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_406 = tensor.extract_slice %1155[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1163 = "tosa.add"(%1134, %extracted_slice_406) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_407 = tensor.extract_slice %1155[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1164 = "tosa.add"(%1135, %extracted_slice_407) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_408 = tensor.extract_slice %1155[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1165 = "tosa.add"(%1136, %extracted_slice_408) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_409 = tensor.extract_slice %1155[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1166 = "tosa.add"(%1137, %extracted_slice_409) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_410 = tensor.extract_slice %1155[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1167 = "tosa.add"(%1138, %extracted_slice_410) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_411 = tensor.extract_slice %1155[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1168 = "tosa.add"(%1139, %extracted_slice_411) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_412 = tensor.extract_slice %1155[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1169 = "tosa.add"(%1140, %extracted_slice_412) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_413 = tensor.extract_slice %1155[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x256x14x14xf32>
    %1170 = "tosa.add"(%1141, %extracted_slice_413) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1171 = "tosa.transpose"(%1156, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1172 = "tosa.transpose_conv2d"(%1171, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1173 = "tosa.transpose"(%1172, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1174 = "tosa.equal"(%274, %275) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1175 = "tosa.select"(%1174, %1173, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1176 = "tosa.mul"(%8, %1175) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1177 = "tosa.mul"(%273, %1176) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1178 = "tosa.transpose"(%1177, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1179 = "tosa.transpose_conv2d"(%1178, %724, %cst_12) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 672>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<672x1x1x128xf32>, tensor<672xf32>) -> tensor<1x14x14x672xf32>
    %1180 = "tosa.transpose"(%1179, %2) : (tensor<1x14x14x672xf32>, tensor<4xi64>) -> tensor<1x672x14x14xf32>
    %1181 = "tosa.equal"(%271, %272) : (tensor<1x672x14x14xf32>, tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xi1>
    %1182 = "tosa.select"(%1181, %1180, %3) : (tensor<1x672x14x14xi1>, tensor<1x672x14x14xf32>, tensor<f32>) -> tensor<1x672x14x14xf32>
    %1183 = "tosa.mul"(%46, %1182) {shift = 0 : i8} : (tensor<1x672x1x1xf32>, tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    %1184 = "tosa.mul"(%270, %1183) {shift = 0 : i8} : (tensor<1x672x1x1xf32>, tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    %extracted_slice_414 = tensor.extract_slice %1184[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1185 = "tosa.add"(%1157, %extracted_slice_414) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_415 = tensor.extract_slice %1184[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1186 = "tosa.add"(%1158, %extracted_slice_415) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_416 = tensor.extract_slice %1184[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1187 = "tosa.add"(%1159, %extracted_slice_416) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_417 = tensor.extract_slice %1184[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1188 = "tosa.add"(%1160, %extracted_slice_417) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_418 = tensor.extract_slice %1184[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1189 = "tosa.add"(%1161, %extracted_slice_418) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_419 = tensor.extract_slice %1184[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1190 = "tosa.add"(%1162, %extracted_slice_419) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_420 = tensor.extract_slice %1184[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1191 = "tosa.add"(%1163, %extracted_slice_420) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_421 = tensor.extract_slice %1184[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1192 = "tosa.add"(%1164, %extracted_slice_421) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_422 = tensor.extract_slice %1184[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1193 = "tosa.add"(%1165, %extracted_slice_422) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_423 = tensor.extract_slice %1184[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1194 = "tosa.add"(%1166, %extracted_slice_423) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_424 = tensor.extract_slice %1184[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1195 = "tosa.add"(%1167, %extracted_slice_424) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_425 = tensor.extract_slice %1184[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1196 = "tosa.add"(%1168, %extracted_slice_425) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_426 = tensor.extract_slice %1184[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1197 = "tosa.add"(%1169, %extracted_slice_426) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_427 = tensor.extract_slice %1184[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x256x14x14xf32>
    %1198 = "tosa.add"(%1170, %extracted_slice_427) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1199 = "tosa.transpose"(%1185, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1200 = "tosa.transpose_conv2d"(%1199, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1201 = "tosa.transpose"(%1200, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1202 = "tosa.equal"(%268, %269) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1203 = "tosa.select"(%1202, %1201, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1204 = "tosa.mul"(%8, %1203) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1205 = "tosa.mul"(%267, %1204) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1206 = "tosa.transpose"(%1205, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1207 = "tosa.transpose_conv2d"(%1206, %745, %cst_13) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 640>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<640x1x1x128xf32>, tensor<640xf32>) -> tensor<1x14x14x640xf32>
    %1208 = "tosa.transpose"(%1207, %2) : (tensor<1x14x14x640xf32>, tensor<4xi64>) -> tensor<1x640x14x14xf32>
    %1209 = "tosa.equal"(%265, %266) : (tensor<1x640x14x14xf32>, tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xi1>
    %1210 = "tosa.select"(%1209, %1208, %3) : (tensor<1x640x14x14xi1>, tensor<1x640x14x14xf32>, tensor<f32>) -> tensor<1x640x14x14xf32>
    %1211 = "tosa.mul"(%44, %1210) {shift = 0 : i8} : (tensor<1x640x1x1xf32>, tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xf32>
    %1212 = "tosa.mul"(%264, %1211) {shift = 0 : i8} : (tensor<1x640x1x1xf32>, tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xf32>
    %extracted_slice_428 = tensor.extract_slice %1212[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1213 = "tosa.add"(%1186, %extracted_slice_428) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_429 = tensor.extract_slice %1212[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1214 = "tosa.add"(%1187, %extracted_slice_429) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_430 = tensor.extract_slice %1212[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1215 = "tosa.add"(%1188, %extracted_slice_430) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_431 = tensor.extract_slice %1212[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1216 = "tosa.add"(%1189, %extracted_slice_431) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_432 = tensor.extract_slice %1212[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1217 = "tosa.add"(%1190, %extracted_slice_432) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_433 = tensor.extract_slice %1212[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1218 = "tosa.add"(%1191, %extracted_slice_433) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_434 = tensor.extract_slice %1212[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1219 = "tosa.add"(%1192, %extracted_slice_434) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_435 = tensor.extract_slice %1212[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1220 = "tosa.add"(%1193, %extracted_slice_435) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_436 = tensor.extract_slice %1212[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1221 = "tosa.add"(%1194, %extracted_slice_436) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_437 = tensor.extract_slice %1212[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1222 = "tosa.add"(%1195, %extracted_slice_437) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_438 = tensor.extract_slice %1212[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1223 = "tosa.add"(%1196, %extracted_slice_438) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_439 = tensor.extract_slice %1212[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1224 = "tosa.add"(%1197, %extracted_slice_439) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_440 = tensor.extract_slice %1212[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x256x14x14xf32>
    %1225 = "tosa.add"(%1198, %extracted_slice_440) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1226 = "tosa.transpose"(%1213, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1227 = "tosa.transpose_conv2d"(%1226, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1228 = "tosa.transpose"(%1227, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1229 = "tosa.equal"(%262, %263) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1230 = "tosa.select"(%1229, %1228, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1231 = "tosa.mul"(%8, %1230) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1232 = "tosa.mul"(%261, %1231) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1233 = "tosa.transpose"(%1232, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1234 = "tosa.transpose_conv2d"(%1233, %765, %cst_14) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 608>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<608x1x1x128xf32>, tensor<608xf32>) -> tensor<1x14x14x608xf32>
    %1235 = "tosa.transpose"(%1234, %2) : (tensor<1x14x14x608xf32>, tensor<4xi64>) -> tensor<1x608x14x14xf32>
    %1236 = "tosa.equal"(%259, %260) : (tensor<1x608x14x14xf32>, tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xi1>
    %1237 = "tosa.select"(%1236, %1235, %3) : (tensor<1x608x14x14xi1>, tensor<1x608x14x14xf32>, tensor<f32>) -> tensor<1x608x14x14xf32>
    %1238 = "tosa.mul"(%42, %1237) {shift = 0 : i8} : (tensor<1x608x1x1xf32>, tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xf32>
    %1239 = "tosa.mul"(%258, %1238) {shift = 0 : i8} : (tensor<1x608x1x1xf32>, tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xf32>
    %extracted_slice_441 = tensor.extract_slice %1239[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1240 = "tosa.add"(%1214, %extracted_slice_441) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_442 = tensor.extract_slice %1239[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1241 = "tosa.add"(%1215, %extracted_slice_442) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_443 = tensor.extract_slice %1239[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1242 = "tosa.add"(%1216, %extracted_slice_443) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_444 = tensor.extract_slice %1239[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1243 = "tosa.add"(%1217, %extracted_slice_444) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_445 = tensor.extract_slice %1239[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1244 = "tosa.add"(%1218, %extracted_slice_445) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_446 = tensor.extract_slice %1239[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1245 = "tosa.add"(%1219, %extracted_slice_446) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_447 = tensor.extract_slice %1239[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1246 = "tosa.add"(%1220, %extracted_slice_447) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_448 = tensor.extract_slice %1239[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1247 = "tosa.add"(%1221, %extracted_slice_448) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_449 = tensor.extract_slice %1239[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1248 = "tosa.add"(%1222, %extracted_slice_449) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_450 = tensor.extract_slice %1239[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1249 = "tosa.add"(%1223, %extracted_slice_450) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_451 = tensor.extract_slice %1239[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1250 = "tosa.add"(%1224, %extracted_slice_451) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_452 = tensor.extract_slice %1239[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x256x14x14xf32>
    %1251 = "tosa.add"(%1225, %extracted_slice_452) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1252 = "tosa.transpose"(%1240, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1253 = "tosa.transpose_conv2d"(%1252, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1254 = "tosa.transpose"(%1253, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1255 = "tosa.equal"(%256, %257) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1256 = "tosa.select"(%1255, %1254, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1257 = "tosa.mul"(%8, %1256) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1258 = "tosa.mul"(%255, %1257) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1259 = "tosa.transpose"(%1258, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1260 = "tosa.transpose_conv2d"(%1259, %784, %cst_15) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 576>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<576x1x1x128xf32>, tensor<576xf32>) -> tensor<1x14x14x576xf32>
    %1261 = "tosa.transpose"(%1260, %2) : (tensor<1x14x14x576xf32>, tensor<4xi64>) -> tensor<1x576x14x14xf32>
    %1262 = "tosa.equal"(%253, %254) : (tensor<1x576x14x14xf32>, tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xi1>
    %1263 = "tosa.select"(%1262, %1261, %3) : (tensor<1x576x14x14xi1>, tensor<1x576x14x14xf32>, tensor<f32>) -> tensor<1x576x14x14xf32>
    %1264 = "tosa.mul"(%40, %1263) {shift = 0 : i8} : (tensor<1x576x1x1xf32>, tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xf32>
    %1265 = "tosa.mul"(%252, %1264) {shift = 0 : i8} : (tensor<1x576x1x1xf32>, tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xf32>
    %extracted_slice_453 = tensor.extract_slice %1265[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1266 = "tosa.add"(%1241, %extracted_slice_453) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_454 = tensor.extract_slice %1265[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1267 = "tosa.add"(%1242, %extracted_slice_454) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_455 = tensor.extract_slice %1265[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1268 = "tosa.add"(%1243, %extracted_slice_455) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_456 = tensor.extract_slice %1265[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1269 = "tosa.add"(%1244, %extracted_slice_456) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_457 = tensor.extract_slice %1265[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1270 = "tosa.add"(%1245, %extracted_slice_457) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_458 = tensor.extract_slice %1265[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1271 = "tosa.add"(%1246, %extracted_slice_458) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_459 = tensor.extract_slice %1265[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1272 = "tosa.add"(%1247, %extracted_slice_459) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_460 = tensor.extract_slice %1265[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1273 = "tosa.add"(%1248, %extracted_slice_460) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_461 = tensor.extract_slice %1265[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1274 = "tosa.add"(%1249, %extracted_slice_461) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_462 = tensor.extract_slice %1265[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1275 = "tosa.add"(%1250, %extracted_slice_462) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_463 = tensor.extract_slice %1265[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x256x14x14xf32>
    %1276 = "tosa.add"(%1251, %extracted_slice_463) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1277 = "tosa.transpose"(%1266, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1278 = "tosa.transpose_conv2d"(%1277, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1279 = "tosa.transpose"(%1278, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1280 = "tosa.equal"(%250, %251) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1281 = "tosa.select"(%1280, %1279, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1282 = "tosa.mul"(%8, %1281) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1283 = "tosa.mul"(%249, %1282) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1284 = "tosa.transpose"(%1283, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1285 = "tosa.transpose_conv2d"(%1284, %802, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 544>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<544x1x1x128xf32>, tensor<544xf32>) -> tensor<1x14x14x544xf32>
    %1286 = "tosa.transpose"(%1285, %2) : (tensor<1x14x14x544xf32>, tensor<4xi64>) -> tensor<1x544x14x14xf32>
    %1287 = "tosa.equal"(%247, %248) : (tensor<1x544x14x14xf32>, tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xi1>
    %1288 = "tosa.select"(%1287, %1286, %3) : (tensor<1x544x14x14xi1>, tensor<1x544x14x14xf32>, tensor<f32>) -> tensor<1x544x14x14xf32>
    %1289 = "tosa.mul"(%38, %1288) {shift = 0 : i8} : (tensor<1x544x1x1xf32>, tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xf32>
    %1290 = "tosa.mul"(%246, %1289) {shift = 0 : i8} : (tensor<1x544x1x1xf32>, tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xf32>
    %extracted_slice_464 = tensor.extract_slice %1290[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1291 = "tosa.add"(%1267, %extracted_slice_464) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_465 = tensor.extract_slice %1290[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1292 = "tosa.add"(%1268, %extracted_slice_465) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_466 = tensor.extract_slice %1290[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1293 = "tosa.add"(%1269, %extracted_slice_466) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_467 = tensor.extract_slice %1290[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1294 = "tosa.add"(%1270, %extracted_slice_467) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_468 = tensor.extract_slice %1290[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1295 = "tosa.add"(%1271, %extracted_slice_468) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_469 = tensor.extract_slice %1290[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1296 = "tosa.add"(%1272, %extracted_slice_469) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_470 = tensor.extract_slice %1290[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1297 = "tosa.add"(%1273, %extracted_slice_470) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_471 = tensor.extract_slice %1290[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1298 = "tosa.add"(%1274, %extracted_slice_471) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_472 = tensor.extract_slice %1290[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1299 = "tosa.add"(%1275, %extracted_slice_472) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_473 = tensor.extract_slice %1290[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x256x14x14xf32>
    %1300 = "tosa.add"(%1276, %extracted_slice_473) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1301 = "tosa.transpose"(%1291, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1302 = "tosa.transpose_conv2d"(%1301, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1303 = "tosa.transpose"(%1302, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1304 = "tosa.equal"(%244, %245) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1305 = "tosa.select"(%1304, %1303, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1306 = "tosa.mul"(%8, %1305) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1307 = "tosa.mul"(%243, %1306) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1308 = "tosa.transpose"(%1307, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1309 = "tosa.transpose_conv2d"(%1308, %819, %cst_17) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %1310 = "tosa.transpose"(%1309, %2) : (tensor<1x14x14x512xf32>, tensor<4xi64>) -> tensor<1x512x14x14xf32>
    %1311 = "tosa.equal"(%241, %242) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %1312 = "tosa.select"(%1311, %1310, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %1313 = "tosa.mul"(%35, %1312) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %1314 = "tosa.mul"(%240, %1313) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %extracted_slice_474 = tensor.extract_slice %1314[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %1315 = "tosa.add"(%1292, %extracted_slice_474) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_475 = tensor.extract_slice %1314[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %1316 = "tosa.add"(%1293, %extracted_slice_475) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_476 = tensor.extract_slice %1314[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %1317 = "tosa.add"(%1294, %extracted_slice_476) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_477 = tensor.extract_slice %1314[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %1318 = "tosa.add"(%1295, %extracted_slice_477) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_478 = tensor.extract_slice %1314[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %1319 = "tosa.add"(%1296, %extracted_slice_478) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_479 = tensor.extract_slice %1314[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %1320 = "tosa.add"(%1297, %extracted_slice_479) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_480 = tensor.extract_slice %1314[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %1321 = "tosa.add"(%1298, %extracted_slice_480) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_481 = tensor.extract_slice %1314[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %1322 = "tosa.add"(%1299, %extracted_slice_481) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_482 = tensor.extract_slice %1314[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x256x14x14xf32>
    %1323 = "tosa.add"(%1300, %extracted_slice_482) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1324 = "tosa.transpose"(%1315, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1325 = "tosa.transpose_conv2d"(%1324, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1326 = "tosa.transpose"(%1325, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1327 = "tosa.equal"(%238, %239) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1328 = "tosa.select"(%1327, %1326, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1329 = "tosa.mul"(%8, %1328) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1330 = "tosa.mul"(%237, %1329) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1331 = "tosa.transpose"(%1330, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1332 = "tosa.transpose"(%34, %4) : (tensor<128x1x1x480xf32>, tensor<4xi64>) -> tensor<480x1x1x128xf32>
    %1333 = "tosa.transpose_conv2d"(%1331, %1332, %cst_21) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 480>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<480x1x1x128xf32>, tensor<480xf32>) -> tensor<1x14x14x480xf32>
    %1334 = "tosa.transpose"(%1333, %2) : (tensor<1x14x14x480xf32>, tensor<4xi64>) -> tensor<1x480x14x14xf32>
    %1335 = "tosa.equal"(%235, %236) : (tensor<1x480x14x14xf32>, tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xi1>
    %1336 = "tosa.select"(%1335, %1334, %3) : (tensor<1x480x14x14xi1>, tensor<1x480x14x14xf32>, tensor<f32>) -> tensor<1x480x14x14xf32>
    %1337 = "tosa.mul"(%33, %1336) {shift = 0 : i8} : (tensor<1x480x1x1xf32>, tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    %1338 = "tosa.mul"(%234, %1337) {shift = 0 : i8} : (tensor<1x480x1x1xf32>, tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    %extracted_slice_483 = tensor.extract_slice %1338[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %1339 = "tosa.add"(%1316, %extracted_slice_483) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_484 = tensor.extract_slice %1338[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %1340 = "tosa.add"(%1317, %extracted_slice_484) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_485 = tensor.extract_slice %1338[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %1341 = "tosa.add"(%1318, %extracted_slice_485) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_486 = tensor.extract_slice %1338[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %1342 = "tosa.add"(%1319, %extracted_slice_486) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_487 = tensor.extract_slice %1338[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %1343 = "tosa.add"(%1320, %extracted_slice_487) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_488 = tensor.extract_slice %1338[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %1344 = "tosa.add"(%1321, %extracted_slice_488) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_489 = tensor.extract_slice %1338[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %1345 = "tosa.add"(%1322, %extracted_slice_489) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_490 = tensor.extract_slice %1338[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x256x14x14xf32>
    %1346 = "tosa.add"(%1323, %extracted_slice_490) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1347 = "tosa.transpose"(%1339, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1348 = "tosa.transpose_conv2d"(%1347, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1349 = "tosa.transpose"(%1348, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1350 = "tosa.equal"(%232, %233) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1351 = "tosa.select"(%1350, %1349, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1352 = "tosa.mul"(%8, %1351) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1353 = "tosa.mul"(%231, %1352) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1354 = "tosa.transpose"(%1353, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1355 = "tosa.transpose"(%32, %4) : (tensor<128x1x1x448xf32>, tensor<4xi64>) -> tensor<448x1x1x128xf32>
    %1356 = "tosa.transpose_conv2d"(%1354, %1355, %cst_22) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 448>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<448x1x1x128xf32>, tensor<448xf32>) -> tensor<1x14x14x448xf32>
    %1357 = "tosa.transpose"(%1356, %2) : (tensor<1x14x14x448xf32>, tensor<4xi64>) -> tensor<1x448x14x14xf32>
    %1358 = "tosa.equal"(%229, %230) : (tensor<1x448x14x14xf32>, tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xi1>
    %1359 = "tosa.select"(%1358, %1357, %3) : (tensor<1x448x14x14xi1>, tensor<1x448x14x14xf32>, tensor<f32>) -> tensor<1x448x14x14xf32>
    %1360 = "tosa.mul"(%31, %1359) {shift = 0 : i8} : (tensor<1x448x1x1xf32>, tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xf32>
    %1361 = "tosa.mul"(%228, %1360) {shift = 0 : i8} : (tensor<1x448x1x1xf32>, tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xf32>
    %extracted_slice_491 = tensor.extract_slice %1361[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %1362 = "tosa.add"(%1340, %extracted_slice_491) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_492 = tensor.extract_slice %1361[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %1363 = "tosa.add"(%1341, %extracted_slice_492) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_493 = tensor.extract_slice %1361[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %1364 = "tosa.add"(%1342, %extracted_slice_493) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_494 = tensor.extract_slice %1361[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %1365 = "tosa.add"(%1343, %extracted_slice_494) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_495 = tensor.extract_slice %1361[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %1366 = "tosa.add"(%1344, %extracted_slice_495) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_496 = tensor.extract_slice %1361[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %1367 = "tosa.add"(%1345, %extracted_slice_496) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_497 = tensor.extract_slice %1361[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x256x14x14xf32>
    %1368 = "tosa.add"(%1346, %extracted_slice_497) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1369 = "tosa.transpose"(%1362, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1370 = "tosa.transpose_conv2d"(%1369, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1371 = "tosa.transpose"(%1370, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1372 = "tosa.equal"(%226, %227) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1373 = "tosa.select"(%1372, %1371, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1374 = "tosa.mul"(%8, %1373) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1375 = "tosa.mul"(%225, %1374) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1376 = "tosa.transpose"(%1375, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1377 = "tosa.transpose"(%30, %4) : (tensor<128x1x1x416xf32>, tensor<4xi64>) -> tensor<416x1x1x128xf32>
    %1378 = "tosa.transpose_conv2d"(%1376, %1377, %cst_23) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 416>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<416x1x1x128xf32>, tensor<416xf32>) -> tensor<1x14x14x416xf32>
    %1379 = "tosa.transpose"(%1378, %2) : (tensor<1x14x14x416xf32>, tensor<4xi64>) -> tensor<1x416x14x14xf32>
    %1380 = "tosa.equal"(%223, %224) : (tensor<1x416x14x14xf32>, tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xi1>
    %1381 = "tosa.select"(%1380, %1379, %3) : (tensor<1x416x14x14xi1>, tensor<1x416x14x14xf32>, tensor<f32>) -> tensor<1x416x14x14xf32>
    %1382 = "tosa.mul"(%29, %1381) {shift = 0 : i8} : (tensor<1x416x1x1xf32>, tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xf32>
    %1383 = "tosa.mul"(%222, %1382) {shift = 0 : i8} : (tensor<1x416x1x1xf32>, tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xf32>
    %extracted_slice_498 = tensor.extract_slice %1383[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %1384 = "tosa.add"(%1363, %extracted_slice_498) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_499 = tensor.extract_slice %1383[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %1385 = "tosa.add"(%1364, %extracted_slice_499) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_500 = tensor.extract_slice %1383[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %1386 = "tosa.add"(%1365, %extracted_slice_500) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_501 = tensor.extract_slice %1383[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %1387 = "tosa.add"(%1366, %extracted_slice_501) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_502 = tensor.extract_slice %1383[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %1388 = "tosa.add"(%1367, %extracted_slice_502) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_503 = tensor.extract_slice %1383[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x256x14x14xf32>
    %1389 = "tosa.add"(%1368, %extracted_slice_503) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1390 = "tosa.transpose"(%1384, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1391 = "tosa.transpose_conv2d"(%1390, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1392 = "tosa.transpose"(%1391, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1393 = "tosa.equal"(%220, %221) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1394 = "tosa.select"(%1393, %1392, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1395 = "tosa.mul"(%8, %1394) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1396 = "tosa.mul"(%219, %1395) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1397 = "tosa.transpose"(%1396, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1398 = "tosa.transpose"(%28, %4) : (tensor<128x1x1x384xf32>, tensor<4xi64>) -> tensor<384x1x1x128xf32>
    %1399 = "tosa.transpose_conv2d"(%1397, %1398, %cst_24) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 384>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<384x1x1x128xf32>, tensor<384xf32>) -> tensor<1x14x14x384xf32>
    %1400 = "tosa.transpose"(%1399, %2) : (tensor<1x14x14x384xf32>, tensor<4xi64>) -> tensor<1x384x14x14xf32>
    %1401 = "tosa.equal"(%217, %218) : (tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xi1>
    %1402 = "tosa.select"(%1401, %1400, %3) : (tensor<1x384x14x14xi1>, tensor<1x384x14x14xf32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %1403 = "tosa.mul"(%27, %1402) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %1404 = "tosa.mul"(%216, %1403) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %extracted_slice_504 = tensor.extract_slice %1404[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x32x14x14xf32>
    %1405 = "tosa.add"(%1385, %extracted_slice_504) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_505 = tensor.extract_slice %1404[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x32x14x14xf32>
    %1406 = "tosa.add"(%1386, %extracted_slice_505) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_506 = tensor.extract_slice %1404[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x32x14x14xf32>
    %1407 = "tosa.add"(%1387, %extracted_slice_506) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_507 = tensor.extract_slice %1404[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x32x14x14xf32>
    %1408 = "tosa.add"(%1388, %extracted_slice_507) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_508 = tensor.extract_slice %1404[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x256x14x14xf32>
    %1409 = "tosa.add"(%1389, %extracted_slice_508) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1410 = "tosa.transpose"(%1405, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1411 = "tosa.transpose_conv2d"(%1410, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1412 = "tosa.transpose"(%1411, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1413 = "tosa.equal"(%214, %215) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1414 = "tosa.select"(%1413, %1412, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1415 = "tosa.mul"(%8, %1414) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1416 = "tosa.mul"(%213, %1415) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1417 = "tosa.transpose"(%1416, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1418 = "tosa.transpose"(%26, %4) : (tensor<128x1x1x352xf32>, tensor<4xi64>) -> tensor<352x1x1x128xf32>
    %1419 = "tosa.transpose_conv2d"(%1417, %1418, %cst_25) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 352>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<352x1x1x128xf32>, tensor<352xf32>) -> tensor<1x14x14x352xf32>
    %1420 = "tosa.transpose"(%1419, %2) : (tensor<1x14x14x352xf32>, tensor<4xi64>) -> tensor<1x352x14x14xf32>
    %1421 = "tosa.equal"(%211, %212) : (tensor<1x352x14x14xf32>, tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xi1>
    %1422 = "tosa.select"(%1421, %1420, %3) : (tensor<1x352x14x14xi1>, tensor<1x352x14x14xf32>, tensor<f32>) -> tensor<1x352x14x14xf32>
    %1423 = "tosa.mul"(%25, %1422) {shift = 0 : i8} : (tensor<1x352x1x1xf32>, tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xf32>
    %1424 = "tosa.mul"(%210, %1423) {shift = 0 : i8} : (tensor<1x352x1x1xf32>, tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xf32>
    %extracted_slice_509 = tensor.extract_slice %1424[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x352x14x14xf32> to tensor<1x32x14x14xf32>
    %1425 = "tosa.add"(%1406, %extracted_slice_509) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_510 = tensor.extract_slice %1424[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x352x14x14xf32> to tensor<1x32x14x14xf32>
    %1426 = "tosa.add"(%1407, %extracted_slice_510) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_511 = tensor.extract_slice %1424[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x352x14x14xf32> to tensor<1x32x14x14xf32>
    %1427 = "tosa.add"(%1408, %extracted_slice_511) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_512 = tensor.extract_slice %1424[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x352x14x14xf32> to tensor<1x256x14x14xf32>
    %1428 = "tosa.add"(%1409, %extracted_slice_512) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1429 = "tosa.transpose"(%1425, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1430 = "tosa.transpose_conv2d"(%1429, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1431 = "tosa.transpose"(%1430, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1432 = "tosa.equal"(%208, %209) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1433 = "tosa.select"(%1432, %1431, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1434 = "tosa.mul"(%8, %1433) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1435 = "tosa.mul"(%207, %1434) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1436 = "tosa.transpose"(%1435, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1437 = "tosa.transpose"(%24, %4) : (tensor<128x1x1x320xf32>, tensor<4xi64>) -> tensor<320x1x1x128xf32>
    %1438 = "tosa.transpose_conv2d"(%1436, %1437, %cst_26) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 320>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<320x1x1x128xf32>, tensor<320xf32>) -> tensor<1x14x14x320xf32>
    %1439 = "tosa.transpose"(%1438, %2) : (tensor<1x14x14x320xf32>, tensor<4xi64>) -> tensor<1x320x14x14xf32>
    %1440 = "tosa.equal"(%205, %206) : (tensor<1x320x14x14xf32>, tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xi1>
    %1441 = "tosa.select"(%1440, %1439, %3) : (tensor<1x320x14x14xi1>, tensor<1x320x14x14xf32>, tensor<f32>) -> tensor<1x320x14x14xf32>
    %1442 = "tosa.mul"(%23, %1441) {shift = 0 : i8} : (tensor<1x320x1x1xf32>, tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xf32>
    %1443 = "tosa.mul"(%204, %1442) {shift = 0 : i8} : (tensor<1x320x1x1xf32>, tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xf32>
    %extracted_slice_513 = tensor.extract_slice %1443[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x320x14x14xf32> to tensor<1x32x14x14xf32>
    %1444 = "tosa.add"(%1426, %extracted_slice_513) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_514 = tensor.extract_slice %1443[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x320x14x14xf32> to tensor<1x32x14x14xf32>
    %1445 = "tosa.add"(%1427, %extracted_slice_514) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_515 = tensor.extract_slice %1443[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x320x14x14xf32> to tensor<1x256x14x14xf32>
    %1446 = "tosa.add"(%1428, %extracted_slice_515) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1447 = "tosa.transpose"(%1444, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1448 = "tosa.transpose_conv2d"(%1447, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1449 = "tosa.transpose"(%1448, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1450 = "tosa.equal"(%202, %203) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1451 = "tosa.select"(%1450, %1449, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1452 = "tosa.mul"(%8, %1451) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1453 = "tosa.mul"(%201, %1452) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1454 = "tosa.transpose"(%1453, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1455 = "tosa.transpose"(%22, %4) : (tensor<128x1x1x288xf32>, tensor<4xi64>) -> tensor<288x1x1x128xf32>
    %1456 = "tosa.transpose_conv2d"(%1454, %1455, %cst_27) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 288>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<288x1x1x128xf32>, tensor<288xf32>) -> tensor<1x14x14x288xf32>
    %1457 = "tosa.transpose"(%1456, %2) : (tensor<1x14x14x288xf32>, tensor<4xi64>) -> tensor<1x288x14x14xf32>
    %1458 = "tosa.equal"(%199, %200) : (tensor<1x288x14x14xf32>, tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xi1>
    %1459 = "tosa.select"(%1458, %1457, %3) : (tensor<1x288x14x14xi1>, tensor<1x288x14x14xf32>, tensor<f32>) -> tensor<1x288x14x14xf32>
    %1460 = "tosa.mul"(%21, %1459) {shift = 0 : i8} : (tensor<1x288x1x1xf32>, tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xf32>
    %1461 = "tosa.mul"(%198, %1460) {shift = 0 : i8} : (tensor<1x288x1x1xf32>, tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xf32>
    %extracted_slice_516 = tensor.extract_slice %1461[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x288x14x14xf32> to tensor<1x32x14x14xf32>
    %1462 = "tosa.add"(%1445, %extracted_slice_516) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_517 = tensor.extract_slice %1461[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x288x14x14xf32> to tensor<1x256x14x14xf32>
    %1463 = "tosa.add"(%1446, %extracted_slice_517) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1464 = "tosa.transpose"(%1462, %1) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1465 = "tosa.transpose_conv2d"(%1464, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1466 = "tosa.transpose"(%1465, %2) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1467 = "tosa.equal"(%196, %197) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1468 = "tosa.select"(%1467, %1466, %3) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1469 = "tosa.mul"(%8, %1468) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1470 = "tosa.mul"(%195, %1469) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1471 = "tosa.transpose"(%1470, %1) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1472 = "tosa.transpose"(%20, %4) : (tensor<128x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x128xf32>
    %1473 = "tosa.transpose_conv2d"(%1471, %1472, %cst_28) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1474 = "tosa.transpose"(%1473, %2) : (tensor<1x14x14x256xf32>, tensor<4xi64>) -> tensor<1x256x14x14xf32>
    %1475 = "tosa.equal"(%193, %194) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1476 = "tosa.select"(%1475, %1474, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1477 = "tosa.mul"(%19, %1476) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1478 = "tosa.mul"(%192, %1477) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1479 = "tosa.add"(%1463, %1478) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1480 = "tosa.transpose"(%1479, %1) : (tensor<1x256x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x256xf32>
    %1481 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%191, %cst_19, %1480 : tensor<1x28x28x256xf32>, tensor<2x2xf32>, tensor<1x14x14x256xf32>) outs(%cst_29 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_636: f32, %in_637: f32, %out: f32):
      %1865 = arith.mulf %in_637, %cst_40 : f32
      %1866 = arith.addf %1865, %out : f32
      linalg.yield %1866 : f32
    } -> tensor<1x28x28x256xf32>
    %1482 = "tosa.transpose"(%36, %4) : (tensor<256x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x256xf32>
    %1483 = "tosa.transpose_conv2d"(%1481, %1482, %cst_17) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %1484 = "tosa.transpose"(%1483, %2) : (tensor<1x28x28x512xf32>, tensor<4xi64>) -> tensor<1x512x28x28xf32>
    %1485 = "tosa.equal"(%189, %190) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %1486 = "tosa.select"(%1485, %1484, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %1487 = "tosa.mul"(%35, %1486) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %1488 = "tosa.mul"(%188, %1487) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %extracted_slice_518 = tensor.extract_slice %1488[0, 480, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_519 = tensor.extract_slice %1488[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_520 = tensor.extract_slice %1488[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_521 = tensor.extract_slice %1488[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_522 = tensor.extract_slice %1488[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_523 = tensor.extract_slice %1488[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_524 = tensor.extract_slice %1488[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_525 = tensor.extract_slice %1488[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_526 = tensor.extract_slice %1488[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_527 = tensor.extract_slice %1488[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_528 = tensor.extract_slice %1488[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_529 = tensor.extract_slice %1488[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_530 = tensor.extract_slice %1488[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x128x28x28xf32>
    %1489 = "tosa.transpose"(%extracted_slice_518, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1490 = "tosa.transpose_conv2d"(%1489, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1491 = "tosa.transpose"(%1490, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1492 = "tosa.equal"(%186, %187) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1493 = "tosa.select"(%1492, %1491, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1494 = "tosa.mul"(%8, %1493) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1495 = "tosa.mul"(%185, %1494) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1496 = "tosa.transpose"(%1495, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1497 = "tosa.transpose_conv2d"(%1496, %1332, %cst_21) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 480>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<480x1x1x128xf32>, tensor<480xf32>) -> tensor<1x28x28x480xf32>
    %1498 = "tosa.transpose"(%1497, %2) : (tensor<1x28x28x480xf32>, tensor<4xi64>) -> tensor<1x480x28x28xf32>
    %1499 = "tosa.equal"(%183, %184) : (tensor<1x480x28x28xf32>, tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xi1>
    %1500 = "tosa.select"(%1499, %1498, %3) : (tensor<1x480x28x28xi1>, tensor<1x480x28x28xf32>, tensor<f32>) -> tensor<1x480x28x28xf32>
    %1501 = "tosa.mul"(%33, %1500) {shift = 0 : i8} : (tensor<1x480x1x1xf32>, tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xf32>
    %1502 = "tosa.mul"(%182, %1501) {shift = 0 : i8} : (tensor<1x480x1x1xf32>, tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xf32>
    %extracted_slice_531 = tensor.extract_slice %1502[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1503 = "tosa.add"(%extracted_slice_519, %extracted_slice_531) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_532 = tensor.extract_slice %1502[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1504 = "tosa.add"(%extracted_slice_520, %extracted_slice_532) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_533 = tensor.extract_slice %1502[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1505 = "tosa.add"(%extracted_slice_521, %extracted_slice_533) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_534 = tensor.extract_slice %1502[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1506 = "tosa.add"(%extracted_slice_522, %extracted_slice_534) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_535 = tensor.extract_slice %1502[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1507 = "tosa.add"(%extracted_slice_523, %extracted_slice_535) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_536 = tensor.extract_slice %1502[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1508 = "tosa.add"(%extracted_slice_524, %extracted_slice_536) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_537 = tensor.extract_slice %1502[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1509 = "tosa.add"(%extracted_slice_525, %extracted_slice_537) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_538 = tensor.extract_slice %1502[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1510 = "tosa.add"(%extracted_slice_526, %extracted_slice_538) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_539 = tensor.extract_slice %1502[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1511 = "tosa.add"(%extracted_slice_527, %extracted_slice_539) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_540 = tensor.extract_slice %1502[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1512 = "tosa.add"(%extracted_slice_528, %extracted_slice_540) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_541 = tensor.extract_slice %1502[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %1513 = "tosa.add"(%extracted_slice_529, %extracted_slice_541) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_542 = tensor.extract_slice %1502[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x128x28x28xf32>
    %1514 = "tosa.add"(%extracted_slice_530, %extracted_slice_542) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1515 = "tosa.transpose"(%1503, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1516 = "tosa.transpose_conv2d"(%1515, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1517 = "tosa.transpose"(%1516, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1518 = "tosa.equal"(%180, %181) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1519 = "tosa.select"(%1518, %1517, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1520 = "tosa.mul"(%8, %1519) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1521 = "tosa.mul"(%179, %1520) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1522 = "tosa.transpose"(%1521, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1523 = "tosa.transpose_conv2d"(%1522, %1355, %cst_22) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 448>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<448x1x1x128xf32>, tensor<448xf32>) -> tensor<1x28x28x448xf32>
    %1524 = "tosa.transpose"(%1523, %2) : (tensor<1x28x28x448xf32>, tensor<4xi64>) -> tensor<1x448x28x28xf32>
    %1525 = "tosa.equal"(%177, %178) : (tensor<1x448x28x28xf32>, tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xi1>
    %1526 = "tosa.select"(%1525, %1524, %3) : (tensor<1x448x28x28xi1>, tensor<1x448x28x28xf32>, tensor<f32>) -> tensor<1x448x28x28xf32>
    %1527 = "tosa.mul"(%31, %1526) {shift = 0 : i8} : (tensor<1x448x1x1xf32>, tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xf32>
    %1528 = "tosa.mul"(%176, %1527) {shift = 0 : i8} : (tensor<1x448x1x1xf32>, tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xf32>
    %extracted_slice_543 = tensor.extract_slice %1528[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1529 = "tosa.add"(%1504, %extracted_slice_543) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_544 = tensor.extract_slice %1528[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1530 = "tosa.add"(%1505, %extracted_slice_544) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_545 = tensor.extract_slice %1528[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1531 = "tosa.add"(%1506, %extracted_slice_545) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_546 = tensor.extract_slice %1528[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1532 = "tosa.add"(%1507, %extracted_slice_546) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_547 = tensor.extract_slice %1528[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1533 = "tosa.add"(%1508, %extracted_slice_547) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_548 = tensor.extract_slice %1528[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1534 = "tosa.add"(%1509, %extracted_slice_548) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_549 = tensor.extract_slice %1528[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1535 = "tosa.add"(%1510, %extracted_slice_549) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_550 = tensor.extract_slice %1528[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1536 = "tosa.add"(%1511, %extracted_slice_550) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_551 = tensor.extract_slice %1528[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1537 = "tosa.add"(%1512, %extracted_slice_551) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_552 = tensor.extract_slice %1528[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %1538 = "tosa.add"(%1513, %extracted_slice_552) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_553 = tensor.extract_slice %1528[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x128x28x28xf32>
    %1539 = "tosa.add"(%1514, %extracted_slice_553) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1540 = "tosa.transpose"(%1529, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1541 = "tosa.transpose_conv2d"(%1540, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1542 = "tosa.transpose"(%1541, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1543 = "tosa.equal"(%174, %175) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1544 = "tosa.select"(%1543, %1542, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1545 = "tosa.mul"(%8, %1544) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1546 = "tosa.mul"(%173, %1545) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1547 = "tosa.transpose"(%1546, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1548 = "tosa.transpose_conv2d"(%1547, %1377, %cst_23) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 416>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<416x1x1x128xf32>, tensor<416xf32>) -> tensor<1x28x28x416xf32>
    %1549 = "tosa.transpose"(%1548, %2) : (tensor<1x28x28x416xf32>, tensor<4xi64>) -> tensor<1x416x28x28xf32>
    %1550 = "tosa.equal"(%171, %172) : (tensor<1x416x28x28xf32>, tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xi1>
    %1551 = "tosa.select"(%1550, %1549, %3) : (tensor<1x416x28x28xi1>, tensor<1x416x28x28xf32>, tensor<f32>) -> tensor<1x416x28x28xf32>
    %1552 = "tosa.mul"(%29, %1551) {shift = 0 : i8} : (tensor<1x416x1x1xf32>, tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xf32>
    %1553 = "tosa.mul"(%170, %1552) {shift = 0 : i8} : (tensor<1x416x1x1xf32>, tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xf32>
    %extracted_slice_554 = tensor.extract_slice %1553[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %1554 = "tosa.add"(%1530, %extracted_slice_554) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_555 = tensor.extract_slice %1553[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %1555 = "tosa.add"(%1531, %extracted_slice_555) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_556 = tensor.extract_slice %1553[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %1556 = "tosa.add"(%1532, %extracted_slice_556) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_557 = tensor.extract_slice %1553[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %1557 = "tosa.add"(%1533, %extracted_slice_557) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_558 = tensor.extract_slice %1553[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %1558 = "tosa.add"(%1534, %extracted_slice_558) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_559 = tensor.extract_slice %1553[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %1559 = "tosa.add"(%1535, %extracted_slice_559) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_560 = tensor.extract_slice %1553[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %1560 = "tosa.add"(%1536, %extracted_slice_560) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_561 = tensor.extract_slice %1553[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %1561 = "tosa.add"(%1537, %extracted_slice_561) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_562 = tensor.extract_slice %1553[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %1562 = "tosa.add"(%1538, %extracted_slice_562) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_563 = tensor.extract_slice %1553[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x128x28x28xf32>
    %1563 = "tosa.add"(%1539, %extracted_slice_563) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1564 = "tosa.transpose"(%1554, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1565 = "tosa.transpose_conv2d"(%1564, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1566 = "tosa.transpose"(%1565, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1567 = "tosa.equal"(%168, %169) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1568 = "tosa.select"(%1567, %1566, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1569 = "tosa.mul"(%8, %1568) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1570 = "tosa.mul"(%167, %1569) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1571 = "tosa.transpose"(%1570, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1572 = "tosa.transpose_conv2d"(%1571, %1398, %cst_24) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 384>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<384x1x1x128xf32>, tensor<384xf32>) -> tensor<1x28x28x384xf32>
    %1573 = "tosa.transpose"(%1572, %2) : (tensor<1x28x28x384xf32>, tensor<4xi64>) -> tensor<1x384x28x28xf32>
    %1574 = "tosa.equal"(%165, %166) : (tensor<1x384x28x28xf32>, tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xi1>
    %1575 = "tosa.select"(%1574, %1573, %3) : (tensor<1x384x28x28xi1>, tensor<1x384x28x28xf32>, tensor<f32>) -> tensor<1x384x28x28xf32>
    %1576 = "tosa.mul"(%27, %1575) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %1577 = "tosa.mul"(%164, %1576) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %extracted_slice_564 = tensor.extract_slice %1577[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %1578 = "tosa.add"(%1555, %extracted_slice_564) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_565 = tensor.extract_slice %1577[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %1579 = "tosa.add"(%1556, %extracted_slice_565) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_566 = tensor.extract_slice %1577[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %1580 = "tosa.add"(%1557, %extracted_slice_566) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_567 = tensor.extract_slice %1577[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %1581 = "tosa.add"(%1558, %extracted_slice_567) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_568 = tensor.extract_slice %1577[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %1582 = "tosa.add"(%1559, %extracted_slice_568) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_569 = tensor.extract_slice %1577[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %1583 = "tosa.add"(%1560, %extracted_slice_569) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_570 = tensor.extract_slice %1577[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %1584 = "tosa.add"(%1561, %extracted_slice_570) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_571 = tensor.extract_slice %1577[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %1585 = "tosa.add"(%1562, %extracted_slice_571) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_572 = tensor.extract_slice %1577[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x128x28x28xf32>
    %1586 = "tosa.add"(%1563, %extracted_slice_572) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1587 = "tosa.transpose"(%1578, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1588 = "tosa.transpose_conv2d"(%1587, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1589 = "tosa.transpose"(%1588, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1590 = "tosa.equal"(%162, %163) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1591 = "tosa.select"(%1590, %1589, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1592 = "tosa.mul"(%8, %1591) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1593 = "tosa.mul"(%161, %1592) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1594 = "tosa.transpose"(%1593, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1595 = "tosa.transpose_conv2d"(%1594, %1418, %cst_25) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 352>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<352x1x1x128xf32>, tensor<352xf32>) -> tensor<1x28x28x352xf32>
    %1596 = "tosa.transpose"(%1595, %2) : (tensor<1x28x28x352xf32>, tensor<4xi64>) -> tensor<1x352x28x28xf32>
    %1597 = "tosa.equal"(%159, %160) : (tensor<1x352x28x28xf32>, tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xi1>
    %1598 = "tosa.select"(%1597, %1596, %3) : (tensor<1x352x28x28xi1>, tensor<1x352x28x28xf32>, tensor<f32>) -> tensor<1x352x28x28xf32>
    %1599 = "tosa.mul"(%25, %1598) {shift = 0 : i8} : (tensor<1x352x1x1xf32>, tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xf32>
    %1600 = "tosa.mul"(%158, %1599) {shift = 0 : i8} : (tensor<1x352x1x1xf32>, tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xf32>
    %extracted_slice_573 = tensor.extract_slice %1600[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %1601 = "tosa.add"(%1579, %extracted_slice_573) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_574 = tensor.extract_slice %1600[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %1602 = "tosa.add"(%1580, %extracted_slice_574) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_575 = tensor.extract_slice %1600[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %1603 = "tosa.add"(%1581, %extracted_slice_575) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_576 = tensor.extract_slice %1600[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %1604 = "tosa.add"(%1582, %extracted_slice_576) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_577 = tensor.extract_slice %1600[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %1605 = "tosa.add"(%1583, %extracted_slice_577) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_578 = tensor.extract_slice %1600[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %1606 = "tosa.add"(%1584, %extracted_slice_578) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_579 = tensor.extract_slice %1600[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %1607 = "tosa.add"(%1585, %extracted_slice_579) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_580 = tensor.extract_slice %1600[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x128x28x28xf32>
    %1608 = "tosa.add"(%1586, %extracted_slice_580) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1609 = "tosa.transpose"(%1601, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1610 = "tosa.transpose_conv2d"(%1609, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1611 = "tosa.transpose"(%1610, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1612 = "tosa.equal"(%156, %157) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1613 = "tosa.select"(%1612, %1611, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1614 = "tosa.mul"(%8, %1613) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1615 = "tosa.mul"(%155, %1614) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1616 = "tosa.transpose"(%1615, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1617 = "tosa.transpose_conv2d"(%1616, %1437, %cst_26) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 320>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<320x1x1x128xf32>, tensor<320xf32>) -> tensor<1x28x28x320xf32>
    %1618 = "tosa.transpose"(%1617, %2) : (tensor<1x28x28x320xf32>, tensor<4xi64>) -> tensor<1x320x28x28xf32>
    %1619 = "tosa.equal"(%153, %154) : (tensor<1x320x28x28xf32>, tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xi1>
    %1620 = "tosa.select"(%1619, %1618, %3) : (tensor<1x320x28x28xi1>, tensor<1x320x28x28xf32>, tensor<f32>) -> tensor<1x320x28x28xf32>
    %1621 = "tosa.mul"(%23, %1620) {shift = 0 : i8} : (tensor<1x320x1x1xf32>, tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xf32>
    %1622 = "tosa.mul"(%152, %1621) {shift = 0 : i8} : (tensor<1x320x1x1xf32>, tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xf32>
    %extracted_slice_581 = tensor.extract_slice %1622[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %1623 = "tosa.add"(%1602, %extracted_slice_581) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_582 = tensor.extract_slice %1622[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %1624 = "tosa.add"(%1603, %extracted_slice_582) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_583 = tensor.extract_slice %1622[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %1625 = "tosa.add"(%1604, %extracted_slice_583) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_584 = tensor.extract_slice %1622[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %1626 = "tosa.add"(%1605, %extracted_slice_584) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_585 = tensor.extract_slice %1622[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %1627 = "tosa.add"(%1606, %extracted_slice_585) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_586 = tensor.extract_slice %1622[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %1628 = "tosa.add"(%1607, %extracted_slice_586) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_587 = tensor.extract_slice %1622[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x128x28x28xf32>
    %1629 = "tosa.add"(%1608, %extracted_slice_587) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1630 = "tosa.transpose"(%1623, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1631 = "tosa.transpose_conv2d"(%1630, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1632 = "tosa.transpose"(%1631, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1633 = "tosa.equal"(%150, %151) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1634 = "tosa.select"(%1633, %1632, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1635 = "tosa.mul"(%8, %1634) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1636 = "tosa.mul"(%149, %1635) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1637 = "tosa.transpose"(%1636, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1638 = "tosa.transpose_conv2d"(%1637, %1455, %cst_27) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 288>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<288x1x1x128xf32>, tensor<288xf32>) -> tensor<1x28x28x288xf32>
    %1639 = "tosa.transpose"(%1638, %2) : (tensor<1x28x28x288xf32>, tensor<4xi64>) -> tensor<1x288x28x28xf32>
    %1640 = "tosa.equal"(%147, %148) : (tensor<1x288x28x28xf32>, tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xi1>
    %1641 = "tosa.select"(%1640, %1639, %3) : (tensor<1x288x28x28xi1>, tensor<1x288x28x28xf32>, tensor<f32>) -> tensor<1x288x28x28xf32>
    %1642 = "tosa.mul"(%21, %1641) {shift = 0 : i8} : (tensor<1x288x1x1xf32>, tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xf32>
    %1643 = "tosa.mul"(%146, %1642) {shift = 0 : i8} : (tensor<1x288x1x1xf32>, tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xf32>
    %extracted_slice_588 = tensor.extract_slice %1643[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %1644 = "tosa.add"(%1624, %extracted_slice_588) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_589 = tensor.extract_slice %1643[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %1645 = "tosa.add"(%1625, %extracted_slice_589) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_590 = tensor.extract_slice %1643[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %1646 = "tosa.add"(%1626, %extracted_slice_590) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_591 = tensor.extract_slice %1643[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %1647 = "tosa.add"(%1627, %extracted_slice_591) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_592 = tensor.extract_slice %1643[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %1648 = "tosa.add"(%1628, %extracted_slice_592) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_593 = tensor.extract_slice %1643[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x128x28x28xf32>
    %1649 = "tosa.add"(%1629, %extracted_slice_593) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1650 = "tosa.transpose"(%1644, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1651 = "tosa.transpose_conv2d"(%1650, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1652 = "tosa.transpose"(%1651, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1653 = "tosa.equal"(%144, %145) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1654 = "tosa.select"(%1653, %1652, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1655 = "tosa.mul"(%8, %1654) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1656 = "tosa.mul"(%143, %1655) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1657 = "tosa.transpose"(%1656, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1658 = "tosa.transpose_conv2d"(%1657, %1472, %cst_28) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %1659 = "tosa.transpose"(%1658, %2) : (tensor<1x28x28x256xf32>, tensor<4xi64>) -> tensor<1x256x28x28xf32>
    %1660 = "tosa.equal"(%141, %142) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %1661 = "tosa.select"(%1660, %1659, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %1662 = "tosa.mul"(%19, %1661) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %1663 = "tosa.mul"(%140, %1662) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %extracted_slice_594 = tensor.extract_slice %1663[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x32x28x28xf32>
    %1664 = "tosa.add"(%1645, %extracted_slice_594) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_595 = tensor.extract_slice %1663[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x32x28x28xf32>
    %1665 = "tosa.add"(%1646, %extracted_slice_595) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_596 = tensor.extract_slice %1663[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x32x28x28xf32>
    %1666 = "tosa.add"(%1647, %extracted_slice_596) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_597 = tensor.extract_slice %1663[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x32x28x28xf32>
    %1667 = "tosa.add"(%1648, %extracted_slice_597) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_598 = tensor.extract_slice %1663[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x128x28x28xf32>
    %1668 = "tosa.add"(%1649, %extracted_slice_598) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1669 = "tosa.transpose"(%1664, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1670 = "tosa.transpose_conv2d"(%1669, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1671 = "tosa.transpose"(%1670, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1672 = "tosa.equal"(%138, %139) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1673 = "tosa.select"(%1672, %1671, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1674 = "tosa.mul"(%8, %1673) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1675 = "tosa.mul"(%137, %1674) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1676 = "tosa.transpose"(%1675, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1677 = "tosa.transpose"(%18, %4) : (tensor<128x1x1x224xf32>, tensor<4xi64>) -> tensor<224x1x1x128xf32>
    %1678 = "tosa.transpose_conv2d"(%1676, %1677, %cst_30) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 224>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<224x1x1x128xf32>, tensor<224xf32>) -> tensor<1x28x28x224xf32>
    %1679 = "tosa.transpose"(%1678, %2) : (tensor<1x28x28x224xf32>, tensor<4xi64>) -> tensor<1x224x28x28xf32>
    %1680 = "tosa.equal"(%135, %136) : (tensor<1x224x28x28xf32>, tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xi1>
    %1681 = "tosa.select"(%1680, %1679, %3) : (tensor<1x224x28x28xi1>, tensor<1x224x28x28xf32>, tensor<f32>) -> tensor<1x224x28x28xf32>
    %1682 = "tosa.mul"(%17, %1681) {shift = 0 : i8} : (tensor<1x224x1x1xf32>, tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xf32>
    %1683 = "tosa.mul"(%134, %1682) {shift = 0 : i8} : (tensor<1x224x1x1xf32>, tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xf32>
    %extracted_slice_599 = tensor.extract_slice %1683[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x224x28x28xf32> to tensor<1x32x28x28xf32>
    %1684 = "tosa.add"(%1665, %extracted_slice_599) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_600 = tensor.extract_slice %1683[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x224x28x28xf32> to tensor<1x32x28x28xf32>
    %1685 = "tosa.add"(%1666, %extracted_slice_600) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_601 = tensor.extract_slice %1683[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x224x28x28xf32> to tensor<1x32x28x28xf32>
    %1686 = "tosa.add"(%1667, %extracted_slice_601) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_602 = tensor.extract_slice %1683[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x224x28x28xf32> to tensor<1x128x28x28xf32>
    %1687 = "tosa.add"(%1668, %extracted_slice_602) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1688 = "tosa.transpose"(%1684, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1689 = "tosa.transpose_conv2d"(%1688, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1690 = "tosa.transpose"(%1689, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1691 = "tosa.equal"(%132, %133) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1692 = "tosa.select"(%1691, %1690, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1693 = "tosa.mul"(%8, %1692) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1694 = "tosa.mul"(%131, %1693) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1695 = "tosa.transpose"(%1694, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1696 = "tosa.transpose"(%16, %4) : (tensor<128x1x1x192xf32>, tensor<4xi64>) -> tensor<192x1x1x128xf32>
    %1697 = "tosa.transpose_conv2d"(%1695, %1696, %cst_31) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 192>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<192x1x1x128xf32>, tensor<192xf32>) -> tensor<1x28x28x192xf32>
    %1698 = "tosa.transpose"(%1697, %2) : (tensor<1x28x28x192xf32>, tensor<4xi64>) -> tensor<1x192x28x28xf32>
    %1699 = "tosa.equal"(%129, %130) : (tensor<1x192x28x28xf32>, tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xi1>
    %1700 = "tosa.select"(%1699, %1698, %3) : (tensor<1x192x28x28xi1>, tensor<1x192x28x28xf32>, tensor<f32>) -> tensor<1x192x28x28xf32>
    %1701 = "tosa.mul"(%15, %1700) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %1702 = "tosa.mul"(%128, %1701) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %extracted_slice_603 = tensor.extract_slice %1702[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x192x28x28xf32> to tensor<1x32x28x28xf32>
    %1703 = "tosa.add"(%1685, %extracted_slice_603) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_604 = tensor.extract_slice %1702[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x192x28x28xf32> to tensor<1x32x28x28xf32>
    %1704 = "tosa.add"(%1686, %extracted_slice_604) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_605 = tensor.extract_slice %1702[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x192x28x28xf32> to tensor<1x128x28x28xf32>
    %1705 = "tosa.add"(%1687, %extracted_slice_605) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1706 = "tosa.transpose"(%1703, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1707 = "tosa.transpose_conv2d"(%1706, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1708 = "tosa.transpose"(%1707, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1709 = "tosa.equal"(%126, %127) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1710 = "tosa.select"(%1709, %1708, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1711 = "tosa.mul"(%8, %1710) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1712 = "tosa.mul"(%125, %1711) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1713 = "tosa.transpose"(%1712, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1714 = "tosa.transpose"(%14, %4) : (tensor<128x1x1x160xf32>, tensor<4xi64>) -> tensor<160x1x1x128xf32>
    %1715 = "tosa.transpose_conv2d"(%1713, %1714, %cst_32) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 160>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<160x1x1x128xf32>, tensor<160xf32>) -> tensor<1x28x28x160xf32>
    %1716 = "tosa.transpose"(%1715, %2) : (tensor<1x28x28x160xf32>, tensor<4xi64>) -> tensor<1x160x28x28xf32>
    %1717 = "tosa.equal"(%123, %124) : (tensor<1x160x28x28xf32>, tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xi1>
    %1718 = "tosa.select"(%1717, %1716, %3) : (tensor<1x160x28x28xi1>, tensor<1x160x28x28xf32>, tensor<f32>) -> tensor<1x160x28x28xf32>
    %1719 = "tosa.mul"(%13, %1718) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xf32>
    %1720 = "tosa.mul"(%122, %1719) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xf32>
    %extracted_slice_606 = tensor.extract_slice %1720[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x160x28x28xf32> to tensor<1x32x28x28xf32>
    %1721 = "tosa.add"(%1704, %extracted_slice_606) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_607 = tensor.extract_slice %1720[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x160x28x28xf32> to tensor<1x128x28x28xf32>
    %1722 = "tosa.add"(%1705, %extracted_slice_607) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1723 = "tosa.transpose"(%1721, %1) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %1724 = "tosa.transpose_conv2d"(%1723, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1725 = "tosa.transpose"(%1724, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1726 = "tosa.equal"(%120, %121) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1727 = "tosa.select"(%1726, %1725, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1728 = "tosa.mul"(%8, %1727) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1729 = "tosa.mul"(%119, %1728) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1730 = "tosa.transpose"(%1729, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1731 = "tosa.transpose"(%12, %4) : (tensor<128x1x1x128xf32>, tensor<4xi64>) -> tensor<128x1x1x128xf32>
    %1732 = "tosa.transpose_conv2d"(%1730, %1731, %cst_1) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1733 = "tosa.transpose"(%1732, %2) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %1734 = "tosa.equal"(%117, %118) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1735 = "tosa.select"(%1734, %1733, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1736 = "tosa.mul"(%8, %1735) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1737 = "tosa.mul"(%116, %1736) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1738 = "tosa.add"(%1722, %1737) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1739 = "tosa.transpose"(%1738, %1) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %1740 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%115, %cst_19, %1739 : tensor<1x56x56x128xf32>, tensor<2x2xf32>, tensor<1x28x28x128xf32>) outs(%cst_33 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_636: f32, %in_637: f32, %out: f32):
      %1865 = arith.mulf %in_637, %cst_40 : f32
      %1866 = arith.addf %1865, %out : f32
      linalg.yield %1866 : f32
    } -> tensor<1x56x56x128xf32>
    %1741 = "tosa.transpose_conv2d"(%1740, %1472, %cst_28) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %1742 = "tosa.transpose"(%1741, %2) : (tensor<1x56x56x256xf32>, tensor<4xi64>) -> tensor<1x256x56x56xf32>
    %1743 = "tosa.equal"(%113, %114) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %1744 = "tosa.select"(%1743, %1742, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %1745 = "tosa.mul"(%19, %1744) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %1746 = "tosa.mul"(%112, %1745) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %extracted_slice_608 = tensor.extract_slice %1746[0, 224, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_609 = tensor.extract_slice %1746[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_610 = tensor.extract_slice %1746[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_611 = tensor.extract_slice %1746[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_612 = tensor.extract_slice %1746[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_613 = tensor.extract_slice %1746[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_614 = tensor.extract_slice %1746[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x64x56x56xf32>
    %1747 = "tosa.transpose"(%extracted_slice_608, %1) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %1748 = "tosa.transpose_conv2d"(%1747, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %1749 = "tosa.transpose"(%1748, %2) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %1750 = "tosa.equal"(%110, %111) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %1751 = "tosa.select"(%1750, %1749, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %1752 = "tosa.mul"(%8, %1751) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1753 = "tosa.mul"(%109, %1752) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1754 = "tosa.transpose"(%1753, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %1755 = "tosa.transpose_conv2d"(%1754, %1677, %cst_30) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 224>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<224x1x1x128xf32>, tensor<224xf32>) -> tensor<1x56x56x224xf32>
    %1756 = "tosa.transpose"(%1755, %2) : (tensor<1x56x56x224xf32>, tensor<4xi64>) -> tensor<1x224x56x56xf32>
    %1757 = "tosa.equal"(%107, %108) : (tensor<1x224x56x56xf32>, tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xi1>
    %1758 = "tosa.select"(%1757, %1756, %3) : (tensor<1x224x56x56xi1>, tensor<1x224x56x56xf32>, tensor<f32>) -> tensor<1x224x56x56xf32>
    %1759 = "tosa.mul"(%17, %1758) {shift = 0 : i8} : (tensor<1x224x1x1xf32>, tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xf32>
    %1760 = "tosa.mul"(%106, %1759) {shift = 0 : i8} : (tensor<1x224x1x1xf32>, tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xf32>
    %extracted_slice_615 = tensor.extract_slice %1760[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %1761 = "tosa.add"(%extracted_slice_609, %extracted_slice_615) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_616 = tensor.extract_slice %1760[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %1762 = "tosa.add"(%extracted_slice_610, %extracted_slice_616) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_617 = tensor.extract_slice %1760[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %1763 = "tosa.add"(%extracted_slice_611, %extracted_slice_617) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_618 = tensor.extract_slice %1760[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %1764 = "tosa.add"(%extracted_slice_612, %extracted_slice_618) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_619 = tensor.extract_slice %1760[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %1765 = "tosa.add"(%extracted_slice_613, %extracted_slice_619) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_620 = tensor.extract_slice %1760[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x64x56x56xf32>
    %1766 = "tosa.add"(%extracted_slice_614, %extracted_slice_620) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1767 = "tosa.transpose"(%1761, %1) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %1768 = "tosa.transpose_conv2d"(%1767, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %1769 = "tosa.transpose"(%1768, %2) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %1770 = "tosa.equal"(%104, %105) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %1771 = "tosa.select"(%1770, %1769, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %1772 = "tosa.mul"(%8, %1771) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1773 = "tosa.mul"(%103, %1772) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1774 = "tosa.transpose"(%1773, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %1775 = "tosa.transpose_conv2d"(%1774, %1696, %cst_31) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 192>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<192x1x1x128xf32>, tensor<192xf32>) -> tensor<1x56x56x192xf32>
    %1776 = "tosa.transpose"(%1775, %2) : (tensor<1x56x56x192xf32>, tensor<4xi64>) -> tensor<1x192x56x56xf32>
    %1777 = "tosa.equal"(%101, %102) : (tensor<1x192x56x56xf32>, tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xi1>
    %1778 = "tosa.select"(%1777, %1776, %3) : (tensor<1x192x56x56xi1>, tensor<1x192x56x56xf32>, tensor<f32>) -> tensor<1x192x56x56xf32>
    %1779 = "tosa.mul"(%15, %1778) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %1780 = "tosa.mul"(%100, %1779) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %extracted_slice_621 = tensor.extract_slice %1780[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x32x56x56xf32>
    %1781 = "tosa.add"(%1762, %extracted_slice_621) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_622 = tensor.extract_slice %1780[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x32x56x56xf32>
    %1782 = "tosa.add"(%1763, %extracted_slice_622) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_623 = tensor.extract_slice %1780[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x32x56x56xf32>
    %1783 = "tosa.add"(%1764, %extracted_slice_623) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_624 = tensor.extract_slice %1780[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x32x56x56xf32>
    %1784 = "tosa.add"(%1765, %extracted_slice_624) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_625 = tensor.extract_slice %1780[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x64x56x56xf32>
    %1785 = "tosa.add"(%1766, %extracted_slice_625) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1786 = "tosa.transpose"(%1781, %1) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %1787 = "tosa.transpose_conv2d"(%1786, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %1788 = "tosa.transpose"(%1787, %2) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %1789 = "tosa.equal"(%98, %99) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %1790 = "tosa.select"(%1789, %1788, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %1791 = "tosa.mul"(%8, %1790) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1792 = "tosa.mul"(%97, %1791) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1793 = "tosa.transpose"(%1792, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %1794 = "tosa.transpose_conv2d"(%1793, %1714, %cst_32) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 160>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<160x1x1x128xf32>, tensor<160xf32>) -> tensor<1x56x56x160xf32>
    %1795 = "tosa.transpose"(%1794, %2) : (tensor<1x56x56x160xf32>, tensor<4xi64>) -> tensor<1x160x56x56xf32>
    %1796 = "tosa.equal"(%95, %96) : (tensor<1x160x56x56xf32>, tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xi1>
    %1797 = "tosa.select"(%1796, %1795, %3) : (tensor<1x160x56x56xi1>, tensor<1x160x56x56xf32>, tensor<f32>) -> tensor<1x160x56x56xf32>
    %1798 = "tosa.mul"(%13, %1797) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xf32>
    %1799 = "tosa.mul"(%94, %1798) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xf32>
    %extracted_slice_626 = tensor.extract_slice %1799[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x160x56x56xf32> to tensor<1x32x56x56xf32>
    %1800 = "tosa.add"(%1782, %extracted_slice_626) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_627 = tensor.extract_slice %1799[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x160x56x56xf32> to tensor<1x32x56x56xf32>
    %1801 = "tosa.add"(%1783, %extracted_slice_627) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_628 = tensor.extract_slice %1799[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x160x56x56xf32> to tensor<1x32x56x56xf32>
    %1802 = "tosa.add"(%1784, %extracted_slice_628) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_629 = tensor.extract_slice %1799[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x160x56x56xf32> to tensor<1x64x56x56xf32>
    %1803 = "tosa.add"(%1785, %extracted_slice_629) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1804 = "tosa.transpose"(%1800, %1) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %1805 = "tosa.transpose_conv2d"(%1804, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %1806 = "tosa.transpose"(%1805, %2) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %1807 = "tosa.equal"(%92, %93) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %1808 = "tosa.select"(%1807, %1806, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %1809 = "tosa.mul"(%8, %1808) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1810 = "tosa.mul"(%91, %1809) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1811 = "tosa.transpose"(%1810, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %1812 = "tosa.transpose_conv2d"(%1811, %1731, %cst_1) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %1813 = "tosa.transpose"(%1812, %2) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %1814 = "tosa.equal"(%89, %90) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %1815 = "tosa.select"(%1814, %1813, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %1816 = "tosa.mul"(%8, %1815) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1817 = "tosa.mul"(%88, %1816) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %extracted_slice_630 = tensor.extract_slice %1817[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x128x56x56xf32> to tensor<1x32x56x56xf32>
    %1818 = "tosa.add"(%1801, %extracted_slice_630) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_631 = tensor.extract_slice %1817[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x128x56x56xf32> to tensor<1x32x56x56xf32>
    %1819 = "tosa.add"(%1802, %extracted_slice_631) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_632 = tensor.extract_slice %1817[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x128x56x56xf32> to tensor<1x64x56x56xf32>
    %1820 = "tosa.add"(%1803, %extracted_slice_632) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1821 = "tosa.transpose"(%1818, %1) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %1822 = "tosa.transpose_conv2d"(%1821, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %1823 = "tosa.transpose"(%1822, %2) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %1824 = "tosa.equal"(%86, %87) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %1825 = "tosa.select"(%1824, %1823, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %1826 = "tosa.mul"(%8, %1825) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1827 = "tosa.mul"(%85, %1826) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1828 = "tosa.transpose"(%1827, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %1829 = "tosa.transpose"(%11, %4) : (tensor<128x1x1x96xf32>, tensor<4xi64>) -> tensor<96x1x1x128xf32>
    %1830 = "tosa.transpose_conv2d"(%1828, %1829, %cst_34) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 96>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<96x1x1x128xf32>, tensor<96xf32>) -> tensor<1x56x56x96xf32>
    %1831 = "tosa.transpose"(%1830, %2) : (tensor<1x56x56x96xf32>, tensor<4xi64>) -> tensor<1x96x56x56xf32>
    %1832 = "tosa.equal"(%83, %84) : (tensor<1x96x56x56xf32>, tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xi1>
    %1833 = "tosa.select"(%1832, %1831, %3) : (tensor<1x96x56x56xi1>, tensor<1x96x56x56xf32>, tensor<f32>) -> tensor<1x96x56x56xf32>
    %1834 = "tosa.mul"(%10, %1833) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %1835 = "tosa.mul"(%82, %1834) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %extracted_slice_633 = tensor.extract_slice %1835[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x96x56x56xf32> to tensor<1x32x56x56xf32>
    %1836 = "tosa.add"(%1819, %extracted_slice_633) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_634 = tensor.extract_slice %1835[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x96x56x56xf32> to tensor<1x64x56x56xf32>
    %1837 = "tosa.add"(%1820, %extracted_slice_634) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1838 = "tosa.transpose"(%1836, %1) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %1839 = "tosa.transpose_conv2d"(%1838, %451, %cst_1) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %1840 = "tosa.transpose"(%1839, %2) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %1841 = "tosa.equal"(%80, %81) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %1842 = "tosa.select"(%1841, %1840, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %1843 = "tosa.mul"(%8, %1842) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1844 = "tosa.mul"(%79, %1843) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1845 = "tosa.transpose"(%1844, %1) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %1846 = "tosa.transpose"(%7, %4) : (tensor<128x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x128xf32>
    %1847 = "tosa.transpose_conv2d"(%1845, %1846, %cst_35) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<64x1x1x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %1848 = "tosa.transpose"(%1847, %2) : (tensor<1x56x56x64xf32>, tensor<4xi64>) -> tensor<1x64x56x56xf32>
    %1849 = "tosa.equal"(%77, %78) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %1850 = "tosa.select"(%1849, %1848, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %1851 = "tosa.mul"(%6, %1850) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1852 = "tosa.mul"(%76, %1851) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1853 = "tosa.add"(%1837, %1852) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1854 = "tosa.transpose"(%1853, %1) : (tensor<1x64x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %74 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_41 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x114x114x64xf32>
    %1855 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded, %cst_37, %75, %1854 : tensor<1x114x114x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%cst_36 : tensor<1x114x114x64xf32>) {
    ^bb0(%in: f32, %in_636: f32, %in_637: f32, %in_638: f32, %out: f32):
      %1865 = arith.cmpf oge, %in, %in_637 : f32
      %1866 = arith.select %1865, %in_638, %cst_42 : f32
      %1867 = arith.addf %out, %1866 : f32
      linalg.yield %1867 : f32
    } -> tensor<1x114x114x64xf32>
    %extracted_slice_635 = tensor.extract_slice %1855[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x114x114x64xf32> to tensor<1x112x112x64xf32>
    %1856 = "tosa.transpose"(%extracted_slice_635, %2) : (tensor<1x112x112x64xf32>, tensor<4xi64>) -> tensor<1x64x112x112xf32>
    %1857 = "tosa.equal"(%72, %73) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %1858 = "tosa.select"(%1857, %1856, %3) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %1859 = "tosa.mul"(%6, %1858) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %1860 = "tosa.mul"(%71, %1859) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %1861 = "tosa.transpose"(%1860, %1) : (tensor<1x64x112x112xf32>, tensor<4xi64>) -> tensor<1x112x112x64xf32>
    %1862 = "tosa.transpose"(%5, %4) : (tensor<64x7x7x3xf32>, tensor<4xi64>) -> tensor<3x7x7x64xf32>
    %1863 = "tosa.transpose_conv2d"(%1861, %1862, %cst_38) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %1864 = "tosa.transpose"(%1863, %2) : (tensor<1x224x224x3xf32>, tensor<4xi64>) -> tensor<1x3x224x224xf32>
    return %1864 : tensor<1x3x224x224xf32>
  }
}

