import 'package:flutter_application_1/models/fact.dart';
// ignore: depend_on_referenced_packages

class FactData {
  static List<Fact> facts = [
    Fact(text: 'Кенгуру не могут ходить задом наперед.', category: 'Животные'),
    Fact(
      text: 'Мед — единственный продукт, который не портится.',
      category: 'Еда',
    ),
    Fact(text: 'Самый большой океан на Земле — Тихий.', category: 'География'),
    Fact(
      text: 'Первая страна, признавшая независимость Украины - Польша.',
      category: 'История',
    ),
    Fact(
      text:
          'Вода может существовать в трех состояниях: жидком, твердом и газообразном.',
      category: 'Наука',
    ),
    Fact(
      text:
          'Золото очень ковкий металл, из одного грамма золота можно вытянуть проволоку длиной 2-3 километра.',
      category: 'Наука',
    ),
    Fact(
      text: 'Ежегодно в мире производится около 8 миллионов тонн бананов.',
      category: 'Еда',
    ),
    Fact(text: 'Сахара — самая большая пустыня в мире.', category: 'География'),
    Fact(
      text: 'У кошек нет потовых желез по всему телу, как у людей.',
      category: 'Животные',
    ),
    Fact(text: 'Киев - столица Украины.', category: 'География'),
    Fact(
      text: 'В 1932-1933 годах произошел голодомор в Украине.',
      category: 'История',
    ),
  ];

  static List<String> getCategories() {
    Set<String> categories = facts.map((fact) => fact.category).toSet();
    return categories.toList();
  }

  static List<Fact> getFactsByCategory(String category) {
    return facts.where((fact) => fact.category == category).toList();
  }
}
