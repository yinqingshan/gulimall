package com.yqs.gulimall.oder.entity;

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
 * @date 2020-05-19 23:15:03
 */
@Data
@TableName("oms_order_setting")
public class OrderSettingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long id;
	/**
	 * 
	 */
	private Integer flashOrderOvertime;
	/**
	 * 
	 */
	private Integer normalOrderOvertime;
	/**
	 * 
	 */
	private Integer confirmOvertime;
	/**
	 * 
	 */
	private Integer finishOvertime;
	/**
	 * 
	 */
	private Integer commentOvertime;
	/**
	 * 
	 */
	private Integer memberLevel;

}
