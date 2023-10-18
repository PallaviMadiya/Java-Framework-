package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Standard;
import model.Student;

public class StudentDao {

	public static List<Standard> getStandardList(){
		List<Standard> listStandard= new ArrayList<Standard>();
		try {
			Connection conn =  DBConnection.createConnection();
			String sql = "SELECT * FROM standard";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Standard s = new Standard();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setStatus(rs.getString("status"));
				listStandard.add(s);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return listStandard;
	}

	public static void addStudent(Student s) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "INSERT INTO student(id, fname, lname, dob, image, createdDate, status) VALUES(?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, s.getId());
			pst.setString(2, s.getFname());
			pst.setString(3, s.getLname());
			pst.setString(4, s.getDob());
			pst.setString(5, s.getImage());
			pst.setString(6, s.getCreatedDate());
			pst.setString(7, s.getStatus());
			pst.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<Student> getStudentList(){
		List<Student> studentList = new ArrayList<Student>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "SELECT * FROM student";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Student s = new Student();
				s.setSid(rs.getInt("sid"));
				s.setId(rs.getInt("id"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setDob(rs.getDate("dob").toString());
				s.setImage(rs.getString("image"));
				s.setCreatedDate(rs.getDate("createdDate").toString());
				s.setStatus(rs.getString("status"));
				studentList.add(s);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return studentList;
	}
	
	public static String getStandardNameById(int id) {
		String std = "";
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "SELECT name FROM standard WHERE id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				std = rs.getString("name");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return std;
	}

	public static void addStandard(Standard s) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "INSERT INTO standard(name, status) VALUES(?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setString(2, s.getStatus());
			pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public static Standard getStandardById(int id){
		Standard s = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "SELECT * FROM standard WHERE id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				s = new Standard();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setStatus(rs.getString("status")); 
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public static void editStandard(Standard s, int id) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "UPDATE standard SET name=?, status=? WHERE id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setString(2, s.getStatus());
			pst.setInt(3, id);
			pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Student getStudentById(int sid) {
		Student s = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "SELECT * FROM student WHERE id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, sid);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				s = new Student();
				s.setSid(rs.getInt("sid"));
				s.setId(rs.getInt("id"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setDob(rs.getDate("dob").toString());
				s.setImage(rs.getString("image"));
				s.setCreatedDate(rs.getDate("createdDate").toString());
				s.setStatus(rs.getString("status"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public static void editStudent(Student s, int sid) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "UPDATE student SET id=?, fname=?, lname=?, dob=?, image=?, createdDate=?, status=? WHERE sid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, s.getId());
			pst.setString(2, s.getFname());
			pst.setString(3, s.getLname());
			pst.setString(4, s.getDob());
			pst.setString(5, s.getImage());
			pst.setString(6, s.getCreatedDate());
			pst.setString(7, s.getStatus());
			pst.setInt(8, sid);
			pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void deleteStudent(int sid) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "DELETE FROM student WHERE sid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, sid);
			pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	public static void deleteStandard(int id) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "DELETE FROM standard WHERE id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}
}	
