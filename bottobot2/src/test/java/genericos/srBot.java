package genericos;
import org.openqa.selenium.WebDriver;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.html5.LocalStorage;
import org.openqa.selenium.html5.WebStorage;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.io.*;
import java.util.*;
import org.openqa.selenium.*;


public class srBot {
    public static void main(String[] args) throws InterruptedException, IOException {
        String numenel = "+56994447606";
        String numnacho = "+56953026331";
        //WebDriver driver;
        ChromeDriver driver = new ChromeDriver();
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        WebDriverWait wait=new WebDriverWait(driver, 2);
        Date d1 = new Date();


        // 1.- Cargar la página
        //driver.get("https://web.whatsapp.com/");

        driver.get("https://web.whatsapp.com/");

        LocalStorage local = ((WebStorage) driver).getLocalStorage();

        local.setItem("LMPjoB0h8lndku/TOGARFQ==", "false");
        local.setItem("aWQWhlQXnsU4WNhGp1BNjQ==", "\"1MqepytWz704wH3VU\"");
        local.setItem("/gwbYHsaiddnLSNt/86gnQ==","\"Felipe Urtubia\"");
        local.setItem("n4nmfxUf9uxsM40QH7Dsdw==","[{\"id\":\"global_mute\",\"expiration\":0,\"callExpiration\":0}]");
        local.setItem("80pXgmJ65yi5HM9p1zMaGQ==","false");
        local.setItem("WAToken2","\"1@YN8viOAph/q/nf5TUEPTls5c4/oDraIIKE9mRCJSpx+YGMDhIaY3HXSP89LfEv2xKb07A7ky38yxqw==\"");
        local.setItem("qvo5wwhlEHeQpkrhBSsydQ==","[{\"id\":\"3JkBhAqCgM0W8ZK3Novqfw==\",\"token\":\"nOFPOKgQQHrXvaxrr7GLEs5HHAkSMsUP8tgIQSs7xtw=\",\"tag\":\"1437417197\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/55963553_2210799435625977_5888987186061115392_n.jpg?ccb=11-4&oh=1a9a69c6a90f2d34a962b9650f7463be&oe=61A4243B\"},{\"id\":\"uk56Pcv7b7mSWBp1baIHEQ==\",\"token\":\"hS0277rnS4vPI0mCuv+C80NIQx4PTlBOPp5UzrXcM88=\",\"tag\":\"1634592453\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/247019998_4350900258339530_5472212831474788684_n.jpg?ccb=11-4&oh=56d71b2b67b9353526ab993d40d4460e&oe=61A448D0\"},{\"id\":\"Xo6RrtSYT5RoeTazHaxtfg==\",\"token\":\"9D4zxpTcoR56yLNTpCXLsTIbu9D/HchTRMxBwnEnawk=\",\"tag\":\"1632595145\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/240384909_120826786910059_8700466069467287821_n.jpg?ccb=11-4&oh=026b94c76138d4d59ae52b57ebaec410&oe=61A3FDF7\"},{\"id\":\"okNTKDSzlVaciABAEby+Zg==\",\"token\":\"9IMHVtJoCoXdX+qQeeB6EE9NlbhTd2A38z5Sgx/J28I=\",\"tag\":\"1583272506\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/70275708_206594607375231_343038368666569470_n.jpg?ccb=11-4&oh=256db74001854e2bac90903d286d653d&oe=61A3F221\"},{\"id\":\"O8l8/5L5kPXiKYUn0J0NEw==\",\"token\":\"ExXgtYTiHrj022DZGvHBLt0fRWiOkuaAG8/J0rN35Ko=\",\"tag\":\"1497674362\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/57289785_403763003754719_5138164904867397632_n.jpg?ccb=11-4&oh=8fdbc0de0099156b83c204bc3f2d879c&oe=61A43FD6\"},{\"id\":\"aWSg/O8a5+KINf6ClbiJLA==\",\"token\":\"WqY3Hnwv5H0g2W/BJa2cXFaRSDHAC3XcUKSekBndf/k=\",\"tag\":\"1593005317\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/105780393_1724858361013838_6496418494596943243_n.jpg?ccb=11-4&oh=df128a020198e7369a8c9b95a2e272e9&oe=61A4EA2C\"},{\"id\":\"0hpH+f2WlijDedilBnSTOw==\",\"token\":\"aeQ3y5tldp/Rzd6z6sEfVerVcsSR5Nd/B77V0uxx+F8=\",\"tag\":\"1529451625\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/57499635_287724588806646_1693461478318800896_n.jpg?ccb=11-4&oh=b4344abbb2f6d941850548061ba1d56a&oe=61A45C1D\"},{\"id\":\"UTPrTHYuhc5YP66qA4xRbQ==\",\"token\":\"9d25ukhmWlpfW7AtH22PumnenwJvvkZokd/bG3TXNlQ=\",\"tag\":\"1633472355\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/212938216_871670573480302_940855527843706603_n.jpg?ccb=11-4&oh=c3fd5480bb78e3bbd910394018610c3b&oe=61A41EE9\"},{\"id\":\"2ptiMMHatb9e3krIyTE4Fw==\",\"token\":\"vOoaqnGB0w3MtIPV4Ki00Zc3xXYo1OdWrLyxYUD2OLM=\",\"tag\":\"1637346767\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/259439118_349063140321606_1885867735251404130_n.jpg?ccb=11-4&oh=16fbfd7104cb36e609653f86f6f43704&oe=61A4DC0E\"},{\"id\":\"X1HBEC2GHXz2sFlWSOKyEA==\",\"token\":\"D6yOCHBBHAa5fFHayW0BdD5d2aYe9UgN/ArPH7rPAjY=\",\"tag\":\"1634493377\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/246086126_591158778591620_158642302475420144_n.jpg?ccb=11-4&oh=e51911fd7cc0cf138bc1a0b6d4b79be7&oe=61A5027D\"},{\"id\":\"QqV/lWgLBUOc3b4AW9zj2w==\",\"token\":\"tvhC/a6bPj9GGOjWE+frYTu6VxtI+LWV7oeso1XRpxQ=\",\"tag\":\"1627659771\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/228873658_368457287975951_3745321252575176002_n.jpg?ccb=11-4&oh=ea0d2a4f904787286faaa3ebb7903184&oe=61A4FD49\"},{\"id\":\"d+Lkh2tjNnOr9Eo/aZdq0A==\",\"token\":\"ATDcA+HATkf8M21zshaxaP79gCDhTrretYXPANN9Uns=\",\"tag\":\"1637761436\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/261096818_981937299397939_7694907553718937042_n.jpg?ccb=11-4&oh=2642e649c98fc31fef2fd4f121efa300&oe=61A4E3B4\"},{\"id\":\"lt8afj9nlpLIvNNs+qKvcg==\",\"token\":\"0GjPBMiyUz173UJItb5ZW3BdrpcIDcKn/RQFBuHFSaw=\",\"tag\":\"1634654547\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/247327638_605343090899289_6543352403393851350_n.jpg?ccb=11-4&oh=5d48e3cb356f222f63b1dbc1871abc52&oe=61A42EA2\"},{\"id\":\"wuGri/2t1ZiRU6OfjSOTkw==\",\"token\":\"Oz1WY5tLXKx9to8piw+CVXNqEZzCojGuISUT/qJslQc=\",\"tag\":\"1556906154\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/57677269_2364502747114401_1690417759550177280_n.jpg?ccb=11-4&oh=30864952e99d4d28b4f780e11bab9301&oe=61A4302F\"},{\"id\":\"ITT95hWiSdvelqpgQfeOBg==\",\"token\":\"/HYcGeQSW1IdEwoP2V5pJsBg1Zk6tB9Oi3QO56QoZzE=\",\"tag\":\"1637759007\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/261237058_499318954508175_8110734473373257539_n.jpg?ccb=11-4&oh=02bef3db674dad05cfba78ca33cdaa76&oe=61A4B2A3\"},{\"id\":\"WA3D3nEJV2OT9Wva0ErJvg==\",\"token\":\"nag31JhH/TZ4N7r4vQi3BM1khKoPEX0+z+CZv1l8Y5Q=\",\"tag\":\"1581809268\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/74710730_127359318612387_1684120219638130271_n.jpg?ccb=11-4&oh=f7269368e740798123913c161e55b6e1&oe=61A40703\"},{\"id\":\"Sa0v9S4y8/umXF+ka0WdDQ==\",\"token\":\"zmeb9JdNSOwGMF0zqG8UKHAuSp/26Pv+slceGcTqpHM=\",\"tag\":\"1573768735\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/71275121_2646325202340702_6277775107216949489_n.jpg?ccb=11-4&oh=614ebe46cff0e6b29ec83cc8eb27435d&oe=61A47B99\"},{\"id\":\"5aRL+9WmiQkbbQJAJq9Y8w==\",\"token\":\"fPoeVcoivNFMRHrwP1hQM5WnJyFTuVVDxAWrlPDMG8o=\",\"tag\":\"1619122426\",\"raw\":null,\"eurl\":\"https://pps.whatsapp.net/v/t61.24694-24/167880983_301302864741076_227321550035219423_n.jpg?ccb=11-4&oh=d75fc45503f7a9ed7703f008faddd3b9&oe=61A45C4A\"}]");
        local.setItem("debugCursor","417");
        local.setItem("WALangPref","\"en-US\"");
        local.setItem("WADailyStatsStartTime","1637873212265");
        local.setItem("logout-token","\"1@zj6WAN06R9T8BicpZ7GLr2PgLeCjmkUnPGvgPt5U5Z4lGeKG6ZmQCT8R/eagNnHKklpvZ+91FOnfOkds53HUZ8G/Rdv7RZpnpLM9J3BZm+0MkqqwzH+fPLJqmpb9VtmsDKDONksgwcqqSx1w7dyeDg==\"");
        local.setItem("mobile-platform","\"android\"");
        local.setItem("4DmmcnshRbWP3TNAwwN1gQ==","false");
        local.setItem("WASecretBundle","{\"key\":\"2+TPnhVMDNVdeJl9Wp6JTSBC4pfveiSUMp0B7MoKvdI=\",\"encKey\":\"FH1IXuTh7XRnbm0XqBjsX4sVVLkLV1Yu6LK3r41HZUc=\",\"macKey\":\"2+TPnhVMDNVdeJl9Wp6JTSBC4pfveiSUMp0B7MoKvdI=\"}");
        local.setItem("WAToken1","\"pYftjfLPuOa8a00Q24Lvd3slpgHi1LfMHkAk5M711qE=\"");
        local.setItem("last-wid","\"56930344984@c.us\"");
        local.setItem("02qTE3tNw4pRgmFzWA9ILQ==","false");



        driver.navigate().refresh();



        /*BufferedReader csvReader = new BufferedReader(new FileReader("C://testcookies2.csv"));
        String row;
        while ((row = csvReader.readLine()) != null) {

            String[] data = row.split(",");

            driver.manage().addCookie(new Cookie(data[i]));
        }
        csvReader.close();*/


        //driver.manage().addCookie(new Cookie("tok", "1@WPBiP+v1qHuL+GU0JXwCIE3GkU4DNnz6kxlD6MZ4NpeU7AJOLACPE239ukiNg4sZQJ83QZx6GBByyg==", ".web.whatsapp.com","/pp",d1));
        //driver.manage().addCookie(new Cookie("ref", "1@qMHXpdkJRcbDd6MWj0ZYPoPASWsWJJON4p64oy247PaOcPJ2jrUy9jhv4RENfOjVh7rLwGLO4lTVEw==",".web.whatsapp.com","/pp", d1));

        /*driver.manage().addCookie(new Cookie("tok", "1@+fBYJJ4YKfp1jHXsxON1+kj9DERSW/8AgiF3M5dJNA4U2mg1bIeAf183pX+OFnkO4XCgL0shPYotXQ=="));
        driver.manage().addCookie(new Cookie("ref", "1@0G+9eLc2dfvyJ5PUkNhc7kAd8dJADct9an8BMS0RiRvSKAyrQxxARNVvifCmwbr6P+lOlQ3wdBtn4w=="));
        Thread.sleep(2000);
        driver.navigate().refresh();*/

        //inicio sesion manual y descarga del archivo
        /*Thread.sleep(2000);
        driver.findElement(By.xpath("//input[@name='rememberMe']")).click();
        Thread.sleep(18000);
        driver.findElement(By.xpath("//div[@role='textbox']")).sendKeys(numenel,Keys.ENTER);
        driver.findElement(By.xpath("//div[@role='textbox']")).sendKeys(numnacho,Keys.ENTER);
        //for (int i = 1; i < 6; i++) {
          //  driver.findElement(By.xpath("//div[@spellcheck='true']")).sendKeys("hola, estamos probando el bot, mensaje numero: "+i,Keys.ENTER);
        //}
        driver.findElement(By.xpath("//div/button[@title]")).click();*/





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
    public class addCookie {
        public void main(String[] args) {
            WebDriver driver = new ChromeDriver();
            try {
                driver.get("https://web.whatsapp.com\n");

                // Adds the cookie into current browser context
                driver.manage().addCookie(new Cookie("key", "value"));
            } finally {
                driver.quit();
            }
        }
    }
}