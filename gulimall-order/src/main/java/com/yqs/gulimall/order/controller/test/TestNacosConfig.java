package com.yqs.gulimall.order.controller.test;

import com.yqs.common.utils.R;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author
 * @create 2020-06-13 16:02
 * 测试配置中心接管项目配置文件，并可以动态加载配置中心文件的配置
 */
@RefreshScope
@RestController
@RequestMapping("oder/order")
public class TestNacosConfig {

    @Value("${account.name}")
    private String name;
    @Value("${account.age}")
    private Integer age;
    @Value("${account.hobbies}")
    private List<String> hobbies;
    @Value("${account.info}")
    private List<String> info;

    @RequestMapping("/testNacosConfig")

    public R testNacosConfig() {

        System.out.println("hobbies:"+hobbies);
        System.out.println("info:"+info);
        return R.ok().put("name", name).put("age", age).put("hobbies", hobbies).put("info",info);
    }
}
