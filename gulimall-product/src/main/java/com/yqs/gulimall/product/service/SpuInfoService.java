package com.yqs.gulimall.product.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.yqs.common.utils.PageUtils;
import com.yqs.gulimall.product.entity.SpuInfoEntity;

import java.util.Map;

/**
 * 
 *
 * @author yinqingshan
 * @email yinqingshan@gmail.com
 * @date 2020-05-19 22:07:20
 */
public interface SpuInfoService extends IService<SpuInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

