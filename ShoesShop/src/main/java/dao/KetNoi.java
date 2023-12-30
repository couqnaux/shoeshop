package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class KetNoi {
	public Connection cn;
	public void ketnoi()throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url="jdbc:sqlserver://QUATQUOC\\SQLEXPRESS:1433;databaseName=ShoesShop;user=sa;password=123";
		cn=DriverManager.getConnection(url);	
		System.out.println("da ket noi");
	}
}
