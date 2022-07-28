class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
    "Who is the HOD of Artificial Intelligence and Data Science department",
    "options": ['Mrs Suvarna Patil Mam', 'Shriraj Pawar', 'Parth Ashtikar', 'Saniya Mulla'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Which year AI&DS department started",
    "options": [' 2017', ' 2021', '2022', ' 2018'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "What is the name of our college ",
    "options": ['Dypcop', 'Dypiu', 'Dypcoe', 'Dypiemr'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "What is the name of our principal?",
    "options": ['parth', 'saniya', 'Mrs Anupama V Patil', 'shriraj'],
    "answer_index": 2,
  },
];