part of 'top_up_bloc.dart';

sealed class TopUpState extends Equatable {
  const TopUpState();

  @override
  List<Object> get props => [];
}

final class TopUpInitial extends TopUpState {}

final class TopUpLoading extends TopUpState {}

final class TopUpFailed extends TopUpState {
  final String e;
  const TopUpFailed(this.e);

  @override
  List<Object> get props => [e];
}

final class TopUpSuccess extends TopUpState {
  final String redirectUrl;
  const TopUpSuccess(this.redirectUrl);

  @override
  List<Object> get props => [redirectUrl];
}
