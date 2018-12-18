package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Data.*;
import java.util.ArrayList;

public class DB {
	private String url = "jdbc:oracle:thin:@localhost:1521:oraknu";
	private String user = "project";
	private String pass = "project";
	private Connection conn = null;
	private String sql = null;
	
	public void DB_connect() {
		//DB연결
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} 
		catch (ClassNotFoundException e) {
			System.err.println("error = " + e.getMessage());
			System.exit(1);
		}
		try {
			conn = DriverManager.getConnection(url, user, pass);
		} 
		catch (SQLException e) {
			System.err.println("sql error = " + e.getMessage());
			System.exit(1);
		}
	}
	
	public int login(String id, String pwd) {
		//로그인
		int success = -1;
		ResultSet result;
		DB_connect();
		
		try {
			conn.setAutoCommit(false);
			Statement stmt = conn.createStatement();
			
			sql="select * from member where id='" + id + "' and pwd='" + pwd + "'";
			result = stmt.executeQuery(sql);
			
			if(result.next()) 
				success = 1;
			else 
				success = -1;
			
			conn.commit();
			conn.setAutoCommit(true);
			stmt.close();
			conn.close();	
		} 
		catch (Exception e) {
			System.err.println("sql error = " + e.getMessage());
		}
		
		return success;
	}
	
	public ArrayList<userInfo> savesession(String id) {
		DB_connect();
		ArrayList<userInfo> arr = new ArrayList<>();
		
		try {
			conn.setAutoCommit(false);
			Statement stmt = conn.createStatement();
			
			sql = "select id, name, mail from member where id='" + id + "'";
			
			//book_id로 책이름을 찾음
			ResultSet rs = stmt.executeQuery(sql);
			

			while (rs.next()) {
				String user_id = rs.getString("id");
				String user_name = rs.getString("name");
				String user_mail = rs.getString("mail");
				arr.add(new userInfo(user_id, user_name, user_mail));
			}
			conn.commit();
			conn.setAutoCommit(true);
			stmt.close();
			conn.close();
		} 
		catch (Exception e) {
			System.err.println("sql error = " + e.getMessage());
		}

		return arr;
	}
	
	public int register(String id, String name, String mail, String pwd) {
		//회원가입
		DB_connect();
		int success = -1;
		int result = 0;
		
		try {
			Statement stmt = conn.createStatement();
			sql="insert into member values('" + id + "', '" + name + "','" + mail + "', '" + pwd + "')";
			
			result = stmt.executeUpdate(sql);
			success = 1;
			conn.commit();
			stmt.close();
			conn.close();	
		} 
		catch (Exception e) {
			success = -1;
			//return success;
		}
		
		return success;
	}
	
	public ArrayList<searchData> search(String flag, String data) {
		//도서 검색 정보를 어레이리스트로 만들어 넘긴다.
		DB_connect();
		ArrayList<searchData> arr = new ArrayList<>();
		
		try {
			conn.setAutoCommit(false);
			Statement stmt = conn.createStatement();
			if (flag.equals("1")) {
				sql = "select b.book_id, b.book_name, b.author, b.publisher, b.publication_year,b.contents,  l.location_name,b.stock, a.appendix_type, a.name from ((select book_id, book_name, contents,author, publisher, stock,publication_year, location_id, appendix_id from book where book_name LIKE '%"
						+ data
						+ "%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id";
			} else if (flag.equals("2")) {
				sql = "select b.book_id, b.book_name, b.author, b.publisher, b.publication_year,b.contents, l.location_name, b.stock, a.appendix_type, a.name from ((select book_id, book_name, contents,author, publisher, stock, publication_year,location_id, appendix_id from book where author LIKE '%"
						+ data
						+ "%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id";
			} else if (flag.equals("3")) {
				sql = "select b.book_id, b.book_name, b.author, b.publisher, b.publication_year,b.contents, l.location_name, b.stock, a.appendix_type, a.name from ((select book_id, book_name, contents,author, publisher, stock, publication_year,location_id, appendix_id from book where publisher LIKE '%"
						+ data
						+ "%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id";
			}

			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String book_id = rs.getString("book_id");
				String book_name = rs.getString("book_name");
				String author = rs.getString("author");
				String publisher = rs.getString("publisher");
				String publication_year = rs.getString("publication_year");
				String contents = rs.getString("contents");
				String location_name = rs.getString("location_name");
				String stock = rs.getString("stock");
				String appendix_type = rs.getString("appendix_type");
				String appendix_name = rs.getString("name");
				arr.add(new searchData(book_id, book_name, author, publisher, publication_year, contents, location_name, stock, appendix_type, appendix_name));
			}
			conn.commit();
			conn.setAutoCommit(true);
			stmt.close();
			conn.close();
		} 
		catch (Exception e) {
			System.err.println("sql error = " + e.getMessage());
		}
		
		return arr;
	}
	
	public ArrayList<rentalData> searchRental(String id) {
		//내가 대여한 목록을 어레이리스트로 만들어 넘긴다
		DB_connect();
		ArrayList<rentalData> arr = new ArrayList<>();
		
		try {
			conn.setAutoCommit(false);
			Statement stmt = conn.createStatement();
			
			sql = "select b.book_id, b.book_name from (select * from rental where id='" + id.toLowerCase() + "')r left outer join book b on r.book_id=b.book_id"; 
			
			//book_id로 책이름을 찾음
			ResultSet rs = stmt.executeQuery(sql);
			

			while (rs.next()) {
				String book_id = rs.getString("book_id");
				String book_name = rs.getString("book_name");
				arr.add(new rentalData(book_id, book_name));
			}
			conn.commit();
			conn.setAutoCommit(true);
			stmt.close();
			conn.close();
		} 
		catch (Exception e) {
			System.err.println("sql error11 = " + e.getMessage());
		}
		
		return arr;
	}
	
	public int rental(String id, String bid) {
		//대여
		DB_connect();
		
		try {
			Statement stmt = conn.createStatement();
			
			sql = "select * from rental where id='" + id + "' and book_id='" + bid + "'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next())
				return -1;
			else {
				sql="insert into rental values('" + id.toLowerCase() + "', '" + bid + "')";
				stmt.executeUpdate(sql);
	
				conn.commit();
				stmt.close();
				conn.close();	
			}
		} 
		catch (Exception e) {
			System.err.println("sql error = " + e.getMessage());
		}
		
		return 1;
	}
	
	public void returnto(String id, String bid) {
		//반납
		DB_connect();
		
		try {
			Statement stmt = conn.createStatement();
			
			sql="delete from rental where id='" + id.toLowerCase() + "'and book_id='" + bid + "'";
			stmt.executeUpdate(sql);
			
			conn.commit();
			stmt.close();
			conn.close();	
		} 
		catch (Exception e) {
			System.err.println("sql error = " + e.getMessage());
		}
	}
}
