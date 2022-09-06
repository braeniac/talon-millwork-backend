package com.project.TalonMillwork;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.atomic.AtomicLong;

/**
 * This class is used as an example for a controller class
 */

@RestController
public class GreetingController {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @GetMapping("/greeting")
    public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
        return new Greeting(counter.incrementAndGet(), String.format(template,name));
    }

    /**
     * This is an example for a protected method
     */
    @PostMapping("/greeting")
    @PreAuthorize("hasRole('ROLE_ADMIN')") //hasRole('ROLE_') hasAnyRole('ROLE_','ROLE_') hasAuthority('permission') hasAnyAuthority('permission')
    public String writeMessage(@RequestBody String message) {
        return message;
    }
}
