package com.entity.view;

import com.entity.HuiyuantuikuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 会员退款
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-11 11:00:59
 */
@TableName("huiyuantuikuan")
public class HuiyuantuikuanView  extends HuiyuantuikuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public HuiyuantuikuanView(){
	}
 
 	public HuiyuantuikuanView(HuiyuantuikuanEntity huiyuantuikuanEntity){
 	try {
			BeanUtils.copyProperties(this, huiyuantuikuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}