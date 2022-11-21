import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../../../../core/viewmodels/eligible_viewmodel.dart';
import '../registration/registration_screen.dart';


class EligibilityScreen extends StatefulWidget {
  const EligibilityScreen({Key? key}) : super(key: key);

  @override
  State<EligibilityScreen> createState() => _EligibilityScreenState();
}

class _EligibilityScreenState extends State<EligibilityScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ageController = TextEditingController();
  bool isFinished = false;

  @override
  void initState() {
    // TODO: implement initState
    final eligibleProvider = Provider.of<EligibilityScreenProvider>(
        context, listen: false);
    onWidgetDidBuild(() {
      eligibleProvider.checkEligibility(0);
      eligibleProvider.disposeProvider();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final eligibleProvider = Provider.of<EligibilityScreenProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Check Eligibility'),
          backgroundColor: Colors.greenAccent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context, false);
              }
          ),
        ),
        bottomNavigationBar: (eligibleProvider.isEligible == true)
            ? BottomAppBar(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: SwipeableButtonView(
                  buttonText: "SLIDE TO APPLY",
                  buttonWidget: Container(
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  activeColor: Colors.greenAccent,
                  isFinished: isFinished,
                  onWaitingProcess: () {
                    Future.delayed(const Duration(seconds: 2), () {
                      setState(() {
                        isFinished = true;
                      });
                    });
                  },
                  onFinish: () async {
                    await Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: const RegistrationScreen()));

                    setState(() {
                      isFinished = false;
                    });
                  })),
        )
            : const SizedBox(),
        body:
        Form(
          //key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (eligibleProvider.isEligible == null) ? Colors
                          .orangeAccent : eligibleProvider.isEligible ? Colors
                          .green : Colors.redAccent
                  ),
                  height: 50,
                  width: 50,
                ),

                const SizedBox(height: 16,),

                GestureDetector(
                  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                  child: TextFormField(
                    autofocus: false,
                    controller: ageController,
                    decoration: const InputDecoration(
                      hintText: "Give your age",
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: MaterialButton(
                    color: Colors.greenAccent,
                    textColor: Colors.white,
                    onPressed: () {
                      final int age = int.parse(ageController.text.trim());
                      eligibleProvider.checkEligibility(age);
                    },
                    child: const Text("Check"),
                  ),
                ),
                const SizedBox(height: 16,),

                Text(eligibleProvider.eligibilityMessage)

              ],
            ),
          ),
        )
    );
  }

  void onWidgetDidBuild(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }
}
