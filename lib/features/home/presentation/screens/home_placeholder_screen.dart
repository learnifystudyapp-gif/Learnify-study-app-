
import 'package:flutter/material.dart'; 
class HomePlaceholderScreen extends 
StatelessWidget {
  const 
  HomePlaceholderScreen({super.key}); 
  Widget buildCard(IconData icon, String 
  title) {
    return Card( margin: const 
      EdgeInsets.symmetric(vertical: 8), 
      child: ListTile(
        leading: Icon(icon, color: 
        Colors.blue), title: Text(title), 
        trailing: const 
        Icon(Icons.arrow_forward_ios),
      ), );
  }
  @override Widget build(BuildContext 
  context) {
    return Scaffold( appBar: AppBar( 
        title: const Text("Learnify"), 
        centerTitle: true,
      ), body: Padding( padding: const 
        EdgeInsets.all(16), child: 
        ListView(
          children: [ const Text( "👋 
              Welcome to Learnify", style: 
              TextStyle(
                fontSize: 26, fontWeight: 
                FontWeight.bold,
              ), ), const SizedBox(height: 
            8), const Text(
              "Your AI Study Companion", 
              style: TextStyle(fontSize: 
              16),
            ), const SizedBox(height: 24), 
            buildCard(Icons.summarize, "AI 
            Summaries"), 
            buildCard(Icons.style, 
            "Flashcards"), 
            buildCard(Icons.quiz, "Quiz 
            Generator"), 
            buildCard(Icons.menu_book, 
            "Study Materials"), 
            buildCard(Icons.bar_chart, 
            "Study Progress"), const 
            SizedBox(height: 30), const 
            Center(
              child: Text( "🚀 More 
                features coming soon...", 
                style: TextStyle(
                  color: Colors.grey, ), 
              ),
            ), ], ), ), );
  }
}
