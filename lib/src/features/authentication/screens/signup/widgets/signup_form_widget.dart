import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskwise/src/constants/colors.dart';
import 'package:taskwise/src/features/authentication/controllers/signup_controller.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';



class SignUpFormWidget extends StatelessWidget {
   SignUpFormWidget({
    Key? key,
}): super(key: key);

  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _obscureConfirmPassword = ValueNotifier<bool>(true);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController(), permanent: true);
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Icon(Icons.person_outline_rounded),
                ),
                hintText: tFullName,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Icon(Icons.mail_outline_rounded),
                ),
                hintText: tEmail,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Icon(Icons.phone_android_outlined),
                ),
                hintText: tPhone,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight - 20),
            ValueListenableBuilder<bool>(
              valueListenable: _obscurePassword,
              builder: (context, value, child) {
                return TextFormField(
                controller: controller.password,
                decoration: InputDecoration(
                 prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Icon(Icons.lock_outline),
                  ),
                  hintText: tCreatePassword,
                   suffixIcon:
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 5.0),
                    child: IconButton(
                      onPressed: () {
                      _obscurePassword.value = !_obscurePassword.value;
                      },
                      icon: Icon(
                    value
                     ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                      ),
                    ),
                  ),
                ),
                obscureText: value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }
                  return null;
                  },
               );
            },
          ),
            const SizedBox(height: tFormHeight - 20),
            ValueListenableBuilder<bool>(
              valueListenable: _obscureConfirmPassword,
              builder: (context, value, child) {
                return TextFormField(
                  controller: controller.confirmPassword,
                  decoration: InputDecoration(
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Icon(Icons.lock_reset_outlined),
                    ),
                    hintText: tConfirmPassword,
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 5.0),
                      child: IconButton(
                        onPressed: () {
                          _obscureConfirmPassword.value = !_obscureConfirmPassword.value;
                        },
                        icon: Icon(
                          value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                    ),
                  ),
                  obscureText: value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != controller.password.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                );
              },
            ),
            const SizedBox(height: tFormHeight - 10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Registration Successful!'),
                            backgroundColor: isDarkMode ? tSecondaryColor : tAccentColor,
                            behavior: SnackBarBehavior.floating, // Floating behavior
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Rounded corners
                            ),
                            duration: const Duration(seconds: 10), // Duration
                            action: SnackBarAction(
                              label: 'NEXT',
                              textColor: Colors.white,
                              onPressed: () {
                                SignUpController.instance.registerUser(controller.email.text.trim(),controller.password.text.trim());
                              },
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(content: const Text('Validation failed, fill necessary fields!'),
                            backgroundColor: isDarkMode ? Colors.red : Colors.red,
                            behavior: SnackBarBehavior.floating, // Floating behavior
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Rounded corners
                            ),
                             duration: const Duration(seconds: 5), // Duration
                             action: SnackBarAction(
                               label: 'Close',
                               textColor: Colors.white,
                               onPressed: () {},
                             ),
                          ),
                        );
                      }
                    },
                    child: Text(tSignup.toUpperCase()),
                  ),
                ),
                const SizedBox(width: 10.0,
                ),
                const Text("OR"),
                const SizedBox(width: 10.0,
                ),
                Expanded(child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Image(image: AssetImage(tGoogleLogoImage), width:20.0,),
                  label: const Text(tSignInWithGoogle),
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
