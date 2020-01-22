import 'package:flutter/material.dart';
import 'question.dart'
import 'quiz_brain.dart'
void main() => runApp(Quizzler());
Quizbrain quizbrain=quizbrain();
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<widget> scorekeeper=[]
//  List <bool> answers=[
//    false,
//    true,
//    true,
//  ]
//  List <string> questions =
//  [
//    'You can lead a cow down stairs but not up stairs.'
//        'Approximately one quarter of human bones are in the feet.'
//        'A slug\'s blood is green.'
//  ]
//  Question q1=Question(q:'You can lead a cow down stairs but not up stairs.',a:false)

  int questions=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quiz_brain.getquestion(questionno);
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctanswer = quiz_brain.answers[questionno];
                if(correctanswer==True)
                  {
                    print('User got it right');
                        else
                    print('User got it wrong');
                  }
                setstate(){
                  quiz_brain.nextQuestion();
                }
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
    bool correctanswer = quiz_brain.getanswer(questionno);
    if(correctanswer==False)
    {
    print('User got it right');
    else
    print('User got it wrong');
    }
    }
            setstate(){
              questionno++;
                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          chidren:scorekeeper
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
