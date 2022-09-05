String replace(String text) {
  String texta = text.toLowerCase();
  String text1 = texta.replaceAll("а","a");
  String text2 = text1.replaceAll("б","b");
  String text3 = text2.replaceAll("в","v");
  String text4 = text3.replaceAll("г","g");
  String text5 = text4.replaceAll("д","d");
  String text6 = text5.replaceAll("е","e");
  String text7 = text6.replaceAll("ё","yo");
  String text8 = text7.replaceAll("ж","zh");
  String text9 = text8.replaceAll("з","z");
  String text10 = text9.replaceAll("и","i");
  String text11 = text10.replaceAll("й","y");
  String text12 = text11.replaceAll("к","k");
  String text13 = text12.replaceAll("л","l");
  String text14 = text13.replaceAll("м","m");
  String text15 = text14.replaceAll("н","n");
  String text16 = text15.replaceAll('п',"p");
  String text17 = text16.replaceAll('п',"p");
  String text18 = text17.replaceAll("р","r");
  String text19 = text18.replaceAll("с","s");
  String text20 = text19.replaceAll("т","t");
  String text21 = text20.replaceAll("у","u");
  String text22 = text21.replaceAll("ф","f");
  String text23 = text22.replaceAll("х","h");
  String text24 = text23.replaceAll("ц","ts");
  String text25 = text24.replaceAll("ч","ch");
  String text26 = text25.replaceAll("ш","sh");
  String text27 = text26.replaceAll("щ","shch");
  String text28 = text27.replaceAll("ъ","`");
  String text29 = text28.replaceAll("ы","i");
  String text30 = text29.replaceAll("ь","'");
  String text31 = text30.replaceAll("э","e`");
  String text32 = text31.replaceAll("ю","yu");
  String textfi = text32.replaceAll("я","ya");

  return textfi;
}