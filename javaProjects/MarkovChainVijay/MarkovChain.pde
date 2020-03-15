import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain 
{
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    myMap=new HashMap<String, ArrayList<String>>();
  }

  void trainMap(String [] str)
  {
    for(int i=0;i<str.length-1;i++)
    {
      String currentWord=str[i];
      String nextWord=str[i+1];
      if(myMap.get(currentWord)==null)
      {
         myMap.put(currentWord,new ArrayList<String>());
      }  
      myMap.get(currentWord).add(nextWord); 
    }
  }
  String generateText(String str)
  {
    String newString = new String();
    int randomIndex=0,randomIndex2=0,randomIndex3=0,randomIndex4=0,randomIndex5=0,randomIndex6=0,randomIndex7=0,randomIndex8=0;
    String temp;
      if (myMap.containsKey(str)) {
        randomIndex=getRandomIndex(str);
        //randomIndex2=getRandomIndex(temp);
        temp=myMap.get(str).get(randomIndex);
        newString+=str+ " " + temp +" ";  
        randomIndex2=getRandomIndex(temp);
        temp = myMap.get(temp).get(randomIndex2);
        newString+=temp + " ";
        randomIndex3=getRandomIndex(temp);
        temp = myMap.get(temp).get(randomIndex3);
        newString+=temp + " ";
        randomIndex4=getRandomIndex(temp);
        temp = myMap.get(temp).get(randomIndex4);
        newString+=temp + " ";
        randomIndex5=getRandomIndex(temp);
        temp = myMap.get(temp).get(randomIndex5);
        newString+=temp + " ";
        randomIndex6=getRandomIndex(temp);
        temp = myMap.get(temp).get(randomIndex6);
        newString+=temp + " ";
        randomIndex7=getRandomIndex(temp);
        temp = myMap.get(temp).get(randomIndex7);
        newString+=temp + " ";
        randomIndex8=getRandomIndex(temp);
        temp = myMap.get(temp).get(randomIndex8);
        newString+=temp + " ";
      }
    return newString;
  }

  int getRandomIndex(String s) {
    int randomIndex=(int)(Math.random()*myMap.get(s).size());
    return randomIndex;
  }
  void printMap()
  {
      println(myMap);
  }
  public String toString()
  {
      return ""+myMap;
  }
}
