import 'dart:math';
import 'quest.dart';

class QuizBrain {
  int _queno = 0;
  List<int> tracker = [];
  final List<Question> _questionsbank = [
    Question(q: 'The capital of France is Paris.', a: true),
    Question(q: 'Water boils at 100 degrees Celsius.', a: true),
    Question(
        q: 'The Great Wall of China is located in South America.', a: false),
    Question(q: 'Elephants are the largest land animals on Earth.', a: true),
    Question(q: 'The human body has four lungs.', a: false),
    Question(q: 'The Earth orbits the Moon.', a: false),
    Question(
        q: 'The Statue of Liberty was a gift from France to the United States.',
        a: true),
    Question(q: 'Bananas grow on trees.', a: false),
    Question(
        q: 'The Amazon River is the longest river in the world.', a: false),
    Question(q: 'A leap year has 366 days.', a: true),
    Question(q: 'Mount Kilimanjaro is located in Europe.', a: false),
    Question(q: 'The sun is a planet.', a: false),
    Question(q: 'Diamonds are made from coal.', a: false),
    Question(
        q: 'The currency used in Australia is the Australian dollar.', a: true),
    Question(q: 'Albert Einstein invented the theory of relativity.', a: true),
    Question(q: 'The Declaration of Independence was signed in 1776.', a: true),
    Question(q: 'Spiders have six legs.', a: false),
    Question(q: 'New York City is the capital of the United States.', a: false),
    Question(q: 'The moon is made of cheese.', a: false),
    Question(q: 'The fastest animal on land is the cheetah.', a: true),
    Question(q: 'Goldfish have a three-second memory.', a: false),
    Question(q: 'Sharks are mammals.', a: false),
    Question(q: 'The human body has 206 bones.', a: true),
    Question(q: 'The Earth has one moon.', a: true),
    Question(
        q: 'The currency used in the United Kingdom is the euro.', a: false),
    Question(q: 'Jupiter is the largest planet in our solar system.', a: true),
    Question(q: 'The Great Pyramid of Giza is located in Egypt.', a: true),
    Question(q: 'Mars is known as the Red Planet.', a: true),
    Question(q: 'The Nile River is the longest river in the world.', a: false),
    Question(q: 'The capital of Japan is Tokyo.', a: true),
    Question(q: 'Penguins can fly.', a: false),
    Question(q: 'The human body has five senses.', a: true),
    Question(q: 'The currency used in China is the yuan.', a: true),
    Question(q: 'A marathon is 26 miles long.', a: true),
    Question(q: 'The fastest bird is the peregrine falcon.', a: true),
    Question(
        q: 'Water is composed of two elements, hydrogen and oxygen.', a: true),
    Question(q: 'The largest ocean on Earth is the Pacific Ocean.', a: true),
    Question(q: 'The Eiffel Tower is located in London.', a: false),
    Question(q: 'A centimeter is larger than a meter.', a: false),
    Question(q: 'A square has four sides.', a: true),
    Question(q: 'The currency used in Canada is the euro.', a: false),
    Question(q: 'The human heart has four chambers.', a: false),
    Question(q: 'Mount Everest is located in the Himalayas.', a: true),
    Question(
        q: 'The first man to walk on the moon was Neil Armstrong.', a: true),
    Question(q: 'The capital of Russia is Moscow.', a: true),
    Question(q: 'A hexagon has six sides.', a: true),
    Question(q: 'The currency used in India is the rupee.', a: true),
    Question(q: 'A mammal is an animal that lays eggs.', a: false),
    Question(q: 'The capital of Brazil is Rio de Janeiro.', a: false),
    Question(q: 'Sound travels faster in water than in air.', a: true),
    Question(q: 'A right angle measures 90 degrees.', a: true),
    Question(q: 'The human brain weighs approximately 3 pounds.', a: true),
    Question(q: 'The currency used in South Africa is the rand.', a: true),
    Question(
        q: 'The largest desert in the world is the Sahara Desert.', a: true),
    Question(q: 'The smallest planet in our solar system is Mercury.', a: true),
    Question(q: 'The currency used in Mexico is the peso.', a: true),
    Question(q: 'The capital of Australia is Sydney.', a: false),
    Question(q: 'The Titanic sank in 1912.', a: true),
    Question(q: 'A triangle has four sides.', a: false),
  ];

  int storee = 0; // Initialize storee here

  QuizBrain() {
    // Initialize storee using randgenrator() in the constructor
    storee = randgenrator();
  }

  int randgenrator() {
    _queno = Random().nextInt(_questionsbank.length);
    if (!tracker.contains(_queno) && tracker.length < 10) {
      tracker.add(_queno);
      return _queno;
    } else {
      return randgenrator();
    }
  }

  Map<String, dynamic> getQuestionAndAnswer() {
    int randomIndex = storee; // Store the random index
    return {
      'questionText': _questionsbank[randomIndex].questionText,
      'questionAnswer': _questionsbank[randomIndex].questionAnswer,
    };
  }

  void nextQuestion() {
    if (tracker.length < 10) {
      storee = randgenrator();
    } else {
      tracker = [];
    }
  }

  bool endcheck() {
    if (tracker.length < 10) {
      return true;
    } else {
      tracker = [];
      return false;
    }
  }
}
