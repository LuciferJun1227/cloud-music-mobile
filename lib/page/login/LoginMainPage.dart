import 'package:flutter/material.dart';
import 'package:cloud_music_mobile/assets/ConstDefine.dart';

class LoginMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Logo(),
          Expanded(
            child: LoginMain(),
          ),
          OtherLogin(),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 268,
      child: Center(
        child: Image.asset(
          ConstDefine.logo,
          width: 86,
          height: 86,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class LoginMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35, right: 35),
      child: Column(
        children: <Widget>[
          _buttonStyle(context, '手机号登录', () {}),
          Container(
            child: _buttonStyle(context, '注册', () {}),
            margin: EdgeInsets.only(top: 14),
          )
        ],
      ),
    );
  }

  _buttonStyle(context, text, onPressed) {
    return OutlineButton(
      padding: EdgeInsets.only(top: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 16),
          )
        ],
      ),
      shape: StadiumBorder(),
      onPressed: onPressed,
      borderSide: BorderSide(color: Theme.of(context).primaryColor),
    );
  }
}

class OtherLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            Text(
              '其他登陆方式',
              style: TextStyle(color: Colors.black54, fontSize: 12),
              
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _otherLoginItemStyle(context, "微信", () {

                  }, Colors.green),
                  _otherLoginItemStyle(context, "QQ", () {

                  }, Colors.blue),
                  _otherLoginItemStyle(context, "微博", () {

                  }, Theme.of(context).primaryColor),
                  _otherLoginItemStyle(context, "网易邮箱", () {

                  }, Theme.of(context).primaryColor)
                ],
              ),
            )
          ],
        ));
  }

  _otherLoginItemStyle(context, text, onPressed, iconColor) {
    return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 4),
            child: IconButton(
              icon: Icon(Icons.wallpaper),
              color: iconColor,
              onPressed: onPressed,
            ),
            width: 42,
            height: 42,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                shape: BoxShape.circle),
          ),
          Text(text, style: TextStyle(color: Colors.black54, fontSize: 10))
        ],
      
    );
  }
}