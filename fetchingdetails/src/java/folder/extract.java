package folder;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.IOException;
import java.io.FileReader;
import java.sql.*;
import java.sql.Connection;
import java.io.BufferedReader;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author samislavath
 */
public class extract {
   public String[] extractt(String s) throws ClassNotFoundException, SQLException
    {
        try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/license_plate","root","");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from plate_details where regno='"+s+"'");
                if(rs.next())
                {
                    String[] s1=new String[8];
                    do
                    {
                        s1[0]=rs.getString("regno");
                        System.out.println(s1[0]);
                        s1[1]=rs.getString("chasino");
                        System.out.println(s1[1]);
                        s1[2]=rs.getString("ownername");
                        System.out.println(s1[2]);
                        s1[3]=rs.getString("regdate");
                        System.out.println(s1[3]);
                        s1[4]=rs.getString("engineno");
                        System.out.println(s1[4]);
                        s1[5]=rs.getString("vehicleclass");
                        System.out.println(s1[5]);
                        s1[6]=rs.getString("fueltype");
                        System.out.println(s1[6]);
                        s1[7]=rs.getString("makermodel");
                        System.out.println(s1[7]);
                        
                        
                    }while(rs.next());
                    return s1;
                }
                else return null;
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
        return null;
    }
}
