public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(noSpaces(lines[i]))==true)
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

  half1 = halfString(word);
  half2 = reverseString(word);

  System.out.println(half1 + " " + half2);
  if(half1.equals(half2))
  {
    return true;
  }
  return false;
}
public String noSpaces(String sWord)
{
  String modified = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
     if (!sWord.substring(i, i+1).equals(" ") && !sWord.substring(i, i+1).equals("!") && !sWord.substring(i, i+1).equals(",") && !sWord.substring(i, i+1).equals("'") && !sWord.substring(i, i+1).equals("."))
     {
       modified+=sWord.substring(i, i+1);
     }
  }
  System.out.println("modified: "+ modified.toLowerCase());
  return modified.toLowerCase();
}
public String reverseString(String sWord)
{
  String reverse = new String();
  for (int i = sWord.length()-1; i > sWord.length()/2; i--)
  {
    reverse += sWord.charAt(i);
  }
  return reverse;
}
public String halfString(String sWord)
{
  String half = new String();
  half = sWord.substring(0, sWord.length()/2);
  return half;
}
