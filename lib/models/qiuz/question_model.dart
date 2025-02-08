class QuestionModel {
  late String _question;
  late List<dynamic> _listOfAnswer;
  late dynamic _correctAnswer;
  QuestionModel({
    required String question,
    required List<dynamic> listOfAnswer,
    required dynamic correctAnswer,
  })  : _question = question,
        _listOfAnswer = listOfAnswer,
        _correctAnswer = correctAnswer;

  String get question => _question;
  set question(String question) => _question = question;

  List<dynamic> get listOfAnswer => _listOfAnswer;
  set listOfAnswer(List<dynamic> listOfAnswer) => _listOfAnswer = listOfAnswer;

  dynamic get correctAnswer => _correctAnswer;
  set correctAnswer(dynamic correctAnswer) => _correctAnswer = correctAnswer;
}
