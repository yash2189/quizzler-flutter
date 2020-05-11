import 'questions.dart';

//We have basically implemented absraction in our project by placing
//the questions list into a separate file so that it won't mess up with the rest of our main.dart code.
// Also if we wanted to create some other quiz we just need to create a different file again
// and instantiate it in our main.dart file  accordingly.

class QuizBrain {
  List<bool> _rightAnswers = [];

  int _questionNumber = 0;
  //more abstraction by making this list private so that questions and answers can't be tampered later by user.
  List<Question> _questionBank = [
    //Created a class so that questions and answers are stored together instead of two separate lists of questions and answers.
    //This class accepts two args String and bool.
    Question(questionText: 'Some cats are actually allergic to humans', quesAnswer:  true),
    Question(questionText: 'You can lead a cow down stairs but not up stairs.', quesAnswer: false),
    Question(
        questionText: 'Approximately one quarter of human bones are in the feet.',
        quesAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', quesAnswer: true),
    Question(questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', quesAnswer: true),
    Question(questionText: 'It is illegal to pee in the Ocean in Portugal.', quesAnswer: true),
    Question(
        questionText: 'No piece of square dry paper can be folded in half more than 7 times.',
        quesAnswer: false),
    Question(
        questionText: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        quesAnswer: true),
    Question(
        questionText: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        quesAnswer: false),
    Question(
        questionText: 'The total surface area of two human lungs is approximately 70 square metres.',
        quesAnswer: true),
    Question(questionText: 'Google was originally called \"Backrub\".', quesAnswer: true),
    Question(
        questionText: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        quesAnswer: true),
    Question(
        questionText: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        quesAnswer: true),
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
    return _questionBank[_questionNumber].quesAnswer;
  }


bool isfinished(){
  if(_questionNumber>= _questionBank.length-1){
    print('returning true');
    return true;
  }
  else{
    return false;
  }
}

  void reset(){
    _questionNumber = 0;
    _rightAnswers = [];
  }
   addScores(bool responses){
    _rightAnswers.add(responses);
  }
  int returnScores(){
    return _rightAnswers.length;
  }
}
