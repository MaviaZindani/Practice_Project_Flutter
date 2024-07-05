import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class addPostScreen extends StatefulWidget {
  const addPostScreen({super.key});

  @override
  State<addPostScreen> createState() => _addPostScreenState();
}

class _addPostScreenState extends State<addPostScreen> {
  final postController = TextEditingController();
  bool isloading = false;
  final dataBaseRef = FirebaseDatabase.instance.ref('Post');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextFormField(
              maxLines: 4,
              controller: postController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'add a value',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
  // Get the text entered by the user
  String postContent = postController.text;

  // Check if the text is not empty
  if (postContent.isNotEmpty) {
    // Set loading state to true
    setState(() {
      isloading = true;
    });

    // Save the post content to Firebase
    dataBaseRef.push().set({
      'content': postContent,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
    }).then((_) {
      // Reset the text field and loading state
      postController.clear();
      setState(() {
        isloading = false;
      });

      // Navigate back to the home screen
      Navigator.pop(context);
    }).catchError((error) {
      // Handle errors here
      print("Error: $error");
      // Reset loading state
      setState(() {
        isloading = false;
      });
    });
  } else {
    // Show a snackbar or toast to inform the user to enter some content
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Please enter some content.'),
      ),
    );
  }
},

              child: Text('Button'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}