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
  String s = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if (Character.isLetter(word.charAt(i)))
      s = s + word.charAt(i);
  }
  s = s.toLowerCase();
  for (int j = 0; j < s.length() / 2; j++)
  {
    if (s.charAt(j) != s.charAt(s.length() - (j+1)))
      return false;
  }
  return true;
}
