import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Text Styling',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Styling App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              const Text(
                'Flutter Text Styling',
                style: TextStyle(
                  fontSize: 24, // Larger font size
                  fontWeight: FontWeight.bold, // Bold text
                ),
                textAlign: TextAlign.center, // Center-align the text
              ),
              const SizedBox(
                  height: 10), // Add some space between title and subtitle
              // Subtitle
              const Text(
                'Experiment with text styles',
                style: TextStyle(
                  fontSize: 18, // Smaller font size
                  fontStyle: FontStyle.italic, // Italic text
                ),
                textAlign: TextAlign.center, // Center-align the text
              ),
              const SizedBox(height: 20), // Add some space before the button
              // Interactive TextButton
              TextButton(
                onPressed: () {
                  // Displaying the Snackbar on button press
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('You clicked the button!'),
                    ),
                  );
                },
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
