public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(isPalindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean isPalindrome(String sWord){
  String lettersLowercase = noCapitals(noSpaces(onlyLetters(sWord)));
  if(lettersLowercase.equals(reverse(lettersLowercase))){
    return true;
  }
  return false;
}

public String reverse(String sWord){
  String reverseString = new String();
  for(int i = sWord.length()-1; i >= 0; i--){
    reverseString += sWord.substring(i,i+1);
  }
  return reverseString;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String spaceless = new String();
  for(int i = 0; i < sWord.length(); i++){
    if(!sWord.substring(i,i+1).equals(" ")){
      spaceless += sWord.substring(i,i+1);
    }
  }
  return spaceless;
}

public int numLetters(String sString){
  int letters = 0;
  for(int i = 0; i < sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      letters++;
    }
  }
  return letters;
}

public String onlyLetters(String sString){
  String letters = new String();
  for(int i = 0; i < sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      letters += sString.charAt(i);
    }
  }
  return letters;
}
