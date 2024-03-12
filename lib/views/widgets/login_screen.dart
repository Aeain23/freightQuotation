import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:freightquote/constants/style.dart';
import 'package:freightquote/views/widgets/dashboard_screen.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

// import 'dashboard_screen.dart';

const users = {
  'aed@gmail.com': '123456',
  'sys@gmail.com': '12345',
};

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";
  const LoginScreen({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }

      return '';
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return '';
    });
  }

  logout(context) {
    return QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      text: 'Do you want to logout',
      customAsset: 'assets/images/logout.png',

      // headerBackgroundColor: Colors,
      onConfirmBtnTap: () => SystemNavigator.pop(),
      confirmBtnText: 'Yes',
      cancelBtnText: 'No',
      confirmBtnColor: Colors.blueAccent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        if (didPop) {
          return;
        }
        logout(context);
      },
      child: FlutterLogin(
        validateUserImmediately: true,
        userType: LoginUserType.email,
        // userValidator: (val) {
        //   String validator = '';
        //   if (val!.isEmpty) {
        //     return validator = 'Please Input User Name!';
        //   }

        //   return validator;
        // },
        // passwordValidator: (value) {
        //   debugPrint("comming this one");
        //   String validator = '';
        //   if (value!.isEmpty) {
        //     return validator = 'Please Input Password!';
        //   }
        //   if (value.length > 10) {
        //     return validator = 'Password length less than 10 digit';
        //   }
        //   return validator;
        // },
        theme: LoginTheme(
            cardTheme: CardTheme(
                surfaceTintColor: Colors.white,
                margin: EdgeInsets.only(top: 30)),
            // inputTheme: InputDecorationTheme(
            //   filled: true,
            //   fillColor: Colors.grey.withOpacity(.1),
            //   contentPadding: EdgeInsets.zero,
            //   errorStyle: const TextStyle(
            //     backgroundColor: Colors.red,
            //     color: Colors.white,
            //   ),
            // ),
            primaryColor: primaryColor,
            // pageColorLight: primaryColor,
            // accentColor: secondaryColor,
            buttonTheme: LoginButtonTheme(backgroundColor: Colors.blueAccent),
            titleStyle: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent)),
        loginAfterSignUp: true,
        additionalSignupFields: const [
          UserFormField(keyName: 'test', displayName: "Hello")
        ],
        title: 'Freight Quotation',
        logo: const AssetImage('assets/images/logo.png'),
        onLogin: _authUser,
        onSignup: _signupUser,
        onConfirmSignup: (p0, p1) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const DashboardScreen(),
          ));
          return null;
        },
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const DashboardScreen(),
          ));
        },
        messages: LoginMessages(
          userHint: 'User Name',
          passwordHint: 'Password',
          confirmPasswordHint: 'Confirm',
          loginButton: 'LOG IN',
          signupButton: 'REGISTER',
          forgotPasswordButton: 'Forgot password?',
          recoverPasswordButton: 'SENT',
          goBackButton: 'GO BACK',
          confirmPasswordError: 'Not match!',
          // recoverPasswordDescription:
          //     'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
          recoverPasswordSuccess: 'Password rescued successfully',
        ),
        onRecoverPassword: _recoverPassword,
      ),
    );
  }
}
