import com.intuit.karate.junit5.Karate;

class RunnerTest {

    @Karate.Test
    Karate testUsers() {
        //turn Karate.run("classpath:features").relativeTo(getClass());
        return Karate.run().tags("@deleteTest").relativeTo(getClass());
    }
}
