import 'package:flutter/material.dart';

void main() => runApp(AddFailurePage());

// 添加故障页面
class AddFailurePage extends StatefulWidget {
  @override
  _AddFailurePageState createState() {
    return _AddFailurePageState();
  }
}

class _AddFailurePageState extends State<AddFailurePage> {
  GlobalKey<FormState> addFailureKey = GlobalKey<FormState>();

  void submit() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '添加故障',
      home: Scaffold(
        appBar: AppBar(
          title: Text('添加故障'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: addFailureKey,
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.loupe),
                      tooltip: '扫描二维码添加设备',
                      onPressed: null,
                    ),
                    IconButton(
                      icon: Icon(Icons.linked_camera),
                      tooltip: '拍照或录像',
                      onPressed: null,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '申请科室',
                      ),
                      onSaved: (value) {
                        // to do
                      },
                      onFieldSubmitted: (value) {
                        // to do
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '上报人员',
                      ),
                      onSaved: (value) {
                        // to do
                      },
                      onFieldSubmitted: (value) {
                        // to do
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '联系电话',
                      ),
                      onSaved: (value) {
                        // to do
                      },
                      onFieldSubmitted: (value) {
                        // to do
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '情况描述',
                      ),
                      onSaved: (value) {
                        // to do
                      },
                      onFieldSubmitted: (value) {
                        // to do
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 340.0,
              height: 42.0,
              child: RaisedButton(
                onPressed: submit,
                child: Text(
                  '提交故障',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}