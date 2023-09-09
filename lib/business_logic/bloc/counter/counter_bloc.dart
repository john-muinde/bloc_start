import '../../../repository/increment_repository/increment_repository.dart';
import '../../../repository/models/counter.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final IncrementCounterRepository _incrementCounterRepository;
  CounterBloc({required IncrementCounterRepository incrementCounterRepository})
      : _incrementCounterRepository = incrementCounterRepository,
        super(CounterInitial()) {
    on<Increment>(_onIncrement);
    on<Decrement>(_onDecrement);
  }

  Future<void> _onIncrement(Increment event, Emitter<CounterState> emit) async {
    emit(CounterLoading());
    try {
      final Counter counter = await _incrementCounterRepository.increment(
          counter: event.counter, incrementBy: event.incrementBy);
      emit(CounterLoaded(counter: counter));
    } catch (e) {
      emit(CounterError(message: e.toString()));
    }
  }

  Future<void> _onDecrement(Decrement event, Emitter<CounterState> emit) async {
    emit(CounterLoading());
    try {
      final Counter counter = await _incrementCounterRepository.decrement(
          counter: event.counter, decrementBy: event.decrementBy);
      emit(CounterLoaded(counter: counter));
    } catch (e) {
      emit(CounterError(message: e.toString()));
    }
  }
}
