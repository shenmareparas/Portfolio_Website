import 'package:flutter/material.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/constants/text_styles.dart';
import 'package:portfolio/models/education.dart';
import 'package:portfolio/widgets/circle_widget.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class SkillsWidget extends StatefulWidget {
  const SkillsWidget({super.key});

  @override
  SkillsWidgetState createState() => SkillsWidgetState();
}

class SkillsWidgetState extends State<SkillsWidget> {
  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    Widget? child;

    if (ResponsiveWidget.isLargeScreen(context)) {
      child = _buildLargeScreenContent(context);
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      child = _buildMediumScreenContent(context);
    } else if (ResponsiveWidget.isSmallScreen(context)) {
      child = _buildSmallScreenContent(context);
    }

    return child!;
  }

  Widget _buildLargeScreenContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: MediaQuery.of(context).size.width * 0.16,
          top: MediaQuery.of(context).size.width * 0.10,
          child: const CircleWidget(
            width: 60,
            height: 60,
            outerRadius: 25.0,
            innerRadius: 8.0,
            circleColor: Color(0xFF0098a6),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.16,
          top: MediaQuery.of(context).size.width * 0.03,
          child: const CircleWidget(
            width: 40,
            height: 40,
            outerRadius: 15.0,
            innerRadius: 4.0,
            circleColor: Color(0xFF00bcd5),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.37,
          bottom: MediaQuery.of(context).size.width * 0.13,
          child: const CircleWidget(
            width: 50,
            height: 50,
            outerRadius: 20.0,
            innerRadius: 4.0,
            circleColor: Color(0xFFb2ebf2),
          ),
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: 50.0,
                        left: MediaQuery.of(context).size.width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buildSkillsList(context,
                            headingFontSize:
                                MediaQuery.of(context).size.width * 0.012),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        _buildEducation(
                            headingFontSize:
                                MediaQuery.of(context).size.width * 0.012),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      _buildSkills(
                          fontSize: MediaQuery.of(context).size.width * 0.12),
                      const CircleWidget(
                        width: 60,
                        height: 60,
                        outerRadius: 25.0,
                        innerRadius: 8.0,
                        circleColor: Color(0xFF0098a6),
                      ),
                      const SizedBox(width: 30.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildMediumScreenContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: MediaQuery.of(context).size.width * 0.40,
          top: MediaQuery.of(context).size.width * 0.30,
          child: const CircleWidget(
            width: 60,
            height: 60,
            outerRadius: 25.0,
            innerRadius: 8.0,
            circleColor: Color(0xFF0098a6),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.65,
          top: MediaQuery.of(context).size.width * 0.65,
          child: const CircleWidget(
            width: 40,
            height: 40,
            outerRadius: 15.0,
            innerRadius: 4.0,
            circleColor: Color(0xFF00bcd5),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.30,
          top: MediaQuery.of(context).size.width * 1.2,
          child: const CircleWidget(
            width: 50,
            height: 50,
            outerRadius: 20.0,
            innerRadius: 4.0,
            circleColor: Color(0xFFb2ebf2),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.20,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.17),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildSkills(
                      fontSize: MediaQuery.of(context).size.width * 0.23),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  _buildSkillsList(context,
                      headingFontSize:
                          MediaQuery.of(context).size.width * 0.022),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  _buildEducation(
                      headingFontSize:
                          MediaQuery.of(context).size.width * 0.022),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSmallScreenContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: MediaQuery.of(context).size.width * 0.20,
            top: MediaQuery.of(context).size.width * 0.30,
            child: const CircleWidget(
              width: 60,
              height: 60,
              outerRadius: 25.0,
              innerRadius: 8.0,
              circleColor: Color(0xFF0098a6),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.65,
            top: MediaQuery.of(context).size.width * 0.65,
            child: const CircleWidget(
              width: 40,
              height: 40,
              outerRadius: 15.0,
              innerRadius: 4.0,
              circleColor: Color(0xFF00bcd5),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildSkills(
                        fontSize: MediaQuery.of(context).size.width * 0.23),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    _buildEducation(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    _buildSkillsList(context),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.10),
              ],
            ),
          )
        ],
      ),
    );
  }

  // general widgets:-----------------------------------------------------------
  Widget _buildSkills({double? fontSize}) {
    return RichText(
      text: TextSpan(
        text: Strings.skills,
        style: TextStyles.subHeading.copyWith(
          fontSize: fontSize,
        ),
        children: <TextSpan>[
          TextSpan(
            text: ':',
            style: TextStyles.subHeading.copyWith(
              fontSize: fontSize,
              color: const Color(0xFFff5353),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsList(BuildContext context, {double? headingFontSize}) {
    final List<Widget> widgets = Strings.skillsList
        .map((skill) => Padding(
              padding: const EdgeInsets.only(right: 8, bottom: 8),
              child: _buildSkillChip(context, skill),
            ))
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildSkillsContainerHeading(fontSize: headingFontSize),
        const SizedBox(height: 8.0),
        Wrap(children: widgets),
      ],
    );
  }

  Widget _buildSkillsContainerHeading({double? fontSize}) {
    return Text(
      Strings.skillsIhave,
      style: TextStyles.body.copyWith(fontSize: fontSize),
    );
  }

  Widget _buildSkillChip(BuildContext context, String label) {
    return Chip(
      label: Text(
        label,
        style: TextStyles.chip.copyWith(
          fontSize: ResponsiveWidget.isSmallScreen(context) ? 10.0 : 11.0,
        ),
      ),
    );
  }

  Widget _buildEducation({double? headingFontSize}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildEducationContainerHeading(fontSize: headingFontSize),
        const SizedBox(height: 8.0),
        _buildEducationSummary(),
        const SizedBox(height: 8.0),
        _buildEducationTimeline(headingFontSize: headingFontSize)
      ],
    );
  }

  Widget _buildEducationContainerHeading({double? fontSize}) {
    return Text(
      Strings.experience,
      style: TextStyles.body.copyWith(fontSize: fontSize, color: Colors.white),
    );
  }

  Widget _buildEducationSummary() {
    return Text(
      Strings.experiencesubline,
      textAlign: TextAlign.justify,
      style: TextStyles.body,
    );
  }

  Widget _buildEducationTimeline({double? headingFontSize}) {
    final widgets = Strings.educationList
        .map(
          (education) => _buildEducationTile(
            education,
            headingFontSize: headingFontSize,
          ),
        )
        .toList();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: widgets,
    );
  }

  Widget _buildEducationTile(Education education, {double? headingFontSize}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            education.study,
            style: TextStyles.body.copyWith(
              color: Colors.white,
              fontSize: headingFontSize,
            ),
          ),
          Text(
            education.institute,
            style: TextStyles.body,
          ),
          Text(
            education.year,
            style: TextStyles.body,
          ),
          Text(
            education.grade,
            style: TextStyles.body,
          ),
        ],
      ),
    );
  }
}
