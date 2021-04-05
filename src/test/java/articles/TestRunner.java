package articles;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    @Karate.Test
    Karate articles() {
        return Karate.run("articles").relativeTo(getClass());
    }

}
