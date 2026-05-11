package com.visitor.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.visitor.db.DBConnection;
import com.visitor.model.User;

public class UserDAO {
	public boolean registerUser(User u)
	{
		boolean b=false;
		try {
			
			  Connection con=DBConnection.getConnection();
			  String q="insert into users(uname,email,pass) values(?,?,?)";
			  PreparedStatement ps=con.prepareStatement(q);
			  ps.setString(1, u.getUname());
			  ps.setString(2, u.getEmail());
			  ps.setString(3, u.getPass());
			  int r=ps.executeUpdate();
			  if(r>0)
			  {
				  b=true;
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	  public boolean loginUser(User u)
	  {
		  boolean b=false;
		  try {
			  Connection con=DBConnection.getConnection();
				String q="select * from users where uname=? and pass=?";
				PreparedStatement ps=con.prepareStatement(q);
				ps.setString(1, u.getUname());
				ps.setString(2, u.getPass());
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					b=true;
				}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		  return b;
	  }
}
