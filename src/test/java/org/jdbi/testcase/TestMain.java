package org.jdbi.testcase;

import org.junit.jupiter.api.Test;
import org.springframework.boot.SpringApplication;
import org.springframework.context.annotation.Configuration;

public class TestMain {
    @Test
    void testMain() {
        try (var ctx = SpringApplication.run(TestContext.class)) {
        }
    }

    @Configuration
    public static class TestContext {
    }
}
