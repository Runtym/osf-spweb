package com.osf.web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.osf.web.dao.AddrDAO;
import com.osf.web.vo.CustomerInfo;

@Repository
public class AddrDAOImpl implements AddrDAO{
	@Autowired
	private SqlSession ss;
	@Autowired DataSource ds;
	
	@Override
	public List<Map<String, String>> selectAddrList() {
//		Map<String,String> param = new HashMap<String,String>();
//		param.put("adNum", "20");
//		return ss.selectList("addr.selectAddrList",param);
		int result=0;
		Connection con = null;
		try {
			con = ds.getConnection();
			con.setAutoCommit(false);
			String sql = "update customer_info set ci_id='ppp' where ci_num=1";
			PreparedStatement ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(result==1) {
				try {
					con.rollback();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return null;
	}

}




