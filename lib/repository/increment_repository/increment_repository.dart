import '../models/counter.dart';
import 'base_increment_repository.dart';

class IncrementCounterRepository extends BaseIncrementCounterRepository {
  @override
  Future<Counter> decrement(
      {required Counter counter, required int decrementBy}) {
    return Future.delayed(const Duration(seconds: 1),
        () => Counter(value: counter.value - decrementBy));
  }

  @override
  Future<Counter> increment(
      {required Counter counter, required int incrementBy}) {
    return Future.delayed(const Duration(seconds: 1),
        () => Counter(value: counter.value + incrementBy));
  }
}
