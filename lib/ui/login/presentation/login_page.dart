import 'package:catalogue_management/ui/login/application/application.dart';
import 'package:catalogue_management/ui/login/application/login_state.dart';
import 'package:cm_common/route/navigator_service.dart';
import 'package:cm_common/route/router_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userNameController = TextEditingController();
    var nameController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey();
    ref.listen<LoginState>(loginProvider, _loginStateListener);

    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Container(
            color: Colors.grey,
            width: MediaQuery.of(context).size.width / 2,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(
                      //   width: double.infinity,
                      //   height: MediaQuery.of(context).size.height / 3,
                      //   child: Image.asset('lib/images/flutter.png'),
                      // ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: CircleAvatar(
                                  radius: 100,
                                  backgroundColor: Colors.transparent,
                                  child: Image.network(
                                    "https://cdn.shopify.com/s/files/1/0565/1903/2987/files/Aardae_New__logo_0457b547-6e39-4043-855e-5d5c113b1b02.png?v=1662414181",
                                  ),
                                ),
                              ),
                              const Text(
                                'Email',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black,
                                ),
                                child: TextField(
                                  controller: userNameController,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.white,
                                    ),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              // const Text(
                              //   'Password',
                              //   style: TextStyle(
                              //     color: Colors.black,
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                              // const SizedBox(height: 15),
                              // Container(
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(12),
                              //     color: Colors.black,
                              //   ),
                              //   child: const TextField(
                              //     style: TextStyle(color: Colors.white),
                              //     decoration: InputDecoration(
                              //       border: InputBorder.none,
                              //       prefixIcon: Icon(
                              //         Icons.lock,
                              //         color: Colors.white,
                              //       ),
                              //       hintText: 'Password',
                              //       hintStyle: TextStyle(color: Colors.white),
                              //     ),
                              //   ),
                              // ),
                              const SizedBox(height: 35),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    ref
                                        .watch(loginProvider.notifier)
                                        .submitLogin(
                                            email:
                                                userNameController.value.text);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.black,
                                    ),
                                    child: const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          ' Log In',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const Center(
                                child: Text(
                                  'Or',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.google,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.facebook,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.orange,
                                      ),
                                      onPressed: () async {},
                                    ),
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.apple,
                                        color: Colors.black,
                                      ),
                                      onPressed: () async {},
                                    ),
                                  ],
                                ),
                              ),

                              // const SizedBox(height: 35),
                              // const Center(
                              //   child: Text(
                              //     '- Or Sign In with -',
                              //     style: TextStyle(
                              //       color: Colors.black,
                              //       fontSize: 20,
                              //       fontWeight: FontWeight.w500,
                              //     ),
                              //   ),
                              // ),
                              // const SizedBox(height: 20),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     GestureDetector(
                              //       onTap: () {
                              //         // Navigator.push(
                              //         //     context,
                              //         //     MaterialPageRoute(
                              //         //         builder: (context) =>
                              //         //             SecondScreen()));
                              //       },
                              //       child: Container(
                              //         width: 60,
                              //         height: 60,
                              //         padding: const EdgeInsets.all(5),
                              //         decoration: BoxDecoration(
                              //           borderRadius:
                              //               BorderRadius.circular(15),
                              //           color: Colors.white38,
                              //         ),
                              //         child: Icon(Icons.ad_units),
                              //       ),
                              //     ),
                              //     const SizedBox(width: 50),
                              //     GestureDetector(
                              //       onTap: () {
                              //         // Navigator.push(
                              //         //     context,
                              //         //     MaterialPageRoute(
                              //         //         builder: (context) =>
                              //         //             SecondScreen()));
                              //       },
                              //       child: Container(
                              //         width: 60,
                              //         height: 60,
                              //         padding: const EdgeInsets.all(5),
                              //         decoration: BoxDecoration(
                              //           borderRadius:
                              //               BorderRadius.circular(15),
                              //           color: Colors.white38,
                              //         ),
                              //         child: Icon(Icons.ad_units),
                              //       ),
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  void _loginStateListener(LoginState? previous, LoginState next) {
    if (next != null) {
      next.maybeWhen(
          success: () {
            NavigateService.pushNamedRoute(RouterPath.DASHBOARD);
          },
          orElse: () {});
    }
  }
}
