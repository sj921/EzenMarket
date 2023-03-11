package com.ezen.ezenmarket.admin.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.admin.service.AdminMainPageService;

@Service
public class AdminMainPageServiceImpl implements AdminMainPageService {
	
	@Autowired
    private DataSource dataSource;
	
	@Override
	public int getReportCount() {
		int count = 0;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM report WHERE report_status = '0'");
             ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return count;
	}
	
	@Override
	public int getPostCount() {
		int count = 0;
		try (Connection conn = dataSource.getConnection();
	             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM post WHERE EXTRACT(MONTH FROM created) = 3");
	             ResultSet rs = ps.executeQuery()) {
	            if (rs.next()) {
	                count = rs.getInt(1);
	            }
	        } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        return count;
	}
}
