import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

import '../utils/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {


  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;


    return Scaffold(


      body: ScreenBackground(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(

              key: _formKey,

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  const SizedBox(height: 80,),

                  Text('Join With Us', style: textTheme.titleLarge,),

                  const SizedBox(height: 24,),

                  TextFormField(

                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(


                        hintText: 'Email'

                    ),
                  ),

                  const SizedBox(height: 8,),

                  TextFormField(

                    controller: _firstNameTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(


                        hintText: 'First Name'

                    ),
                  ),

                  const SizedBox(height: 8,),

                  TextFormField(

                    controller: _lastNameTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(


                        hintText: 'Last Name'

                    ),
                  ),

                  const SizedBox(height: 8,),

                  TextFormField(

                    controller: _mobileTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(


                        hintText: 'Mobile'

                    ),
                  ),

                  SizedBox(height: 8,),
                  TextFormField(

                    controller: _passwordTEController,
                    obscureText: true,
                    decoration:  const InputDecoration(


                      hintText: 'Password',

                    ),
                  ),

                  const SizedBox(height: 24,),

                  ElevatedButton(


                    onPressed: (){},
                    child: Icon(Icons.arrow_circle_right_outlined),

                  ),

                  SizedBox(height: 48,),


                  Center(
                    child: _buildSignInSection(),
                  ),

                ],



              ),
            ),
          ),
        ),

      ),


    );
  }

  Widget _buildSignInSection() {
    return RichText(text: TextSpan(

        text: "Already Have an Account? ",

        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.w600,
        ),

        children: [

          TextSpan(

              text: 'Sign in',

              style: TextStyle(
                color: AppColors.themeColor,
              ),

              recognizer: TapGestureRecognizer()
                ..onTap =  () {

                  Navigator.pop(context);
                }

          ),



        ]


    ),
    );
  }



  @override
  void dispose() {
    // TODO: implement dispose
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();

    super.dispose();
  }

}


