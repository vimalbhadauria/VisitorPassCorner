package com.visitor.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.visitor.db.DBConnection;
import com.visitor.model.Visitor;

public class VisitorDAO {

    // 🔹 1. Add Visitor (Insert)
    public boolean addVisitor(Visitor v) {
        boolean f = false;

        try {
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO visitors(vname, contact, purpose, image_path) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, v.getVname());
            ps.setString(2, v.getContact());
            ps.setString(3, v.getPurpose());
            ps.setString(4, v.getImagePath());

            int i = ps.executeUpdate();

            if (i > 0) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    // 🔹 2. Get All Visitors
    public List<Visitor> getAllVisitors() {
        List<Visitor> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();

            String query = "SELECT * FROM visitors ORDER BY id DESC";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Visitor v = new Visitor();

                v.setId(rs.getInt("id"));
                v.setVname(rs.getString("vname"));
                v.setContact(rs.getString("contact"));
                v.setPurpose(rs.getString("purpose"));
                v.setImagePath(rs.getString("image_path"));
                v.setEntryTime(rs.getTimestamp("entry_time"));
                v.setExitTime(rs.getTimestamp("exit_time"));
                v.setStatus(rs.getString("status"));

                list.add(v);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // 🔹 3. Checkout Visitor (Update)
    public boolean checkoutVisitor(int id) {
        boolean f = false;

        try {
            Connection con = DBConnection.getConnection();

            String query = "UPDATE visitors SET exit_time = NOW(), status = 'OUT' WHERE id = ?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);

            int i = ps.executeUpdate();

            if (i > 0) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }
    
    public boolean deleteVisitor(int id) {
        boolean status = false;

        try {
            Connection con = DBConnection.getConnection();

            String sql = "DELETE FROM visitors WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            int i = ps.executeUpdate();

            if(i > 0){
                status = true;
            }

        } catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }
}