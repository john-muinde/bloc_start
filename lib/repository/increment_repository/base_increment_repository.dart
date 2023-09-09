import '../models/counter.dart';

abstract class BaseIncrementCounterRepository {
  Future<Counter> decrement(
      {required Counter counter, required int decrementBy});
  Future<Counter> increment(
      {required Counter counter, required int incrementBy});
}
