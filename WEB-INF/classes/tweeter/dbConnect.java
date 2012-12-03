package tweeter;

public class dbConnect extends HttpServlet {
	Connection conn;
	Statement stmt;
	
	public void init() throws ServletException {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		}
		catch(Exception ex){
			System.out.println("Exception is: " + ex.toString());
		}
	}
	
	public void doPost( HttpServletRequest request, 
						HttpServletResponse response) 
						throws IOException, ServletException {
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost/" +
				"S12-CPSC348_dluce?user=dluce&password=gurren5");
			
			stmt = conn.createStatement();
		}
		catch(SQLException ex){
			System.out.println("SQLException: " + ex.getMessage() );
		}
	}
}
