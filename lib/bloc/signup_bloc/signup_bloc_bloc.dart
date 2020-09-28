import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:user_side_ap/service/auth.dart';
import 'package:user_side_ap/service/validator.dart';
part 'signup_bloc_event.dart';
part 'signup_bloc_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthService _authService;

  SignupBloc(this._authService) : super(SignupState.initial());

  @override
  Stream<SignupState> mapEventToState(SignupEvent event) async* {
    if (event is NameChange) {
      yield* _mapNameChangedToState(event.name);
    } else if (event is PhoneChange) {
      yield* _mapMobileChangedToState(event.phone);
    } else if (event is EmailChange) {
      yield* _mapEmailChangeToState(event.email);
    } else if (event is PasswordChanged) {
      yield* _mapPasswordChangeToState(event.pass);
    } else if (event is SignupWithCredentialPressed) {
      yield* _mapSignupWithCredentialsPressedToState(
          email: event.email, password: event.pass);
    }
  }

  Stream<SignupState> _mapNameChangedToState(String name) async* {
    yield state.update(isNameValid: Validators.isValidName(name));
  }

  Stream<SignupState> _mapMobileChangedToState(String phone) async* {
    yield state.update(isphoneValid: Validators.isMobileValid(phone));
  }

  Stream<SignupState> _mapEmailChangeToState(String email) async* {
    yield state.update(isEmailValid: Validators.isValidEmail(email));
  }

  Stream<SignupState> _mapPasswordChangeToState(String password) async* {
    yield state.update(isPasswordValid: Validators.isValidPassword(password));
  }

  Stream<SignupState> _mapSignupWithCredentialsPressedToState(
      {String name, String phone, String email, String password}) async* {
    yield SignupState.loading();
    try {
      await _authService.signupWithEmail(name, phone, email, password);
      yield SignupState.success();
    } catch (e) {
      yield SignupState.failure();
    }
  }
}
