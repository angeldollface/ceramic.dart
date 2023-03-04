/*
CERAMIC.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing a file with 
/// layout variables so that
/// have more maintainable code.
import '../vars.dart';

/// Importing my library to do
/// IMEI validation.
import 'package:luhny/luhny.dart';

/// Importing our custom text widget
/// to give useful feedback to the user.
import '../components/text.dart';

/// Importing our custom input field
/// to get input from the user.
import '../components/input.dart';

/// Importing our custom button to do
/// something useful.
import '../components/button.dart';

/// Importing our custom spacer to use
/// whitespace wisely.
import '../components/vspacer.dart';

/// Importing our custom container to build
/// our feedback messages.
import '../components/ccontainer.dart';

/// Importing Flutter's API.
import 'package:flutter/material.dart';

/// The class containing the main widget.
/// This has to be stateful because data
/// will change.
class Home extends StatefulWidget{

    /// Setting up the state handler.
    HomeState createState(){
        return HomeState();
    }
}

/// Managing state in conjunction with
/// a widget tree.
class HomeState extends State<Home> {

    /// Our stateful data:
    /// user input
    /// and output.
    late String userInput;
    late String result;

    /// What should the stateful
    /// data start with?
    @override
    void initState(){
        this.result = '';
        this.userInput = '';
    }

    /// Returning our widget tree.
    @override
    Widget build(BuildContext context){
        TextEditingController controller = new TextEditingController();
        return Scaffold(
            backgroundColor: mainColor,

            /// No scrolling!
            body: new Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: new Center(
                    child: new Column(
                        children: <Widget> [

                            /// Fleshing out our layout with
                            /// whitespace.
                            new VerticalSpacer(
                                size: MediaQuery.of(
                                    context
                                ).size.height * stdSpacerSize
                            ),

                            /// Main container that constricts the 
                            /// horizontal span of the children.
                            new Container(
                                width: MediaQuery.of(context).size.width * widthFactor,
                                child: new Column(
                                    children: <Widget> [

                                        /// Heading text.
                                        new Padding(
                                            padding: EdgeInsets.only(
                                                top: stdPadding,
                                                bottom: nullPadding,
                                                left: nullPadding,
                                                right: nullPadding
                                            ),
                                            child: new Container(
                                                width: double.infinity,
                                                child: new Center(
                                                    child:new DollText(
                                                        content: appName,
                                                        color: accentColor,
                                                        fontSize: headingFontSize,
                                                        fontFamily: headingFont
                                                    )
                                                )
                                            )
                                        ),
                                        
                                        /// Getting user input.
                                        new Padding(
                                            padding: EdgeInsets.only(
                                                top: stdPadding,
                                                bottom: nullPadding,
                                                left: nullPadding,
                                                right: nullPadding
                                            ),
                                            child: new Container(
                                                width: double.infinity,
                                                child: new NumberInput(
                                                    padding: stdPadding,
                                                    radius: stdFontSize,
                                                    controller: controller,
                                                    backgroundColor: accentColor,
                                                    color: mainColor,
                                                    fontSize: stdFontSize,
                                                    fontFamily: contentFont,
                                                    borderSize: stdBorderSize,
                                                    inputCallback: () {
                                                        setState(
                                                            (){

                                                                /// Changing the state of the user's input
                                                                /// by capturing it.
                                                                userInput = controller.text;

                                                                /// Checking the user's input and updating the 
                                                                /// result accordingly.
                                                                if (isNumberSequence(userInput)){
                                                                    result = validateIMEI(userInput).toString();
                                                                }
                                                                else {
                                                                    result = 'Invalid input!';
                                                                }
                                                            }
                                                        );       
                                                    }
                                                )
                                            )
                                        ),

                                        /// Button to process input.
                                        new Padding(
                                            padding: EdgeInsets.only(
                                                top: stdPadding,
                                                bottom: nullPadding,
                                                left: nullPadding,
                                                right: nullPadding
                                            ),
                                            child: new Container(
                                                width: double.infinity,
                                                child: new DollButton(
                                                    borderSize: stdBorderSize,
                                                    padding: stdPadding,
                                                    triggerText: process,
                                                    color: accentColor,
                                                    backgroundColor: mainColor,
                                                    fontSize: stdFontSize,
                                                    fontFamily: contentFont,
                                                    elevation: stdElevation,
                                                    callback: () => {
                                                        setState(
                                                            (){

                                                                /// Changing the state of the user's input
                                                                /// by capturing it.
                                                                userInput = controller.text;

                                                                /// Checking the user's input and updating the 
                                                                /// result accordingly.
                                                                if (isNumberSequence(userInput)){
                                                                    result = validateIMEI(userInput).toString();
                                                                }
                                                                else {
                                                                    result = 'Invalid input!';
                                                                }
                                                            }
                                                        )
                                                    }
                                                )
                                            )
                                        ),

                                        /// Textual feedback widget.
                                        new Padding(
                                            padding: EdgeInsets.only(
                                                top: stdPadding,
                                                bottom: nullPadding,
                                                left: nullPadding,
                                                right: nullPadding
                                            ),
                                            child: new DollContainer(
                                                width: double.infinity,
                                                color: mainColor,
                                                radius: stdFontSize,
                                                borderSize: stdBorderSize,
                                                borderColor: accentColor,
                                                child: new Padding(
                                                    padding: EdgeInsets.all(
                                                        stdPadding
                                                    ),
                                                    child:new Column(
                                                        children: <Widget> [

                                                            /// Putting out the output from the
                                                            /// conversion.
                                                            new DollText(
                                                                content: 'Result: $result',
                                                                color: accentColor,
                                                                fontSize: stdFontSize,
                                                                fontFamily: contentFont
                                                            )
                                                        ]
                                                    )
                                                )
                                            )
                                        ),



                                    ]
                                )
                            )


                        ]
                    )
                )
            )
        );
    }
}