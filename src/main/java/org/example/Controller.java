package org.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/health")
    public Status health() {
        return new Status("OK");
    }

    public record Status(String status) {
    }
}
