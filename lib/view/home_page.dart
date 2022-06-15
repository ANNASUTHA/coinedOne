import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, double> dataMap = {
    "Class": 9,
    "Study": 1,
    "Free-time": 2,
  };
  final colorList = <Color>[
    const Color(0xff0984e3),
    const Color(0xff90EE90),
    const Color(0xffe17055),
    const Color(0xffFFA600),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Coined one",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Dashboard",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 3.2,
            colorList: colorList,
            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 12,
            centerText: "Total",
            legendOptions: const LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              // legendShape: _BoxShape.circle,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: const ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: false,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 1,
            ),
            // gradientList: ---To add gradient colors---
            // emptyColorGradient: ---Empty Color gradient---
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 32.0, right: 32.0, top: 16.0, bottom: 16.0),
            child: Divider(
              thickness: 2,
            ),
          ),
          const Text(
            "Free-time Usage",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Used",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "30m",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Max",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "2h",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ],
                  ),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: StepProgressIndicator(
              totalSteps: 100,
              currentStep: 32,
              size: 26,
              padding: 0,
              selectedColor: Colors.green,
              //unselectedColor: Colors.grey,
              roundedEdges: Radius.circular(10),
              selectedGradientColor: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green, Colors.green],
              ),
              /*unselectedGradientColor: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Colors.blue],
              ),*/
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
    side: const BorderSide(width: 2.0, color: Colors.blue,),
              fixedSize: const Size(340, 50),
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text(
              'Extend Free-time',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Change Time Restrictions",
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 32.0, right: 32.0, top: 16.0, bottom: 16.0),
            child: Divider(
              thickness: 2,
            ),
          ),
          const Text(
            "By Devices",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
