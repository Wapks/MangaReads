import 'package:flutter/material.dart';
import 'package:manga_reads/core/theme/theme_colors.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const name = 'login';
  static const path = '/login';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey there! 👋 ',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Glad to have you back',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 40.0),
                  _LoginForm(),
                ],
              ),
              Row(children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Register"),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  _LoginForm({Key? key}) : super(key: key);

  final fg = getForm;

  _handleSubmit() {
    print(fg.value.toString());
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: fg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ReactiveTextField(
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
            formControlName: 'email',
          ),
          const SizedBox(height: 10.0),
          ReactiveTextField(
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
            obscureText: true,
            formControlName: 'password',
            obscuringCharacter: '●',
          ),
          const SizedBox(height: 10.0),
          ReactiveFormConsumer(
            builder: (context, form, child) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  disabledForegroundColor: AppThemeColors.disabledFg,
                  disabledBackgroundColor: AppThemeColors.disabledBg,
                ),
                onPressed: form.valid ? _handleSubmit : null,
                child: const Text('Login')),
          )
        ],
      ),
    );
  }
}

get getForm {
  return FormGroup({
    'email': FormControl<String>(validators: [Validators.required, Validators.email]),
    'password': FormControl<String>(validators: [Validators.required])
  });
}
