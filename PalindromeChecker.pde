public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String half1 = new String();
  String half2 = new String();

  half1 = word.substring(0, word.length()/2);
  for (int i = word.length()-1; i > word.length()/2; i--)
  {
    half2 += word.charAt(i);
  }

  System.out.println(half1 + " and " + half2);

  if(half1.equals(half2))
  {
    return true;
  }
  return false;
}

