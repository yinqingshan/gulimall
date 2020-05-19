package com.yqs.gulimall.product;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.yqs.gulimall.product.entity.BrandEntity;
import com.yqs.gulimall.product.service.BrandService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@Slf4j
class GulimallProductApplicationTests {

    @Autowired
    BrandService brandService;

    @Test
    void contextLoads() {

        BrandEntity brandEntity = new BrandEntity();
        brandEntity.setName("华为");
        brandEntity.setLogo("HUAWEI");
        brandEntity.setDescript("中国知名品牌");

        //插入数据
        boolean saveStatus = brandService.save(brandEntity);
        if (saveStatus) {
            log.info("插入成功");
        } else {
            log.error("插入失败");
        }


//        //修改数据
//        brandEntity.setBrandId(1l);  //根据ID修改，提供的实体类必须指定id
//        brandEntity.setDescript("世界知名品牌");
//        boolean updateStatus = brandService.updateById(brandEntity);
//        if (updateStatus) {
//            log.info("修改成功");
//        } else {
//            log.error("修改失败");
//        }
    }

    @Test
    void query() {

        QueryWrapper<BrandEntity> queryWrapper = new QueryWrapper<BrandEntity>();

//        //根据ID查询一条记录
//        BrandEntity result = brandService.getById(1l);
//        log.info(result.toString());

        //根据queryWrapper条件对象，查询多条记录
        List<BrandEntity> list = brandService.list(queryWrapper.eq("name", "华为"));//eq()指定的条件是：某列等于某值
        for(BrandEntity re : list){
            log.info(re.toString());
        }
    }

}
