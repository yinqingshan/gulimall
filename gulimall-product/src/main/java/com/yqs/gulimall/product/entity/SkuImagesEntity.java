package com.yqs.gulimall.product.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * 
 * @author yinqingshan
 * @email yinqingshan@gmail.com
 * @date 2020-05-19 22:07:20
 */
@Data
@TableName("pms_sku_images")
public class SkuImagesEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long id;
	/**
	 * 
	 */
	private Long skuId;
	/**
	 * 
	 */
	private String imgUrl;
	/**
	 * 
	 */
	private Integer imgSort;
	/**
	 * 
	 */
	private Integer defaultImg;

}
