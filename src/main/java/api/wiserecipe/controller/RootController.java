package api.wiserecipe.controller;

import api.wiserecipe.model.TestObject;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class RootController {

    private TestObject testObject;

    @GetMapping("/")
    public String rootPath() {
        System.out.println(testObject);
        System.out.println("asdasd");
        return "Hello World!";
    }
}
