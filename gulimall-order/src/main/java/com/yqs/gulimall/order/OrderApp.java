package com.yqs.gulimall.order;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 1.整合mybatis-plus
 * (1) 导入依赖：以来已经导入在common中
 *         <dependency>
 *             <groupId>com.baomidou</groupId>
 *             <artifactId>mybatis-plus-boot-starter</artifactId>
 *             <version>3.2.0</version>
 *         </dependency>
 * (2) 配置
 *     i  配置数据源
 *        1> 导入数据库驱动（本次使用版本：5.5.62）
 *             <dependency>
 *                <groupId>mysql</groupId>
 *                <artifactId>mysql-connector-java</artifactId>
 *                <version>8.0.15</version>
 *             </dependency>
 *        2> 配置数据源信息
 *           见application.yaml
 *     ii 配置mybatis-plus
 *        1> 由于dao层接口标注了@mapper注解，无需配置MapperScan注解。配置mapper接口扫描注解：@MapperScan("com.yqs.gulimall.product.dao")
 *        2> 指定mapper映射文件路径。见application.yaml
 */
@SpringBootApplication
public class OrderApp {
    public static void main(String[] args) {
        SpringApplication.run(OrderApp.class, args);
    }
}
