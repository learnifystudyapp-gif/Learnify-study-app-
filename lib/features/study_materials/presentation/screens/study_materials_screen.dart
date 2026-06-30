import 'package:flutter/material.dart'; 
class StudyMaterialsScreen extends 
StatelessWidget {
  const StudyMaterialsScreen({super.key}); 
  Widget buildMaterial(String title, 
  IconData icon) {
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
        title: const Text("Study 
        Materials"),
      ), floatingActionButton: 
      FloatingActionButton(
        onPressed: () {}, child: const 
        Icon(Icons.add),
      ), body: Padding( padding: const 
        EdgeInsets.all(16), child: 
        ListView(
          children: [ const Text( "Your 
              Study Materials", style: 
              TextStyle(
                fontSize: 26, fontWeight: 
                FontWeight.bold,
              ), ), const SizedBox(height: 
            20), buildMaterial("Biology 
            Notes.pdf", 
            Icons.picture_as_pdf), 
            buildMaterial("Chemistry 
            Notes.docx", 
            Icons.description), 
            buildMaterial("Cell 
            Diagram.jpg", Icons.image), 
            buildMaterial("My Study 
            Notes", Icons.note),
          ], ), ), );
  }
}
