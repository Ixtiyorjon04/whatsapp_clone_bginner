import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController controller = TextEditingController();
  String password = '';
  bool obsecure = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Widget'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          TextField(
            textInputAction: TextInputAction.go,
            keyboardType: TextInputType.number,
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                // label: Text('Email'),
                labelText: 'Email Address',
                hintText: 'name@gmail.com',
                // icon: Icon(Icons.mail),
                prefixIcon: Icon(Icons.mail),
                suffixIcon: controller.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        onPressed: () {
                          controller.clear();
                        },
                        icon: Icon(Icons.clear))),
          ),
          SizedBox(height: 20),
          TextField(
            textInputAction: TextInputAction.go,
            onChanged: (value) {
              setState(() {
                password = value;
              });
              print(password);
            },

            // keyboardType: TextInputType.number,
            // controller: controller,
            obscureText: obsecure,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                // label: Text('Email'),
                labelText: 'Password',
                errorText: 'Pasword is weak',
                // icon: Icon(Icons.mail),
                prefixIcon: Icon(Icons.password),
                suffixIcon:
                    // controller.text.isEmpty
                    //     ? Container(width: 0)
                    //     :
                    IconButton(
                        onPressed: () {
                          // controller.clear();
                          setState(() {
                            obsecure = !obsecure;
                          });
                        },
                        icon: obsecure
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off))),
          ),
          SizedBox(height: 20),
          Text(password)
        ],
      ),
    );
  }
}
