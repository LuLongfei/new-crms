package xmu.crms;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import xmu.crms.dao.LoginDAO;
import xmu.crms.dao.SchoolDAO;
import xmu.crms.dao.TimerDAO;

import java.lang.reflect.Method;
import java.sql.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class TimeTests {
    @MockBean
    private LoginDAO loginDAO;
//    private TimerDAO timerDAO;
    @Test
    public void insertEvent(){
        Date time = new Date(1000);
        Bean bean = (Bean) loginDAO;
        System.out.printf("%s",bean.toString());

    }
}
