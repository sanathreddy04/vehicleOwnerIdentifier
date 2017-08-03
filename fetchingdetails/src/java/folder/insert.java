package folder;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author samislavath
 */

import java.io.IOException;
import java.io.FileReader;
import java.sql.*;
import java.sql.Connection;
import java.io.BufferedReader;
public class insert 
{
    int inserrt(String s) throws ClassNotFoundException, SQLException
    {
        try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary","root","");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from plate_details where regno="+s);
                if(rs.next())
                {
                    do
                    {
                        System.out.println(rs.getString("regno"));
                        System.out.println(rs.getString("chasino"));
                        System.out.println(rs.getString("ownername"));
                        System.out.println(rs.getString("regdate"));
                        System.out.println(rs.getString(""));
                        System.out.println(rs.getString("VALUE"));
                        System.out.println(rs.getString("VALUE"));
                        System.out.println(rs.getString("VALUE"));
                        
                        
                    }while(rs.next());
                    return 1;
                }
                else return 0;
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
        return 0;
    }
}
