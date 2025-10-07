part of 'icon_bloc.dart';

@immutable
abstract class IconEvent extends Equatable {
  const IconEvent();

  @override
  List<Object> get props => [];
}

class NextIconEvent extends IconEvent {
  const NextIconEvent();
}

class PreviousIconEvent extends IconEvent {
  const PreviousIconEvent();
}

class RandomIconEvent extends IconEvent {
  const RandomIconEvent();
}



