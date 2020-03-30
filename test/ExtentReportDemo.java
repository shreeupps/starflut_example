package test;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeSuite;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.ExtentReports;

public class ExtentReportDemo {
    ExtentHtmlReporter htmlReporter;
    ExtentReports extent;


    @BeforeSuite
    public void reportSetup(){
        htmlReporter = new ExtentHtmlReporter("extent.html");
        extent = new ExtentReports();
        extent.attachReporter(htmlReporter);
    }


    @AfterSuite
    public void reportTeardown(){
        extent.flush();

    }
}