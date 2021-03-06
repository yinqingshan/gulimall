package com.yqs.gulimall.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.yqs.common.utils.PageUtils;
import com.yqs.gulimall.order.entity.RefundInfoEntity;

import java.util.Map;

/**
 * 
 *
 * @author yinqingshan
 * @email yinqingshan@gmail.com
 * @date 2020-05-19 23:15:03
 */
public interface RefundInfoService extends IService<RefundInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

