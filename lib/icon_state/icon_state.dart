part of 'icon_bloc.dart';

@immutable
class IconState extends Equatable {
  final IconData currentIcon;
  final int currentIndex;
  final List<IconData> icons;

  const IconState({
    required this.currentIcon,
    required this.currentIndex,
    required this.icons,
  });

  IconState copyWith({
    IconData? currentIcon,
    int? currentIndex,
    List<IconData>? icons,
  }) {
    return IconState(
      currentIcon: currentIcon ?? this.currentIcon,
      currentIndex: currentIndex ?? this.currentIndex,
      icons: icons ?? this.icons,
    );
  }

  @override
  List<Object> get props => [currentIcon, currentIndex, icons];
}

class InitialIconState extends IconState {
  InitialIconState()
      : super(
          currentIcon: Icons.favorite,
          currentIndex: 0,
          icons: [
            Icons.favorite,
            Icons.star,
            Icons.thumb_up,
            Icons.home,
            Icons.settings,
            Icons.person,
            Icons.email,
            Icons.phone,
            Icons.camera,
            Icons.music_note,
          ],
        );
}
