import 'package:flutter/material.dart'; 
class HomePlaceholderScreen extends 
StatelessWidget {
  const 
  HomePlaceholderScreen({super.key}); 
  Widget buildCard(
      BuildContext context, IconData icon, 
      String title, String subtitle, Color 
      color, ) {
    return Card( margin: const 
      EdgeInsets.symmetric(vertical: 10), 
      elevation: 3, shape: 
      RoundedRectangleBorder(
        borderRadius: 
        BorderRadius.circular(16),
      ), child: ListTile( contentPadding: 
            const 
            EdgeInsets.symmetric(horizontal: 
            20, vertical: 12),
        leading: CircleAvatar( 
          backgroundColor: 
          color.withOpacity(0.15), child: 
          Icon(icon, color: color),
        ), title: Text( title, style: 
          const TextStyle(fontWeight: 
          FontWeight.bold),
        ), subtitle: Text(subtitle), 
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
        EdgeInsets.all(18), child: 
        ListView(
          children: [ const Text( "👋 
              Welcome back!", style: 
              TextStyle(
                fontSize: 28, fontWeight: 
                FontWeight.bold,
              ), ), const SizedBox(height: 
            8), const Text(
              "What would you like to 
              study today?", style: 
              TextStyle(
                fontSize: 16, color: 
                Colors.grey,
              ), ), const SizedBox(height: 
            30), buildCard(
              context, Icons.folder_copy, 
              "Study Materials", "Upload 
              PDFs, notes and images", 
              Colors.blue,
            ), buildCard( context, 
              Icons.auto_awesome, "AI 
              Study Tools", "Summaries, 
              flashcards and quizzes", 
              Colors.deepPurple,
            ), buildCard( context, 
              Icons.bar_chart, "Study 
              Progress", "Track your 
              learning journey", 
              Colors.green,
            ), buildCard( context, 
              Icons.local_fire_department, 
              "Daily Streak", "Keep your 
              learning streak alive", 
              Colors.orange,
            ), const SizedBox(height: 30), 
            const Center(
              child: Text( "🚀 Learnify 
                Version 1.0", style: 
                TextStyle(color: 
                Colors.grey),
              ), ), ], ), ), );
  }
}
