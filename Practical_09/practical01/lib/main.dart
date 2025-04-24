import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text('Returning Data Demo'),
     ),
     body: const Center(
      child: SelectionButton(),
     ),
    );
  }
}

class SelectionButton extends StatefulWidget{
  const SelectionButton({super.key});

  State <SelectionButton> createState() =>  _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton>{
  String? _selectedOption;

  Widget build (BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: (){
            _navigateAndDisplaySelection(context);
          }, 
          child: const Text('Pick an option'),
          ),
          const SizedBox(height: 20),
          Text(_selectedOption?? 'No option selected',
          style: const TextStyle(fontSize: 20),
          ),
      ],
    );
  }

Future <void> _navigateAndDisplaySelection(BuildContext context) async{
  final result=await Navigator.push(
    context, 
    MaterialPageRoute(builder: (context)=>const SelectionScreen()),
  );

  if (!mounted) return;

  setState(() {
    _selectedOption=result;

  });
}

}

class SelectionScreen extends StatelessWidget{
  const SelectionScreen ({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context,'Yes');
                }, 
                child: const Text('Yes'),
              ),
            ), 
            Padding(padding:  EdgeInsets.all(8.0), 
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context, 'No');
                }, 
                child: const Text('No'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
