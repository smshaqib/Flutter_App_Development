import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  static const String name = '/update-profile';

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {



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
      
      appBar: TMAppBar(
        fromUpdateProfile: true,
      ),
      
      body: ScreenBackground(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
          
              key: _formKey,
          
              child: Column(
              
                crossAxisAlignment: CrossAxisAlignment.start,
              
                children: [
              
              
                  const SizedBox(height: 32,),
              
                  Text('Update Profile', style: textTheme.titleLarge,),
              
                  const SizedBox(height: 24,),
          
          
                  _buildPhotoPicker(),
          
          
                  const SizedBox(height: 8,),
          
          
          
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
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoPicker() {
    return Container(


                height: 56,

                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(

                  children: [

                    Container(

                      height: 56,

                      padding: EdgeInsets.symmetric(horizontal: 16),

                      decoration: const BoxDecoration(

                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        )

                      ),

                      alignment: Alignment.center,
                      child: Text('Photo', style:  TextStyle(
                        color: Colors.white,
                      ),),
                    ),

                    const SizedBox(width: 12,),
                    Text('No Item Selected',maxLines: 1,),

                  ],
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
