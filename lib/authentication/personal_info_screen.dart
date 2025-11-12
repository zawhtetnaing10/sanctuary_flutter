import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sanctuary_flutter/core/utils/colors.dart';
import 'package:sanctuary_flutter/core/utils/dimens.dart';
import 'package:sanctuary_flutter/core/utils/images.dart';
import 'package:sanctuary_flutter/core/utils/strings.dart';
import 'package:sanctuary_flutter/core/widgets/common_appbar.dart';
import 'package:sanctuary_flutter/core/widgets/sanctuary_button.dart';
import 'package:sanctuary_flutter/core/widgets/sanctuary_text_field.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppbar(
        titleLabel: kPersonalInformation,
        onTapBack: () {
          context.pop();
        },
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            top: kMarginMedium3,
            left: kMarginMedium2,
            right: kMarginMedium2,
          ),
          child: Stack(
            children: [
              /// Body
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: AssetImage(kProfileSample),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: kMarginLarge),
                      child: SanctuaryTextField(
                        hint: "Full Name",
                        onChanged: (text) {},
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: kMarginLarge),
                      child: SanctuaryTextField(
                        hint: "Username",
                        onChanged: (text) {},
                      ),
                    ),

                    // TODO:- Implement a separate DOB field.
                    Padding(
                      padding: EdgeInsets.only(top: kMarginLarge),
                      child: SanctuaryTextField(
                        hint: "Date of Birth",
                        onChanged: (text) {},
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: kMarginLarge),
                      child: InterestsSelection(),
                    ),
                  ],
                ),
              ),

              /// Complete Sign Up Button
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kMarginMedium2,vertical: kMarginLarge),
                  child: SanctuaryButton.fullWidthPrimary(label: kCompleteSignUp, onTap: (){
                    // TODO: - Navigate to home
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/// Interest Selection
class InterestsSelection extends StatefulWidget {

  const InterestsSelection({super.key});

  @override
  State<InterestsSelection> createState() => _InterestsSelectionState();
}

class _InterestsSelectionState extends State<InterestsSelection> {
  final List<String> interests = [
    "Photography",
    "Travel",
    "Art",
    "Sports",
    "Reading",
    "Cooking",
    "Movies",
    "Gaming",
    "Fashion",
  ];

  List<String> selectedInterests = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            kInterests,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: kTextLarge),
          ),

          Padding(
            padding: EdgeInsets.only(top: kMarginMedium),
            child: Wrap(
              spacing: kMarginCardMedium2,
              children: interests
                  .map(
                    (interest) => FilterChip(
                      label: Text(interest),
                      backgroundColor: kChipBackgroundColor,
                      selectedColor: kChipBackgroundColor,
                      selected: selectedInterests.contains(interest),
                      onSelected: (isSelected) {
                        setState(() {
                          if(isSelected){
                            selectedInterests.add(interest);
                          } else {
                            selectedInterests.remove(interest);
                          }
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kMarginMedium2),
                      ),
                      side: BorderSide.none,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
