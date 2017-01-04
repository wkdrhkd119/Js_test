package utility;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBC_Test {

	public static void main(String[] args) {
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		StringBuffer sql = new StringBuffer();
		sql.append(" select count(*) from tab ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			if(rs.next()){
				System.out.println("현재 생성된 테이블 갯수 "+rs.getInt(1));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBClose.close(con, pstmt, rs);
		}

	}

}
