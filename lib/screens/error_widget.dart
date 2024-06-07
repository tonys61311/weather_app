import 'package:flutter/material.dart';

class ErrorDisplayWidget extends StatelessWidget {
  final String message;
  final VoidCallback? clickButton;

  const ErrorDisplayWidget({
    Key? key,
    required this.message,
    this.clickButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.redAccent,
            size: 80,
          ),
          SizedBox(height: 16),
          Text(
            '錯誤',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 16),
          if (clickButton != null)
            ElevatedButton.icon(
              onPressed: clickButton,
              icon: Icon(Icons.home),
              label: Text('返回首頁'),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                onPrimary: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
}
