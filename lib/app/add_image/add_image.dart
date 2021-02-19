import 'dart:io';

import 'package:beentogether/app/add_image/image_provider.dart';
import 'package:beentogether/ultis/Application.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

class AddImage extends StatefulWidget {
  @override
  _AddImage createState() => _AddImage();
}

class _AddImage extends State<AddImage> {
  File imageFile;
  File newImage;

  pickImage(ImageSource source) async {
    // ignore: deprecated_member_use
    imageFile = await ImagePicker.pickImage(source: source);
    String path = (await getApplicationDocumentsDirectory()).path;
    newImage = await imageFile
        .copy('${"$path/"}${DateTime.now().millisecondsSinceEpoch}.png');
    Application.sharedPreferences.putString("path", newImage.path);
    Provider.of<AddImageState>(context, listen: false).changeImageState(true);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AddImageState>(builder: (context, addImageState, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          addImageState.imageAdded
              ? Image.file(
                  File(newImage.path),
                  width: 130,
                  height: 130,
                )
              : Container(),
          RaisedButton(
            child: Text("Chon Anh"),
            onPressed: () {
              pickImage(ImageSource.gallery);
            },
          ),
        ],
      );
    });
  }
}
