package com.gitflow.spike;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

/**
 * Created by Javier on 12/10/2016.
 */
@RestController
public class HealthCheck {


    @RequestMapping("/healthcheck")
    public HealthCheckBean check() {
        HealthCheckBean healthCheckBean = new HealthCheckBean();
        healthCheckBean.setStatus("OK");
        healthCheckBean.setVersion("2.0.0");
        return healthCheckBean;
    }

    @RequestMapping("/users")
    public List<User> users() {
        return Arrays.asList( buildUser("User1"), buildUser("User2"), buildUser("User3"));
    }

    private User buildUser(String name) {
        User user = new User();
        user.setName(name);
        return user;
    }
}
