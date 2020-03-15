public class Movie implements Comparable<Movie>
{
  private String review;
  private int rating;
  public Movie(int ra, String re)
  {
    rating = ra;
    review = re;
  }
  public int compareTo(Movie other)
  {
    if(this.rating<other.rating)
      {
        return -1;
      }
    if(this.rating>other.rating)
    {
      return 1;
    }
    return this.review.compareTo(other.review);
  }
  public String getReview()
  {
    return review;
  }
  public int getRating()
  {
    return rating;
  }
  public String toString()
  {
    return "" + rating + ": " + review;
  }
}
