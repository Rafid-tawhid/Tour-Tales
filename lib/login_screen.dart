import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPass = true;
  bool checkBox = true;

  final emailCon = TextEditingController();
  final passCon = TextEditingController();
  final forgotpasswordControler = TextEditingController();
  final _globalKey=GlobalKey<FormState>();
  final formKey2=GlobalKey<FormState>();


  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Form(
          child: ListView(
            children: [
              Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Icon(Icons.verified_user),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          child: Form(
                            key: _globalKey,
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                //set border radius more than 50% of height and width to make circle
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(125, 218, 247, 253),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    const Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 4.0),
                                        child: TextFormField(
                                          controller: emailCon,
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.mail_outline,
                                              color: Colors.blue,
                                            ),
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelText: 'Email or Username',
                                            hintStyle: TextStyle(),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 2,
                                                  color: Colors.blue),
                                              //<-- SEE HERE
                                              borderRadius:
                                              BorderRadius.circular(15.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: .2,
                                                color: Colors.grey.shade500,
                                              ),
                                              //<-- SEE HERE
                                              borderRadius:
                                              BorderRadius.circular(15.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2, color: Colors.red),
                                              //<-- SEE HERE
                                              borderRadius:
                                              BorderRadius.circular(15.0),
                                            ),
                                          ),
                                          validator: (s) {
                                            // if (EmailValidator.validate(
                                            //     emailCon.text)) {
                                            //   return null;
                                            // } else
                                            //   return 'Please give a valid email';
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 4.0),
                                        child: TextFormField(
                                          controller: passCon,
                                          keyboardType:
                                          TextInputType.visiblePassword,
                                          obscureText: showPass,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.key,
                                              color: Colors.blue,
                                            ),
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelText: 'Password',
                                            errorStyle: TextStyle(
                                                overflow:
                                                TextOverflow.ellipsis),
                                            suffixIconConstraints:
                                            BoxConstraints(
                                                maxHeight: 30,
                                                maxWidth: 38),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Colors.blue),
                                              //<-- SEE HERE
                                              borderRadius:
                                              BorderRadius.circular(15.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: .2,
                                                color: Colors.grey.shade500,
                                              ),
                                              //<-- SEE HERE
                                              borderRadius:
                                              BorderRadius.circular(15.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2, color: Colors.red),
                                              //<-- SEE HERE
                                              borderRadius:
                                              BorderRadius.circular(15.0),
                                            ),
                                            hintStyle: TextStyle(),
                                            suffixIcon: Padding(
                                              padding:
                                              const EdgeInsetsDirectional
                                                  .only(end: 8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8)),
                                                child: IconButton(
                                                  padding: EdgeInsets.zero,
                                                  onPressed: () {
                                                    setState(() {
                                                      showPass = !showPass;
                                                    });
                                                  },
                                                  icon: showPass
                                                      ? Icon(
                                                    Icons.visibility_off,
                                                    color: Colors.white,
                                                    size: 18,
                                                  )
                                                      : Icon(
                                                    Icons.visibility,
                                                    color: Colors.white,
                                                    size: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            errorMaxLines: 2,
                                          ),
                                          validator: (val) {
                                            // if (passCon.text.length < 8) {
                                            //   return 'The password must be at least 8 characters.';
                                            // }
                                            // if (!passCon.text.contains(
                                            //         RegExp(r"[a-z]")) ||
                                            //     !passCon.text.contains(
                                            //         RegExp(r"[A-Z]")) ||
                                            //     !passCon.text.contains(
                                            //         RegExp(r"[0-9]")) ||
                                            //     !passCon.text.contains(RegExp(
                                            //         r'[!@#$%^&*(),.?":{}|<>]'))) {
                                            //   return 'Password must be contain 1 uppercase, '
                                            //       '1 lower case 1 number and 1 special character.';
                                            // }
                                            //
                                            if(val==null||val.isEmpty){
                                              return 'Password is required';
                                            }
                                            else {
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16.0, right: 16),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Checkbox(
                                                  value: checkBox,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      checkBox = value!;
                                                    });
                                                  },
                                                  side: BorderSide(
                                                      color: Colors.blue,
                                                      width: 2),
                                                ),
                                                Text(
                                                  'Remember Me',
                                                  style: TextStyle(
                                                      color:
                                                      Colors.grey.shade600),
                                                ),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  String showErrorMsg = "";
                                                  return StatefulBuilder(
                                                    builder:
                                                        (context, setState) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Forgot Password'),
                                                        content: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          children: [
                                                            Form(
                                                              key: formKey2,
                                                              child:
                                                              TextFormField(
                                                                controller:
                                                                forgotpasswordControler,
                                                                onChanged:
                                                                    (value) {
                                                                  // receiveFocus.unfocus();
                                                                  // sendFocus.unfocus();
                                                                },
                                                                keyboardType:
                                                                TextInputType
                                                                    .text,
                                                                decoration:
                                                                InputDecoration(
                                                                  fillColor:
                                                                  Colors
                                                                      .white,
                                                                  filled: true,
                                                                  labelText:
                                                                  'Email Address',
                                                                  errorStyle: const TextStyle(
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis),
                                                                  suffixIconConstraints:
                                                                  const BoxConstraints(
                                                                      maxHeight:
                                                                      30,
                                                                      maxWidth:
                                                                      38),
                                                                  focusedBorder:
                                                                  OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width:
                                                                        2,
                                                                        color: Colors
                                                                            .blue),
                                                                    //<-- SEE HERE
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        4.0),
                                                                  ),
                                                                  enabledBorder:
                                                                  OutlineInputBorder(
                                                                    borderSide:
                                                                    BorderSide(
                                                                      width: .2,
                                                                      color: Colors
                                                                          .grey
                                                                          .shade500,
                                                                    ),
                                                                    //<-- SEE HERE
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        4.0),
                                                                  ),
                                                                  errorBorder:
                                                                  OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width:
                                                                        2,
                                                                        color: Colors
                                                                            .red),
                                                                    //<-- SEE HERE
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        10.0),
                                                                  ),
                                                                  hintStyle:
                                                                  TextStyle(),
                                                                  errorMaxLines:
                                                                  2,
                                                                ),
                                                                validator:
                                                                    (val) {
                                                                  if (val ==
                                                                      null ||
                                                                      val.isEmpty) {
                                                                    return 'Email address is Required';
                                                                  } else
                                                                    return null;
                                                                },
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Text(
                                                                '$showErrorMsg',
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .red),
                                                                textAlign:
                                                                TextAlign
                                                                    .center,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                              children: [
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: Text(
                                                                    'Cancel',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                      backgroundColor:
                                                                      Colors.grey),
                                                                ),
                                                                ElevatedButton(
                                                                    onPressed:
                                                                        () async {
                                                                      // if (formKey2
                                                                      //     .currentState!
                                                                      //     .validate()) {
                                                                      //   EasyLoading
                                                                      //       .show();
                                                                      //
                                                                      //   await UserApiCalls
                                                                      //       .forgetPassword(
                                                                      //     forgotpasswordControler
                                                                      //         .text
                                                                      //         .trim(),
                                                                      //   ).then(
                                                                      //           (value) {
                                                                      //         EasyLoading
                                                                      //             .dismiss();
                                                                      //
                                                                      //         if (value !=
                                                                      //             null) {
                                                                      //           if (value['status'] == true) {
                                                                      //             setState(() {
                                                                      //               sendMailTxt=false;
                                                                      //               showErrorMsg = value['message'];
                                                                      //             });
                                                                      //           } else {
                                                                      //             setState(() {
                                                                      //               Navigator.pop(context);
                                                                      //               MyDialog.showErrorMsgDialog(context, value);
                                                                      //               // showErrorMsg='The selected email is invalid.';
                                                                      //             });
                                                                      //           }
                                                                      //         } else {
                                                                      //           Navigator.pop(context);
                                                                      //           MyDialog.showServerProblemDialog(context);
                                                                      //         }
                                                                      //       });
                                                                      //
                                                                      //   //important api call may use later
                                                                      //
                                                                      //   // await CalculatorAPICalls.getCuponDetails(
                                                                      //   //     cuponControler.text)
                                                                      //   //     .then((cupon) {
                                                                      //   //   EasyLoading.dismiss();
                                                                      //   //   double reduceFees = 0.0;
                                                                      //   //   if (cupon != null) {
                                                                      //   //
                                                                      //   //     if (cupon.data!.discountType == "P") {
                                                                      //   //       double val = double.parse(cupon.data!.reduceFee!) * double.parse(cuponFixedRate!);
                                                                      //   //       reduceFees = double.parse((val / 100).toStringAsFixed(4));
                                                                      //   //     }
                                                                      //   //     if (cupon.data!.discountType == "F") {
                                                                      //   //       reduceFees = double.parse(double.parse(cupon.data!.reduceFee!).toStringAsFixed(4));
                                                                      //   //     }
                                                                      //   //
                                                                      //   //     Navigator.pop(context);
                                                                      //   //     showDialog(
                                                                      //   //         context: context,
                                                                      //   //         builder: (context) =>
                                                                      //   //             showCuponCongratulationsDialog(reduceFees,cupon.data!.discountType));
                                                                      //   //   } else {
                                                                      //   //     setState(() {
                                                                      //   //       showErrorMsg = 'Invalid Cupon Code';
                                                                      //   //     });
                                                                      //   //   }
                                                                      //   // });
                                                                      // }
                                                                      // Navigator.pop(context);
                                                                      // Navigator.pushNamed(context, HomePage.routeName);
                                                                    },
                                                                    child: const Text('Send Link')),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Forgot password?',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    children: List.generate(
                                                        26,
                                                            (index) => Row(
                                                          mainAxisSize:
                                                          MainAxisSize
                                                              .min,
                                                          children: [
                                                            Container(
                                                              height: 2,
                                                              width: 2,
                                                              color: Colors
                                                                  .blue,
                                                            ),
                                                            SizedBox(
                                                              width: 2,
                                                            ),
                                                          ],
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Stack(
                                      children: [
                                          ElevatedButton(
                                              onLongPress: null,
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                  )),
                                              onPressed: () async {
                                                if (_globalKey.currentState!
                                                    .validate()) {
                                                  //call all country full info
                                                }
                                              },
                                              child: const Padding(
                                                padding:
                                                EdgeInsets.symmetric(
                                                    vertical: 8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  children: [
                                                    Icon(Icons.login),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text('SIGN IN')
                                                  ],
                                                ),
                                              )),

                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Or',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Don\'t have an account?',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            // Navigator.pushNamed(
                                            //     context, SignupPage.routeName);
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Text(
                                                'SIGN UP',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 2,
                                                    width: 2,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                            'Copyright © ${DateTime.now().year} Remit All Right Reserved.'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }}