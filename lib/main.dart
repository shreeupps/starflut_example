//
//import 'package:flutter/material.dart';
//import 'dart:async';
//import 'package:starflut/starflut.dart';
//
//void main() => runApp( SPR() );
//class SPR extends StatefulWidget
//{
//  @override
//  State<StatefulWidget> createState() => dash();
//
//}
//class dash extends State< SPR >
//{
//
//   var data;
//
//  Future<void> testCallPython()
//  async {
//    StarCoreFactory starcore = await Starflut.getFactory();
//    StarServiceClass Service = await starcore.initSimple("test", "123", 0, 0, []);
//    await starcore.regMsgCallBackP(
//            (int serviceGroupID, int uMsg, Object wParam, Object lParam) async{
//          print("$serviceGroupID  $uMsg   $wParam   $lParam");
//          return null;
//        });
//    StarSrvGroupClass SrvGroup = await Service["_ServiceGroup"];
//
///*---script python--*/
//    bool isAndroid = await Starflut.isAndroid();
//    if( isAndroid == true ){
//      await Starflut.copyFileFromAssets("testpy.py", "flutter_assets/starfiles","flutter_assets/starfiles");
//      String libraryDir = await Starflut.getNativeLibraryDir();
//      String docPath = await Starflut.getDocumentPath();
//      if( libraryDir.indexOf("arm64") > 0 ){
//        Starflut.unzipFromAssets("lib-dynload-arm64.zip", docPath, true);
//      }else if( libraryDir.indexOf("x86_64") > 0 ){
//        Starflut.unzipFromAssets("lib-dynload-x86_64.zip", docPath, true);
//      }else if( libraryDir.indexOf("arm") > 0 ){
//        Starflut.unzipFromAssets("lib-dynload-armeabi.zip", docPath, true);
//      }else{  //x86
//        Starflut.unzipFromAssets("lib-dynload-x86.zip", docPath, true);
//      }
//      await Starflut.copyFileFromAssets("python3.6.zip", "flutter_assets/starfiles",null);  //desRelatePath must be null
//    }
////    if( await SrvGroup.initRaw("python36", Service) == true ){
////      _outputString = "init starcore and python 3.6 successfully";
////    }else{
////      _outputString = "init starcore and python 3.6 failed";
////    }
//
//    String docPath = await Starflut.getDocumentPath();
//    print("docPath = $docPath");
//
//    String resPath = await Starflut.getResourcePath();
//    print("resPath = $resPath");
//
//    dynamic rr1 = await SrvGroup.initRaw("python36", Service);
//
//    print("initRaw = $rr1");
//    var Result = await SrvGroup.loadRawModule("python", "", resPath + "/flutter_assets/starfiles/" + "testpy.py", false);
//    print( Result );
//    print("loadRawModule = $Result");
//
//    dynamic python = await Service.importRawContext("python", "", false, "");
//    // print("python = "+ await python.getString());
//
//    StarObjectClass retobj = await python.call("tt", ["hello ", "world"]);
//    print(await retobj[0]);
//    print(await retobj[1]);
//
//    print(await python["g1"]);
//
////    StarObjectClass yy = await python.call("yy", ["hello ", "world", 123]);
////    print(await yy.call("__len__",[]));
//
//    StarObjectClass multiply = await Service.importRawContext("python", "Multiply", true, "");
//    StarObjectClass multiply_inst = await multiply.newObject(["", "", 33, 44]);
//    print(await multiply_inst.getString());
//
//    data = await multiply_inst.call("multiply", ["",111, 222]);
//    print(data);
//
//    await SrvGroup.clearService();
//    await starcore.moduleExit();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: Container(
//          child: Center(
//            child: Text( data.toString() ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    testCallPython().then(( value){
//      print( '----------------Function returned---------------------' );
//      setState(() {
//
//      });
//    });
//
//  }
//}


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
