import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('M S Dhoni is the most successful captain of Indian team', true),
    Question('When the ball goes high and it lands out of the boundry thats means 6 runs', true),
    Question('First you kick the ball and you start the game', false),
    Question('India won the last world cup at 2011', true),
    Question('If the bowler crose the line that means nowbowl', true),
    Question('When the ball hits the wickets that means you out', true),
    Question('If the batter was running and you hit the wicket that means he is out".', true),
    Question('India won the 2017 champions trophy', false),
    Question('When the crose the boundry that means 4 runs', true),
    Question('Rohit Sharma has done two double centuries in ODI', true),
    Question('Virat Kohli has the record of the highest number of centuries in one year', true),
    Question(
        'If you were standing in the boundery and you caught the ball that means not out	',
        false),
    Question(
        'If the keeper throw the ball and it hits the wicket it means the player is out',
        true),
    Question('India has won all championships except Asia cup.', false),
    Question('India won the world cup 3 times', false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('India was against Australia at finals in 2007 world t20 cup.', false),
    Question(
        'ipl stands for Indian premier league',
        true),
    Question(
        'Hightes score in ipl:Rohit Sharma',
        false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  // Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  // Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
