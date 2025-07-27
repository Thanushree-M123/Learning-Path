package com.example;

import static org.mockito.Mockito.*;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

public class MyServiceTest {

    @Test
    public void testVerifyInteraction() {
        ExternalApi mockApi = Mockito.mock(ExternalApi.class);
        MyService service = new MyService(mockApi);

        // Calling method
        service.fetchData();

        // ✅ Verifying the interaction
        verify(mockApi).getData();

        // ✅ Console Output (for manual check)
        System.out.println("✅ mockApi.getData() was called exactly once.");
    }
}
