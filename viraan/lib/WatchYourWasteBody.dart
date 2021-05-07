import 'package:flutter/material.dart';
import 'package:viraan/KitchenWaste.dart';
import 'package:viraan/Loading.dart';
import 'package:viraan/Paper.dart';
import 'home_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:viraan/Cart.dart';
import 'package:viraan/Rewards.dart';
import 'home_screen.dart';
import 'package:tflite/tflite.dart';
import 'package:viraan/Plastic.dart';
import 'package:viraan/Metal.dart';
import 'KitchenWaste.dart';
import 'Glass.dart';


class WatchYourWasteBody extends StatefulWidget {
  @override
  _WatchYourWasteBodyState createState() => _WatchYourWasteBodyState();
}

class _WatchYourWasteBodyState extends State<WatchYourWasteBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          WatchYourWasteHeader(size: size),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 40.0),
            child: Container(
              height: size.height * 0.4,
              child: ScrollConfiguration(
                behavior: ScrollBehavior(),
                child: GlowingOverscrollIndicator(
                  color: Color(0xFFC59C76),
                  axisDirection: AxisDirection.down,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text('1. Select a single waste item.'),
                      ),
                      ListTile(
                        title: Text(
                            '2. Click on the camera icon to take snap of your waste.'),
                      ),
                      ListTile(
                        title: Text(
                            '3 .Viraan will segregate your waste into either plastic, glass, paper, kitchen waste, metals.'),
                      ),
                      ListTile(
                        title: Text(
                            '4. Hence inform you about the correct waste management practices.'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Row(
              children: [
                IconButton(
                  icon: Image.asset(
                    "assets/icons/home.png",
                    color: Color(0xFF4E4A4A),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
                Spacer(),
                IconButton(
                  icon: Image.asset(
                    "assets/icons/cart.png",
                    color: Color(0xFF4E4A4A),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },
                ),
                Spacer(),
                IconButton(
                  icon: Image.asset(
                    "assets/icons/Vector.png",
                    color: Color(0xFF4E4A4A),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Rewards()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WatchYourWasteHeader extends StatefulWidget {
  const WatchYourWasteHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _WatchYourWasteHeaderState createState() => _WatchYourWasteHeaderState();
}

class _WatchYourWasteHeaderState extends State<WatchYourWasteHeader> {
  PickedFile _image;
  bool _loading = true;
  List _output;
  @override
  void initState(){
    super.initState();
    loadModel().then((value){
      setState(() { });
    });
    }
  @override
  void dispose(){
    super.dispose();
    Tflite.close();
  }
  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 36,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _loading = false;
      _output = output;
      print(_output);
      var material;
      if(_output.isEmpty)
        {
          material = "";
        }
      else {
        material = _output[0]['label'];
      }
    pageCall(material);
    });
  }
  loadModel() async {
    await Tflite.loadModel(
      model: "assets/WasteClassification.tflite",
      labels: "assets/labels.txt",
    );
  }
  _imgFromCamera() async {
    ImagePicker imagePicker = ImagePicker();
    final imageFile = await imagePicker.getImage(source: ImageSource.camera);
    // File image = await ImagePicker.pickImage(
    //     source: ImageSource.camera, imageQuality: 50
    // );

    setState(() {
      _image = imageFile;
    });
    classifyImage(File(_image.path));
  }

  _imgFromGallery() async {
    ImagePicker imagePicker = ImagePicker();
    final imageFile = await imagePicker.getImage(source: ImageSource.gallery);
    // File image = await  ImagePicker.pickImage(
    //     source: ImageSource.gallery, imageQuality: 50
    // );

    setState(() {
      _image = imageFile;
    });
    classifyImage(File(_image.path));
  }
  void pageCall(String material)
  {
    if(material == "paper")
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Paper()),
      );
    }
    else if( material == "plastic")
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Plastic()),
      );
    }
    else if( material == "metal")
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Metal()),
      );
    }
    else if( material == "white-glass")
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Glass()),
      );
    }
    else if( material == "compost")
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => KitchenWaste()),
      );
    }
    else
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Loading()),
        );
      }
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.5,
      child: Stack(
        children: [
          Container(
            height: widget.size.height * 0.5,
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 50.0,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/Login header BG.png"),
              ),
            ),
            child: Image.asset("assets/images/WATCH YOUR WASTE.png"),
          ),
          Positioned(
            bottom: 0,
            left: 20.0,
            right: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 270.0,
              // child: Icon(Icons.arrow_back_ios_outlined),
            ),
          ),
          Positioned(
            bottom: 60, //TODO: position
            left: 0,
            right: 0,
            // child: Container(ho
            //   alignment: Alignment.center,
            //   height: 200,
            //   child: Image.asset("assets/images/Camera.png"),
            // ),
            child :TextButton.icon(

              onPressed: () {
                _showPicker(context);
                _imgFromCamera() async {
                  ImagePicker imagePicker = ImagePicker();
                  final imageFile = await imagePicker.getImage(source: ImageSource.camera);
                  // File image = await ImagePicker.pickImage(
                  //     source: ImageSource.camera, imageQuality: 50
                  // );
                  setState(() {
                    if (imageFile != null) {
                      _image = PickedFile(imageFile.path);
                    } else {
                      print('No image selected.');
                    }
                  });
                }

                _imgFromGallery() async {
                  ImagePicker imagePicker = ImagePicker();
                  final imageFile = await imagePicker.getImage(source: ImageSource.gallery);
                  // File image = await  ImagePicker.pickImage(
                  //     source: ImageSource.gallery, imageQuality: 50
                  // );

                  setState(() {
                    if (imageFile != null) {
                      _image = PickedFile(imageFile.path);
                    } else {
                      print('No image selected.');
                    }
                  });
                }
              },
              icon: Image.asset("assets/images/Camera.png"),
              label: Text(
                '',
              ),
            )
            //     : Image.file(
            //   File(_image.path),
            //   height: 80.0,
            //   width: 100.0,
            //
            // ),
            // ): image: DecorationImage(image: FileImage(File(file.path)),)
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Follow the following steps to know more about your waste',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
