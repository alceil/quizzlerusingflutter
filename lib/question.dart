class Question
{
  string Questiontext;
  bool Questionanswer;
  Question({string q,answer a})
  {
    Questiontext = q;
    Questionanswer = a;
  }
}
Question new question('text',true)