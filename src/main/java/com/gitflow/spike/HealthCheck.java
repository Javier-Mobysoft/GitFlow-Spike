package com.gitflow.spike;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.jar.Attributes;
import java.util.jar.Manifest;

/**
 * Created by Javier on 12/10/2016.
 */
@RestController
public class HealthCheck {


    @RequestMapping("/healthcheck")
    public HealthCheckBean check() {
        HealthCheckBean healthCheckBean = new HealthCheckBean();
        healthCheckBean.setStatus("OK");
        healthCheckBean.setVersion(getVersion());
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

    private String getVersion()  {
        try {
            return new Manifest(HealthCheck.class.getResourceAsStream("/META-INF/manifest.mf"))
                    .getMainAttributes()
                    .get(Attributes.Name.IMPLEMENTATION_VERSION).toString();
        } catch (IOException e) {
            return "";
        }
    }
}
