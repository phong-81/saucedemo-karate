package runners;

import com.intuit.karate.junit5.Karate;

public class PlaceOrderTest {
    @Karate.Test
    Karate testPlaceOrder() {
        return Karate.run("classpath:features/placeOrder.feature").relativeTo(getClass());
    }
}
