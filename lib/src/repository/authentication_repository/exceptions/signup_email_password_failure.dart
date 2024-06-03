class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "An unknown error occurred."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
        case 'weak-password' :
          return const SignUpWithEmailAndPasswordFailure('Please enter a stronger password.');
      case 'short-password' :
        return const SignUpWithEmailAndPasswordFailure('Password must be at least 8 characters long.');
      case 'invalid-email' :
        return const SignUpWithEmailAndPasswordFailure('Email is not valid or poorly formatted.');
      case 'email-already-in-use' :
        return const SignUpWithEmailAndPasswordFailure('An account already exists with this email.');
      case 'user-disabled' :
        return const SignUpWithEmailAndPasswordFailure('This user has been disabled.');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}