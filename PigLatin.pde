public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word)
{
for(int i = 0; i < word.length() ; i++)
  {
    boolean tr = (word.substring(i,i+1)).equals("a");
    if(tr)
    return i;
    boolean er = (word.substring(i,i+1)).equals("e");
    if(er)
    return i;
    boolean qr = (word.substring(i,i+1)).equals("i");
    if(qr)
    return i;
    boolean ir = (word.substring(i,i+1)).equals("o");
    if(ir)
    return i;
    boolean dr = (word.substring(i,i+1)).equals("u");
    if(dr)
    return i;
  }

  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  
    if(findFirstVowel(sWord) == 1)
  {
    return sWord + "way";
  }
  if((sWord.substring(0,2)).equals("qu"))
  {
    return sWord.substring(2) + "quay";
  }
  if(findFirstVowel(sWord) <= 2)
  {
    return sWord.substring(findFirstVowel(sWord)) +sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
  
  return sWord;
  
  
}
