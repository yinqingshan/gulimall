package com.yqs.gulimall.order.feign;

import com.yqs.common.utils.R;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author
 * @create 2020-06-13 3:22
 */
@FeignClient("gulimall-product")
public interface ProductFeign {

    @RequestMapping("product/category/info/{catId}")
    R info(@PathVariable("catId") Long catId);

}
