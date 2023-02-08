import 'package:flutter/material.dart';
import 'package:proms_mobile/widgets/skyline_painter.dart';

class BgContainer extends StatelessWidget {
  const BgContainer({super.key});

  final double _height = 480;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Visibility(
            child: SizedBox(
          height: _height - 20,
          child: Center(
            child: CustomPaint(
              size: Size(width, _height),
              painter: SkylinePainter(),
            ),
          ),
        )),
      ],
    );
  }
}

class ShapeClipper extends CustomClipper<Path> {
  List<Offset> _offsets = [];
  ShapeClipper(this._offsets);
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height - 20);
    path.quadraticBezierTo(
        _offsets[0].dx, _offsets[0].dy, _offsets[1].dx, _offsets[1].dy);
    path.quadraticBezierTo(
        _offsets[2].dx, _offsets[2].dy, _offsets[3].dx, _offsets[3].dy);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
