const wdio = require("webdriverio");
const assert = require("assert");
//var java  = require('java');
//var extReportDemo = java.import("test.ExtentReportDemo.java.ExtentReportDemo");

const opts = {
  port: 4723,
  capabilities: {
    platformName: "Android",
    platformVersion: "10",
    deviceName: "Android Emulator",
    app: "C:/Users/jyoth/ashish/Bitbucket/matchme/starflut_example/android/app/debug/app-debug.apk",
    appPackage: "com.keagan.flutter_python",
    appActivity: "com.keagan.flutter_python.MainActivity",
    automationName: "UiAutomator2"
  }
};


async function main () {

//    extReportDemo.reportSetup();

//    test = extent.createTest("MyFirstTest", "Sample description");
    const client = await wdio.remote(opts);
//  test.log(Status.INFO, "This step shows usage of log(status, details)");

//  const field = await client.$("android.widget.EditText");
    await field.setValue("Hello World!");
    const value = await field.getText();
    assert.equal(value,"Hello world ");
    main.report.writereport()
    await client.deleteSession();
}

main();