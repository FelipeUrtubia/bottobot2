package genericos;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.concurrent.TimeUnit;

public class srBot {
    public static void main(String[] args) throws InterruptedException {
        String numenel = "+56994447606";
        WebDriver driver;
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        WebDriverWait wait=new WebDriverWait(driver, 2);

        // 1.- Cargar la página
        driver.get("https://web.whatsapp.com/");
        Thread.sleep(2000);
        driver.findElement(By.xpath("//input[@name='rememberMe']")).click();
        Thread.sleep(18000);
        driver.findElement(By.xpath("//div[@role='textbox']")).sendKeys(numenel,Keys.ENTER);
        /*
        driver.findElement(By.id("field-password")).sendKeys("");
        driver.findElement(By.id("label-LOGON_SUBMIT_BUTTON_CAPTION")).click();

        driver.findElement(By.xpath("//a[contains(text(),'Crear')]")).click();
        driver.findElement(By.xpath("//a[contains(text(),'Parte de horas')]")).click();
        driver.findElement(By.id("createButton")).click();
        driver.findElement(By.id("addWorkItems.label")).click();
        driver.findElement(By.id("addWorkItems.REQUEST")).click();

        Thread.sleep(1000);
        //pop up
        driver.switchTo().frame("anotherItemDialogIF");
        driver.findElement(By.xpath("//*[@id=\"FLTR.P.REQ_NUMAC_TF\"]")).sendKeys("BOOTCAMP Chile 2021");
        driver.findElement(By.id("searchButton")).click();
        driver.findElement(By.id("checkBoxRows119765")).click();
        driver.findElement(By.xpath("//div[@id='flatLinkView']//a[@id='add.button']")).click();
        driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
        driver.switchTo().defaultContent();
        driver.findElement(By.id("REQUEST_119765_0")).sendKeys(Keys.BACK_SPACE,Keys.BACK_SPACE,Keys.BACK_SPACE,Keys.BACK_SPACE,"160",Keys.ENTER);
        Thread.sleep(2000);

        driver.findElement(By.cssSelector("#MoreActions")).click();
        driver.findElement(By.cssSelector("#cancelTS\\.button")).click();
        driver.switchTo().frame(driver.findElement(By.cssSelector("#cancelTimeSheetWarningDialogIF")));
        driver.findElement(By.cssSelector("#submitButton")).click();

        driver.findElement(By.xpath("//a[contains(text(),'Cerrar sesión')]")).click();
        Thread.sleep(2000);

        driver.close();
        */
    }
}