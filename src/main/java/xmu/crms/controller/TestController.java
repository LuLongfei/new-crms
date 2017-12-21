package xmu.crms.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/t")
    @PreAuthorize("hasAuthority('ROLE_TEACHER')")
    public String t(){
        return "qf43ujHI=EO/jcnICMsh]jd[kfv";
    }

    @GetMapping("/s")
    @PreAuthorize("hasAuthority('TEACHER')")
    public String s() {
        return "qf4asV8EWUEJCIOJC09I)(QED";
    }
}
