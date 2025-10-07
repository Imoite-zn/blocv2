import 'dart:math';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'icon_event.dart';
part 'icon_state.dart';

class IconBloc extends Bloc<IconEvent, IconState> {
  final Random _random = Random();

  IconBloc() : super(InitialIconState()) {
    on<NextIconEvent>(_onNextIcon);
    on<PreviousIconEvent>(_onPreviousIcon);
    on<RandomIconEvent>(_onRandomIcon);
  }

  void _onNextIcon(NextIconEvent event, Emitter<IconState> emit) {
    final nextIndex = (state.currentIndex + 1) % state.icons.length;
    emit(state.copyWith(
      currentIcon: state.icons[nextIndex],
      currentIndex: nextIndex,
    ));
  }

  void _onPreviousIcon(PreviousIconEvent event, Emitter<IconState> emit) {
    final previousIndex = (state.currentIndex - 1) % state.icons.length;
    final adjustedIndex = previousIndex < 0 
        ? state.icons.length - 1 
        : previousIndex;
    
    emit(state.copyWith(
      currentIcon: state.icons[adjustedIndex],
      currentIndex: adjustedIndex,
    ));
  }

  void _onRandomIcon(RandomIconEvent event, Emitter<IconState> emit) {
    int randomIndex;
    do {
      randomIndex = _random.nextInt(state.icons.length);
    } while (randomIndex == state.currentIndex && state.icons.length > 1);

    emit(state.copyWith(
      currentIcon: state.icons[randomIndex],
      currentIndex: randomIndex,
    ));
  }
}

