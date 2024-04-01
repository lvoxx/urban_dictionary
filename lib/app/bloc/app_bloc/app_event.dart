import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.freezed.dart';

@freezed
abstract class UrbanWordEvent with _$UrbanWordEvent {
  const factory UrbanWordEvent.tryGetLocalDataStorage() =
      TryGetLocalDataStorage;
  const factory UrbanWordEvent.tryGetFirstRandomUrbanWords() =
      TryGetFirstRandomUrbanWords;
}
