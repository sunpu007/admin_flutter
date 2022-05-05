import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '任务调度与动态权限',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isShowPwd = false;

  String username = '';
  String password = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF2d3a4b),
      body: Center(
        child: SizedBox(
          width: 450,
          height: 270,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Text(
                  'Login Form',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFFEEEEEE),
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 40,),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_rounded,
                      color: Color(0XFF889AA4),
                    ),
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Color(0XFF889AA4)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white12,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white12,
                        width: 0.5,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white12,
                        width: 0.5,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == '') return '请输入用户名';
                  },
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
                ),
                const SizedBox(height: 18,),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  obscureText: !_isShowPwd,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0XFF889AA4),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isShowPwd = !_isShowPwd;
                        });
                      },
                      icon: Icon(
                        _isShowPwd ? Icons.visibility_rounded : Icons.visibility_off_rounded,
                        color: const Color(0XFF889AA4),
                      )
                    ),
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Color(0XFF889AA4)
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white12,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white12,
                        width: 0.5,
                      ),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white12,
                        width: 0.5,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.length < 6) return 'The password can not be less than 6 digits';
                  },
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                const SizedBox(height: 18,),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 45,
                  color: const Color(0XFF409EFF),
                  onPressed: () {
                    _formKey.currentState!.validate();
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
