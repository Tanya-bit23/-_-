import 'dart:math';
import 'package:flutter_application_1/data/fact_data.dart';
import 'package:flutter_application_1/models/fact.dart';

class FactService {
  Fact getRandomFact(String category) {
    List<Fact> facts = FactData.getFactsByCategory(category);
    if (facts.isEmpty) {
      return Fact(text: 'Нет фактов для этой категории.', category: category);
    }
    final random = Random();
    int index = random.nextInt(facts.length);
    return facts[index];
  }

  List<String> getCategories() {
    return FactData.getCategories();
  }
}
