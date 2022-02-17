import com.redis.pojo.Students;
import com.redis.service.StudentService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        StudentService studentServiceImpl = (StudentService) context.getBean("StudentServiceImpl");
        for (Students students : studentServiceImpl.queryAllStudent()){
            System.out.println(students);
        }
    }
}
