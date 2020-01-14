String[] w;
String s;
String[]words;
WordList wList;

void setup()
{
  size(1000, 1000);
  background(#D6D6D6);
  w=loadStrings("C:\\Users\\curio\\Desktop\\Portfolio\\javaProjects\\wordCloudVijay\\peterpan.txt");
  s=join(w," ");
  words=splitTokens(s, ",.!?-\" ");
  wList=new WordList(words);  
  //wList.displayS();
}
void draw()
{
  background(#D6D6D6);
  wList.displayS();
  wList.displayB();
}
