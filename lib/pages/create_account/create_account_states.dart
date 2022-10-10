import '../../models/contact.dart';

abstract class CreateAccountState {}

class CreateAccountStateEmpty extends CreateAccountState {}

class CreateAccountStateLoading extends CreateAccountState {}

class CreateAccountStateError extends CreateAccountState {
  final Exception exception;
  final String message;

  CreateAccountStateError({
    required this.exception,
    required this.message,
  });
}

class CreateAccountStateSuccess extends CreateAccountState {}
