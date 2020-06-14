package com.yqs.gulimall.order.controller.feign;

import com.yqs.common.utils.R;
import com.yqs.gulimall.order.feign.ProductFeign;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author
 * @create 2020-06-13 15:18
 */
@RestController
@RequestMapping("oder/order")
public class TestFeign {

    @Autowired
    ProductFeign productFeign;

    @GetMapping("/test/{id}")
    public R testProductFeign(@PathVariable("id") Long id){

        R info = productFeign.info(id);
        return R.ok().put("info",info);
    }
}
