import 'dart:io';

import 'package:even_tick/config/app-color.dart';
import 'package:even_tick/config/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart'; // For image picking

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String _userType = "normal";
  XFile? _image;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = pickedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.AppBarColor,
        leading: IconButton(
          icon: SvgPicture.asset(AppAssets.arrowBackWithCircularBoarderIcon),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: AppColors.headingColor,
            height: 30,
          ),
        ),
      ),
      backgroundColor: AppColors.Bacgroundcolor,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Phone Number'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'NIC'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your NIC';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('User Type'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text('Premium'),
                        leading: Radio<String>(
                          value: 'premium',
                          groupValue: _userType,
                          onChanged: (String? value) {
                            setState(() {
                              _userType = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('Normal'),
                        leading: Radio<String>(
                          value: 'normal',
                          groupValue: _userType,
                          onChanged: (String? value) {
                            setState(() {
                              _userType = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: _pickImage,
                  child: Text('Pick Image'),
                ),
                if (_image != null) Image.file(File(_image!.path)),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process sign-up logic here
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2052A4),
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
