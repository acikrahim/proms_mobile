// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeHelper {
  InputDecoration textInputDecoration(
      [String lableText = "", String hintText = ""]) {
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.grey)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.grey.shade400)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
    );
  }

  BoxDecoration inputBoxDecorationShaddow() {
    return BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 20,
        offset: const Offset(0, 5),
      )
    ]);
  }

  BoxDecoration buttonBoxDecoration(BuildContext context,
      [String color1 = "", String color2 = ""]) {
    Color c1 = Theme.of(context).primaryColor;
    Color c2 = Theme.of(context).accentColor;
    if (color1.isEmpty == false) {
      c1 = HexColor(color1);
    }
    if (color2.isEmpty == false) {
      c2 = HexColor(color2);
    }

    return BoxDecoration(
      boxShadow: const [
        BoxShadow(color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: const [0.0, 1.0],
        colors: [
          c1,
          c2,
        ],
      ),
      color: Colors.deepPurple.shade300,
      borderRadius: BorderRadius.circular(30),
    );
  }

  ButtonStyle buttonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      minimumSize: MaterialStateProperty.all(Size(50, 50)),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
    );
  }

  AlertDialog alartDialog(String title, String content, BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black38)),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class SkylinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3348673, size.height * 0.7378813);
    path_0.lineTo(size.width * 0.3339542, size.height * 0.7364582);
    path_0.cubicTo(
        size.width * 0.3337715,
        size.height * 0.7349227,
        size.width * 0.3331982,
        size.height * 0.7336121,
        size.width * 0.3324059,
        size.height * 0.7328101);
    path_0.cubicTo(
        size.width * 0.3324059,
        size.height * 0.7322257,
        size.width * 0.3324059,
        size.height * 0.7315826,
        size.width * 0.3324059,
        size.height * 0.7309029);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.7309029);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.7294798);
    path_0.cubicTo(
        size.width * 0.3324059,
        size.height * 0.7284455,
        size.width * 0.3324059,
        size.height * 0.7273427,
        size.width * 0.3324059,
        size.height * 0.7261838);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.7261838);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.7247631);
    path_0.cubicTo(
        size.width * 0.3324059,
        size.height * 0.7236897,
        size.width * 0.3324059,
        size.height * 0.7225870,
        size.width * 0.3324059,
        size.height * 0.7214671);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.7214671);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.7200489);
    path_0.cubicTo(
        size.width * 0.3324059,
        size.height * 0.7189486,
        size.width * 0.3324059,
        size.height * 0.7178458,
        size.width * 0.3324059,
        size.height * 0.7167529);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.7167529);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.7153298);
    path_0.cubicTo(
        size.width * 0.3324059,
        size.height * 0.7142075,
        size.width * 0.3324059,
        size.height * 0.7131047,
        size.width * 0.3324059,
        size.height * 0.7120337);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.7120337);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.7106131);
    path_0.cubicTo(
        size.width * 0.3324059,
        size.height * 0.7094468,
        size.width * 0.3324059,
        size.height * 0.7083416,
        size.width * 0.3324059,
        size.height * 0.7073171);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.7073171);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.7058940);
    path_0.cubicTo(
        size.width * 0.3324059,
        size.height * 0.7045907,
        size.width * 0.3324059,
        size.height * 0.7034709,
        size.width * 0.3324059,
        size.height * 0.7026028);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.7026028);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.7011798);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.6978837);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.6978837);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.6964656);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.6931695);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.6931695);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.6917464);
    path_0.lineTo(size.width * 0.3324059, size.height * 0.6884504);
    path_0.lineTo(size.width * 0.3331297, size.height * 0.6884504);
    path_0.lineTo(size.width * 0.3323817, size.height * 0.6870298);
    path_0.cubicTo(
        size.width * 0.3322689,
        size.height * 0.6855431,
        size.width * 0.3317412,
        size.height * 0.6842619,
        size.width * 0.3309960,
        size.height * 0.6834941);
    path_0.cubicTo(
        size.width * 0.3309960,
        size.height * 0.6829195,
        size.width * 0.3309960,
        size.height * 0.6823327,
        size.width * 0.3309960,
        size.height * 0.6817336);
    path_0.lineTo(size.width * 0.3316633, size.height * 0.6817336);
    path_0.lineTo(size.width * 0.3309960, size.height * 0.6803105);
    path_0.cubicTo(
        size.width * 0.3309960,
        size.height * 0.6792249,
        size.width * 0.3309960,
        size.height * 0.6781197,
        size.width * 0.3309960,
        size.height * 0.6770145);
    path_0.lineTo(size.width * 0.3316660, size.height * 0.6770145);
    path_0.lineTo(size.width * 0.3309960, size.height * 0.6755963);
    path_0.cubicTo(
        size.width * 0.3309960,
        size.height * 0.6744642,
        size.width * 0.3309960,
        size.height * 0.6733566,
        size.width * 0.3309960,
        size.height * 0.6723003);
    path_0.lineTo(size.width * 0.3316660, size.height * 0.6723003);
    path_0.lineTo(size.width * 0.3309960, size.height * 0.6708796);
    path_0.cubicTo(
        size.width * 0.3309960,
        size.height * 0.6696473,
        size.width * 0.3309960,
        size.height * 0.6685348,
        size.width * 0.3309960,
        size.height * 0.6675836);
    path_0.lineTo(size.width * 0.3316660, size.height * 0.6675836);
    path_0.lineTo(size.width * 0.3309960, size.height * 0.6661605);
    path_0.lineTo(size.width * 0.3309960, size.height * 0.6628645);
    path_0.lineTo(size.width * 0.3316660, size.height * 0.6628645);
    path_0.lineTo(size.width * 0.3309960, size.height * 0.6614463);
    path_0.lineTo(size.width * 0.3309960, size.height * 0.6581503);
    path_0.lineTo(size.width * 0.3316660, size.height * 0.6581503);
    path_0.lineTo(size.width * 0.3309960, size.height * 0.6567321);
    path_0.lineTo(size.width * 0.3309960, size.height * 0.6534360);
    path_0.lineTo(size.width * 0.3316660, size.height * 0.6534360);
    path_0.lineTo(size.width * 0.3308885, size.height * 0.6520130);
    path_0.cubicTo(
        size.width * 0.3306092,
        size.height * 0.6504261,
        size.width * 0.3297807,
        size.height * 0.6492108,
        size.width * 0.3287575,
        size.height * 0.6489688);
    path_0.lineTo(size.width * 0.3288555, size.height * 0.6460028);
    path_0.lineTo(size.width * 0.3292839, size.height * 0.6460028);
    path_0.lineTo(size.width * 0.3288555, size.height * 0.6447558);
    path_0.lineTo(size.width * 0.3288555, size.height * 0.6412886);
    path_0.lineTo(size.width * 0.3292839, size.height * 0.6412886);
    path_0.lineTo(size.width * 0.3288555, size.height * 0.6400367);
    path_0.lineTo(size.width * 0.3288555, size.height * 0.6365695);
    path_0.lineTo(size.width * 0.3292839, size.height * 0.6365695);
    path_0.lineTo(size.width * 0.3288555, size.height * 0.6353225);
    path_0.lineTo(size.width * 0.3287683, size.height * 0.6318552);
    path_0.lineTo(size.width * 0.3292839, size.height * 0.6318552);
    path_0.lineTo(size.width * 0.3285145, size.height * 0.6304346);
    path_0.cubicTo(
        size.width * 0.3279680,
        size.height * 0.6283318,
        size.width * 0.3271650,
        size.height * 0.6279919,
        size.width * 0.3261082,
        size.height * 0.6279919);
    path_0.cubicTo(
        size.width * 0.3261901,
        size.height * 0.6275469,
        size.width * 0.3262384,
        size.height * 0.6270506,
        size.width * 0.3262693,
        size.height * 0.6265395);
    path_0.lineTo(size.width * 0.3268883, size.height * 0.6265395);
    path_0.lineTo(size.width * 0.3263029, size.height * 0.6251238);
    path_0.lineTo(size.width * 0.3263029, size.height * 0.6218228);
    path_0.lineTo(size.width * 0.3268883, size.height * 0.6218228);
    path_0.lineTo(size.width * 0.3263029, size.height * 0.6204096);
    path_0.lineTo(size.width * 0.3263029, size.height * 0.6171086);
    path_0.lineTo(size.width * 0.3268883, size.height * 0.6171086);
    path_0.lineTo(size.width * 0.3263029, size.height * 0.6156953);
    path_0.lineTo(size.width * 0.3262559, size.height * 0.6123944);
    path_0.lineTo(size.width * 0.3268883, size.height * 0.6123944);
    path_0.lineTo(size.width * 0.3260504, size.height * 0.6109713);
    path_0.cubicTo(
        size.width * 0.3257711,
        size.height * 0.6096999,
        size.width * 0.3252891,
        size.height * 0.6088441,
        size.width * 0.3247399,
        size.height * 0.6088441);
    path_0.lineTo(size.width * 0.3247399, size.height * 0.6076264);
    path_0.lineTo(size.width * 0.3253710, size.height * 0.6076264);
    path_0.lineTo(size.width * 0.3247399, size.height * 0.6062082);
    path_0.lineTo(size.width * 0.3247399, size.height * 0.6036237);
    path_0.lineTo(size.width * 0.3253710, size.height * 0.6036237);
    path_0.lineTo(size.width * 0.3245653, size.height * 0.6022055);
    path_0.cubicTo(
        size.width * 0.3243773,
        size.height * 0.6016187,
        size.width * 0.3240524,
        size.height * 0.6011688,
        size.width * 0.3236549,
        size.height * 0.6009609);
    path_0.lineTo(size.width * 0.3228895, size.height * 0.5997922);
    path_0.lineTo(size.width * 0.3228895, size.height * 0.5972101);
    path_0.lineTo(size.width * 0.3234776, size.height * 0.5972101);
    path_0.lineTo(size.width * 0.3227069, size.height * 0.5957870);
    path_0.cubicTo(
        size.width * 0.3225887,
        size.height * 0.5954447,
        size.width * 0.3224235,
        size.height * 0.5951464,
        size.width * 0.3222221,
        size.height * 0.5949214);
    path_0.lineTo(size.width * 0.3218273, size.height * 0.5938480);
    path_0.lineTo(size.width * 0.3218273, size.height * 0.5910581);
    path_0.lineTo(size.width * 0.3222221, size.height * 0.5910581);
    path_0.lineTo(size.width * 0.3210203, size.height * 0.5891778);
    path_0.lineTo(size.width * 0.3210203, size.height * 0.5875665);
    path_0.lineTo(size.width * 0.3213990, size.height * 0.5875665);
    path_0.lineTo(size.width * 0.3202522, size.height * 0.5853316);
    path_0.cubicTo(
        size.width * 0.3202522,
        size.height * 0.5844514,
        size.width * 0.3204711,
        size.height * 0.5825882,
        size.width * 0.3198333,
        size.height * 0.5822972);
    path_0.lineTo(size.width * 0.3198333, size.height * 0.5811700);
    path_0.cubicTo(
        size.width * 0.3212942,
        size.height * 0.5805881,
        size.width * 0.3213708,
        size.height * 0.5767272,
        size.width * 0.3199528,
        size.height * 0.5759276);
    path_0.lineTo(size.width * 0.3197339, size.height * 0.5471973);
    path_0.cubicTo(
        size.width * 0.3207719,
        size.height * 0.5464270,
        size.width * 0.3191713,
        size.height * 0.5445467,
        size.width * 0.3191713,
        size.height * 0.5463904);
    path_0.cubicTo(
        size.width * 0.3191713,
        size.height * 0.5467351,
        size.width * 0.3193740,
        size.height * 0.5471215,
        size.width * 0.3195392,
        size.height * 0.5472388);
    path_0.lineTo(size.width * 0.3192854, size.height * 0.5758347);
    path_0.cubicTo(
        size.width * 0.3176727,
        size.height * 0.5762797,
        size.width * 0.3176311,
        size.height * 0.5806345,
        size.width * 0.3192317,
        size.height * 0.5811822);
    path_0.lineTo(size.width * 0.3192317, size.height * 0.5822776);
    path_0.cubicTo(
        size.width * 0.3185281,
        size.height * 0.5825002,
        size.width * 0.3187684,
        size.height * 0.5845712,
        size.width * 0.3187684,
        size.height * 0.5854857);
    path_0.cubicTo(
        size.width * 0.3186113,
        size.height * 0.5856397,
        size.width * 0.3184784,
        size.height * 0.5858696,
        size.width * 0.3183831,
        size.height * 0.5861434);
    path_0.lineTo(size.width * 0.3177573, size.height * 0.5875616);
    path_0.lineTo(size.width * 0.3182206, size.height * 0.5875616);
    path_0.lineTo(size.width * 0.3182206, size.height * 0.5891191);
    path_0.cubicTo(
        size.width * 0.3176083,
        size.height * 0.5891191,
        size.width * 0.3165662,
        size.height * 0.5897891,
        size.width * 0.3165662,
        size.height * 0.5910532);
    path_0.lineTo(size.width * 0.3170215, size.height * 0.5910532);
    path_0.lineTo(size.width * 0.3170215, size.height * 0.5937820);
    path_0.lineTo(size.width * 0.3165662, size.height * 0.5946892);
    path_0.cubicTo(
        size.width * 0.3162520,
        size.height * 0.5949166,
        size.width * 0.3159956,
        size.height * 0.5953004,
        size.width * 0.3158344,
        size.height * 0.5957821);
    path_0.lineTo(size.width * 0.3151348, size.height * 0.5972052);
    path_0.lineTo(size.width * 0.3156437, size.height * 0.5972052);
    path_0.lineTo(size.width * 0.3156437, size.height * 0.5998729);
    path_0.lineTo(size.width * 0.3151348, size.height * 0.6009658);
    path_0.cubicTo(
        size.width * 0.3147468,
        size.height * 0.6011761,
        size.width * 0.3144299,
        size.height * 0.6016211,
        size.width * 0.3142459,
        size.height * 0.6022006);
    path_0.lineTo(size.width * 0.3134187, size.height * 0.6036188);
    path_0.lineTo(size.width * 0.3140713, size.height * 0.6036188);
    path_0.lineTo(size.width * 0.3140713, size.height * 0.6062033);
    path_0.lineTo(size.width * 0.3134187, size.height * 0.6076215);
    path_0.lineTo(size.width * 0.3140713, size.height * 0.6076215);
    path_0.lineTo(size.width * 0.3140713, size.height * 0.6088392);
    path_0.cubicTo(
        size.width * 0.3133395,
        size.height * 0.6088392,
        size.width * 0.3128319,
        size.height * 0.6093355,
        size.width * 0.3124734,
        size.height * 0.6109664);
    path_0.lineTo(size.width * 0.3115334, size.height * 0.6123895);
    path_0.lineTo(size.width * 0.3122679, size.height * 0.6123895);
    path_0.lineTo(size.width * 0.3122209, size.height * 0.6156856);
    path_0.lineTo(size.width * 0.3115334, size.height * 0.6171062);
    path_0.lineTo(size.width * 0.3122209, size.height * 0.6171062);
    path_0.lineTo(size.width * 0.3122209, size.height * 0.6204022);
    path_0.lineTo(size.width * 0.3115334, size.height * 0.6218204);
    path_0.lineTo(size.width * 0.3122209, size.height * 0.6218204);
    path_0.lineTo(size.width * 0.3122209, size.height * 0.6251164);
    path_0.lineTo(size.width * 0.3115334, size.height * 0.6265395);
    path_0.lineTo(size.width * 0.3122250, size.height * 0.6265395);
    path_0.lineTo(size.width * 0.3122317, size.height * 0.6279919);
    path_0.cubicTo(
        size.width * 0.3112273,
        size.height * 0.6279919,
        size.width * 0.3104646,
        size.height * 0.6284467,
        size.width * 0.3099476,
        size.height * 0.6304346);
    path_0.lineTo(size.width * 0.3091392, size.height * 0.6318552);
    path_0.lineTo(size.width * 0.3096951, size.height * 0.6318552);
    path_0.lineTo(size.width * 0.3096079, size.height * 0.6352784);
    path_0.lineTo(size.width * 0.3091406, size.height * 0.6365695);
    path_0.lineTo(size.width * 0.3096079, size.height * 0.6365695);
    path_0.lineTo(size.width * 0.3096079, size.height * 0.6399927);
    path_0.lineTo(size.width * 0.3091406, size.height * 0.6412861);
    path_0.lineTo(size.width * 0.3096079, size.height * 0.6412861);
    path_0.lineTo(size.width * 0.3096079, size.height * 0.6447093);
    path_0.lineTo(size.width * 0.3091406, size.height * 0.6460004);
    path_0.lineTo(size.width * 0.3096079, size.height * 0.6460004);
    path_0.lineTo(size.width * 0.3097059, size.height * 0.6489663);
    path_0.cubicTo(
        size.width * 0.3086854,
        size.height * 0.6492133,
        size.width * 0.3078595,
        size.height * 0.6504261,
        size.width * 0.3075816,
        size.height * 0.6520105);
    path_0.lineTo(size.width * 0.3067584, size.height * 0.6534336);
    path_0.lineTo(size.width * 0.3074728, size.height * 0.6534336);
    path_0.lineTo(size.width * 0.3074728, size.height * 0.6567296);
    path_0.lineTo(size.width * 0.3067584, size.height * 0.6581478);
    path_0.lineTo(size.width * 0.3074728, size.height * 0.6581478);
    path_0.lineTo(size.width * 0.3074728, size.height * 0.6614439);
    path_0.lineTo(size.width * 0.3067584, size.height * 0.6628620);
    path_0.lineTo(size.width * 0.3074728, size.height * 0.6628620);
    path_0.lineTo(size.width * 0.3074728, size.height * 0.6661581);
    path_0.lineTo(size.width * 0.3067584, size.height * 0.6675811);
    path_0.lineTo(size.width * 0.3074742, size.height * 0.6675811);
    path_0.cubicTo(
        size.width * 0.3074768,
        size.height * 0.6685323,
        size.width * 0.3074768,
        size.height * 0.6696473,
        size.width * 0.3074782,
        size.height * 0.6708772);
    path_0.lineTo(size.width * 0.3067584, size.height * 0.6722978);
    path_0.lineTo(size.width * 0.3074809, size.height * 0.6722978);
    path_0.cubicTo(
        size.width * 0.3074809,
        size.height * 0.6733541,
        size.width * 0.3074822,
        size.height * 0.6744569,
        size.width * 0.3074849,
        size.height * 0.6755939);
    path_0.lineTo(size.width * 0.3067584, size.height * 0.6770120);
    path_0.lineTo(size.width * 0.3074849, size.height * 0.6770120);
    path_0.cubicTo(
        size.width * 0.3074862,
        size.height * 0.6781148,
        size.width * 0.3074876,
        size.height * 0.6792200,
        size.width * 0.3074876,
        size.height * 0.6803081);
    path_0.lineTo(size.width * 0.3067611, size.height * 0.6817312);
    path_0.lineTo(size.width * 0.3074903, size.height * 0.6817312);
    path_0.cubicTo(
        size.width * 0.3074903,
        size.height * 0.6821273,
        size.width * 0.3074916,
        size.height * 0.6825209,
        size.width * 0.3074916,
        size.height * 0.6829073);
    path_0.cubicTo(
        size.width * 0.3063301,
        size.height * 0.6834256,
        size.width * 0.3054452,
        size.height * 0.6850443,
        size.width * 0.3052921,
        size.height * 0.6870273);
    path_0.lineTo(size.width * 0.3045616, size.height * 0.6884479);
    path_0.lineTo(size.width * 0.3052612, size.height * 0.6884479);
    path_0.lineTo(size.width * 0.3052612, size.height * 0.6917440);
    path_0.lineTo(size.width * 0.3045616, size.height * 0.6931671);
    path_0.lineTo(size.width * 0.3052612, size.height * 0.6931671);
    path_0.lineTo(size.width * 0.3052612, size.height * 0.6964631);
    path_0.lineTo(size.width * 0.3045616, size.height * 0.6978813);
    path_0.lineTo(size.width * 0.3052612, size.height * 0.6978813);
    path_0.lineTo(size.width * 0.3052612, size.height * 0.7011773);
    path_0.lineTo(size.width * 0.3045616, size.height * 0.7026004);
    path_0.lineTo(size.width * 0.3052612, size.height * 0.7026004);
    path_0.cubicTo(
        size.width * 0.3052626,
        size.height * 0.7034684,
        size.width * 0.3052626,
        size.height * 0.7045883,
        size.width * 0.3052652,
        size.height * 0.7058916);
    path_0.lineTo(size.width * 0.3045616, size.height * 0.7073146);
    path_0.lineTo(size.width * 0.3052652, size.height * 0.7073146);
    path_0.cubicTo(
        size.width * 0.3052666,
        size.height * 0.7083391,
        size.width * 0.3052666,
        size.height * 0.7094468,
        size.width * 0.3052693,
        size.height * 0.7106107);
    path_0.lineTo(size.width * 0.3045616, size.height * 0.7120313);
    path_0.lineTo(size.width * 0.3052706, size.height * 0.7120313);
    path_0.cubicTo(
        size.width * 0.3052706,
        size.height * 0.7130998,
        size.width * 0.3052733,
        size.height * 0.7142026,
        size.width * 0.3052733,
        size.height * 0.7153273);
    path_0.lineTo(size.width * 0.3045616, size.height * 0.7167504);
    path_0.lineTo(size.width * 0.3052746, size.height * 0.7167504);
    path_0.cubicTo(
        size.width * 0.3052746,
        size.height * 0.7178434,
        size.width * 0.3052760,
        size.height * 0.7189461,
        size.width * 0.3052787,
        size.height * 0.7200465);
    path_0.lineTo(size.width * 0.3045630, size.height * 0.7214646);
    path_0.lineTo(size.width * 0.3052787, size.height * 0.7214646);
    path_0.cubicTo(
        size.width * 0.3052800,
        size.height * 0.7225845,
        size.width * 0.3052800,
        size.height * 0.7236873,
        size.width * 0.3052827,
        size.height * 0.7247607);
    path_0.lineTo(size.width * 0.3045630, size.height * 0.7261813);
    path_0.lineTo(size.width * 0.3052827, size.height * 0.7261813);
    path_0.cubicTo(
        size.width * 0.3052840,
        size.height * 0.7273403,
        size.width * 0.3052867,
        size.height * 0.7284431,
        size.width * 0.3052867,
        size.height * 0.7294774);
    path_0.lineTo(size.width * 0.3045630, size.height * 0.7309004);
    path_0.lineTo(size.width * 0.3052881, size.height * 0.7309004);
    path_0.cubicTo(
        size.width * 0.3052881,
        size.height * 0.7315166,
        size.width * 0.3052881,
        size.height * 0.7321034,
        size.width * 0.3052908,
        size.height * 0.7326438);
    path_0.cubicTo(
        size.width * 0.3044045,
        size.height * 0.7334189,
        size.width * 0.3037533,
        size.height * 0.7348102,
        size.width * 0.3035559,
        size.height * 0.7364582);
    path_0.lineTo(size.width * 0.3028254, size.height * 0.7378813);
    path_0.lineTo(size.width * 0.3034874, size.height * 0.7378813);
    path_0.lineTo(size.width * 0.3034874, size.height * 0.7411773);
    path_0.lineTo(size.width * 0.3028254, size.height * 0.7425955);
    path_0.lineTo(size.width * 0.3034874, size.height * 0.7425955);
    path_0.lineTo(size.width * 0.3034874, size.height * 0.7458916);
    path_0.lineTo(size.width * 0.3028254, size.height * 0.7473146);
    path_0.lineTo(size.width * 0.3034874, size.height * 0.7473146);
    path_0.lineTo(size.width * 0.3034874, size.height * 0.7506058);
    path_0.lineTo(size.width * 0.3028254, size.height * 0.7520289);
    path_0.lineTo(size.width * 0.3034874, size.height * 0.7520289);
    path_0.lineTo(size.width * 0.3034874, size.height * 0.7553249);
    path_0.lineTo(size.width * 0.3028254, size.height * 0.7567455);
    path_0.lineTo(size.width * 0.3034887, size.height * 0.7567455);
    path_0.cubicTo(
        size.width * 0.3034887,
        size.height * 0.7577040,
        size.width * 0.3034887,
        size.height * 0.7588043,
        size.width * 0.3034887,
        size.height * 0.7600416);
    path_0.lineTo(size.width * 0.3028254, size.height * 0.7614646);
    path_0.lineTo(size.width * 0.3034887, size.height * 0.7614646);
    path_0.cubicTo(
        size.width * 0.3034887,
        size.height * 0.7624867,
        size.width * 0.3034887,
        size.height * 0.7635846,
        size.width * 0.3034887,
        size.height * 0.7647607);
    path_0.lineTo(size.width * 0.3028254, size.height * 0.7661789);
    path_0.lineTo(size.width * 0.3034887, size.height * 0.7661789);
    path_0.cubicTo(
        size.width * 0.3034887,
        size.height * 0.7672254,
        size.width * 0.3034901,
        size.height * 0.7683281,
        size.width * 0.3034901,
        size.height * 0.7694749);
    path_0.lineTo(size.width * 0.3028254, size.height * 0.7708955);
    path_0.lineTo(size.width * 0.3034901, size.height * 0.7708955);
    path_0.cubicTo(
        size.width * 0.3034901,
        size.height * 0.7718418,
        size.width * 0.3034901,
        size.height * 0.7728345,
        size.width * 0.3034901,
        size.height * 0.7738370);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7738370);
    path_0.cubicTo(
        size.width * 0.2741069,
        size.height * 0.7728345,
        size.width * 0.2741069,
        size.height * 0.7718418,
        size.width * 0.2741069,
        size.height * 0.7708955);
    path_0.lineTo(size.width * 0.2749516, size.height * 0.7708955);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7694749);
    path_0.cubicTo(
        size.width * 0.2741069,
        size.height * 0.7683306,
        size.width * 0.2741069,
        size.height * 0.7672254,
        size.width * 0.2741069,
        size.height * 0.7661789);
    path_0.lineTo(size.width * 0.2749516, size.height * 0.7661789);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7647607);
    path_0.cubicTo(
        size.width * 0.2741069,
        size.height * 0.7635846,
        size.width * 0.2741069,
        size.height * 0.7624891,
        size.width * 0.2741069,
        size.height * 0.7614646);
    path_0.lineTo(size.width * 0.2749516, size.height * 0.7614646);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7600416);
    path_0.cubicTo(
        size.width * 0.2741069,
        size.height * 0.7588068,
        size.width * 0.2741069,
        size.height * 0.7577040,
        size.width * 0.2741069,
        size.height * 0.7567455);
    path_0.lineTo(size.width * 0.2749516, size.height * 0.7567455);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7553249);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7520289);
    path_0.lineTo(size.width * 0.2749516, size.height * 0.7520289);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7506058);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7473146);
    path_0.lineTo(size.width * 0.2749516, size.height * 0.7473146);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7458916);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7425955);
    path_0.lineTo(size.width * 0.2749516, size.height * 0.7425955);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7411773);
    path_0.lineTo(size.width * 0.2741069, size.height * 0.7378813);
    path_0.lineTo(size.width * 0.2749516, size.height * 0.7378813);
    path_0.lineTo(size.width * 0.2740398, size.height * 0.7364582);
    path_0.cubicTo(
        size.width * 0.2738572,
        size.height * 0.7349227,
        size.width * 0.2732825,
        size.height * 0.7336121,
        size.width * 0.2724902,
        size.height * 0.7328101);
    path_0.cubicTo(
        size.width * 0.2724902,
        size.height * 0.7322257,
        size.width * 0.2724902,
        size.height * 0.7315826,
        size.width * 0.2724902,
        size.height * 0.7309029);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.7309029);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.7294798);
    path_0.cubicTo(
        size.width * 0.2724902,
        size.height * 0.7284455,
        size.width * 0.2724902,
        size.height * 0.7273427,
        size.width * 0.2724902,
        size.height * 0.7261838);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.7261838);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.7247631);
    path_0.cubicTo(
        size.width * 0.2724902,
        size.height * 0.7236897,
        size.width * 0.2724902,
        size.height * 0.7225870,
        size.width * 0.2724902,
        size.height * 0.7214671);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.7214671);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.7200489);
    path_0.cubicTo(
        size.width * 0.2724902,
        size.height * 0.7189486,
        size.width * 0.2724902,
        size.height * 0.7178458,
        size.width * 0.2724902,
        size.height * 0.7167529);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.7167529);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.7153298);
    path_0.cubicTo(
        size.width * 0.2724902,
        size.height * 0.7142075,
        size.width * 0.2724902,
        size.height * 0.7131047,
        size.width * 0.2724902,
        size.height * 0.7120337);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.7120337);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.7106131);
    path_0.cubicTo(
        size.width * 0.2724902,
        size.height * 0.7094468,
        size.width * 0.2724902,
        size.height * 0.7083416,
        size.width * 0.2724902,
        size.height * 0.7073171);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.7073171);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.7058940);
    path_0.cubicTo(
        size.width * 0.2724902,
        size.height * 0.7045907,
        size.width * 0.2724902,
        size.height * 0.7034709,
        size.width * 0.2724902,
        size.height * 0.7026028);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.7026028);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.7011798);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.6978837);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.6978837);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.6964656);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.6931695);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.6931695);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.6917464);
    path_0.lineTo(size.width * 0.2724902, size.height * 0.6884504);
    path_0.lineTo(size.width * 0.2732153, size.height * 0.6884504);
    path_0.lineTo(size.width * 0.2724660, size.height * 0.6870298);
    path_0.cubicTo(
        size.width * 0.2723519,
        size.height * 0.6855431,
        size.width * 0.2718242,
        size.height * 0.6842619,
        size.width * 0.2710789,
        size.height * 0.6834941);
    path_0.cubicTo(
        size.width * 0.2710789,
        size.height * 0.6829195,
        size.width * 0.2710789,
        size.height * 0.6823327,
        size.width * 0.2710789,
        size.height * 0.6817336);
    path_0.lineTo(size.width * 0.2717463, size.height * 0.6817336);
    path_0.lineTo(size.width * 0.2710789, size.height * 0.6803105);
    path_0.cubicTo(
        size.width * 0.2710789,
        size.height * 0.6792249,
        size.width * 0.2710789,
        size.height * 0.6781197,
        size.width * 0.2710789,
        size.height * 0.6770145);
    path_0.lineTo(size.width * 0.2717476, size.height * 0.6770145);
    path_0.lineTo(size.width * 0.2710789, size.height * 0.6755963);
    path_0.cubicTo(
        size.width * 0.2710789,
        size.height * 0.6744642,
        size.width * 0.2710789,
        size.height * 0.6733566,
        size.width * 0.2710789,
        size.height * 0.6723003);
    path_0.lineTo(size.width * 0.2717476, size.height * 0.6723003);
    path_0.lineTo(size.width * 0.2710789, size.height * 0.6708796);
    path_0.cubicTo(
        size.width * 0.2710789,
        size.height * 0.6696473,
        size.width * 0.2710789,
        size.height * 0.6685348,
        size.width * 0.2710789,
        size.height * 0.6675836);
    path_0.lineTo(size.width * 0.2717476, size.height * 0.6675836);
    path_0.lineTo(size.width * 0.2710789, size.height * 0.6661605);
    path_0.lineTo(size.width * 0.2710789, size.height * 0.6628645);
    path_0.lineTo(size.width * 0.2717476, size.height * 0.6628645);
    path_0.lineTo(size.width * 0.2710789, size.height * 0.6614463);
    path_0.lineTo(size.width * 0.2710789, size.height * 0.6581503);
    path_0.lineTo(size.width * 0.2717476, size.height * 0.6581503);
    path_0.lineTo(size.width * 0.2710789, size.height * 0.6567321);
    path_0.lineTo(size.width * 0.2710789, size.height * 0.6534360);
    path_0.lineTo(size.width * 0.2717476, size.height * 0.6534360);
    path_0.lineTo(size.width * 0.2709702, size.height * 0.6520130);
    path_0.cubicTo(
        size.width * 0.2706922,
        size.height * 0.6504261,
        size.width * 0.2698637,
        size.height * 0.6492108,
        size.width * 0.2688391,
        size.height * 0.6489688);
    path_0.lineTo(size.width * 0.2689372, size.height * 0.6460028);
    path_0.lineTo(size.width * 0.2693669, size.height * 0.6460028);
    path_0.lineTo(size.width * 0.2689372, size.height * 0.6447558);
    path_0.lineTo(size.width * 0.2689372, size.height * 0.6412886);
    path_0.lineTo(size.width * 0.2693669, size.height * 0.6412886);
    path_0.lineTo(size.width * 0.2689372, size.height * 0.6400367);
    path_0.lineTo(size.width * 0.2689372, size.height * 0.6365695);
    path_0.lineTo(size.width * 0.2693669, size.height * 0.6365695);
    path_0.lineTo(size.width * 0.2689372, size.height * 0.6353225);
    path_0.lineTo(size.width * 0.2688499, size.height * 0.6318552);
    path_0.lineTo(size.width * 0.2693669, size.height * 0.6318552);
    path_0.lineTo(size.width * 0.2685961, size.height * 0.6304346);
    path_0.cubicTo(
        size.width * 0.2680482,
        size.height * 0.6283294,
        size.width * 0.2672466,
        size.height * 0.6279919,
        size.width * 0.2661898,
        size.height * 0.6279919);
    path_0.cubicTo(
        size.width * 0.2662717,
        size.height * 0.6275469,
        size.width * 0.2663200,
        size.height * 0.6270506,
        size.width * 0.2663509,
        size.height * 0.6265395);
    path_0.lineTo(size.width * 0.2669713, size.height * 0.6265395);
    path_0.lineTo(size.width * 0.2663832, size.height * 0.6251238);
    path_0.lineTo(size.width * 0.2663832, size.height * 0.6218228);
    path_0.lineTo(size.width * 0.2669713, size.height * 0.6218228);
    path_0.lineTo(size.width * 0.2663832, size.height * 0.6204096);
    path_0.lineTo(size.width * 0.2663832, size.height * 0.6171086);
    path_0.lineTo(size.width * 0.2669713, size.height * 0.6171086);
    path_0.lineTo(size.width * 0.2663832, size.height * 0.6156953);
    path_0.lineTo(size.width * 0.2663375, size.height * 0.6123944);
    path_0.lineTo(size.width * 0.2669713, size.height * 0.6123944);
    path_0.lineTo(size.width * 0.2661334, size.height * 0.6109713);
    path_0.cubicTo(
        size.width * 0.2658541,
        size.height * 0.6096999,
        size.width * 0.2653707,
        size.height * 0.6088441,
        size.width * 0.2648201,
        size.height * 0.6088441);
    path_0.lineTo(size.width * 0.2648201, size.height * 0.6076264);
    path_0.lineTo(size.width * 0.2654526, size.height * 0.6076264);
    path_0.lineTo(size.width * 0.2648201, size.height * 0.6062082);
    path_0.lineTo(size.width * 0.2648201, size.height * 0.6036237);
    path_0.lineTo(size.width * 0.2654526, size.height * 0.6036237);
    path_0.lineTo(size.width * 0.2646456, size.height * 0.6022055);
    path_0.cubicTo(
        size.width * 0.2644589,
        size.height * 0.6016187,
        size.width * 0.2641326,
        size.height * 0.6011688,
        size.width * 0.2637365,
        size.height * 0.6009609);
    path_0.lineTo(size.width * 0.2629711, size.height * 0.5997922);
    path_0.lineTo(size.width * 0.2629711, size.height * 0.5972101);
    path_0.lineTo(size.width * 0.2635566, size.height * 0.5972101);
    path_0.lineTo(size.width * 0.2627858, size.height * 0.5957870);
    path_0.cubicTo(
        size.width * 0.2626703,
        size.height * 0.5954447,
        size.width * 0.2625038,
        size.height * 0.5951464,
        size.width * 0.2623037,
        size.height * 0.5949214);
    path_0.lineTo(size.width * 0.2619090, size.height * 0.5938480);
    path_0.lineTo(size.width * 0.2619090, size.height * 0.5910581);
    path_0.lineTo(size.width * 0.2623037, size.height * 0.5910581);
    path_0.lineTo(size.width * 0.2610992, size.height * 0.5891778);
    path_0.lineTo(size.width * 0.2610992, size.height * 0.5875665);
    path_0.lineTo(size.width * 0.2614793, size.height * 0.5875665);
    path_0.lineTo(size.width * 0.2603352, size.height * 0.5853316);
    path_0.cubicTo(
        size.width * 0.2603352,
        size.height * 0.5844489,
        size.width * 0.2605541,
        size.height * 0.5825882,
        size.width * 0.2599149,
        size.height * 0.5822972);
    path_0.lineTo(size.width * 0.2599149, size.height * 0.5811700);
    path_0.cubicTo(
        size.width * 0.2613772,
        size.height * 0.5805881,
        size.width * 0.2614524,
        size.height * 0.5767272,
        size.width * 0.2600344,
        size.height * 0.5759276);
    path_0.lineTo(size.width * 0.2598155, size.height * 0.5471973);
    path_0.cubicTo(
        size.width * 0.2608535,
        size.height * 0.5464246,
        size.width * 0.2592529,
        size.height * 0.5445492,
        size.width * 0.2592529,
        size.height * 0.5463904);
    path_0.cubicTo(
        size.width * 0.2592529,
        size.height * 0.5467351,
        size.width * 0.2594557,
        size.height * 0.5471215,
        size.width * 0.2596208,
        size.height * 0.5472388);
    path_0.lineTo(size.width * 0.2593684, size.height * 0.5758347);
    path_0.cubicTo(
        size.width * 0.2577530,
        size.height * 0.5762822,
        size.width * 0.2577114,
        size.height * 0.5806321,
        size.width * 0.2593120,
        size.height * 0.5811822);
    path_0.lineTo(size.width * 0.2593120, size.height * 0.5822776);
    path_0.cubicTo(
        size.width * 0.2586110,
        size.height * 0.5825002,
        size.width * 0.2588514,
        size.height * 0.5845736,
        size.width * 0.2588514,
        size.height * 0.5854857);
    path_0.cubicTo(
        size.width * 0.2586929,
        size.height * 0.5856397,
        size.width * 0.2585587,
        size.height * 0.5858696,
        size.width * 0.2584633,
        size.height * 0.5861434);
    path_0.lineTo(size.width * 0.2578376, size.height * 0.5875616);
    path_0.lineTo(size.width * 0.2582995, size.height * 0.5875616);
    path_0.lineTo(size.width * 0.2582995, size.height * 0.5891191);
    path_0.cubicTo(
        size.width * 0.2576872,
        size.height * 0.5891191,
        size.width * 0.2566452,
        size.height * 0.5897891,
        size.width * 0.2566452,
        size.height * 0.5910532);
    path_0.lineTo(size.width * 0.2571004, size.height * 0.5910532);
    path_0.lineTo(size.width * 0.2571004, size.height * 0.5937820);
    path_0.lineTo(size.width * 0.2566452, size.height * 0.5946892);
    path_0.cubicTo(
        size.width * 0.2563310,
        size.height * 0.5949166,
        size.width * 0.2560758,
        size.height * 0.5953004,
        size.width * 0.2559134,
        size.height * 0.5957821);
    path_0.lineTo(size.width * 0.2552151, size.height * 0.5972052);
    path_0.lineTo(size.width * 0.2557240, size.height * 0.5972052);
    path_0.lineTo(size.width * 0.2557240, size.height * 0.5998729);
    path_0.lineTo(size.width * 0.2552151, size.height * 0.6009658);
    path_0.cubicTo(
        size.width * 0.2548270,
        size.height * 0.6011761,
        size.width * 0.2545101,
        size.height * 0.6016211,
        size.width * 0.2543248,
        size.height * 0.6022006);
    path_0.lineTo(size.width * 0.2534977, size.height * 0.6036188);
    path_0.lineTo(size.width * 0.2541503, size.height * 0.6036188);
    path_0.lineTo(size.width * 0.2541503, size.height * 0.6062033);
    path_0.lineTo(size.width * 0.2534977, size.height * 0.6076215);
    path_0.lineTo(size.width * 0.2541503, size.height * 0.6076215);
    path_0.lineTo(size.width * 0.2541503, size.height * 0.6088392);
    path_0.cubicTo(
        size.width * 0.2534184,
        size.height * 0.6088392,
        size.width * 0.2529109,
        size.height * 0.6093355,
        size.width * 0.2525523,
        size.height * 0.6109664);
    path_0.lineTo(size.width * 0.2516124, size.height * 0.6123895);
    path_0.lineTo(size.width * 0.2523469, size.height * 0.6123895);
    path_0.lineTo(size.width * 0.2522999, size.height * 0.6156856);
    path_0.lineTo(size.width * 0.2516124, size.height * 0.6171062);
    path_0.lineTo(size.width * 0.2522999, size.height * 0.6171062);
    path_0.lineTo(size.width * 0.2522999, size.height * 0.6204022);
    path_0.lineTo(size.width * 0.2516124, size.height * 0.6218204);
    path_0.lineTo(size.width * 0.2522999, size.height * 0.6218204);
    path_0.lineTo(size.width * 0.2522999, size.height * 0.6251164);
    path_0.lineTo(size.width * 0.2516124, size.height * 0.6265395);
    path_0.lineTo(size.width * 0.2523039, size.height * 0.6265395);
    path_0.lineTo(size.width * 0.2523133, size.height * 0.6279919);
    path_0.cubicTo(
        size.width * 0.2513089,
        size.height * 0.6279919,
        size.width * 0.2505475,
        size.height * 0.6284443,
        size.width * 0.2500292,
        size.height * 0.6304346);
    path_0.lineTo(size.width * 0.2492182, size.height * 0.6318552);
    path_0.lineTo(size.width * 0.2497754, size.height * 0.6318552);
    path_0.lineTo(size.width * 0.2496881, size.height * 0.6352784);
    path_0.lineTo(size.width * 0.2492182, size.height * 0.6365695);
    path_0.lineTo(size.width * 0.2496881, size.height * 0.6365695);
    path_0.lineTo(size.width * 0.2496881, size.height * 0.6399927);
    path_0.lineTo(size.width * 0.2492182, size.height * 0.6412861);
    path_0.lineTo(size.width * 0.2496881, size.height * 0.6412861);
    path_0.lineTo(size.width * 0.2496881, size.height * 0.6447093);
    path_0.lineTo(size.width * 0.2492182, size.height * 0.6460004);
    path_0.lineTo(size.width * 0.2496881, size.height * 0.6460004);
    path_0.lineTo(size.width * 0.2497862, size.height * 0.6489663);
    path_0.cubicTo(
        size.width * 0.2487656,
        size.height * 0.6492133,
        size.width * 0.2479385,
        size.height * 0.6504261,
        size.width * 0.2476592,
        size.height * 0.6520105);
    path_0.lineTo(size.width * 0.2468387, size.height * 0.6534336);
    path_0.lineTo(size.width * 0.2475517, size.height * 0.6534336);
    path_0.lineTo(size.width * 0.2475517, size.height * 0.6567296);
    path_0.lineTo(size.width * 0.2468387, size.height * 0.6581478);
    path_0.lineTo(size.width * 0.2475517, size.height * 0.6581478);
    path_0.lineTo(size.width * 0.2475517, size.height * 0.6614439);
    path_0.lineTo(size.width * 0.2468387, size.height * 0.6628620);
    path_0.lineTo(size.width * 0.2475517, size.height * 0.6628620);
    path_0.lineTo(size.width * 0.2475531, size.height * 0.6661581);
    path_0.lineTo(size.width * 0.2468387, size.height * 0.6675811);
    path_0.lineTo(size.width * 0.2475544, size.height * 0.6675811);
    path_0.cubicTo(
        size.width * 0.2475544,
        size.height * 0.6685323,
        size.width * 0.2475558,
        size.height * 0.6696473,
        size.width * 0.2475558,
        size.height * 0.6708772);
    path_0.lineTo(size.width * 0.2468374, size.height * 0.6722978);
    path_0.lineTo(size.width * 0.2475571, size.height * 0.6722978);
    path_0.cubicTo(
        size.width * 0.2475585,
        size.height * 0.6733541,
        size.width * 0.2475585,
        size.height * 0.6744569,
        size.width * 0.2475598,
        size.height * 0.6755939);
    path_0.lineTo(size.width * 0.2468360, size.height * 0.6770120);
    path_0.lineTo(size.width * 0.2475611, size.height * 0.6770120);
    path_0.cubicTo(
        size.width * 0.2475611,
        size.height * 0.6781148,
        size.width * 0.2475638,
        size.height * 0.6792200,
        size.width * 0.2475652,
        size.height * 0.6803081);
    path_0.lineTo(size.width * 0.2468374, size.height * 0.6817312);
    path_0.lineTo(size.width * 0.2475665, size.height * 0.6817312);
    path_0.cubicTo(
        size.width * 0.2475665,
        size.height * 0.6821273,
        size.width * 0.2475665,
        size.height * 0.6825209,
        size.width * 0.2475665,
        size.height * 0.6829073);
    path_0.cubicTo(
        size.width * 0.2464050,
        size.height * 0.6834256,
        size.width * 0.2455214,
        size.height * 0.6850443,
        size.width * 0.2453697,
        size.height * 0.6870273);
    path_0.lineTo(size.width * 0.2446365, size.height * 0.6884479);
    path_0.lineTo(size.width * 0.2453361, size.height * 0.6884479);
    path_0.lineTo(size.width * 0.2453361, size.height * 0.6917440);
    path_0.lineTo(size.width * 0.2446365, size.height * 0.6931671);
    path_0.lineTo(size.width * 0.2453361, size.height * 0.6931671);
    path_0.lineTo(size.width * 0.2453361, size.height * 0.6964631);
    path_0.lineTo(size.width * 0.2446365, size.height * 0.6978813);
    path_0.lineTo(size.width * 0.2453361, size.height * 0.6978813);
    path_0.lineTo(size.width * 0.2453361, size.height * 0.7011773);
    path_0.lineTo(size.width * 0.2446365, size.height * 0.7026004);
    path_0.lineTo(size.width * 0.2453375, size.height * 0.7026004);
    path_0.cubicTo(
        size.width * 0.2453375,
        size.height * 0.7034684,
        size.width * 0.2453402,
        size.height * 0.7045883,
        size.width * 0.2453402,
        size.height * 0.7058916);
    path_0.lineTo(size.width * 0.2446365, size.height * 0.7073146);
    path_0.lineTo(size.width * 0.2453415, size.height * 0.7073146);
    path_0.cubicTo(
        size.width * 0.2453415,
        size.height * 0.7083391,
        size.width * 0.2453428,
        size.height * 0.7094468,
        size.width * 0.2453428,
        size.height * 0.7106107);
    path_0.lineTo(size.width * 0.2446365, size.height * 0.7120313);
    path_0.lineTo(size.width * 0.2453455, size.height * 0.7120313);
    path_0.cubicTo(
        size.width * 0.2453469,
        size.height * 0.7130998,
        size.width * 0.2453469,
        size.height * 0.7142026,
        size.width * 0.2453496,
        size.height * 0.7153273);
    path_0.lineTo(size.width * 0.2446365, size.height * 0.7167504);
    path_0.lineTo(size.width * 0.2453496, size.height * 0.7167504);
    path_0.cubicTo(
        size.width * 0.2453522,
        size.height * 0.7178434,
        size.width * 0.2453522,
        size.height * 0.7189461,
        size.width * 0.2453536,
        size.height * 0.7200465);
    path_0.lineTo(size.width * 0.2446379, size.height * 0.7214646);
    path_0.lineTo(size.width * 0.2453563, size.height * 0.7214646);
    path_0.cubicTo(
        size.width * 0.2453563,
        size.height * 0.7225845,
        size.width * 0.2453590,
        size.height * 0.7236873,
        size.width * 0.2453590,
        size.height * 0.7247607);
    path_0.lineTo(size.width * 0.2446392, size.height * 0.7261813);
    path_0.lineTo(size.width * 0.2453603, size.height * 0.7261813);
    path_0.cubicTo(
        size.width * 0.2453616,
        size.height * 0.7273403,
        size.width * 0.2453616,
        size.height * 0.7284431,
        size.width * 0.2453643,
        size.height * 0.7294774);
    path_0.lineTo(size.width * 0.2446392, size.height * 0.7309004);
    path_0.lineTo(size.width * 0.2453643, size.height * 0.7309004);
    path_0.cubicTo(
        size.width * 0.2453670,
        size.height * 0.7315166,
        size.width * 0.2453670,
        size.height * 0.7321034,
        size.width * 0.2453670,
        size.height * 0.7326438);
    path_0.cubicTo(
        size.width * 0.2444821,
        size.height * 0.7334189,
        size.width * 0.2438295,
        size.height * 0.7348102,
        size.width * 0.2436308,
        size.height * 0.7364582);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7378813);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7378813);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7411773);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7425955);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7425955);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7458916);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7473146);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7473146);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7506058);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7520289);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7520289);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7553249);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7567455);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7567455);
    path_0.cubicTo(
        size.width * 0.2435636,
        size.height * 0.7577040,
        size.width * 0.2435636,
        size.height * 0.7588043,
        size.width * 0.2435636,
        size.height * 0.7600416);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7614646);
    path_0.lineTo(size.width * 0.2435636, size.height * 0.7614646);
    path_0.cubicTo(
        size.width * 0.2435636,
        size.height * 0.7624867,
        size.width * 0.2435636,
        size.height * 0.7635846,
        size.width * 0.2435663,
        size.height * 0.7647607);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7661789);
    path_0.lineTo(size.width * 0.2435663, size.height * 0.7661789);
    path_0.cubicTo(
        size.width * 0.2435663,
        size.height * 0.7672254,
        size.width * 0.2435663,
        size.height * 0.7683281,
        size.width * 0.2435663,
        size.height * 0.7694749);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7708955);
    path_0.lineTo(size.width * 0.2435663, size.height * 0.7708955);
    path_0.cubicTo(
        size.width * 0.2435663,
        size.height * 0.7719592,
        size.width * 0.2435663,
        size.height * 0.7730546,
        size.width * 0.2435663,
        size.height * 0.7741916);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7756146);
    path_0.lineTo(size.width * 0.2435677, size.height * 0.7756146);
    path_0.cubicTo(
        size.width * 0.2435677,
        size.height * 0.7766832,
        size.width * 0.2435677,
        size.height * 0.7777810,
        size.width * 0.2435677,
        size.height * 0.7789107);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7803289);
    path_0.lineTo(size.width * 0.2435677, size.height * 0.7803289);
    path_0.cubicTo(
        size.width * 0.2435677,
        size.height * 0.7814072,
        size.width * 0.2435677,
        size.height * 0.7825026,
        size.width * 0.2435677,
        size.height * 0.7836249);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7850431);
    path_0.lineTo(size.width * 0.2435690, size.height * 0.7850431);
    path_0.cubicTo(
        size.width * 0.2435690,
        size.height * 0.7861238,
        size.width * 0.2435690,
        size.height * 0.7872217,
        size.width * 0.2435690,
        size.height * 0.7883391);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7897622);
    path_0.lineTo(size.width * 0.2435690, size.height * 0.7897622);
    path_0.cubicTo(
        size.width * 0.2435690,
        size.height * 0.7908454,
        size.width * 0.2435690,
        size.height * 0.7919408,
        size.width * 0.2435690,
        size.height * 0.7930583);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7944789);
    path_0.lineTo(size.width * 0.2435690, size.height * 0.7944789);
    path_0.cubicTo(
        size.width * 0.2435690,
        size.height * 0.7955645,
        size.width * 0.2435717,
        size.height * 0.7966599,
        size.width * 0.2435717,
        size.height * 0.7977749);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.7991980);
    path_0.lineTo(size.width * 0.2435717, size.height * 0.7991980);
    path_0.cubicTo(
        size.width * 0.2435717,
        size.height * 0.8002812,
        size.width * 0.2435717,
        size.height * 0.8013839,
        size.width * 0.2435717,
        size.height * 0.8024891);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8039122);
    path_0.lineTo(size.width * 0.2435717, size.height * 0.8039122);
    path_0.cubicTo(
        size.width * 0.2435717,
        size.height * 0.8049979,
        size.width * 0.2435717,
        size.height * 0.8060982,
        size.width * 0.2435717,
        size.height * 0.8072083);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8086289);
    path_0.lineTo(size.width * 0.2435730, size.height * 0.8086289);
    path_0.cubicTo(
        size.width * 0.2435730,
        size.height * 0.8097194,
        size.width * 0.2435730,
        size.height * 0.8108173,
        size.width * 0.2435730,
        size.height * 0.8119249);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8133480);
    path_0.lineTo(size.width * 0.2435730, size.height * 0.8133480);
    path_0.cubicTo(
        size.width * 0.2435730,
        size.height * 0.8144385,
        size.width * 0.2435730,
        size.height * 0.8155364,
        size.width * 0.2435730,
        size.height * 0.8166440);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8180647);
    path_0.lineTo(size.width * 0.2435730, size.height * 0.8180647);
    path_0.cubicTo(
        size.width * 0.2435730,
        size.height * 0.8191577,
        size.width * 0.2435757,
        size.height * 0.8202531,
        size.width * 0.2435757,
        size.height * 0.8213607);
    path_0.lineTo(size.width * 0.2429016, size.height * 0.8227789);
    path_0.lineTo(size.width * 0.2435757, size.height * 0.8227789);
    path_0.cubicTo(
        size.width * 0.2435757,
        size.height * 0.8238719,
        size.width * 0.2435757,
        size.height * 0.8249722,
        size.width * 0.2435757,
        size.height * 0.8260749);
    path_0.lineTo(size.width * 0.2429016, size.height * 0.8274980);
    path_0.lineTo(size.width * 0.2435757, size.height * 0.8274980);
    path_0.cubicTo(
        size.width * 0.2435757,
        size.height * 0.8285910,
        size.width * 0.2435771,
        size.height * 0.8296913,
        size.width * 0.2435771,
        size.height * 0.8307941);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8322147);
    path_0.lineTo(size.width * 0.2435771, size.height * 0.8322147);
    path_0.cubicTo(
        size.width * 0.2435771,
        size.height * 0.8333101,
        size.width * 0.2435771,
        size.height * 0.8344055,
        size.width * 0.2435771,
        size.height * 0.8355107);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8369289);
    path_0.lineTo(size.width * 0.2435771, size.height * 0.8369289);
    path_0.cubicTo(
        size.width * 0.2435771,
        size.height * 0.8380243,
        size.width * 0.2435771,
        size.height * 0.8391246,
        size.width * 0.2435771,
        size.height * 0.8402250);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8416480);
    path_0.lineTo(size.width * 0.2435784, size.height * 0.8416480);
    path_0.cubicTo(
        size.width * 0.2435784,
        size.height * 0.8427434,
        size.width * 0.2435784,
        size.height * 0.8438413,
        size.width * 0.2435784,
        size.height * 0.8449441);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8463622);
    path_0.lineTo(size.width * 0.2435784, size.height * 0.8463622);
    path_0.cubicTo(
        size.width * 0.2435784,
        size.height * 0.8474577,
        size.width * 0.2435784,
        size.height * 0.8485580,
        size.width * 0.2435784,
        size.height * 0.8496583);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8510789);
    path_0.lineTo(size.width * 0.2435784, size.height * 0.8510789);
    path_0.cubicTo(
        size.width * 0.2435797,
        size.height * 0.8521792,
        size.width * 0.2435797,
        size.height * 0.8532771,
        size.width * 0.2435797,
        size.height * 0.8543750);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8557980);
    path_0.lineTo(size.width * 0.2435797, size.height * 0.8557980);
    path_0.cubicTo(
        size.width * 0.2435797,
        size.height * 0.8568935,
        size.width * 0.2435797,
        size.height * 0.8579938,
        size.width * 0.2435797,
        size.height * 0.8590941);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8605123);
    path_0.lineTo(size.width * 0.2435797, size.height * 0.8605123);
    path_0.cubicTo(
        size.width * 0.2435797,
        size.height * 0.8616126,
        size.width * 0.2435797,
        size.height * 0.8627129,
        size.width * 0.2435824,
        size.height * 0.8638083);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8652314);
    path_0.lineTo(size.width * 0.2435824, size.height * 0.8652314);
    path_0.cubicTo(
        size.width * 0.2435824,
        size.height * 0.8663268,
        size.width * 0.2435824,
        size.height * 0.8674271,
        size.width * 0.2435824,
        size.height * 0.8685225);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8699456);
    path_0.lineTo(size.width * 0.2435824, size.height * 0.8699456);
    path_0.cubicTo(
        size.width * 0.2435824,
        size.height * 0.8710459,
        size.width * 0.2435824,
        size.height * 0.8721438,
        size.width * 0.2435838,
        size.height * 0.8732416);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8746623);
    path_0.lineTo(size.width * 0.2435838, size.height * 0.8746623);
    path_0.cubicTo(
        size.width * 0.2435838,
        size.height * 0.8757650,
        size.width * 0.2435838,
        size.height * 0.8768604,
        size.width * 0.2435838,
        size.height * 0.8779583);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8793814);
    path_0.lineTo(size.width * 0.2435838, size.height * 0.8793814);
    path_0.cubicTo(
        size.width * 0.2435838,
        size.height * 0.8804817,
        size.width * 0.2435838,
        size.height * 0.8815796,
        size.width * 0.2435838,
        size.height * 0.8826774);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8840956);
    path_0.lineTo(size.width * 0.2435851, size.height * 0.8840956);
    path_0.cubicTo(
        size.width * 0.2435851,
        size.height * 0.8851984,
        size.width * 0.2435851,
        size.height * 0.8862938,
        size.width * 0.2435851,
        size.height * 0.8873916);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8888123);
    path_0.lineTo(size.width * 0.2435851, size.height * 0.8888123);
    path_0.cubicTo(
        size.width * 0.2435851,
        size.height * 0.8899150,
        size.width * 0.2435851,
        size.height * 0.8910153,
        size.width * 0.2435851,
        size.height * 0.8921083);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8935314);
    path_0.lineTo(size.width * 0.2435851, size.height * 0.8935314);
    path_0.cubicTo(
        size.width * 0.2435851,
        size.height * 0.8946341,
        size.width * 0.2435878,
        size.height * 0.8957345,
        size.width * 0.2435878,
        size.height * 0.8968274);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.8982456);
    path_0.lineTo(size.width * 0.2435878, size.height * 0.8982456);
    path_0.cubicTo(
        size.width * 0.2435878,
        size.height * 0.8993508,
        size.width * 0.2435878,
        size.height * 0.9004487,
        size.width * 0.2435878,
        size.height * 0.9015417);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.9029598);
    path_0.lineTo(size.width * 0.2435878, size.height * 0.9029598);
    path_0.cubicTo(
        size.width * 0.2435878,
        size.height * 0.9040650,
        size.width * 0.2435878,
        size.height * 0.9051654,
        size.width * 0.2435878,
        size.height * 0.9062559);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.9076790);
    path_0.lineTo(size.width * 0.2435891, size.height * 0.9076790);
    path_0.cubicTo(
        size.width * 0.2435891,
        size.height * 0.9087842,
        size.width * 0.2435891,
        size.height * 0.9098845,
        size.width * 0.2435891,
        size.height * 0.9109750);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.9123932);
    path_0.lineTo(size.width * 0.2435891, size.height * 0.9123932);
    path_0.cubicTo(
        size.width * 0.2435891,
        size.height * 0.9135033,
        size.width * 0.2435891,
        size.height * 0.9146011,
        size.width * 0.2435891,
        size.height * 0.9156892);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.9171123);
    path_0.lineTo(size.width * 0.2435918, size.height * 0.9171123);
    path_0.cubicTo(
        size.width * 0.2435918,
        size.height * 0.9182175,
        size.width * 0.2435918,
        size.height * 0.9193203,
        size.width * 0.2435918,
        size.height * 0.9204034);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.9218265);
    path_0.lineTo(size.width * 0.2435918, size.height * 0.9218265);
    path_0.cubicTo(
        size.width * 0.2435918,
        size.height * 0.9229391,
        size.width * 0.2435918,
        size.height * 0.9240345,
        size.width * 0.2435918,
        size.height * 0.9251226);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.9265432);
    path_0.lineTo(size.width * 0.2435918, size.height * 0.9265432);
    path_0.cubicTo(
        size.width * 0.2435932,
        size.height * 0.9276582,
        size.width * 0.2435932,
        size.height * 0.9287560,
        size.width * 0.2435932,
        size.height * 0.9298392);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.9312623);
    path_0.lineTo(size.width * 0.2435932, size.height * 0.9312623);
    path_0.cubicTo(
        size.width * 0.2435932,
        size.height * 0.9323773,
        size.width * 0.2435932,
        size.height * 0.9334776,
        size.width * 0.2435932,
        size.height * 0.9345583);
    path_0.lineTo(size.width * 0.2429003, size.height * 0.9359790);
    path_0.lineTo(size.width * 0.2435932, size.height * 0.9359790);
    path_0.cubicTo(
        size.width * 0.2435932,
        size.height * 0.9371013,
        size.width * 0.2435932,
        size.height * 0.9381967,
        size.width * 0.2435959,
        size.height * 0.9392750);
    path_0.lineTo(size.width * 0.2429016, size.height * 0.9406932);
    path_0.lineTo(size.width * 0.2435959, size.height * 0.9406932);
    path_0.cubicTo(
        size.width * 0.2435959,
        size.height * 0.9418228,
        size.width * 0.2435959,
        size.height * 0.9429183,
        size.width * 0.2435959,
        size.height * 0.9439892);
    path_0.lineTo(size.width * 0.2429016, size.height * 0.9454123);
    path_0.lineTo(size.width * 0.2435959, size.height * 0.9454123);
    path_0.cubicTo(
        size.width * 0.2435959,
        size.height * 0.9465444,
        size.width * 0.2435959,
        size.height * 0.9476447,
        size.width * 0.2435959,
        size.height * 0.9487084);
    path_0.lineTo(size.width * 0.2429016, size.height * 0.9501290);
    path_0.lineTo(size.width * 0.2435985, size.height * 0.9501290);
    path_0.cubicTo(
        size.width * 0.2435985,
        size.height * 0.9512733,
        size.width * 0.2435985,
        size.height * 0.9523785,
        size.width * 0.2435985,
        size.height * 0.9534250);
    path_0.lineTo(size.width * 0.2429016, size.height * 0.9548432);
    path_0.lineTo(size.width * 0.2435985, size.height * 0.9548432);
    path_0.cubicTo(
        size.width * 0.2435985,
        size.height * 0.9560144,
        size.width * 0.2435985,
        size.height * 0.9571147,
        size.width * 0.2435985,
        size.height * 0.9581393);
    path_0.lineTo(size.width * 0.2429016, size.height * 0.9595623);
    path_0.lineTo(size.width * 0.2435999, size.height * 0.9595623);
    path_0.lineTo(size.width * 0.2435999, size.height * 0.9724555);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9724555);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9207947);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9207947);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9197433);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9197433);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9171808);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9171808);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9161342);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9161342);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9135693);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9135693);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9125228);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9125228);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9099578);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9099578);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9089113);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9089113);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9063488);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9063488);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9052974);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9052974);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9027349);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9027349);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.9016884);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.9016884);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8991234);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8991234);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8980769);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8980769);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8955120);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8955120);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8944654);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8944654);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8919029);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8919029);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8908540);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8908540);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8882915);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8882915);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8872449);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8872449);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8846800);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8846800);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8836335);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8836335);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8810685);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8810685);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8800220);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8800220);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8774595);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8774595);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8764081);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8764081);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8738456);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8738456);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8727991);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8727991);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8702341);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8702341);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8691876);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8691876);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8666227);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8666227);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8655761);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8655761);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8630136);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8630136);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8619622);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8619622);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8593997);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8593997);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8583532);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8583532);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8557883);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8557883);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8547417);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8547417);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8521768);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8521768);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8511303);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8511303);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8485678);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8485678);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8475164);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8475164);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8449538);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8449538);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8439073);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8439073);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8413424);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8413424);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8402959);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8402959);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8377309);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8377309);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8366844);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8366844);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8341219);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8341219);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8330729);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8330729);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8305104);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8305104);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8294639);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8294639);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8268990);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8268990);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8258524);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8258524);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8232875);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8232875);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8222410);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8222410);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8196785);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8196785);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8186271);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8186271);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8160646);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8160646);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8150180);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8150180);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8124531);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8124531);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8114066);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8114066);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8088416);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8088416);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8077951);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8077951);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8052326);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8052326);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8041812);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8041812);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8016187);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8016187);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.8005722);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.8005722);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7980072);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7980072);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7969607);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7969607);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7943957);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7943957);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7933492);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7933492);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7907867);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7907867);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7897378);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7897378);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7871753);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7871753);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7861287);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7861287);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7835638);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7835638);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7825173);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7825173);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7799523);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7799523);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7789058);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7789058);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7763433);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7763433);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7752919);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7752919);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7727294);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7727294);
    path_0.lineTo(size.width * 0.2363139, size.height * 0.7716829);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7716829);
    path_0.lineTo(size.width * 0.2358157, size.height * 0.7509359);
    path_0.lineTo(size.width * 0.2367530, size.height * 0.7509359);
    path_0.lineTo(size.width * 0.2367530, size.height * 0.7472388);
    path_0.lineTo(size.width * 0.2146988, size.height * 0.7472388);
    path_0.lineTo(size.width * 0.2146988, size.height * 0.7509359);
    path_0.lineTo(size.width * 0.2153850, size.height * 0.7509359);
    path_0.lineTo(size.width * 0.2153850, size.height * 0.7581295);
    path_0.lineTo(size.width * 0.2143309, size.height * 0.7581295);
    path_0.lineTo(size.width * 0.2143309, size.height * 0.7699468);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7699468);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7828498);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7828498);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7838963);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7838963);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7864613);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7864613);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7875078);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7875078);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7900703);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7900703);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7911193);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7911193);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7936818);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7936818);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7947283);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7947283);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7972932);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7972932);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.7983398);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.7983398);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8009047);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8009047);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8019512);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8019512);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8045137);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8045137);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8055651);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8055651);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8081276);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8081276);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8091742);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8091742);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8117391);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8117391);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8127856);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8127856);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8153506);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8153506);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8163971);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8163971);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8189596);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8189596);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8200110);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8200110);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8225735);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8225735);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8236200);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8236200);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8261850);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8261850);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8272315);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8272315);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8297964);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8297964);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8308430);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8308430);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8334055);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8334055);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8344544);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8344544);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8370169);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8370169);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8380635);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8380635);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8406284);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8406284);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8416749);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8416749);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8442399);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8442399);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8452864);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8452864);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8478489);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8478489);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8488979);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8488979);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8514604);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8514604);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8525069);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8525069);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8550718);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8550718);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8561183);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8561183);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8586833);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8586833);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8597298);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8597298);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8622923);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8622923);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8633437);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8633437);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8659062);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8659062);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8669527);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8669527);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8695177);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8695177);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8705642);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8705642);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8731292);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8731292);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8741757);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8741757);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8767382);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8767382);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8777872);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8777872);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8803497);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8803497);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8813962);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8813962);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8839611);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8839611);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8850076);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8850076);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8875726);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8875726);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8886191);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8886191);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8911816);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8911816);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8922306);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8922306);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8947931);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8947931);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8958396);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8958396);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8984045);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8984045);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.8994511);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.8994511);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9020160);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9020160);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9030625);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9030625);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9056250);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9056250);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9066740);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9066740);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9092365);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9092365);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9102830);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9102830);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9128480);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9128480);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9138945);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9138945);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9164594);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9164594);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9175060);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9175060);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9200685);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9200685);
    path_0.lineTo(size.width * 0.2128820, size.height * 0.9211174);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9211174);
    path_0.lineTo(size.width * 0.2134460, size.height * 0.9379987);
    path_0.lineTo(size.width * 0.2091853, size.height * 0.9332575);
    path_0.lineTo(size.width * 0.2098835, size.height * 0.9300520);
    path_0.lineTo(size.width * 0.1938707, size.height * 0.9300520);
    path_0.lineTo(size.width * 0.1938707, size.height * 0.9292989);
    path_0.lineTo(size.width * 0.1942023, size.height * 0.9290372);
    path_0.lineTo(size.width * 0.1942023, size.height * 0.9285140);
    path_0.lineTo(size.width * 0.1934826, size.height * 0.9277706);
    path_0.lineTo(size.width * 0.1934826, size.height * 0.9256385);
    path_0.lineTo(size.width * 0.1923734, size.height * 0.9256385);
    path_0.lineTo(size.width * 0.1923734, size.height * 0.9245920);
    path_0.lineTo(size.width * 0.1914308, size.height * 0.9245920);
    path_0.lineTo(size.width * 0.1914308, size.height * 0.9236335);
    path_0.lineTo(size.width * 0.1912992, size.height * 0.9236335);
    path_0.cubicTo(
        size.width * 0.1927628,
        size.height * 0.9203668,
        size.width * 0.1873379,
        size.height * 0.9183080,
        size.width * 0.1874199,
        size.height * 0.9161416);
    path_0.lineTo(size.width * 0.1863295, size.height * 0.9161416);
    path_0.cubicTo(
        size.width * 0.1862288,
        size.height * 0.9174913,
        size.width * 0.1832881,
        size.height * 0.9205404,
        size.width * 0.1829456,
        size.height * 0.9206700);
    path_0.lineTo(size.width * 0.1795282, size.height * 0.9197579);
    path_0.lineTo(size.width * 0.1796773, size.height * 0.9154398);
    path_0.cubicTo(
        size.width * 0.1797202,
        size.height * 0.9051580,
        size.width * 0.1809395,
        size.height * 0.9071655,
        size.width * 0.1809395,
        size.height * 0.9052240);
    path_0.lineTo(size.width * 0.1800022, size.height * 0.9049331);
    path_0.cubicTo(
        size.width * 0.1799405,
        size.height * 0.9035662,
        size.width * 0.1790327,
        size.height * 0.8968617,
        size.width * 0.1797995,
        size.height * 0.8958494);
    path_0.cubicTo(
        size.width * 0.1797995,
        size.height * 0.8924091,
        size.width * 0.1794745,
        size.height * 0.8901204,
        size.width * 0.1809395,
        size.height * 0.8879467);
    path_0.lineTo(size.width * 0.1809395, size.height * 0.8876386);
    path_0.lineTo(size.width * 0.1798626, size.height * 0.8871594);
    path_0.lineTo(size.width * 0.1800600, size.height * 0.8829757);
    path_0.lineTo(size.width * 0.1781492, size.height * 0.8830638);
    path_0.lineTo(size.width * 0.1783586, size.height * 0.8849783);
    path_0.lineTo(size.width * 0.1778645, size.height * 0.8848927);
    path_0.lineTo(size.width * 0.1774670, size.height * 0.8831053);
    path_0.lineTo(size.width * 0.1773341, size.height * 0.8751342);
    path_0.cubicTo(
        size.width * 0.1781613,
        size.height * 0.8748774,
        size.width * 0.1759013,
        size.height * 0.8701339,
        size.width * 0.1757751,
        size.height * 0.8699945);
    path_0.cubicTo(
        size.width * 0.1738388,
        size.height * 0.8678574,
        size.width * 0.1737314,
        size.height * 0.8684712,
        size.width * 0.1737314,
        size.height * 0.8647643);
    path_0.lineTo(size.width * 0.1745021, size.height * 0.8647643);
    path_0.lineTo(size.width * 0.1750500, size.height * 0.8625002);
    path_0.lineTo(size.width * 0.1735796, size.height * 0.8618473);
    path_0.cubicTo(
        size.width * 0.1735796,
        size.height * 0.8607763,
        size.width * 0.1739193,
        size.height * 0.8582089,
        size.width * 0.1725792,
        size.height * 0.8577101);
    path_0.lineTo(size.width * 0.1724664, size.height * 0.8571820);
    path_0.lineTo(size.width * 0.1724369, size.height * 0.8545632);
    path_0.lineTo(size.width * 0.1724302, size.height * 0.8540620);
    path_0.lineTo(size.width * 0.1723818, size.height * 0.8497561);
    path_0.lineTo(size.width * 0.1722744, size.height * 0.8497561);
    path_0.lineTo(size.width * 0.1722221, size.height * 0.8545681);
    path_0.lineTo(size.width * 0.1722194, size.height * 0.8546439);
    path_0.lineTo(size.width * 0.1721925, size.height * 0.8571771);
    path_0.lineTo(size.width * 0.1720743, size.height * 0.8577126);
    path_0.cubicTo(
        size.width * 0.1707329,
        size.height * 0.8582114,
        size.width * 0.1710740,
        size.height * 0.8607763,
        size.width * 0.1710740,
        size.height * 0.8618497);
    path_0.lineTo(size.width * 0.1696022, size.height * 0.8625026);
    path_0.lineTo(size.width * 0.1701515, size.height * 0.8647668);
    path_0.lineTo(size.width * 0.1709209, size.height * 0.8647668);
    path_0.cubicTo(
        size.width * 0.1709209,
        size.height * 0.8710019,
        size.width * 0.1693243,
        size.height * 0.8675787,
        size.width * 0.1686797,
        size.height * 0.8706522);
    path_0.cubicTo(
        size.width * 0.1686556,
        size.height * 0.8707696,
        size.width * 0.1663298,
        size.height * 0.8748285,
        size.width * 0.1673181,
        size.height * 0.8751391);
    path_0.lineTo(size.width * 0.1671852, size.height * 0.8831102);
    path_0.lineTo(size.width * 0.1667904, size.height * 0.8848976);
    path_0.lineTo(size.width * 0.1662963, size.height * 0.8849832);
    path_0.lineTo(size.width * 0.1665044, size.height * 0.8830686);
    path_0.lineTo(size.width * 0.1645936, size.height * 0.8829806);
    path_0.lineTo(size.width * 0.1647937, size.height * 0.8871643);
    path_0.lineTo(size.width * 0.1637168, size.height * 0.8876435);
    path_0.lineTo(size.width * 0.1637168, size.height * 0.8879516);
    path_0.cubicTo(
        size.width * 0.1651818,
        size.height * 0.8901253,
        size.width * 0.1648555,
        size.height * 0.8924189,
        size.width * 0.1648555,
        size.height * 0.8958543);
    path_0.cubicTo(
        size.width * 0.1656235,
        size.height * 0.8968690,
        size.width * 0.1647158,
        size.height * 0.9035687,
        size.width * 0.1646540,
        size.height * 0.9049380);
    path_0.lineTo(size.width * 0.1637168, size.height * 0.9052289);
    path_0.cubicTo(
        size.width * 0.1637168,
        size.height * 0.9071728,
        size.width * 0.1649374,
        size.height * 0.9051678,
        size.width * 0.1649790,
        size.height * 0.9154447);
    path_0.lineTo(size.width * 0.1651280, size.height * 0.9166917);
    path_0.lineTo(size.width * 0.1651280, size.height * 0.9300495);
    path_0.lineTo(size.width * 0.1614864, size.height * 0.9300495);
    path_0.lineTo(size.width * 0.1621846, size.height * 0.9332551);
    path_0.cubicTo(
        size.width * 0.1581858,
        size.height * 0.9377028,
        size.width * 0.1590680,
        size.height * 0.9381967,
        size.width * 0.1546005,
        size.height * 0.9381967);
    path_0.lineTo(size.width * 0.1535034, size.height * 0.9404854);
    path_0.lineTo(size.width * 0.1513563, size.height * 0.9404854);
    path_0.cubicTo(
        size.width * 0.1513563,
        size.height * 0.9384070,
        size.width * 0.1510756,
        size.height * 0.9359741,
        size.width * 0.1517578,
        size.height * 0.9342625);
    path_0.lineTo(size.width * 0.1451700, size.height * 0.9342625);
    path_0.lineTo(size.width * 0.1451700, size.height * 0.9315924);
    path_0.cubicTo(
        size.width * 0.1454480,
        size.height * 0.9312354,
        size.width * 0.1459180,
        size.height * 0.9291399,
        size.width * 0.1451700,
        size.height * 0.9287780);
    path_0.cubicTo(
        size.width * 0.1467827,
        size.height * 0.9236433,
        size.width * 0.1439843,
        size.height * 0.9191149,
        size.width * 0.1424347,
        size.height * 0.9183202);
    path_0.lineTo(size.width * 0.1424347, size.height * 0.9177431);
    path_0.cubicTo(
        size.width * 0.1424347,
        size.height * 0.9177431,
        size.width * 0.1411725,
        size.height * 0.9164081,
        size.width * 0.1411107,
        size.height * 0.9153689);
    path_0.cubicTo(
        size.width * 0.1410597,
        size.height * 0.9153689,
        size.width * 0.1410181,
        size.height * 0.9153689,
        size.width * 0.1409751,
        size.height * 0.9153689);
    path_0.lineTo(size.width * 0.1408731, size.height * 0.9147161);
    path_0.lineTo(size.width * 0.1408435, size.height * 0.9137673);
    path_0.lineTo(size.width * 0.1407925, size.height * 0.9102463);
    path_0.lineTo(size.width * 0.1406998, size.height * 0.9102463);
    path_0.lineTo(size.width * 0.1406596, size.height * 0.9137625);
    path_0.lineTo(size.width * 0.1406354, size.height * 0.9147332);
    path_0.lineTo(size.width * 0.1405427, size.height * 0.9153665);
    path_0.cubicTo(
        size.width * 0.1405011,
        size.height * 0.9153665,
        size.width * 0.1404595,
        size.height * 0.9153665,
        size.width * 0.1404138,
        size.height * 0.9153665);
    path_0.cubicTo(
        size.width * 0.1403507,
        size.height * 0.9164081,
        size.width * 0.1390885,
        size.height * 0.9177407,
        size.width * 0.1390885,
        size.height * 0.9177407);
    path_0.lineTo(size.width * 0.1390885, size.height * 0.9183177);
    path_0.cubicTo(
        size.width * 0.1375349,
        size.height * 0.9191149,
        size.width * 0.1347486,
        size.height * 0.9236408,
        size.width * 0.1363532,
        size.height * 0.9287756);
    path_0.cubicTo(
        size.width * 0.1356066,
        size.height * 0.9291350,
        size.width * 0.1360766,
        size.height * 0.9312330,
        size.width * 0.1363532,
        size.height * 0.9315900);
    path_0.lineTo(size.width * 0.1363532, size.height * 0.9342600);
    path_0.lineTo(size.width * 0.1325746, size.height * 0.9342600);
    path_0.lineTo(size.width * 0.1320670, size.height * 0.9369081);
    path_0.lineTo(size.width * 0.1316870, size.height * 0.9369081);
    path_0.lineTo(size.width * 0.1316870, size.height * 0.9298099);
    path_0.cubicTo(
        size.width * 0.1316870,
        size.height * 0.9298099,
        size.width * 0.1329197,
        size.height * 0.9258561,
        size.width * 0.1318548,
        size.height * 0.9260297);
    path_0.lineTo(size.width * 0.1319810, size.height * 0.9196283);
    path_0.lineTo(size.width * 0.1316856, size.height * 0.9196283);
    path_0.lineTo(size.width * 0.1316856, size.height * 0.9184693);
    path_0.lineTo(size.width * 0.1312197, size.height * 0.9184693);
    path_0.lineTo(size.width * 0.1312197, size.height * 0.9177749);
    path_0.lineTo(size.width * 0.1314735, size.height * 0.9177749);
    path_0.cubicTo(
        size.width * 0.1314735,
        size.height * 0.9177749,
        size.width * 0.1314077,
        size.height * 0.9160120,
        size.width * 0.1309511,
        size.height * 0.9160022);
    path_0.cubicTo(
        size.width * 0.1309511,
        size.height * 0.9159093,
        size.width * 0.1309511,
        size.height * 0.9153640,
        size.width * 0.1309511,
        size.height * 0.9153640);
    path_0.lineTo(size.width * 0.1312492, size.height * 0.9153640);
    path_0.lineTo(size.width * 0.1312492, size.height * 0.9149508);
    path_0.lineTo(size.width * 0.1310196, size.height * 0.9149508);
    path_0.lineTo(size.width * 0.1310196, size.height * 0.9134959);
    path_0.lineTo(size.width * 0.1308706, size.height * 0.9134959);
    path_0.lineTo(size.width * 0.1308706, size.height * 0.9124127);
    path_0.lineTo(size.width * 0.1306758, size.height * 0.9124127);
    path_0.lineTo(size.width * 0.1306758, size.height * 0.9134519);
    path_0.lineTo(size.width * 0.1304932, size.height * 0.9134519);
    path_0.lineTo(size.width * 0.1304932, size.height * 0.9150119);
    path_0.lineTo(size.width * 0.1303119, size.height * 0.9150119);
    path_0.lineTo(size.width * 0.1303119, size.height * 0.9152198);
    path_0.lineTo(size.width * 0.1305510, size.height * 0.9152198);
    path_0.lineTo(size.width * 0.1301978, size.height * 0.9175671);
    path_0.lineTo(size.width * 0.1304932, size.height * 0.9182150);
    path_0.lineTo(size.width * 0.1301978, size.height * 0.9182150);
    path_0.lineTo(size.width * 0.1299910, size.height * 0.9188190);
    path_0.lineTo(size.width * 0.1303119, size.height * 0.9188190);
    path_0.lineTo(size.width * 0.1303119, size.height * 0.9196088);
    path_0.lineTo(size.width * 0.1277015, size.height * 0.9196088);
    path_0.cubicTo(
        size.width * 0.1277485,
        size.height * 0.9185476,
        size.width * 0.1269818,
        size.height * 0.9185280,
        size.width * 0.1269818,
        size.height * 0.9195501);
    path_0.lineTo(size.width * 0.1206680, size.height * 0.9195501);
    path_0.lineTo(size.width * 0.1203725, size.height * 0.9179290);
    path_0.lineTo(size.width * 0.1205404, size.height * 0.9179290);
    path_0.cubicTo(
        size.width * 0.1205404,
        size.height * 0.9125179,
        size.width * 0.1210063,
        size.height * 0.9134373,
        size.width * 0.1210063,
        size.height * 0.9108307);
    path_0.cubicTo(
        size.width * 0.1223894,
        size.height * 0.9085983,
        size.width * 0.1199764,
        size.height * 0.9056275,
        size.width * 0.1195226,
        size.height * 0.9053536);
    path_0.cubicTo(
        size.width * 0.1231871,
        size.height * 0.8901449,
        size.width * 0.1161763,
        size.height * 0.8792396,
        size.width * 0.1108373,
        size.height * 0.8749581);
    path_0.lineTo(size.width * 0.1108373, size.height * 0.8744936);
    path_0.cubicTo(
        size.width * 0.1107071,
        size.height * 0.8742686,
        size.width * 0.1069070,
        size.height * 0.8678330,
        size.width * 0.1070224,
        size.height * 0.8646372);
    path_0.cubicTo(
        size.width * 0.1075918,
        size.height * 0.8642142,
        size.width * 0.1075636,
        size.height * 0.8627716,
        size.width * 0.1069822,
        size.height * 0.8624097);
    path_0.lineTo(size.width * 0.1068801, size.height * 0.8604927);
    path_0.lineTo(size.width * 0.1068680, size.height * 0.8595220);
    path_0.lineTo(size.width * 0.1068250, size.height * 0.8535289);
    path_0.lineTo(size.width * 0.1067324, size.height * 0.8535289);
    path_0.lineTo(size.width * 0.1066800, size.height * 0.8595244);
    path_0.lineTo(size.width * 0.1066639, size.height * 0.8604829);
    path_0.lineTo(size.width * 0.1065202, size.height * 0.8624048);
    path_0.cubicTo(
        size.width * 0.1058703,
        size.height * 0.8627985,
        size.width * 0.1059281,
        size.height * 0.8644391,
        size.width * 0.1066048,
        size.height * 0.8646861);
    path_0.cubicTo(
        size.width * 0.1066438,
        size.height * 0.8679064,
        size.width * 0.1029403,
        size.height * 0.8742270,
        size.width * 0.1027859,
        size.height * 0.8744911);
    path_0.lineTo(size.width * 0.1027859, size.height * 0.8749557);
    path_0.cubicTo(
        size.width * 0.09744559,
        size.height * 0.8792396,
        size.width * 0.09043752,
        size.height * 0.8901375,
        size.width * 0.09410068,
        size.height * 0.9053512);
    path_0.cubicTo(
        size.width * 0.09364681,
        size.height * 0.9056250,
        size.width * 0.09123649,
        size.height * 0.9085934,
        size.width * 0.09261689,
        size.height * 0.9108283);
    path_0.cubicTo(
        size.width * 0.09261689,
        size.height * 0.9134373,
        size.width * 0.09308284,
        size.height * 0.9125154,
        size.width * 0.09308284,
        size.height * 0.9179265);
    path_0.lineTo(size.width * 0.09325203, size.height * 0.9179265);
    path_0.lineTo(size.width * 0.09295527, size.height * 0.9195476);
    path_0.lineTo(size.width * 0.08664277, size.height * 0.9195476);
    path_0.cubicTo(
        size.width * 0.08664277,
        size.height * 0.9185280,
        size.width * 0.08587604,
        size.height * 0.9185451,
        size.width * 0.08592169,
        size.height * 0.9196063);
    path_0.lineTo(size.width * 0.08331129, size.height * 0.9196063);
    path_0.lineTo(size.width * 0.08331129, size.height * 0.9188166);
    path_0.lineTo(size.width * 0.08363088, size.height * 0.9188166);
    path_0.lineTo(size.width * 0.08342543, size.height * 0.9182126);
    path_0.lineTo(size.width * 0.08312867, size.height * 0.9182126);
    path_0.lineTo(size.width * 0.08342543, size.height * 0.9175646);
    path_0.lineTo(size.width * 0.08307093, size.height * 0.9152173);
    path_0.lineTo(size.width * 0.08331129, size.height * 0.9152173);
    path_0.lineTo(size.width * 0.08331129, size.height * 0.9150095);
    path_0.lineTo(size.width * 0.08312867, size.height * 0.9150095);
    path_0.lineTo(size.width * 0.08312867, size.height * 0.9134495);
    path_0.lineTo(size.width * 0.08294605, size.height * 0.9134495);
    path_0.lineTo(size.width * 0.08294605, size.height * 0.9124103);
    path_0.lineTo(size.width * 0.08275134, size.height * 0.9124103);
    path_0.lineTo(size.width * 0.08275134, size.height * 0.9134935);
    path_0.lineTo(size.width * 0.08260229, size.height * 0.9134935);
    path_0.lineTo(size.width * 0.08260229, size.height * 0.9149483);
    path_0.lineTo(size.width * 0.08237402, size.height * 0.9149483);
    path_0.lineTo(size.width * 0.08237402, size.height * 0.9153616);
    path_0.lineTo(size.width * 0.08267077, size.height * 0.9153616);
    path_0.cubicTo(
        size.width * 0.08267077,
        size.height * 0.9153616,
        size.width * 0.08267077,
        size.height * 0.9159068,
        size.width * 0.08267077,
        size.height * 0.9159998);
    path_0.cubicTo(
        size.width * 0.08221422,
        size.height * 0.9160095,
        size.width * 0.08214842,
        size.height * 0.9177725,
        size.width * 0.08214842,
        size.height * 0.9177725);
    path_0.lineTo(size.width * 0.08240356, size.height * 0.9177725);
    path_0.lineTo(size.width * 0.08240356, size.height * 0.9184669);
    path_0.lineTo(size.width * 0.08193761, size.height * 0.9184669);
    path_0.lineTo(size.width * 0.08193761, size.height * 0.9196259);
    path_0.lineTo(size.width * 0.08164085, size.height * 0.9196259);
    path_0.lineTo(size.width * 0.08176841, size.height * 0.9260273);
    path_0.cubicTo(
        size.width * 0.08070223,
        size.height * 0.9258537,
        size.width * 0.08193761,
        size.height * 0.9298074,
        size.width * 0.08193761,
        size.height * 0.9298074);
    path_0.lineTo(size.width * 0.08193761, size.height * 0.9369057);
    path_0.lineTo(size.width * 0.08155625, size.height * 0.9369057);
    path_0.lineTo(size.width * 0.08104733, size.height * 0.9342576);
    path_0.lineTo(size.width * 0.07726869, size.height * 0.9342576);
    path_0.lineTo(size.width * 0.07726869, size.height * 0.9315875);
    path_0.cubicTo(
        size.width * 0.07754665,
        size.height * 0.9312305,
        size.width * 0.07801663,
        size.height * 0.9291350,
        size.width * 0.07726869,
        size.height * 0.9287732);
    path_0.cubicTo(
        size.width * 0.07887737,
        size.height * 0.9236384,
        size.width * 0.07608703,
        size.height * 0.9191100,
        size.width * 0.07453475,
        size.height * 0.9183153);
    path_0.lineTo(size.width * 0.07453475, size.height * 0.9177382);
    path_0.cubicTo(
        size.width * 0.07453475,
        size.height * 0.9177382,
        size.width * 0.07327252,
        size.height * 0.9164032,
        size.width * 0.07320941,
        size.height * 0.9153640);
    path_0.cubicTo(
        size.width * 0.07316376,
        size.height * 0.9153640,
        size.width * 0.07312213,
        size.height * 0.9153640,
        size.width * 0.07307916,
        size.height * 0.9153640);
    path_0.lineTo(size.width * 0.07298919, size.height * 0.9147307);
    path_0.lineTo(size.width * 0.07296368, size.height * 0.9137600);
    path_0.lineTo(size.width * 0.07292474, size.height * 0.9102439);
    path_0.lineTo(size.width * 0.07283074, size.height * 0.9102439);
    path_0.lineTo(size.width * 0.07278240, size.height * 0.9137649);
    path_0.lineTo(size.width * 0.07275286, size.height * 0.9147136);
    path_0.lineTo(size.width * 0.07265081, size.height * 0.9153665);
    path_0.cubicTo(
        size.width * 0.07260649,
        size.height * 0.9153665,
        size.width * 0.07256621,
        size.height * 0.9153665,
        size.width * 0.07251518,
        size.height * 0.9153665);
    path_0.cubicTo(
        size.width * 0.07245207,
        size.height * 0.9164081,
        size.width * 0.07118984,
        size.height * 0.9177407,
        size.width * 0.07118984,
        size.height * 0.9177407);
    path_0.lineTo(size.width * 0.07118984, size.height * 0.9183177);
    path_0.cubicTo(
        size.width * 0.06963891,
        size.height * 0.9191124,
        size.width * 0.06684589,
        size.height * 0.9236408,
        size.width * 0.06845590,
        size.height * 0.9287756);
    path_0.cubicTo(
        size.width * 0.06770931,
        size.height * 0.9291350,
        size.width * 0.06817794,
        size.height * 0.9312330,
        size.width * 0.06845590,
        size.height * 0.9315900);
    path_0.lineTo(size.width * 0.06845590, size.height * 0.9342600);
    path_0.lineTo(size.width * 0.06186947, size.height * 0.9342600);
    path_0.cubicTo(
        size.width * 0.06254893,
        size.height * 0.9359741,
        size.width * 0.06226828,
        size.height * 0.9384070,
        size.width * 0.06226828,
        size.height * 0.9404829);
    path_0.lineTo(size.width * 0.06012249, size.height * 0.9404829);
    path_0.lineTo(size.width * 0.05902408, size.height * 0.9381943);
    path_0.cubicTo(
        size.width * 0.05455659,
        size.height * 0.9381943,
        size.width * 0.05543746,
        size.height * 0.9377028,
        size.width * 0.05143995,
        size.height * 0.9332526);
    path_0.lineTo(size.width * 0.05213955, size.height * 0.9300471);
    path_0.lineTo(size.width * 0.003738353, size.height * 0.9300471);
    path_0.lineTo(size.width * 0.004437951, size.height * 0.9332526);
    path_0.lineTo(size.width * -0.000002685598, size.height * 0.9381943);
    path_0.lineTo(size.width * -0.000002685598, size.height * 1.000015);
    path_0.cubicTo(
        size.width * 0.3333311,
        size.height * 1.000015,
        size.width * 0.6666635,
        size.height * 1.000015,
        size.width * 0.9999973,
        size.height * 1.000015);
    path_0.lineTo(size.width * 0.9999973, size.height * 0.9534470);
    path_0.lineTo(size.width * 0.9989137, size.height * 0.9532685);
    path_0.lineTo(size.width * 0.9989137, size.height * 0.9484247);
    path_0.lineTo(size.width * 0.9793625, size.height * 0.9473489);
    path_0.lineTo(size.width * 0.9783326, size.height * 0.9150706);
    path_0.cubicTo(
        size.width * 0.9801977,
        size.height * 0.9137136,
        size.width * 0.9800876,
        size.height * 0.9119604,
        size.width * 0.9781352,
        size.height * 0.9111242);
    path_0.lineTo(size.width * 0.9780372, size.height * 0.8922721);
    path_0.cubicTo(
        size.width * 0.9797546,
        size.height * 0.8914555,
        size.width * 0.9790765,
        size.height * 0.8870738,
        size.width * 0.9777418,
        size.height * 0.8863745);
    path_0.lineTo(size.width * 0.9776424, size.height * 0.8670065);
    path_0.cubicTo(
        size.width * 0.9782883,
        size.height * 0.8666740,
        size.width * 0.9779298,
        size.height * 0.8630797,
        size.width * 0.9775444,
        size.height * 0.8637814);
    path_0.lineTo(size.width * 0.9774463, size.height * 0.8431591);
    path_0.cubicTo(
        size.width * 0.9784118,
        size.height * 0.8421493,
        size.width * 0.9778478,
        size.height * 0.8395232,
        size.width * 0.9772490,
        size.height * 0.8386747);
    path_0.lineTo(size.width * 0.9756201, size.height * 0.7515203);
    path_0.lineTo(size.width * 0.9685046, size.height * 0.7465053);
    path_0.cubicTo(
        size.width * 0.9701912,
        size.height * 0.7449551,
        size.width * 0.9760673,
        size.height * 0.7405220,
        size.width * 0.9760673,
        size.height * 0.7351990);
    path_0.cubicTo(
        size.width * 0.9760673,
        size.height * 0.7314359,
        size.width * 0.9726297,
        size.height * 0.7285555,
        size.width * 0.9679917,
        size.height * 0.7283844);
    path_0.cubicTo(
        size.width * 0.9561160,
        size.height * 0.7279443,
        size.width * 0.9447519,
        size.height * 0.7438450,
        size.width * 0.9628286,
        size.height * 0.7463830);
    path_0.lineTo(size.width * 0.9644266, size.height * 0.7466764);
    path_0.lineTo(size.width * 0.9573554, size.height * 0.7509261);
    path_0.cubicTo(
        size.width * 0.9464451,
        size.height * 0.7975793,
        size.width * 0.9430922,
        size.height * 0.8736695,
        size.width * 0.9430667,
        size.height * 0.8744251);
    path_0.lineTo(size.width * 0.9429995, size.height * 0.8744202);
    path_0.lineTo(size.width * 0.9430035, size.height * 0.8745571);
    path_0.cubicTo(
        size.width * 0.9422100,
        size.height * 0.8760682,
        size.width * 0.9410229,
        size.height * 0.8787261,
        size.width * 0.9426182,
        size.height * 0.8804744);
    path_0.lineTo(size.width * 0.9419051, size.height * 0.8991405);
    path_0.cubicTo(
        size.width * 0.9405798,
        size.height * 0.8994633,
        size.width * 0.9415466,
        size.height * 0.9027593,
        size.width * 0.9416446,
        size.height * 0.9035833);
    path_0.cubicTo(
        size.width * 0.9416446,
        size.height * 0.9035833,
        size.width * 0.9408685,
        size.height * 0.9210954,
        size.width * 0.9407127,
        size.height * 0.9239220);
    path_0.cubicTo(
        size.width * 0.9394720,
        size.height * 0.9244868,
        size.width * 0.9407127,
        size.height * 0.9267461,
        size.width * 0.9407127,
        size.height * 0.9267461);
    path_0.cubicTo(
        size.width * 0.9407127,
        size.height * 0.9267461,
        size.width * 0.9399366,
        size.height * 0.9626212,
        size.width * 0.9396264,
        size.height * 0.9651617);
    path_0.cubicTo(
        size.width * 0.9365178,
        size.height * 0.9649270,
        size.width * 0.9330695,
        size.height * 0.9656752,
        size.width * 0.9301060,
        size.height * 0.9666288);
    path_0.lineTo(size.width * 0.9301060, size.height * 0.9368397);
    path_0.lineTo(size.width * 0.9291230, size.height * 0.9336023);
    path_0.lineTo(size.width * 0.9091757, size.height * 0.9336023);
    path_0.lineTo(size.width * 0.9091757, size.height * 0.9282426);
    path_0.lineTo(size.width * 0.9106501, size.height * 0.9256287);
    path_0.lineTo(size.width * 0.9106501, size.height * 0.7876838);
    path_0.lineTo(size.width * 0.9072945, size.height * 0.7801528);
    path_0.lineTo(size.width * 0.9041631, size.height * 0.7795122);
    path_0.lineTo(size.width * 0.9043296, size.height * 0.7781185);
    path_0.lineTo(size.width * 0.9012331, size.height * 0.7759961);
    path_0.lineTo(size.width * 0.9012331, size.height * 0.7718858);
    path_0.cubicTo(
        size.width * 0.9062431,
        size.height * 0.7662693,
        size.width * 0.8993438,
        size.height * 0.7581613,
        size.width * 0.8866060,
        size.height * 0.7621737);
    path_0.cubicTo(
        size.width * 0.8824500,
        size.height * 0.7634819,
        size.width * 0.8827347,
        size.height * 0.7705263,
        size.width * 0.8857560,
        size.height * 0.7711205);
    path_0.lineTo(size.width * 0.8853934, size.height * 0.7771649);
    path_0.cubicTo(
        size.width * 0.8794354,
        size.height * 0.7826053,
        size.width * 0.8854028,
        size.height * 0.7739617,
        size.width * 0.8761966,
        size.height * 0.7855052);
    path_0.lineTo(size.width * 0.8761966, size.height * 0.9266117);
    path_0.lineTo(size.width * 0.8748887, size.height * 0.9295898);
    path_0.lineTo(size.width * 0.8748887, size.height * 0.8687548);
    path_0.lineTo(size.width * 0.8707462, size.height * 0.8610086);
    path_0.lineTo(size.width * 0.8708536, size.height * 0.8596834);
    path_0.lineTo(size.width * 0.8688757, size.height * 0.8576735);
    path_0.lineTo(size.width * 0.8688864, size.height * 0.8526609);
    path_0.cubicTo(
        size.width * 0.8752459,
        size.height * 0.8509836,
        size.width * 0.8717076,
        size.height * 0.8454869,
        size.width * 0.8639274,
        size.height * 0.8454869);
    path_0.cubicTo(
        size.width * 0.8525513,
        size.height * 0.8454869,
        size.width * 0.8549683,
        size.height * 0.8531866,
        size.width * 0.8589940,
        size.height * 0.8530473);
    path_0.lineTo(size.width * 0.8587617, size.height * 0.8587787);
    path_0.lineTo(size.width * 0.8561432, size.height * 0.8606272);
    path_0.lineTo(size.width * 0.8528883, size.height * 0.8666862);
    path_0.lineTo(size.width * 0.8528883, size.height * 0.9723382);
    path_0.lineTo(size.width * 0.8478756, size.height * 0.9723382);
    path_0.lineTo(size.width * 0.8478756, size.height * 0.9669784);
    path_0.lineTo(size.width * 0.8495622, size.height * 0.9643646);
    path_0.lineTo(size.width * 0.8495622, size.height * 0.8291876);
    path_0.lineTo(size.width * 0.8467517, size.height * 0.8264466);
    path_0.lineTo(size.width * 0.8467517, size.height * 0.8220845);
    path_0.lineTo(size.width * 0.8417538, size.height * 0.8169766);
    path_0.lineTo(size.width * 0.8417538, size.height * 0.8128663);
    path_0.cubicTo(
        size.width * 0.8485819,
        size.height * 0.8110960,
        size.width * 0.8368794,
        size.height * 0.7974106,
        size.width * 0.8220805,
        size.height * 0.8009047);
    path_0.cubicTo(
        size.width * 0.8182817,
        size.height * 0.8018021,
        size.width * 0.8172141,
        size.height * 0.8076313,
        size.width * 0.8202704,
        size.height * 0.8085017);
    path_0.lineTo(size.width * 0.8202704, size.height * 0.8107464);
    path_0.lineTo(size.width * 0.8195197, size.height * 0.8107464);
    path_0.lineTo(size.width * 0.8195197, size.height * 0.8127416);
    path_0.cubicTo(
        size.width * 0.8164313,
        size.height * 0.8134874,
        size.width * 0.8146857,
        size.height * 0.8132747,
        size.width * 0.8146857,
        size.height * 0.8199621);
    path_0.cubicTo(
        size.width * 0.8130367,
        size.height * 0.8199621,
        size.width * 0.8115449,
        size.height * 0.8226420,
        size.width * 0.8101833,
        size.height * 0.8242386);
    path_0.lineTo(size.width * 0.8101833, size.height * 0.9653451);
    path_0.lineTo(size.width * 0.8086820, size.height * 0.9683355);
    path_0.lineTo(size.width * 0.8086820, size.height * 0.9771037);
    path_0.lineTo(size.width * 0.8020714, size.height * 0.9490727);
    path_0.lineTo(size.width * 0.8020714, size.height * 0.8207812);
    path_0.lineTo(size.width * 0.7912498, size.height * 0.8030882);
    path_0.lineTo(size.width * 0.7912498, size.height * 0.7841849);
    path_0.lineTo(size.width * 0.7746864, size.height * 0.7713136);
    path_0.lineTo(size.width * 0.7624655, size.height * 0.8235051);
    path_0.lineTo(size.width * 0.7622185, size.height * 0.9496571);
    path_0.lineTo(size.width * 0.7584949, size.height * 0.9672743);
    path_0.lineTo(size.width * 0.7584949, size.height * 0.9226701);
    path_0.lineTo(size.width * 0.7550076, size.height * 0.9226701);
    path_0.lineTo(size.width * 0.7550076, size.height * 0.9151953);
    path_0.cubicTo(
        size.width * 0.7550076,
        size.height * 0.9151953,
        size.width * 0.7519286,
        size.height * 0.9151953,
        size.width * 0.7513123,
        size.height * 0.9151953);
    path_0.cubicTo(
        size.width * 0.7492591,
        size.height * 0.9080971,
        size.width * 0.7439269,
        size.height * 0.9103393,
        size.width * 0.7439269,
        size.height * 0.9103393);
    path_0.cubicTo(
        size.width * 0.7439269,
        size.height * 0.9103393,
        size.width * 0.7201231,
        size.height * 0.9118308,
        size.width * 0.7199189,
        size.height * 0.9125815);
    path_0.cubicTo(
        size.width * 0.7147895,
        size.height * 0.9118308,
        size.width * 0.7113022,
        size.height * 0.9189315,
        size.width * 0.7113022,
        size.height * 0.9189315);
    path_0.lineTo(size.width * 0.7047359, size.height * 0.9189315);
    path_0.lineTo(size.width * 0.7047359, size.height * 0.9841995);
    path_0.lineTo(size.width * 0.7028896, size.height * 0.9841995);
    path_0.lineTo(size.width * 0.7028896, size.height * 0.8850590);
    path_0.lineTo(size.width * 0.7010781, size.height * 0.8844086);
    path_0.lineTo(size.width * 0.7007827, size.height * 0.8768018);
    path_0.lineTo(size.width * 0.7028896, size.height * 0.8751831);
    path_0.lineTo(size.width * 0.7028896, size.height * 0.8643169);
    path_0.lineTo(size.width * 0.6906795, size.height * 0.8643169);
    path_0.lineTo(size.width * 0.6906795, size.height * 0.8662901);
    path_0.lineTo(size.width * 0.6784654, size.height * 0.8662901);
    path_0.lineTo(size.width * 0.6784654, size.height * 0.8689162);
    path_0.cubicTo(
        size.width * 0.6784654,
        size.height * 0.8689162,
        size.width * 0.6824293,
        size.height * 0.8701583,
        size.width * 0.6838111,
        size.height * 0.8751831);
    path_0.cubicTo(
        size.width * 0.6820050,
        size.height * 0.8751831,
        size.width * 0.6801775,
        size.height * 0.8768189,
        size.width * 0.6784654,
        size.height * 0.8778165);
    path_0.lineTo(size.width * 0.6784654, size.height * 0.9603008);
    path_0.lineTo(size.width * 0.6755247, size.height * 0.9603008);
    path_0.lineTo(size.width * 0.6755247, size.height * 0.9416101);
    path_0.lineTo(size.width * 0.6764431, size.height * 0.9390329);
    path_0.cubicTo(
        size.width * 0.6776315,
        size.height * 0.9386075,
        size.width * 0.6753031,
        size.height * 0.9378079,
        size.width * 0.6750560,
        size.height * 0.9378079);
    path_0.lineTo(size.width * 0.6749003, size.height * 0.9361941);
    path_0.cubicTo(
        size.width * 0.6749003,
        size.height * 0.9358029,
        size.width * 0.6749003,
        size.height * 0.9270664,
        size.width * 0.6749003,
        size.height * 0.9270664);
    path_0.lineTo(size.width * 0.6752924, size.height * 0.9264283);
    path_0.lineTo(size.width * 0.6750225, size.height * 0.9264283);
    path_0.cubicTo(
        size.width * 0.6750225,
        size.height * 0.9252570,
        size.width * 0.6745766,
        size.height * 0.9220906,
        size.width * 0.6755931,
        size.height * 0.9219781);
    path_0.cubicTo(
        size.width * 0.6755931,
        size.height * 0.9216945,
        size.width * 0.6755931,
        size.height * 0.9214720,
        size.width * 0.6755931,
        size.height * 0.9214720);
    path_0.lineTo(size.width * 0.6759852, size.height * 0.9207311);
    path_0.lineTo(size.width * 0.6762807, size.height * 0.9207311);
    path_0.lineTo(size.width * 0.6762807, size.height * 0.9203154);
    path_0.cubicTo(
        size.width * 0.6741349,
        size.height * 0.9178214,
        size.width * 0.6768930,
        size.height * 0.9184840,
        size.width * 0.6744034,
        size.height * 0.9155963);
    path_0.cubicTo(
        size.width * 0.6740691,
        size.height * 0.9152075,
        size.width * 0.6755408,
        size.height * 0.9147307,
        size.width * 0.6738139,
        size.height * 0.9124739);
    path_0.cubicTo(
        size.width * 0.6731815,
        size.height * 0.9116450,
        size.width * 0.6740812,
        size.height * 0.9115496,
        size.width * 0.6731063,
        size.height * 0.9099187);
    path_0.lineTo(size.width * 0.6730015, size.height * 0.9090433);
    path_0.cubicTo(
        size.width * 0.6738757,
        size.height * 0.9076741,
        size.width * 0.6724147,
        size.height * 0.8832569,
        size.width * 0.6721771,
        size.height * 0.9083905);
    path_0.cubicTo(
        size.width * 0.6721771,
        size.height * 0.9086326,
        size.width * 0.6724376,
        size.height * 0.9090433,
        size.width * 0.6724376,
        size.height * 0.9090433);
    path_0.lineTo(size.width * 0.6716923, size.height * 0.9111437);
    path_0.cubicTo(
        size.width * 0.6716923,
        size.height * 0.9118039,
        size.width * 0.6722764,
        size.height * 0.9116254,
        size.width * 0.6716265,
        size.height * 0.9124739);
    path_0.cubicTo(
        size.width * 0.6698983,
        size.height * 0.9147307,
        size.width * 0.6713714,
        size.height * 0.9152100,
        size.width * 0.6710370,
        size.height * 0.9155963);
    path_0.cubicTo(
        size.width * 0.6685421,
        size.height * 0.9184742,
        size.width * 0.6713083,
        size.height * 0.9178189,
        size.width * 0.6691598,
        size.height * 0.9203154);
    path_0.lineTo(size.width * 0.6691598, size.height * 0.9207311);
    path_0.lineTo(size.width * 0.6694539, size.height * 0.9207311);
    path_0.lineTo(size.width * 0.6698460, size.height * 0.9214720);
    path_0.cubicTo(
        size.width * 0.6698460,
        size.height * 0.9214720,
        size.width * 0.6698460,
        size.height * 0.9216945,
        size.width * 0.6698460,
        size.height * 0.9219781);
    path_0.cubicTo(
        size.width * 0.6708625,
        size.height * 0.9220881,
        size.width * 0.6704167,
        size.height * 0.9252595,
        size.width * 0.6704167,
        size.height * 0.9264283);
    path_0.lineTo(size.width * 0.6701481, size.height * 0.9264283);
    path_0.lineTo(size.width * 0.6705402, size.height * 0.9270664);
    path_0.cubicTo(
        size.width * 0.6705402,
        size.height * 0.9270664,
        size.width * 0.6705402,
        size.height * 0.9358029,
        size.width * 0.6705402,
        size.height * 0.9361941);
    path_0.lineTo(size.width * 0.6703817, size.height * 0.9378079);
    path_0.cubicTo(
        size.width * 0.6701347,
        size.height * 0.9378079,
        size.width * 0.6678049,
        size.height * 0.9386075,
        size.width * 0.6689973,
        size.height * 0.9390329);
    path_0.lineTo(size.width * 0.6698634, size.height * 0.9416101);
    path_0.lineTo(size.width * 0.6698634, size.height * 0.9562418);
    path_0.lineTo(size.width * 0.6596823, size.height * 0.9562418);
    path_0.lineTo(size.width * 0.6596823, size.height * 0.9500483);
    path_0.lineTo(size.width * 0.6610291, size.height * 0.9475885);
    path_0.cubicTo(
        size.width * 0.6621826,
        size.height * 0.9471850,
        size.width * 0.6599187,
        size.height * 0.9464222,
        size.width * 0.6596823,
        size.height * 0.9464222);
    path_0.lineTo(size.width * 0.6595306, size.height * 0.9448768);
    path_0.cubicTo(
        size.width * 0.6595306,
        size.height * 0.9445052,
        size.width * 0.6595306,
        size.height * 0.9361624,
        size.width * 0.6595306,
        size.height * 0.9361624);
    path_0.lineTo(size.width * 0.6599133, size.height * 0.9355560);
    path_0.lineTo(size.width * 0.6596501, size.height * 0.9355560);
    path_0.cubicTo(
        size.width * 0.6596501,
        size.height * 0.9344190,
        size.width * 0.6592191,
        size.height * 0.9314139,
        size.width * 0.6602047,
        size.height * 0.9313039);
    path_0.cubicTo(
        size.width * 0.6602047,
        size.height * 0.9310325,
        size.width * 0.6602047,
        size.height * 0.9308246,
        size.width * 0.6602047,
        size.height * 0.9308246);
    path_0.lineTo(size.width * 0.6605860, size.height * 0.9301155);
    path_0.lineTo(size.width * 0.6608720, size.height * 0.9301155);
    path_0.lineTo(size.width * 0.6608720, size.height * 0.9297194);
    path_0.cubicTo(
        size.width * 0.6588646,
        size.height * 0.9274259,
        size.width * 0.6613568,
        size.height * 0.9278513,
        size.width * 0.6590485,
        size.height * 0.9252155);
    path_0.cubicTo(
        size.width * 0.6588202,
        size.height * 0.9249538,
        size.width * 0.6600006,
        size.height * 0.9241812,
        size.width * 0.6584751,
        size.height * 0.9222349);
    path_0.cubicTo(
        size.width * 0.6578521,
        size.height * 0.9214402,
        size.width * 0.6587477,
        size.height * 0.9213668,
        size.width * 0.6577876,
        size.height * 0.9197946);
    path_0.lineTo(size.width * 0.6576856, size.height * 0.9189608);
    path_0.cubicTo(
        size.width * 0.6585423,
        size.height * 0.9176233,
        size.width * 0.6571135,
        size.height * 0.8944850,
        size.width * 0.6568826,
        size.height * 0.9183349);
    path_0.cubicTo(
        size.width * 0.6568826,
        size.height * 0.9185647,
        size.width * 0.6571377,
        size.height * 0.9189608,
        size.width * 0.6571377,
        size.height * 0.9189608);
    path_0.lineTo(size.width * 0.6564126, size.height * 0.9209609);
    path_0.cubicTo(
        size.width * 0.6564126,
        size.height * 0.9215918,
        size.width * 0.6569806,
        size.height * 0.9214255,
        size.width * 0.6563495,
        size.height * 0.9222324);
    path_0.cubicTo(
        size.width * 0.6548268,
        size.height * 0.9241787,
        size.width * 0.6560031,
        size.height * 0.9249563,
        size.width * 0.6557761,
        size.height * 0.9252130);
    path_0.cubicTo(
        size.width * 0.6534678,
        size.height * 0.9278464,
        size.width * 0.6559574,
        size.height * 0.9274234,
        size.width * 0.6539526,
        size.height * 0.9297170);
    path_0.lineTo(size.width * 0.6539526, size.height * 0.9301131);
    path_0.lineTo(size.width * 0.6542373, size.height * 0.9301131);
    path_0.lineTo(size.width * 0.6546200, size.height * 0.9308222);
    path_0.cubicTo(
        size.width * 0.6546200,
        size.height * 0.9308222,
        size.width * 0.6546200,
        size.height * 0.9310300,
        size.width * 0.6546200,
        size.height * 0.9313014);
    path_0.cubicTo(
        size.width * 0.6556056,
        size.height * 0.9314115,
        size.width * 0.6551759,
        size.height * 0.9344165,
        size.width * 0.6551759,
        size.height * 0.9355535);
    path_0.lineTo(size.width * 0.6549127, size.height * 0.9355535);
    path_0.lineTo(size.width * 0.6552954, size.height * 0.9361599);
    path_0.cubicTo(
        size.width * 0.6552954,
        size.height * 0.9361599,
        size.width * 0.6552954,
        size.height * 0.9445003,
        size.width * 0.6552954,
        size.height * 0.9448744);
    path_0.lineTo(size.width * 0.6551410, size.height * 0.9464197);
    path_0.cubicTo(
        size.width * 0.6549046,
        size.height * 0.9464197,
        size.width * 0.6526447,
        size.height * 0.9471826,
        size.width * 0.6537941,
        size.height * 0.9475860);
    path_0.lineTo(size.width * 0.6547475, size.height * 0.9496791);
    path_0.lineTo(size.width * 0.6532624, size.height * 0.9491705);
    path_0.lineTo(size.width * 0.6532624, size.height * 0.9478330);
    path_0.lineTo(size.width * 0.6504761, size.height * 0.9467205);
    path_0.cubicTo(
        size.width * 0.6492891,
        size.height * 0.9366758,
        size.width * 0.6419520,
        size.height * 0.9366758,
        size.width * 0.6407650,
        size.height * 0.9467205);
    path_0.lineTo(size.width * 0.6379760, size.height * 0.9478330);
    path_0.lineTo(size.width * 0.6379760, size.height * 0.9491705);
    path_0.lineTo(size.width * 0.6364586, size.height * 0.9496937);
    path_0.lineTo(size.width * 0.6372401, size.height * 0.9506938);
    path_0.lineTo(size.width * 0.6372401, size.height * 0.9509188);
    path_0.lineTo(size.width * 0.6379760, size.height * 0.9521267);
    path_0.lineTo(size.width * 0.6379760, size.height * 0.9609658);
    path_0.lineTo(size.width * 0.6311438, size.height * 0.9609658);
    path_0.cubicTo(
        size.width * 0.6311438,
        size.height * 0.9583104,
        size.width * 0.6305825,
        size.height * 0.9510997,
        size.width * 0.6329217,
        size.height * 0.9515129);
    path_0.lineTo(size.width * 0.6329217, size.height * 0.9511731);
    path_0.lineTo(size.width * 0.6331406, size.height * 0.9511731);
    path_0.lineTo(size.width * 0.6331406, size.height * 0.9507867);
    path_0.lineTo(size.width * 0.6333003, size.height * 0.9507867);
    path_0.cubicTo(
        size.width * 0.6335152,
        size.height * 0.9518797,
        size.width * 0.6349520,
        size.height * 0.9493001,
        size.width * 0.6356395,
        size.height * 0.9490898);
    path_0.cubicTo(
        size.width * 0.6356395,
        size.height * 0.9484614,
        size.width * 0.6356395,
        size.height * 0.9475151,
        size.width * 0.6356395,
        size.height * 0.9475151);
    path_0.lineTo(size.width * 0.6313479, size.height * 0.9455003);
    path_0.lineTo(size.width * 0.6313479, size.height * 0.9435222);
    path_0.cubicTo(
        size.width * 0.6318313,
        size.height * 0.9427887,
        size.width * 0.6318179,
        size.height * 0.9419304,
        size.width * 0.6311438,
        size.height * 0.9415710);
    path_0.cubicTo(
        size.width * 0.6306255,
        size.height * 0.9394706,
        size.width * 0.6309639,
        size.height * 0.9364289,
        size.width * 0.6309639,
        size.height * 0.9341402);
    path_0.lineTo(size.width * 0.6310659, size.height * 0.9336781);
    path_0.lineTo(size.width * 0.6309357, size.height * 0.9313626);
    path_0.lineTo(size.width * 0.6307020, size.height * 0.9277144);
    path_0.lineTo(size.width * 0.6306201, size.height * 0.9277144);
    path_0.lineTo(size.width * 0.6303878, size.height * 0.9313626);
    path_0.lineTo(size.width * 0.6302562, size.height * 0.9336781);
    path_0.lineTo(size.width * 0.6303583, size.height * 0.9341402);
    path_0.cubicTo(
        size.width * 0.6303583,
        size.height * 0.9341402,
        size.width * 0.6306295,
        size.height * 0.9435418,
        size.width * 0.6298776,
        size.height * 0.9413338);
    path_0.lineTo(size.width * 0.6299339, size.height * 0.9392506);
    path_0.cubicTo(
        size.width * 0.6285791,
        size.height * 0.9392506,
        size.width * 0.6296385,
        size.height * 0.9378617,
        size.width * 0.6296385,
        size.height * 0.9350841);
    path_0.cubicTo(
        size.width * 0.6296385,
        size.height * 0.9308540,
        size.width * 0.6272376,
        size.height * 0.9281937,
        size.width * 0.6272900,
        size.height * 0.9281252);
    path_0.cubicTo(
        size.width * 0.6277492,
        size.height * 0.9275212,
        size.width * 0.6271973,
        size.height * 0.9275115,
        size.width * 0.6271973,
        size.height * 0.9272523);
    path_0.cubicTo(
        size.width * 0.6271973,
        size.height * 0.9265750,
        size.width * 0.6279385,
        size.height * 0.9251592,
        size.width * 0.6268039,
        size.height * 0.9249538);
    path_0.cubicTo(
        size.width * 0.6265488,
        size.height * 0.9249074,
        size.width * 0.6274337,
        size.height * 0.9224476,
        size.width * 0.6263070,
        size.height * 0.9224965);
    path_0.cubicTo(
        size.width * 0.6259525,
        size.height * 0.9167651,
        size.width * 0.6255135,
        size.height * 0.9229928,
        size.width * 0.6260076,
        size.height * 0.9199413);
    path_0.lineTo(size.width * 0.6253657, size.height * 0.9105667);
    path_0.cubicTo(
        size.width * 0.6253657,
        size.height * 0.9105667,
        size.width * 0.6249253,
        size.height * 0.9196137,
        size.width * 0.6249360,
        size.height * 0.9199413);
    path_0.lineTo(size.width * 0.6251402, size.height * 0.9207629);
    path_0.cubicTo(
        size.width * 0.6245520,
        size.height * 0.9211345,
        size.width * 0.6246769,
        size.height * 0.9218803,
        size.width * 0.6246366,
        size.height * 0.9224965);
    path_0.cubicTo(
        size.width * 0.6235127,
        size.height * 0.9224476,
        size.width * 0.6243922,
        size.height * 0.9249074,
        size.width * 0.6241398,
        size.height * 0.9249538);
    path_0.cubicTo(
        size.width * 0.6230051,
        size.height * 0.9251617,
        size.width * 0.6237450,
        size.height * 0.9265725,
        size.width * 0.6237450,
        size.height * 0.9272523);
    path_0.cubicTo(
        size.width * 0.6237450,
        size.height * 0.9275115,
        size.width * 0.6231958,
        size.height * 0.9275237,
        size.width * 0.6236550,
        size.height * 0.9281252);
    path_0.lineTo(size.width * 0.6215361, size.height * 0.9325191);
    path_0.lineTo(size.width * 0.6207949, size.height * 0.9321694);
    path_0.lineTo(size.width * 0.6205572, size.height * 0.9313626);
    path_0.lineTo(size.width * 0.6205518, size.height * 0.9309640);
    path_0.lineTo(size.width * 0.6205518, size.height * 0.9289712);
    path_0.cubicTo(
        size.width * 0.6213776,
        size.height * 0.9277169,
        size.width * 0.6214166,
        size.height * 0.9265554,
        size.width * 0.6202309,
        size.height * 0.9259270);
    path_0.cubicTo(
        size.width * 0.6194252,
        size.height * 0.9226432,
        size.width * 0.6199516,
        size.height * 0.9178996,
        size.width * 0.6199516,
        size.height * 0.9143224);
    path_0.lineTo(size.width * 0.6201087, size.height * 0.9135986);
    path_0.lineTo(size.width * 0.6199046, size.height * 0.9099847);
    path_0.lineTo(size.width * 0.6195407, size.height * 0.9042851);
    path_0.lineTo(size.width * 0.6194131, size.height * 0.9042851);
    path_0.lineTo(size.width * 0.6190506, size.height * 0.9099847);
    path_0.lineTo(size.width * 0.6188438, size.height * 0.9135986);
    path_0.lineTo(size.width * 0.6190036, size.height * 0.9143224);
    path_0.lineTo(size.width * 0.6188290, size.height * 0.9254991);
    path_0.cubicTo(
        size.width * 0.6176205,
        size.height * 0.9268831,
        size.width * 0.6190949,
        size.height * 0.9223009,
        size.width * 0.6183375,
        size.height * 0.9223009);
    path_0.cubicTo(
        size.width * 0.6162092,
        size.height * 0.9223009,
        size.width * 0.6178783,
        size.height * 0.9201369,
        size.width * 0.6178783,
        size.height * 0.9157968);
    path_0.cubicTo(
        size.width * 0.6178783,
        size.height * 0.9080946,
        size.width * 0.6137747,
        size.height * 0.9055003,
        size.width * 0.6142098,
        size.height * 0.9049282);
    path_0.cubicTo(
        size.width * 0.6149282,
        size.height * 0.9039868,
        size.width * 0.6140661,
        size.height * 0.9039697,
        size.width * 0.6140661,
        size.height * 0.9035638);
    path_0.cubicTo(
        size.width * 0.6140661,
        size.height * 0.9026786,
        size.width * 0.6153149,
        size.height * 0.9003240,
        size.width * 0.6134497,
        size.height * 0.8999792);
    path_0.lineTo(size.width * 0.6133745, size.height * 0.8987566);
    path_0.cubicTo(
        size.width * 0.6139076,
        size.height * 0.8979180,
        size.width * 0.6136485,
        size.height * 0.8960963,
        size.width * 0.6126763,
        size.height * 0.8961428);
    path_0.cubicTo(
        size.width * 0.6125299,
        size.height * 0.8938224,
        size.width * 0.6117498,
        size.height * 0.8931989,
        size.width * 0.6117498,
        size.height * 0.8930497);
    path_0.cubicTo(
        size.width * 0.6117498,
        size.height * 0.8928223,
        size.width * 0.6121231,
        size.height * 0.8924237,
        size.width * 0.6122063,
        size.height * 0.8921548);
    path_0.lineTo(size.width * 0.6114235, size.height * 0.8772981);
    path_0.lineTo(size.width * 0.6114127, size.height * 0.8763323);
    path_0.lineTo(size.width * 0.6118733, size.height * 0.8755254);
    path_0.lineTo(size.width * 0.6118276, size.height * 0.8754398);
    path_0.lineTo(size.width * 0.6114114, size.height * 0.8761098);
    path_0.lineTo(size.width * 0.6113966, size.height * 0.8746427);
    path_0.lineTo(size.width * 0.6113187, size.height * 0.8746427);
    path_0.lineTo(size.width * 0.6113026, size.height * 0.8761489);
    path_0.lineTo(size.width * 0.6108313, size.height * 0.8755914);
    path_0.lineTo(size.width * 0.6107950, size.height * 0.8756892);
    path_0.lineTo(size.width * 0.6113013, size.height * 0.8763421);
    path_0.lineTo(size.width * 0.6112905, size.height * 0.8773299);
    path_0.lineTo(size.width * 0.6105359, size.height * 0.8921548);
    path_0.lineTo(size.width * 0.6108555, size.height * 0.8934360);
    path_0.cubicTo(
        size.width * 0.6098430,
        size.height * 0.8940913,
        size.width * 0.6102754,
        size.height * 0.8953628,
        size.width * 0.6102566,
        size.height * 0.8953652);
    path_0.cubicTo(
        size.width * 0.6100041,
        size.height * 0.8953946,
        size.width * 0.6100820,
        size.height * 0.8959203,
        size.width * 0.6100672,
        size.height * 0.8961452);
    path_0.cubicTo(
        size.width * 0.6086680,
        size.height * 0.8960792,
        size.width * 0.6093676,
        size.height * 0.8990378,
        size.width * 0.6093676,
        size.height * 0.8990378);
    path_0.cubicTo(
        size.width * 0.6088251,
        size.height * 0.8992237,
        size.width * 0.6095033,
        size.height * 0.8999425,
        size.width * 0.6092911,
        size.height * 0.8999817);
    path_0.cubicTo(
        size.width * 0.6074273,
        size.height * 0.9003264,
        size.width * 0.6086748,
        size.height * 0.9026835,
        size.width * 0.6086748,
        size.height * 0.9035662);
    path_0.cubicTo(
        size.width * 0.6086748,
        size.height * 0.9039795,
        size.width * 0.6078154,
        size.height * 0.9039795,
        size.width * 0.6085338,
        size.height * 0.9049306);
    path_0.cubicTo(
        size.width * 0.6089688,
        size.height * 0.9055052,
        size.width * 0.6048639,
        size.height * 0.9080946,
        size.width * 0.6048639,
        size.height * 0.9157993);
    path_0.cubicTo(
        size.width * 0.6048639,
        size.height * 0.9201418,
        size.width * 0.6065343,
        size.height * 0.9223033,
        size.width * 0.6044046,
        size.height * 0.9223033);
    path_0.cubicTo(
        size.width * 0.6036406,
        size.height * 0.9223033,
        size.width * 0.6051338,
        size.height * 0.9268757,
        size.width * 0.6039159,
        size.height * 0.9255016);
    path_0.lineTo(size.width * 0.6037413, size.height * 0.9143248);
    path_0.lineTo(size.width * 0.6038998, size.height * 0.9136011);
    path_0.lineTo(size.width * 0.6036943, size.height * 0.9099872);
    path_0.lineTo(size.width * 0.6033304, size.height * 0.9042875);
    path_0.lineTo(size.width * 0.6032042, size.height * 0.9042875);
    path_0.lineTo(size.width * 0.6028416, size.height * 0.9099872);
    path_0.lineTo(size.width * 0.6026348, size.height * 0.9136011);
    path_0.lineTo(size.width * 0.6027946, size.height * 0.9143248);
    path_0.cubicTo(
        size.width * 0.6027946,
        size.height * 0.9178923,
        size.width * 0.6033277,
        size.height * 0.9226579,
        size.width * 0.6025140,
        size.height * 0.9259295);
    path_0.cubicTo(
        size.width * 0.6013296,
        size.height * 0.9265579,
        size.width * 0.6013699,
        size.height * 0.9277193,
        size.width * 0.6021931,
        size.height * 0.9289737);
    path_0.lineTo(size.width * 0.6021931, size.height * 0.9320594);
    path_0.lineTo(size.width * 0.5954911, size.height * 0.9352063);
    path_0.cubicTo(
        size.width * 0.5954911,
        size.height * 0.9352063,
        size.width * 0.5954911,
        size.height * 0.9366881,
        size.width * 0.5954911,
        size.height * 0.9376686);
    path_0.cubicTo(
        size.width * 0.5965050,
        size.height * 0.9379766,
        size.width * 0.5988011,
        size.height * 0.9420600,
        size.width * 0.5991449,
        size.height * 0.9403166);
    path_0.lineTo(size.width * 0.5993933, size.height * 0.9403166);
    path_0.lineTo(size.width * 0.5993933, size.height * 0.9409206);
    path_0.lineTo(size.width * 0.5997357, size.height * 0.9409206);
    path_0.lineTo(size.width * 0.5997357, size.height * 0.9414487);
    path_0.cubicTo(
        size.width * 0.6026698,
        size.height * 0.9409304,
        size.width * 0.6022226,
        size.height * 0.9457057,
        size.width * 0.6022239,
        size.height * 0.9457082);
    path_0.cubicTo(
        size.width * 0.6028524,
        size.height * 0.9460456,
        size.width * 0.6025113,
        size.height * 0.9591931,
        size.width * 0.6025113,
        size.height * 0.9615380);
    path_0.lineTo(size.width * 0.5989086, size.height * 0.9615380);
    path_0.lineTo(size.width * 0.5989086, size.height * 0.9847986);
    path_0.lineTo(size.width * 0.5927451, size.height * 0.9888062);
    path_0.lineTo(size.width * 0.5927451, size.height * 0.8267058);
    path_0.lineTo(size.width * 0.5951299, size.height * 0.8262877);
    path_0.lineTo(size.width * 0.5951299, size.height * 0.7944715);
    path_0.lineTo(size.width * 0.5960618, size.height * 0.7927771);
    path_0.lineTo(size.width * 0.5960618, size.height * 0.7883660);
    path_0.lineTo(size.width * 0.5832045, size.height * 0.7737759);
    path_0.lineTo(size.width * 0.5781744, size.height * 0.7725215);
    path_0.lineTo(size.width * 0.5546969, size.height * 0.7778471);
    path_0.lineTo(size.width * 0.5546969, size.height * 0.7805612);
    path_0.cubicTo(
        size.width * 0.5521792,
        size.height * 0.7804707,
        size.width * 0.5522517,
        size.height * 0.7807348,
        size.width * 0.5500992,
        size.height * 0.7831897);
    path_0.lineTo(size.width * 0.5500992, size.height * 0.7877988);
    path_0.lineTo(size.width * 0.5511519, size.height * 0.7895030);
    path_0.lineTo(size.width * 0.5511519, size.height * 0.8226689);
    path_0.lineTo(size.width * 0.5533528, size.height * 0.8245736);
    path_0.lineTo(size.width * 0.5533528, size.height * 0.9724409);
    path_0.lineTo(size.width * 0.5426292, size.height * 0.9724409);
    path_0.lineTo(size.width * 0.5402376, size.height * 0.7240394);
    path_0.cubicTo(
        size.width * 0.5419202,
        size.height * 0.7209389,
        size.width * 0.5388586,
        size.height * 0.7148628,
        size.width * 0.5442580,
        size.height * 0.7108992);
    path_0.cubicTo(
        size.width * 0.5458828,
        size.height * 0.7097084,
        size.width * 0.5453980,
        size.height * 0.7083049,
        size.width * 0.5452261,
        size.height * 0.7077865);
    path_0.cubicTo(
        size.width * 0.5452261,
        size.height * 0.7077865,
        size.width * 0.5455390,
        size.height * 0.7069038,
        size.width * 0.5452557,
        size.height * 0.7062290);
    path_0.cubicTo(
        size.width * 0.5461527,
        size.height * 0.7039868,
        size.width * 0.5463219,
        size.height * 0.7036934,
        size.width * 0.5462816,
        size.height * 0.7010918);
    path_0.cubicTo(
        size.width * 0.5465219,
        size.height * 0.7007763,
        size.width * 0.5474445,
        size.height * 0.6983508,
        size.width * 0.5473894,
        size.height * 0.6966025);
    path_0.cubicTo(
        size.width * 0.5492519,
        size.height * 0.6947271,
        size.width * 0.5484784,
        size.height * 0.6913772,
        size.width * 0.5491324,
        size.height * 0.6901889);
    path_0.cubicTo(
        size.width * 0.5502133,
        size.height * 0.6882279,
        size.width * 0.5508713,
        size.height * 0.6839122,
        size.width * 0.5488772,
        size.height * 0.6824549);
    path_0.cubicTo(
        size.width * 0.5489323,
        size.height * 0.6805233,
        size.width * 0.5478433,
        size.height * 0.6788361,
        size.width * 0.5471356,
        size.height * 0.6781466);
    path_0.cubicTo(
        size.width * 0.5471356,
        size.height * 0.6757748,
        size.width * 0.5476875,
        size.height * 0.6741146,
        size.width * 0.5451684,
        size.height * 0.6715007);
    path_0.cubicTo(
        size.width * 0.5435168,
        size.height * 0.6697867,
        size.width * 0.5416060,
        size.height * 0.6694615,
        size.width * 0.5416060,
        size.height * 0.6694615);
    path_0.lineTo(size.width * 0.5411803, size.height * 0.6657033);
    path_0.cubicTo(
        size.width * 0.5424291,
        size.height * 0.6663561,
        size.width * 0.5410648,
        size.height * 0.6632435,
        size.width * 0.5402390,
        size.height * 0.6627227);
    path_0.lineTo(size.width * 0.5402390, size.height * 0.6617299);
    path_0.cubicTo(
        size.width * 0.5415254,
        size.height * 0.6608008,
        size.width * 0.5416650,
        size.height * 0.6580891,
        size.width * 0.5405049,
        size.height * 0.6567590);
    path_0.lineTo(size.width * 0.5404726, size.height * 0.6558812);
    path_0.cubicTo(
        size.width * 0.5426171,
        size.height * 0.6545779,
        size.width * 0.5406069,
        size.height * 0.6482010,
        size.width * 0.5376796,
        size.height * 0.6478660);
    path_0.cubicTo(
        size.width * 0.5377427,
        size.height * 0.6461128,
        size.width * 0.5371532,
        size.height * 0.6447093,
        size.width * 0.5371532,
        size.height * 0.6447093);
    path_0.lineTo(size.width * 0.5371532, size.height * 0.6421346);
    path_0.lineTo(size.width * 0.5368605, size.height * 0.6253218);
    path_0.lineTo(size.width * 0.5372808, size.height * 0.6235344);
    path_0.lineTo(size.width * 0.5369236, size.height * 0.6235344);
    path_0.lineTo(size.width * 0.5363811, size.height * 0.5968262);
    path_0.lineTo(size.width * 0.5358897, size.height * 0.5968262);
    path_0.lineTo(size.width * 0.5353472, size.height * 0.6235344);
    path_0.lineTo(size.width * 0.5349900, size.height * 0.6235344);
    path_0.lineTo(size.width * 0.5354103, size.height * 0.6253218);
    path_0.lineTo(size.width * 0.5351189, size.height * 0.6421346);
    path_0.lineTo(size.width * 0.5351189, size.height * 0.6447093);
    path_0.cubicTo(
        size.width * 0.5351189,
        size.height * 0.6447093,
        size.width * 0.5345294,
        size.height * 0.6461128,
        size.width * 0.5345925,
        size.height * 0.6478660);
    path_0.cubicTo(
        size.width * 0.5316652,
        size.height * 0.6482010,
        size.width * 0.5296550,
        size.height * 0.6545755,
        size.width * 0.5317982,
        size.height * 0.6558812);
    path_0.lineTo(size.width * 0.5317659, size.height * 0.6567590);
    path_0.cubicTo(
        size.width * 0.5306058,
        size.height * 0.6580891,
        size.width * 0.5307454,
        size.height * 0.6608032,
        size.width * 0.5320318,
        size.height * 0.6617299);
    path_0.lineTo(size.width * 0.5320318, size.height * 0.6627227);
    path_0.cubicTo(
        size.width * 0.5312060,
        size.height * 0.6632459,
        size.width * 0.5298430,
        size.height * 0.6663561,
        size.width * 0.5310905,
        size.height * 0.6657033);
    path_0.lineTo(size.width * 0.5306648, size.height * 0.6694615);
    path_0.cubicTo(
        size.width * 0.5296846,
        size.height * 0.6696302,
        size.width * 0.5253138,
        size.height * 0.6721095,
        size.width * 0.5251056,
        size.height * 0.6754716);
    path_0.cubicTo(
        size.width * 0.5251352,
        size.height * 0.6766135,
        size.width * 0.5251325,
        size.height * 0.6781490,
        size.width * 0.5251325,
        size.height * 0.6781490);
    path_0.cubicTo(
        size.width * 0.5244275,
        size.height * 0.6788410,
        size.width * 0.5233345,
        size.height * 0.6805257,
        size.width * 0.5233949,
        size.height * 0.6824574);
    path_0.cubicTo(
        size.width * 0.5213968,
        size.height * 0.6839147,
        size.width * 0.5220588,
        size.height * 0.6882279,
        size.width * 0.5231371,
        size.height * 0.6901913);
    path_0.cubicTo(
        size.width * 0.5237924,
        size.height * 0.6913846,
        size.width * 0.5230095,
        size.height * 0.6947442,
        size.width * 0.5248801,
        size.height * 0.6966049);
    path_0.cubicTo(
        size.width * 0.5248317,
        size.height * 0.6983532,
        size.width * 0.5257435,
        size.height * 0.7007739,
        size.width * 0.5259879,
        size.height * 0.7010942);
    path_0.cubicTo(
        size.width * 0.5259489,
        size.height * 0.7036958,
        size.width * 0.5261168,
        size.height * 0.7039892,
        size.width * 0.5270151,
        size.height * 0.7062314);
    path_0.cubicTo(
        size.width * 0.5267304,
        size.height * 0.7069087,
        size.width * 0.5270446,
        size.height * 0.7077890,
        size.width * 0.5270446,
        size.height * 0.7077890);
    path_0.cubicTo(
        size.width * 0.5255998,
        size.height * 0.7121267,
        size.width * 0.5315605,
        size.height * 0.7084761,
        size.width * 0.5315605,
        size.height * 0.7214402);
    path_0.cubicTo(
        size.width * 0.5315605,
        size.height * 0.7231738,
        size.width * 0.5320318,
        size.height * 0.7240418,
        size.width * 0.5320318,
        size.height * 0.7240418);
    path_0.lineTo(size.width * 0.5295006, size.height * 0.9870481);
    path_0.lineTo(size.width * 0.5275522, size.height * 0.9870481);
    path_0.lineTo(size.width * 0.5275522, size.height * 0.9863512);
    path_0.lineTo(size.width * 0.5232298, size.height * 0.9863512);
    path_0.lineTo(size.width * 0.5232298, size.height * 0.9857497);
    path_0.lineTo(size.width * 0.5213780, size.height * 0.9857497);
    path_0.cubicTo(
        size.width * 0.5212250,
        size.height * 0.9715875,
        size.width * 0.5196284,
        size.height * 0.9738126,
        size.width * 0.5261275,
        size.height * 0.9680812);
    path_0.lineTo(size.width * 0.5261275, size.height * 0.9668342);
    path_0.lineTo(size.width * 0.5186696, size.height * 0.9664918);
    path_0.lineTo(size.width * 0.5186696, size.height * 0.9651568);
    path_0.lineTo(size.width * 0.5189771, size.height * 0.9647607);
    path_0.lineTo(size.width * 0.5189771, size.height * 0.9645039);
    path_0.lineTo(size.width * 0.5179888, size.height * 0.9642203);
    path_0.cubicTo(
        size.width * 0.5179888,
        size.height * 0.9614035,
        size.width * 0.5176182,
        size.height * 0.9589682,
        size.width * 0.5188845,
        size.height * 0.9570658);
    path_0.lineTo(size.width * 0.5187448, size.height * 0.9562149);
    path_0.lineTo(size.width * 0.5176182, size.height * 0.9562149);
    path_0.cubicTo(
        size.width * 0.5180022,
        size.height * 0.9521095,
        size.width * 0.5149675,
        size.height * 0.9494859,
        size.width * 0.5149675,
        size.height * 0.9493001);
    path_0.lineTo(size.width * 0.5149608, size.height * 0.9484907);
    path_0.lineTo(size.width * 0.5149581, size.height * 0.9484369);
    path_0.lineTo(size.width * 0.5149205, size.height * 0.9443169);
    path_0.lineTo(size.width * 0.5148185, size.height * 0.9443169);
    path_0.lineTo(size.width * 0.5147889, size.height * 0.9484932);
    path_0.lineTo(size.width * 0.5147782, size.height * 0.9492903);
    path_0.cubicTo(
        size.width * 0.5145633,
        size.height * 0.9501363,
        size.width * 0.5117448,
        size.height * 0.9522049,
        size.width * 0.5121208,
        size.height * 0.9562100);
    path_0.lineTo(size.width * 0.5115165, size.height * 0.9562100);
    path_0.lineTo(size.width * 0.5113003, size.height * 0.9296754);
    path_0.lineTo(size.width * 0.5120308, size.height * 0.9285751);
    path_0.lineTo(size.width * 0.5120308, size.height * 0.9282646);
    path_0.lineTo(size.width * 0.5108344, size.height * 0.9264332);
    path_0.cubicTo(
        size.width * 0.5108344,
        size.height * 0.9264332,
        size.width * 0.5108008,
        size.height * 0.9085714,
        size.width * 0.5108290,
        size.height * 0.9079137);
    path_0.cubicTo(
        size.width * 0.5109754,
        size.height * 0.9076301,
        size.width * 0.5113272,
        size.height * 0.9071166,
        size.width * 0.5113272,
        size.height * 0.9071166);
    path_0.lineTo(size.width * 0.5108599, size.height * 0.9067865);
    path_0.lineTo(size.width * 0.5108599, size.height * 0.9061752);
    path_0.lineTo(size.width * 0.5105067, size.height * 0.9061752);
    path_0.lineTo(size.width * 0.5101804, size.height * 0.8909933);
    path_0.lineTo(size.width * 0.5107377, size.height * 0.8886925);
    path_0.lineTo(size.width * 0.5102973, size.height * 0.8884553);
    path_0.cubicTo(
        size.width * 0.5102973,
        size.height * 0.8884553,
        size.width * 0.5102973,
        size.height * 0.8881741,
        size.width * 0.5102973,
        size.height * 0.8879418);
    path_0.cubicTo(
        size.width * 0.5101522,
        size.height * 0.8879418,
        size.width * 0.5097118,
        size.height * 0.8873305,
        size.width * 0.5097118,
        size.height * 0.8873305);
    path_0.cubicTo(
        size.width * 0.5095708,
        size.height * 0.8831396,
        size.width * 0.5100206,
        size.height * 0.8777211,
        size.width * 0.5086322,
        size.height * 0.8742637);
    path_0.cubicTo(
        size.width * 0.5072437,
        size.height * 0.8777236,
        size.width * 0.5076949,
        size.height * 0.8831420,
        size.width * 0.5075526,
        size.height * 0.8873305);
    path_0.cubicTo(
        size.width * 0.5075526,
        size.height * 0.8873305,
        size.width * 0.5071121,
        size.height * 0.8879418,
        size.width * 0.5069671,
        size.height * 0.8879418);
    path_0.cubicTo(
        size.width * 0.5069671,
        size.height * 0.8881765,
        size.width * 0.5069671,
        size.height * 0.8884553,
        size.width * 0.5069671,
        size.height * 0.8884553);
    path_0.lineTo(size.width * 0.5065267, size.height * 0.8886925);
    path_0.lineTo(size.width * 0.5070839, size.height * 0.8909933);
    path_0.lineTo(size.width * 0.5067576, size.height * 0.9061752);
    path_0.lineTo(size.width * 0.5064045, size.height * 0.9061752);
    path_0.lineTo(size.width * 0.5064045, size.height * 0.9067865);
    path_0.lineTo(size.width * 0.5059372, size.height * 0.9071166);
    path_0.cubicTo(
        size.width * 0.5059372,
        size.height * 0.9071166,
        size.width * 0.5062890,
        size.height * 0.9076301,
        size.width * 0.5064367,
        size.height * 0.9079137);
    path_0.cubicTo(
        size.width * 0.5064662,
        size.height * 0.9085714,
        size.width * 0.5064313,
        size.height * 0.9264332,
        size.width * 0.5064313,
        size.height * 0.9264332);
    path_0.lineTo(size.width * 0.5052349, size.height * 0.9282646);
    path_0.lineTo(size.width * 0.5052349, size.height * 0.9285751);
    path_0.lineTo(size.width * 0.5059654, size.height * 0.9296754);
    path_0.lineTo(size.width * 0.5060164, size.height * 0.9384290);
    path_0.lineTo(size.width * 0.5040640, size.height * 0.9358176);
    path_0.lineTo(size.width * 0.5040183, size.height * 0.9310007);
    path_0.lineTo(size.width * 0.5039203, size.height * 0.9310007);
    path_0.lineTo(size.width * 0.5038934, size.height * 0.9350400);
    path_0.lineTo(size.width * 0.5038814, size.height * 0.9358127);
    path_0.cubicTo(
        size.width * 0.5036840,
        size.height * 0.9366147,
        size.width * 0.5009514,
        size.height * 0.9386344,
        size.width * 0.5013112,
        size.height * 0.9425026);
    path_0.lineTo(size.width * 0.5002222, size.height * 0.9425026);
    path_0.lineTo(size.width * 0.5000880, size.height * 0.9433266);
    path_0.cubicTo(
        size.width * 0.5015086,
        size.height * 0.9454588,
        size.width * 0.5009554,
        size.height * 0.9489871,
        size.width * 0.5009554,
        size.height * 0.9520900);
    path_0.lineTo(size.width * 0.4986632, size.height * 0.9519482);
    path_0.lineTo(size.width * 0.4986632, size.height * 0.9517036);
    path_0.lineTo(size.width * 0.4978616, size.height * 0.9516083);
    path_0.cubicTo(
        size.width * 0.4978616,
        size.height * 0.9501583,
        size.width * 0.4981852,
        size.height * 0.9484149,
        size.width * 0.4977018,
        size.height * 0.9469845);
    path_0.lineTo(size.width * 0.4979166, size.height * 0.9469845);
    path_0.lineTo(size.width * 0.4992259, size.height * 0.9443169);
    path_0.lineTo(size.width * 0.4991722, size.height * 0.9408521);
    path_0.lineTo(size.width * 0.4968196, size.height * 0.9401015);
    path_0.cubicTo(
        size.width * 0.4968196,
        size.height * 0.9350278,
        size.width * 0.4963254,
        size.height * 0.9346219,
        size.width * 0.4990392,
        size.height * 0.9326267);
    path_0.lineTo(size.width * 0.4990392, size.height * 0.9321401);
    path_0.cubicTo(
        size.width * 0.4990392,
        size.height * 0.9321401,
        size.width * 0.4981570,
        size.height * 0.9323846,
        size.width * 0.4977582,
        size.height * 0.9321401);
    path_0.cubicTo(
        size.width * 0.4996274,
        size.height * 0.9290543,
        size.width * 0.4970452,
        size.height * 0.9317636,
        size.width * 0.4962596,
        size.height * 0.9307268);
    path_0.cubicTo(
        size.width * 0.4962596,
        size.height * 0.9307170,
        size.width * 0.4969525,
        size.height * 0.9237924,
        size.width * 0.4957091,
        size.height * 0.9190024);
    path_0.cubicTo(
        size.width * 0.4923293,
        size.height * 0.9059918,
        size.width * 0.4851198,
        size.height * 0.9043193,
        size.width * 0.4843906,
        size.height * 0.9016126);
    path_0.cubicTo(
        size.width * 0.4851842,
        size.height * 0.9009646,
        size.width * 0.4851574,
        size.height * 0.8988202,
        size.width * 0.4843490,
        size.height * 0.8982358);
    path_0.lineTo(size.width * 0.4843490, size.height * 0.8980500);
    path_0.lineTo(size.width * 0.4842268, size.height * 0.8806651);
    path_0.lineTo(size.width * 0.4838052, size.height * 0.8806651);
    path_0.lineTo(size.width * 0.4836346, size.height * 0.8982236);
    path_0.cubicTo(
        size.width * 0.4828128,
        size.height * 0.8987762,
        size.width * 0.4827726,
        size.height * 0.9009426,
        size.width * 0.4835662,
        size.height * 0.9016003);
    path_0.cubicTo(
        size.width * 0.4828370,
        size.height * 0.9043413,
        size.width * 0.4756316,
        size.height * 0.9059698,
        size.width * 0.4722464,
        size.height * 0.9189999);
    path_0.cubicTo(
        size.width * 0.4710016,
        size.height * 0.9237900,
        size.width * 0.4716931,
        size.height * 0.9307121,
        size.width * 0.4716931,
        size.height * 0.9307244);
    path_0.cubicTo(
        size.width * 0.4709210,
        size.height * 0.9317733,
        size.width * 0.4683227,
        size.height * 0.9290397,
        size.width * 0.4701972,
        size.height * 0.9321377);
    path_0.cubicTo(
        size.width * 0.4697971,
        size.height * 0.9323822,
        size.width * 0.4689149,
        size.height * 0.9321377,
        size.width * 0.4689149,
        size.height * 0.9321377);
    path_0.lineTo(size.width * 0.4689149, size.height * 0.9326242);
    path_0.cubicTo(
        size.width * 0.4716287,
        size.height * 0.9346195,
        size.width * 0.4711332,
        size.height * 0.9350254,
        size.width * 0.4711332,
        size.height * 0.9400990);
    path_0.lineTo(size.width * 0.4687819, size.height * 0.9408497);
    path_0.lineTo(size.width * 0.4687269, size.height * 0.9443144);
    path_0.lineTo(size.width * 0.4700361, size.height * 0.9469821);
    path_0.lineTo(size.width * 0.4702510, size.height * 0.9469821);
    path_0.cubicTo(
        size.width * 0.4697689,
        size.height * 0.9484125,
        size.width * 0.4700912,
        size.height * 0.9501559,
        size.width * 0.4700912,
        size.height * 0.9516058);
    path_0.lineTo(size.width * 0.4692895, size.height * 0.9517012);
    path_0.lineTo(size.width * 0.4692895, size.height * 0.9519457);
    path_0.lineTo(size.width * 0.4670000, size.height * 0.9520875);
    path_0.cubicTo(
        size.width * 0.4670000,
        size.height * 0.9489847,
        size.width * 0.4664468,
        size.height * 0.9454563,
        size.width * 0.4678675,
        size.height * 0.9433242);
    path_0.lineTo(size.width * 0.4677305, size.height * 0.9425002);
    path_0.lineTo(size.width * 0.4666415, size.height * 0.9425002);
    path_0.cubicTo(
        size.width * 0.4670027,
        size.height * 0.9386295,
        size.width * 0.4642742,
        size.height * 0.9366196,
        size.width * 0.4640714,
        size.height * 0.9358103);
    path_0.lineTo(size.width * 0.4640607, size.height * 0.9349814);
    path_0.lineTo(size.width * 0.4640311, size.height * 0.9309982);
    path_0.lineTo(size.width * 0.4639358, size.height * 0.9309982);
    path_0.lineTo(size.width * 0.4638968, size.height * 0.9349838);
    path_0.lineTo(size.width * 0.4638874, size.height * 0.9358151);
    path_0.cubicTo(
        size.width * 0.4638874,
        size.height * 0.9359936,
        size.width * 0.4609521,
        size.height * 0.9385317,
        size.width * 0.4613240,
        size.height * 0.9424977);
    path_0.lineTo(size.width * 0.4602364, size.height * 0.9424977);
    path_0.lineTo(size.width * 0.4600994, size.height * 0.9433217);
    path_0.cubicTo(
        size.width * 0.4615577,
        size.height * 0.9455077,
        size.width * 0.4609668,
        size.height * 0.9492830,
        size.width * 0.4609668,
        size.height * 0.9524543);
    path_0.lineTo(size.width * 0.4573990, size.height * 0.9526719);
    path_0.lineTo(size.width * 0.4578247, size.height * 0.9569045);
    path_0.lineTo(size.width * 0.4578247, size.height * 0.9661520);
    path_0.lineTo(size.width * 0.4568780, size.height * 0.9661520);
    path_0.lineTo(size.width * 0.4568780, size.height * 0.9651519);
    path_0.lineTo(size.width * 0.4571869, size.height * 0.9647558);
    path_0.lineTo(size.width * 0.4571869, size.height * 0.9644991);
    path_0.lineTo(size.width * 0.4561999, size.height * 0.9642154);
    path_0.cubicTo(
        size.width * 0.4561999,
        size.height * 0.9614035,
        size.width * 0.4558279,
        size.height * 0.9589608,
        size.width * 0.4570942,
        size.height * 0.9570609);
    path_0.lineTo(size.width * 0.4571103, size.height * 0.9565206);
    path_0.lineTo(size.width * 0.4569559, size.height * 0.9562100);
    path_0.lineTo(size.width * 0.4558306, size.height * 0.9562100);
    path_0.cubicTo(
        size.width * 0.4562442,
        size.height * 0.9517477,
        size.width * 0.4533935,
        size.height * 0.9501730,
        size.width * 0.4531732,
        size.height * 0.9492879);
    path_0.lineTo(size.width * 0.4531612, size.height * 0.9484321);
    path_0.lineTo(size.width * 0.4531343, size.height * 0.9443144);
    path_0.lineTo(size.width * 0.4530322, size.height * 0.9443144);
    path_0.lineTo(size.width * 0.4529839, size.height * 0.9492952);
    path_0.cubicTo(
        size.width * 0.4529839,
        size.height * 0.9494810,
        size.width * 0.4499519,
        size.height * 0.9521071,
        size.width * 0.4503346,
        size.height * 0.9562100);
    path_0.lineTo(size.width * 0.4492066, size.height * 0.9562100);
    path_0.lineTo(size.width * 0.4490670, size.height * 0.9570609);
    path_0.cubicTo(
        size.width * 0.4503332,
        size.height * 0.9589633,
        size.width * 0.4499626,
        size.height * 0.9613986,
        size.width * 0.4499626,
        size.height * 0.9642154);
    path_0.lineTo(size.width * 0.4489756, size.height * 0.9644991);
    path_0.lineTo(size.width * 0.4489756, size.height * 0.9647558);
    path_0.lineTo(size.width * 0.4492845, size.height * 0.9651519);
    path_0.lineTo(size.width * 0.4492845, size.height * 0.9664869);
    path_0.lineTo(size.width * 0.4418266, size.height * 0.9668293);
    path_0.lineTo(size.width * 0.4418266, size.height * 0.9680763);
    path_0.cubicTo(
        size.width * 0.4483244,
        size.height * 0.9738101,
        size.width * 0.4467291,
        size.height * 0.9715851,
        size.width * 0.4465734,
        size.height * 0.9857448);
    path_0.lineTo(size.width * 0.4447217, size.height * 0.9857448);
    path_0.lineTo(size.width * 0.4447217, size.height * 0.9863464);
    path_0.lineTo(size.width * 0.4404005, size.height * 0.9863464);
    path_0.lineTo(size.width * 0.4404005, size.height * 0.9870432);
    path_0.lineTo(size.width * 0.4362969, size.height * 0.9870432);
    path_0.lineTo(size.width * 0.4362969, size.height * 0.9072119);
    path_0.lineTo(size.width * 0.4316159, size.height * 0.9072119);
    path_0.lineTo(size.width * 0.4316159, size.height * 0.8380683);
    path_0.lineTo(size.width * 0.4290324, size.height * 0.8380683);
    path_0.lineTo(size.width * 0.4290324, size.height * 0.8157247);
    path_0.lineTo(size.width * 0.4279018, size.height * 0.8157247);
    path_0.lineTo(size.width * 0.4279018, size.height * 0.8069026);
    path_0.cubicTo(
        size.width * 0.4261118,
        size.height * 0.8039562,
        size.width * 0.4263428,
        size.height * 0.8034281,
        size.width * 0.4239633,
        size.height * 0.8034281);
    path_0.lineTo(size.width * 0.4239633, size.height * 0.7998533);
    path_0.lineTo(size.width * 0.4148242, size.height * 0.7817373);
    path_0.lineTo(size.width * 0.4056878, size.height * 0.7998533);
    path_0.lineTo(size.width * 0.4056878, size.height * 0.8034281);
    path_0.cubicTo(
        size.width * 0.4033084,
        size.height * 0.8034281,
        size.width * 0.4035380,
        size.height * 0.8039587,
        size.width * 0.4017481,
        size.height * 0.8069026);
    path_0.lineTo(size.width * 0.4017481, size.height * 0.8157247);
    path_0.lineTo(size.width * 0.4006188, size.height * 0.8157247);
    path_0.lineTo(size.width * 0.4006188, size.height * 0.8380683);
    path_0.lineTo(size.width * 0.3980352, size.height * 0.8380683);
    path_0.lineTo(size.width * 0.3980352, size.height * 0.9072119);
    path_0.lineTo(size.width * 0.3933542, size.height * 0.9072119);
    path_0.lineTo(size.width * 0.3933542, size.height * 0.9656849);
    path_0.lineTo(size.width * 0.3925365, size.height * 0.9656849);
    path_0.lineTo(size.width * 0.3925365, size.height * 0.9438865);
    path_0.lineTo(size.width * 0.3909573, size.height * 0.9438865);
    path_0.lineTo(size.width * 0.3909573, size.height * 0.9380256);
    path_0.lineTo(size.width * 0.3809199, size.height * 0.9380256);
    path_0.lineTo(size.width * 0.3809199, size.height * 0.8224855);
    path_0.lineTo(size.width * 0.3793059, size.height * 0.8224855);
    path_0.lineTo(size.width * 0.3793059, size.height * 0.8033743);
    path_0.lineTo(size.width * 0.3786586, size.height * 0.8033743);
    path_0.lineTo(size.width * 0.3786586, size.height * 0.7538627);
    path_0.lineTo(size.width * 0.3777751, size.height * 0.7538627);
    path_0.lineTo(size.width * 0.3777751, size.height * 0.7523467);
    path_0.lineTo(size.width * 0.3784115, size.height * 0.7523467);
    path_0.lineTo(size.width * 0.3784115, size.height * 0.7501290);
    path_0.lineTo(size.width * 0.3777751, size.height * 0.7501290);
    path_0.lineTo(size.width * 0.3777751, size.height * 0.7446886);
    path_0.lineTo(size.width * 0.3736540, size.height * 0.7426640);
    path_0.lineTo(size.width * 0.3736540, size.height * 0.7376661);
    path_0.lineTo(size.width * 0.3724428, size.height * 0.7376661);
    path_0.lineTo(size.width * 0.3724428, size.height * 0.7335925);
    path_0.lineTo(size.width * 0.3636220, size.height * 0.7208974);
    path_0.lineTo(size.width * 0.3636220, size.height * 0.7156183);
    path_0.lineTo(size.width * 0.3643471, size.height * 0.7156183);
    path_0.lineTo(size.width * 0.3643471, size.height * 0.7144422);
    path_0.lineTo(size.width * 0.3636220, size.height * 0.7144422);
    path_0.lineTo(size.width * 0.3636220, size.height * 0.7132636);
    path_0.lineTo(size.width * 0.3643471, size.height * 0.7132636);
    path_0.lineTo(size.width * 0.3643471, size.height * 0.7121609);
    path_0.lineTo(size.width * 0.3636220, size.height * 0.7121609);
    path_0.lineTo(size.width * 0.3636220, size.height * 0.7109481);
    path_0.lineTo(size.width * 0.3643471, size.height * 0.7109481);
    path_0.lineTo(size.width * 0.3643471, size.height * 0.7098160);
    path_0.lineTo(size.width * 0.3635199, size.height * 0.7098160);
    path_0.lineTo(size.width * 0.3635199, size.height * 0.7035149);
    path_0.lineTo(size.width * 0.3631976, size.height * 0.7035149);
    path_0.lineTo(size.width * 0.3631976, size.height * 0.7095373);
    path_0.lineTo(size.width * 0.3616252, size.height * 0.7082193);
    path_0.lineTo(size.width * 0.3616252, size.height * 0.6926145);
    path_0.lineTo(size.width * 0.3614641, size.height * 0.6926145);
    path_0.lineTo(size.width * 0.3614641, size.height * 0.6842325);
    path_0.lineTo(size.width * 0.3611418, size.height * 0.6842325);
    path_0.lineTo(size.width * 0.3611418, size.height * 0.6926145);
    path_0.lineTo(size.width * 0.3609807, size.height * 0.6926145);
    path_0.lineTo(size.width * 0.3609807, size.height * 0.7082193);
    path_0.lineTo(size.width * 0.3593102, size.height * 0.7096228);
    path_0.lineTo(size.width * 0.3593102, size.height * 0.7035149);
    path_0.lineTo(size.width * 0.3589866, size.height * 0.7035149);
    path_0.lineTo(size.width * 0.3589866, size.height * 0.7098160);
    path_0.lineTo(size.width * 0.3582615, size.height * 0.7098160);
    path_0.lineTo(size.width * 0.3582615, size.height * 0.7109481);
    path_0.lineTo(size.width * 0.3589853, size.height * 0.7109481);
    path_0.lineTo(size.width * 0.3589853, size.height * 0.7121609);
    path_0.lineTo(size.width * 0.3582615, size.height * 0.7121609);
    path_0.lineTo(size.width * 0.3582615, size.height * 0.7132636);
    path_0.lineTo(size.width * 0.3589853, size.height * 0.7132636);
    path_0.lineTo(size.width * 0.3589853, size.height * 0.7144422);
    path_0.lineTo(size.width * 0.3582615, size.height * 0.7144422);
    path_0.lineTo(size.width * 0.3582615, size.height * 0.7156183);
    path_0.lineTo(size.width * 0.3589853, size.height * 0.7156183);
    path_0.lineTo(size.width * 0.3589853, size.height * 0.7208974);
    path_0.lineTo(size.width * 0.3501644, size.height * 0.7335925);
    path_0.lineTo(size.width * 0.3501644, size.height * 0.7376661);
    path_0.lineTo(size.width * 0.3489532, size.height * 0.7376661);
    path_0.lineTo(size.width * 0.3489532, size.height * 0.7426640);
    path_0.lineTo(size.width * 0.3448335, size.height * 0.7446886);
    path_0.lineTo(size.width * 0.3448335, size.height * 0.7501290);
    path_0.lineTo(size.width * 0.3441957, size.height * 0.7501290);
    path_0.lineTo(size.width * 0.3441957, size.height * 0.7523467);
    path_0.lineTo(size.width * 0.3448335, size.height * 0.7523467);
    path_0.lineTo(size.width * 0.3448335, size.height * 0.7538627);
    path_0.lineTo(size.width * 0.3439486, size.height * 0.7538627);
    path_0.lineTo(size.width * 0.3439486, size.height * 0.8033743);
    path_0.lineTo(size.width * 0.3433027, size.height * 0.8033743);
    path_0.lineTo(size.width * 0.3433027, size.height * 0.8224855);
    path_0.lineTo(size.width * 0.3416873, size.height * 0.8224855);
    path_0.lineTo(size.width * 0.3416873, size.height * 0.9380256);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9380256);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9359667);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.9359667);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9345461);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.9334654,
        size.width * 0.3340320,
        size.height * 0.9323675,
        size.width * 0.3340320,
        size.height * 0.9312501);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.9312501);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9298270);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.9287438,
        size.width * 0.3340320,
        size.height * 0.9276484,
        size.width * 0.3340320,
        size.height * 0.9265310);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.9265310);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9251103);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.9240247,
        size.width * 0.3340320,
        size.height * 0.9229293,
        size.width * 0.3340320,
        size.height * 0.9218143);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.9218143);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9203912);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.9193080,
        size.width * 0.3340320,
        size.height * 0.9182053,
        size.width * 0.3340320,
        size.height * 0.9171001);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.9171001);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9156770);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.9145914,
        size.width * 0.3340320,
        size.height * 0.9134910,
        size.width * 0.3340320,
        size.height * 0.9123810);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.9123810);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9109628);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.9098722,
        size.width * 0.3340320,
        size.height * 0.9087744,
        size.width * 0.3340320,
        size.height * 0.9076667);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.9076667);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9062437);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.9051531,
        size.width * 0.3340320,
        size.height * 0.9040553,
        size.width * 0.3340320,
        size.height * 0.9029476);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.9029476);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.9015294);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.9004365,
        size.width * 0.3340320,
        size.height * 0.8993386,
        size.width * 0.3340320,
        size.height * 0.8982334);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8982334);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8968152);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8957222,
        size.width * 0.3340320,
        size.height * 0.8946219,
        size.width * 0.3340320,
        size.height * 0.8935192);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8935192);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8920961);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8910031,
        size.width * 0.3340320,
        size.height * 0.8899028,
        size.width * 0.3340320,
        size.height * 0.8888000);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8888000);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8873794);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8862840,
        size.width * 0.3340320,
        size.height * 0.8851886,
        size.width * 0.3340320,
        size.height * 0.8840834);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8840834);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8826652);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8815698,
        size.width * 0.3340320,
        size.height * 0.8804695,
        size.width * 0.3340320,
        size.height * 0.8793692);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8793692);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8779461);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8768507,
        size.width * 0.3340320,
        size.height * 0.8757528,
        size.width * 0.3340320,
        size.height * 0.8746500);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8746500);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8732294);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8721340,
        size.width * 0.3340320,
        size.height * 0.8710337,
        size.width * 0.3340320,
        size.height * 0.8699334);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8699334);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8685103);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8674149,
        size.width * 0.3340320,
        size.height * 0.8663146,
        size.width * 0.3340320,
        size.height * 0.8652191);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8652191);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8637961);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8627007,
        size.width * 0.3340320,
        size.height * 0.8616003,
        size.width * 0.3340320,
        size.height * 0.8605000);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8605000);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8590819);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8579815,
        size.width * 0.3340320,
        size.height * 0.8568812,
        size.width * 0.3340320,
        size.height * 0.8557858);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8557858);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8543627);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8532673,
        size.width * 0.3340320,
        size.height * 0.8521670,
        size.width * 0.3340320,
        size.height * 0.8510667);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8510667);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8496461);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8485458,
        size.width * 0.3340320,
        size.height * 0.8474479,
        size.width * 0.3340320,
        size.height * 0.8463500);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8463500);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8449318);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8438291,
        size.width * 0.3340320,
        size.height * 0.8427312,
        size.width * 0.3340320,
        size.height * 0.8416358);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8416358);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8402127);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8391124,
        size.width * 0.3340320,
        size.height * 0.8380121,
        size.width * 0.3340320,
        size.height * 0.8369167);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8369167);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8354985);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8343957,
        size.width * 0.3340320,
        size.height * 0.8333003,
        size.width * 0.3340320,
        size.height * 0.8322025);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8322025);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8307818);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8296791,
        size.width * 0.3340320,
        size.height * 0.8285812,
        size.width * 0.3340320,
        size.height * 0.8274858);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8274858);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8260627);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8249600,
        size.width * 0.3340320,
        size.height * 0.8238621,
        size.width * 0.3340320,
        size.height * 0.8227667);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8227667);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8213485);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8202408,
        size.width * 0.3340320,
        size.height * 0.8191454,
        size.width * 0.3340320,
        size.height * 0.8180524);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8180524);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8166318);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8155266,
        size.width * 0.3340320,
        size.height * 0.8144263,
        size.width * 0.3340320,
        size.height * 0.8133358);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8133358);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8119127);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8108075,
        size.width * 0.3340320,
        size.height * 0.8097072,
        size.width * 0.3340320,
        size.height * 0.8086167);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8086167);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8071960);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8060884,
        size.width * 0.3340320,
        size.height * 0.8049881,
        size.width * 0.3340320,
        size.height * 0.8039000);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.8039000);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.8024769);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.8013717,
        size.width * 0.3340320,
        size.height * 0.8002690,
        size.width * 0.3340320,
        size.height * 0.7991858);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7991858);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7977627);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.7966502,
        size.width * 0.3340320,
        size.height * 0.7955547,
        size.width * 0.3340320,
        size.height * 0.7944667);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7944667);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7930460);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.7919310,
        size.width * 0.3340320,
        size.height * 0.7908332,
        size.width * 0.3340320,
        size.height * 0.7897500);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7897500);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7883269);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.7872119,
        size.width * 0.3340320,
        size.height * 0.7861116,
        size.width * 0.3340320,
        size.height * 0.7850309);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7850309);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7836127);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.7824904,
        size.width * 0.3340320,
        size.height * 0.7813950,
        size.width * 0.3340320,
        size.height * 0.7803166);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7803166);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7788985);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.7777688,
        size.width * 0.3340320,
        size.height * 0.7766734,
        size.width * 0.3340320,
        size.height * 0.7756024);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7756024);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7741794);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.7730448,
        size.width * 0.3340320,
        size.height * 0.7719469,
        size.width * 0.3340320,
        size.height * 0.7708833);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7708833);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7694627);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.7683184,
        size.width * 0.3340320,
        size.height * 0.7672132,
        size.width * 0.3340320,
        size.height * 0.7661666);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7661666);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7647485);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.7635723,
        size.width * 0.3340320,
        size.height * 0.7624769,
        size.width * 0.3340320,
        size.height * 0.7614524);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7614524);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7600293);
    path_0.cubicTo(
        size.width * 0.3340320,
        size.height * 0.7587945,
        size.width * 0.3340320,
        size.height * 0.7576918,
        size.width * 0.3340320,
        size.height * 0.7567333);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7567333);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7553127);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7520166);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7520166);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7505936);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7473024);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7473024);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7458793);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7425833);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7425833);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7411651);
    path_0.lineTo(size.width * 0.3340320, size.height * 0.7378691);
    path_0.lineTo(size.width * 0.3348767, size.height * 0.7378691);
    path_0.close();
    path_0.moveTo(size.width * 0.9414137, size.height * 0.8558518);
    path_0.lineTo(size.width * 0.9426208, size.height * 0.8577566);
    path_0.lineTo(size.width * 0.9428223, size.height * 0.8665640);
    path_0.cubicTo(
        size.width * 0.9439865,
        size.height * 0.8458341,
        size.width * 0.9478833,
        size.height * 0.7882805,
        size.width * 0.9568048,
        size.height * 0.7502684);
    path_0.lineTo(size.width * 0.9611595, size.height * 0.7472877);
    path_0.cubicTo(
        size.width * 0.9500210,
        size.height * 0.7448842,
        size.width * 0.9508979,
        size.height * 0.7355340,
        size.width * 0.9579664,
        size.height * 0.7304432);
    path_0.lineTo(size.width * 0.9467191, size.height * 0.6797750);
    path_0.lineTo(size.width * 0.9454394, size.height * 0.6808509);
    path_0.lineTo(size.width * 0.9454394, size.height * 0.6847974);
    path_0.lineTo(size.width * 0.9422878, size.height * 0.6869491);
    path_0.lineTo(size.width * 0.9413036, size.height * 0.6847974);
    path_0.lineTo(size.width * 0.9402199, size.height * 0.6860517);
    path_0.lineTo(size.width * 0.9424047, size.height * 0.8537588);
    path_0.lineTo(size.width * 0.9414137, size.height * 0.8558518);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff2B2A29).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
