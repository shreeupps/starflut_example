import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;
import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.MobileCapabilityType;
public class AppTest extends ExtentReportDemo{
    public static URL url;
    public static DesiredCapabilities capabilities;
    public static AndroidDriver<MobileElement> driver;
    //1
    @BeforeSuite
    public void setupAppium() throws MalformedURLException {
        //2
        final String URL_STRING = "http://127.0.0.1:4723/wd/hub";
        url = new URL(URL_STRING);
//3
        capabilities = new DesiredCapabilities();
        capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, "Android Device");
        capabilities.setCapability(MobileCapabilityType.APP, "C:/Users/jyoth/ashish/Bitbucket/matchme/starflut_example/android/app/debug/app-debug.apk");
        capabilities.setCapability(MobileCapabilityType.NO_RESET, true);
        capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, "UiAutomator2");
        //4
        driver = new AndroidDriver<MobileElement>(url, capabilities);
        driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
        driver.resetApp();
    }
    //5
    @AfterSuite
    public void uninstallApp() throws InterruptedException {
        driver.removeApp("com.example.android.contactmanager");
    }
    //6
    @Test (enabled=true) public void myFirstTest() throws InterruptedException {
        driver.resetApp();
    }
}