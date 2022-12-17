package com.student;


	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.studentdatabase.StudentInfo;

	public class DatabaseStudent {
		
	private static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://101.53.155.156:3306/mysql_demo_tnj","mysql_demo_tnj", "Ebrain@20");
		return con;
	}
		
	public static void saveStudent(StudentInfo stInfo) throws ClassNotFoundException, SQLException
	{
		Connection con =getConnection();
		String insertQuery = "insert into tb_shamily_student(st_id,st_name,st_year,st_cgp) values (?,?,?,?) ";
		PreparedStatement ps = con.prepareStatement(insertQuery);
		ps.setString(1, stInfo.getStId());
		ps.setString(2, stInfo.getStName());
		ps.setInt(3, stInfo.getStYear());
		ps.setDouble(4, stInfo.getStCgp());
		ps.executeLargeUpdate();
		ps.close();
		con.close();
	}
	public static List<StudentInfo> getAll(Integer year) throws ClassNotFoundException, SQLException
	{
		Connection con = getConnection();
		Integer stYear = year;
		String selectQuery = "select st_id,st_name,st_year,st_cgp from tb_shamily_student where st_year ="+stYear;
		PreparedStatement ps=con.prepareStatement(selectQuery);
		ResultSet rs = ps.executeQuery();
		List<StudentInfo> stInfo = new ArrayList<StudentInfo>();
		StudentInfo st = null;
		while(rs.next())
		{
			st = new StudentInfo();
			st.setStId(rs.getString(1));
			st.setStName(rs.getString(2));
			st.setStYear(rs.getInt(3));
			st.setStCgp(rs.getDouble(4));
			stInfo.add(st);
		}
		ps.close();
		con.close();
		return stInfo;
	}
	public static void updateStudent(StudentInfo stInfo) throws ClassNotFoundException, SQLException
	{
		Connection con =getConnection();
		String insertQuery = "update tb_shamily_student set st_year = ? where st_id = ?";
		PreparedStatement ps = con.prepareStatement(insertQuery);
		ps.setInt(1, stInfo.getStYear());
		ps.setString(2, stInfo.getStId());
		ps.executeLargeUpdate();
		ps.close();
		con.close();
	}
	public static void deleteStudent(StudentInfo stInfo) throws ClassNotFoundException, SQLException
	{
		Connection con =getConnection();
		String insertQuery = "delete from tb_shamily_student where st_id = ?";
		PreparedStatement ps = con.prepareStatement(insertQuery);
		ps.setString(1, stInfo.getStId());
		ps.executeLargeUpdate();
		ps.close();
		con.close();
	}
	}


