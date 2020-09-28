part of 'signup_bloc_bloc.dart';

abstract class SignupEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class NameChange extends SignupEvent {
  final String name;

  NameChange(this.name);

  @override
  List<Object> get props => [name];
}

class PhoneChange extends SignupEvent {
  final String phone;

  PhoneChange(this.phone);

  @override
  List<Object> get props => [phone];
}

class EmailChange extends SignupEvent {
  final String email;

  EmailChange(this.email);

  @override
  List<Object> get props => [email];
}

class PasswordChanged extends SignupEvent {
  final String pass;

  PasswordChanged(this.pass);

  @override
  List<Object> get props => [pass];
}

class SignupWithCredentialPressed extends SignupEvent {
  final String name;
  final String phone;
  final String email;
  final String pass;

  SignupWithCredentialPressed(this.name, this.phone, this.email, this.pass);
  @override
  List<Object> get props => [name, phone, email, pass];
}
