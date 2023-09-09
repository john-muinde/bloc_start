part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterLoading extends CounterState {}

class CounterLoaded extends CounterState {
  final Counter counter;
  const CounterLoaded({required this.counter});

  // copy with implementation
  CounterLoaded copyWith({required Counter counter}) {
    return CounterLoaded(counter: counter);
  }

  @override
  List<Object> get props => [counter];
}

class CounterError extends CounterState {
  final String message;
  const CounterError({required this.message});
  @override
  List<Object> get props => [message];
}
