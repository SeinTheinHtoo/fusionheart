import 'package:flutter/material.dart';
import 'package:flutter_test_application/custom/constants/colors.dart';

class ProfileCreate extends StatefulWidget {
  const ProfileCreate({super.key});

  @override
  State<ProfileCreate> createState() => _ProfileCreateState();
}

class _ProfileCreateState extends State<ProfileCreate> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  TextEditingController _textController = TextEditingController();
  String selectedValue = 'Male';
  List<String> dropdownItems = ['Male', 'Female'];
  
  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  bgColor,
       appBar: AppBar(
        title: Text('Create Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'UserName'),
            ),
            SizedBox(height: 16.0),
             TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: bioController,
              decoration: InputDecoration(labelText: 'Bio'),
              maxLines: 3,
            ),
            SizedBox(height: 32.0),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Country'),
            ),
            SizedBox(height: 16.0),

            
            DropdownButtonFormField<String>(
              value: selectedValue,
              items: dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                setState(() {
                  selectedValue = newValue;
                });
                }
              },
              decoration: InputDecoration(
                labelText: 'Select an option',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle profile creation logic here
                final String name = nameController.value.text ?? '';
                final String password = passwordController.value.text ?? '';
                final int age = int.tryParse(ageController.value.text) ?? 0;
                final String bio = bioController.value.text ?? '';
                final String country = countryController.value.text ?? '';
                print('Name: $name, Password: $password, Age: $age, Bio: $bio');
                // Access selectedValue and _textController.text here
                print('Selected Value: $selectedValue');
              },
              child: Text('Done'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    nameController.dispose();
    passwordController.dispose();
    ageController.dispose();
    bioController.dispose();
    countryController.dispose();
     _textController.dispose();
    super.dispose();
  }
}