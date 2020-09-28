part of 'signup_bloc_bloc.dart';

class SignupState {
  final bool isNameValid;
  final bool isPhoneValid;
  final bool isEmailValid;
  final bool isPasswordValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;
  bool get isFormValid =>
      isEmailValid && isPasswordValid && isNameValid && isPhoneValid;

  SignupState(
      {this.isNameValid,
      this.isPhoneValid,
      this.isEmailValid,
      this.isPasswordValid,
      this.isSubmitting,
      this.isSuccess,
      this.isFailure});

  factory SignupState.initial() {
    return SignupState(
      isNameValid: true,
      isPhoneValid: true,
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory SignupState.loading() {
    return SignupState(
      isNameValid: true,
      isPhoneValid: true,
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory SignupState.failure() {
    return SignupState(
      isNameValid: true,
      isPhoneValid: true,
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: true,
    );
  }

  factory SignupState.success() {
    return SignupState(
      isNameValid: true,
      isPhoneValid: true,
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }

  SignupState update({
    bool isNameValid,
    bool isphoneValid,
    bool isEmailValid,
    bool isPasswordValid,
  }) {
    return copyWith(
      isNameValid: isNameValid,
      isPhoneValid: isPhoneValid,
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  SignupState copyWith({
    bool isNameValid,
    bool isPhoneValid,
    bool isEmailValid,
    bool isPasswordValid,
    bool isSubmitting,
    bool isSuccess,
    bool isFailure,
  }) {
    return SignupState(
      isNameValid: isNameValid ?? this.isNameValid,
      isPhoneValid: isPhoneValid ?? this.isPhoneValid,
      isEmailValid: isEmailValid ?? this.isEmailValid,
      isPasswordValid: isPasswordValid ?? this.isPasswordValid,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }
}
