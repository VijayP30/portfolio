import java.util.*;
public class MovieList
{
  private ArrayList <Movie> movieList;
  private int count = 0;
  private String [] list;
  private String word;
  private int four = 0;
  private int three = 0;
  private int two = 0;
  private int one = 0;
  private int zero = 0;
  public MovieList(String w)
  {
    movieList = new <Movie> ArrayList();
    word = w;
  }
  public void loadMovies()
  {
    list = loadStrings("movieReviews.txt");
    for (String x : list)
    {
      Scanner scan = new Scanner(x);
      if(x.indexOf(word)>0)
      {
        movieList.add(new Movie(scan.nextInt(),scan.nextLine()));
      }
      scan.close();
    }
    for(Movie m: movieList)
    {
      println(m);
    }
    count = movieList.size();
  }
  public int getCount()
  {
    return count;
  }
  public double getAverageScore()
  {
    double total=0.0;
    for(Movie x : movieList)
    {
      total += x.getRating();
    }
    //println(""+ total/count);
    return total/count;
  }
  public String overallComment()
  {
    if(getAverageScore() > 3.0)
    {
      return "this movie is superb";
    }
    if(getAverageScore() > 2.5)
    {
      return "this movie is pretty good";
    }
    if(getAverageScore() > 1.5)
    {   
      return "this movie is okay";
    }
    if(getAverageScore() > 0.5)
    {
      return "this movie is below average";
    }
    return "this movie is terrible";
  }
  public int getFour()
  {
    for(Movie x : movieList)
    {
      if(4==x.getRating())
      {
        four++;
      }
    }
    return four;
  }
    public int getThree()
  {
    for(Movie x : movieList)
    {
      if(3==x.getRating())
      {
        three++;
      }
    }
    return three;
  }
    public int getTwo()
  {
    for(Movie x : movieList)
    {
      if(2==x.getRating())
      {
        two++;
      }
    }
    return two;
  }
    public int getOne()
  {
    for(Movie x : movieList)
    {
      if(1==x.getRating())
      {
        one++;
      }
    }
    return one;
  }
    public int getZero()
  {
    for(Movie x : movieList)
    {
      if(0==x.getRating())
      {
        zero++;
      }
    }
    return zero;
  }
  
  public void sortMoviesByCount()
  {
    Collections.sort(movieList); 
  }  
  public String toString()
  {
    String n="";
    Iterator <Movie> it = movieList.iterator();
    while(it.hasNext())
    {
      n+= it.next() + "\n";
    }
    return n;
  }
}
