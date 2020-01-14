public class Word
{
  int count;
  String word;
  
  public Word(String w)
  {
    count=1;
    word = w;
  }
  public String getWord()
  {
    return word;
  }
  public void setWord(String w)
  {
    word = w;
  }
  public String toString()
  {
    return word + " " + count;
  }
}
