
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camara extends StatelessWidget {
  const Camara({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async{
          final ImagePicker picker = ImagePicker();
          final XFile? photo = await picker.pickImage(source: ImageSource.camera);
        },
        child: Text('CAMARA')
      ),
    );
  }
}