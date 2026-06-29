void main() {
  List<String> subjects = ['Math','Thai','Art'];
  print('Number of subjects: ${subjects.length}');
  print('First subject: ${subjects[0]}');
  print('Last subject: ${subjects[subjects.length - 1]}');
 
  subjects.add('Biology');
  print('Updated subjects: $subjects');
 
  print('---');
 
  Map<String, int> studentScores = {
    'Math': 70,
    'Art': 71,
  };
  print('Score for Math: ${studentScores['']}');
 
  studentScores['Thai'] = 89;
  print('Updated scores: $studentScores');
  print('All subjects in map: ${studentScores.keys}');
  print('All scores in map: ${studentScores.values}');
}