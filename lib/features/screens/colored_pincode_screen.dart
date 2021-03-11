import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_segment/flutter_segment.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fusecash/generated/i18n.dart';
import 'package:fusecash/models/app_state.dart';
import 'package:fusecash/redux/viewsmodels/backup.dart';
import 'package:fusecash/common/router/routes.gr.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ColoredPincodeScreen extends StatefulWidget {
  @override
  _ColoredPincodeScreenState createState() => _ColoredPincodeScreenState();
}

class _ColoredPincodeScreenState extends State<ColoredPincodeScreen> {
  final pincodeController = TextEditingController(text: "");
  String lastPincode;
  bool isRetype = false;
  bool showError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  // StreamController<ErrorAnimationType> errorController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Segment.screen(screenName: '/pincode-screen');
    return WillPopScope(
      onWillPop: () async {
        ExtendedNavigator.root.pop<bool>(false);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: SvgPicture.asset(
            'assets/images/fusecash.svg',
            width: 143,
            height: 28,
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.height * .5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            I18n.of(context).enter_pincode,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Theme.of(context).canvasColor,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          StoreConnector<AppState, LockScreenViewModel>(
                            converter: LockScreenViewModel.fromStore,
                            builder: (_, viewModel) => Form(
                              key: formKey,
                              child: Container(
                                width: 250,
                                child: PinCodeTextField(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  length: 6,
                                  showCursor: false,
                                  autoFocus: true,
                                  appContext: context,
                                  enableActiveFill: true,
                                  obscureText: true,
                                  enablePinAutofill: false,
                                  keyboardType: TextInputType.phone,
                                  animationType: AnimationType.fade,
                                  controller: pincodeController,
                                  // errorAnimationController: errorController,
                                  validator: (String value) =>
                                      value.length != 6 &&
                                              value == viewModel.pincode
                                          ? I18n.of(context).invalid_pincode
                                          : null,
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context).canvasColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  pinTheme: PinTheme(
                                    borderRadius: BorderRadius.circular(5),
                                    borderWidth: 4,
                                    fieldWidth: 35,
                                    shape: PinCodeFieldShape.underline,
                                    inactiveColor:
                                        Theme.of(context).canvasColor,
                                    inactiveFillColor:
                                        Theme.of(context).primaryColor,
                                    selectedFillColor:
                                        Theme.of(context).primaryColor,
                                    disabledColor:
                                        Theme.of(context).primaryColor,
                                    selectedColor:
                                        Theme.of(context).canvasColor,
                                    activeColor: Theme.of(context).canvasColor,
                                    activeFillColor:
                                        Theme.of(context).primaryColor,
                                  ),
                                  onCompleted: (value) {
                                    ExtendedNavigator.root
                                        .replace(Routes.homeScreen);
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      currentText = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}