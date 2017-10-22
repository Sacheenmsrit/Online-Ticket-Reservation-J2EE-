package kulankar1;

import java.sql.*;  
import java.io.*;  
class JdbcExample
{  
	public static void main(String args[])throws Exception
	{  
		System.out.println("MySQL Connect Example.");
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "student";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root"; 
		String password = "";
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url+dbName,userName,password);
		System.out.println("Connected to the database");
		String firstname,lastname;
		PreparedStatement ps=conn.prepareStatement("insert into stud values(?,?)");  
		Statement stmt = conn.createStatement();  
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));  
  
		do
		{  
				//int id=Integer.parseInt(br.readLine());
				//float salary=Float.parseFloat(br.readLine()); 
				//ps.setFloat(2, salary);
				System.out.println("Enter First:");  
				firstname=br.readLine(); 
				System.out.println("Last   name:");  
				lastname=br.readLine();  
	
				ps.setString(1,firstname);  
				ps.setString(2,lastname);  
	
				int i=ps.executeUpdate();  
				System.out.println(i+" records added");  
				System.out.println("Do you want to continue: y/n");  
				String s=br.readLine();  
				if(s.startsWith("n"))
				{  
						break;  
				}  
		}while(true); 
		String sql = "SELECT * from stud";
		ResultSet rs = stmt.executeQuery(sql);
		System.out.println("The records are :");
		while (rs.next())
		{
			firstname = rs.getString(1);
			lastname=rs.getString(2);
		
			System.out.println(rs.getRow()+"-"+firstname+"  "+lastname);
		} //end while 
		conn.close();  
	}
}  