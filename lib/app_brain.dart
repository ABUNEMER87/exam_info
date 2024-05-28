import 'questions.dart';

// Create class for Abstraction Code
class AppBrain {
  // _questionGroup is a private property (Encapsulation)
  int _currentQuestionIndex = 0; // Not final, since it changes
  final List<Question> _questionGroup = [
    Question(
        questionText: 'The number of planets in the solar system is eight',
        questionImage: 'images/image-1.jpg',
        questionAnswer: true),
    Question(
        questionText: 'Cats are carnivores',
        questionImage: 'images/image-2.jpg',
        questionAnswer: true),
    Question(
        questionText: 'China is located on the African continent',
        questionImage: 'images/image-3.jpg',
        questionAnswer: false),
    Question(
        questionText: 'The Earth is flat, not spherical',
        questionImage: 'images/image-4.jpg',
        questionAnswer: false),
    Question(
        questionText: 'A person can live without eating meat',
        questionImage: 'images/image-5.jpg',
        questionAnswer: true),
    Question(
        questionText:
            'The sun revolves around the earth and the earth revolves around the moon',
        questionImage: 'images/image-6.jpg',
        questionAnswer: false),
    Question(
        questionText: 'Animals do not feel pain',
        questionImage: 'images/image-7.jpg',
        questionAnswer: false),
  ];

  void nextQuestion() {
    if (_currentQuestionIndex < _questionGroup.length) {
      _currentQuestionIndex++; // Correctly update the index
    }
  }

  String getQuestionText() {
    return _questionGroup[_currentQuestionIndex].questionText;
  }

  String getQuestionImage() {
    return _questionGroup[_currentQuestionIndex].questionImage;
  }

  bool getQuestionAnswer() {
    return _questionGroup[_currentQuestionIndex].questionAnswer;
  }

  int getQuestionCount() {
    return _questionGroup.length;
  }

  int getCurrentQuestionIndex() {
    return _currentQuestionIndex;
  }

  void reset() {
    _currentQuestionIndex = 0;
  }

  bool isFinished() {
    if (_currentQuestionIndex >= _questionGroup.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
