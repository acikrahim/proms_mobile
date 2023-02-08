import 'package:flutter/material.dart';

import '../../shared/styles/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(12.0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [Text('Good Morning')]),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Material(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              elevation: 24.0,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Monthly Fee',
                                  style: TxtStyle().cardTopTitle(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Expanded(
                                      flex: 1,
                                      child: FittedBox(
                                          child: Icon(Icons.local_atm_sharp))),
                                  Expanded(
                                      flex: 4,
                                      child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Text(
                                            'Maintenance Fee along with Sinking Fund',
                                            style: TxtStyle().cardMidBtmDesc(),
                                            textAlign: TextAlign.start,
                                          ))),
                                  Expanded(
                                      flex: 3,
                                      child: Text(
                                        'RM 164.00',
                                        style: TxtStyle().cardEndDesc(),
                                        textAlign: TextAlign.end,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )))),
    );
  }
}
