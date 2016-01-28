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
  int j = s.length()-1;
  for (int x = 0; x < s.length() - 1; x++)
  {
    if (s.toLowerCase().charAt(j) == s.toLowerCase().charAt(x))
      j--;
  }
  if (j == 0)
    return true;
  return false;
}