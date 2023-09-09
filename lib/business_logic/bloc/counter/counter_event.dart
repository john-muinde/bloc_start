part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class Increment extends CounterEvent {
  final Counter counter;
  final int incrementBy;

  Increment({required this.counter, required this.incrementBy});



  @override
  List<Object> get props => [counter, incrementBy];


}

class Decrement extends CounterEvent {
  final Counter counter;
  final int decrementBy;

  Decrement({required this.counter, required this.decrementBy});
  @override
  List<Object> get props => [counter, decrementBy];
}