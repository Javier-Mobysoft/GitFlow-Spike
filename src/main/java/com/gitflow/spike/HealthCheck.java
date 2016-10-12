package com.gitflow.spike;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Javier on 12/10/2016.
 */
@RestController
public class HealthCheck {


    @RequestMapping("/healthcheck")
    public HealthCheckBean check() {
        HealthCheckBean healthCheckBean = new HealthCheckBean();
        healthCheckBean.setStatus("OK");
        return healthCheckBean;
    }
}
