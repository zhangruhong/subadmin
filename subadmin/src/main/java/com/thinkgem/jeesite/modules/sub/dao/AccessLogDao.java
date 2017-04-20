/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sub.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.sub.entity.AccessLog;

/**
 * 日志DAO接口
 * @author xingyu
 * @version 2017-04-20
 */
@MyBatisDao
public interface AccessLogDao extends CrudDao<AccessLog> {
	
}