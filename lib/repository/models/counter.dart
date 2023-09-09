class Counter {
  int value;
  Counter({required this.value});

  factory Counter.fromJson(Map<String, dynamic> jsonValue) {
    return Counter(value: jsonValue['value'] as int);
  }
  Map<String, dynamic> toJson() {
    return {'value': value};
  }
}
