/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dbcontext.DBContext;
import entity.Digital;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author khoi.tranvan
 */
public class DigitalDAO {

    /* Get latest digital new from database */
    public Digital getLatestDigital() throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT TOP 1 * FROM Digital ORDER BY createdDate DESC";

        try {
            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Digital digital = new Digital();
                digital.setId(rs.getInt("id"));
                digital.setTitle(rs.getString("title"));
                digital.setContent(rs.getString("content"));
                digital.setDescription(rs.getString("description"));
                digital.setImage(rs.getString("image"));
                digital.setAuthor(rs.getString("author"));
                digital.setCreatedDate(rs.getDate("createdDate"));
                return digital;
            }
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
        return null;
    }

    /* Get number of latest digital news that user wants*/
    public List<Digital> getTopDigital(int number) throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT TOP(?) * FROM Digital ORDER BY createdDate DESC";
        List<Digital> listDigital = new ArrayList<>();
        try {
            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, number);
            rs = ps.executeQuery();
            while (rs.next()) {
                Digital digital = new Digital();
                digital.setId(rs.getInt("id"));
                digital.setTitle(rs.getString("title"));
                digital.setContent(rs.getString("content"));
                digital.setDescription(rs.getString("description"));
                digital.setImage(rs.getString("image"));
                digital.setAuthor(rs.getString("author"));
                digital.setCreatedDate(rs.getDate("createdDate"));
                listDigital.add(digital);
            }
            return listDigital;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
    }

    /* Get digital news with specific id */
    public Digital getDigitalByID(int id) throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM Digital WHERE id = ?";
        try {
            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Digital digital = new Digital();
                digital.setId(rs.getInt("id"));
                digital.setTitle(rs.getString("title"));
                digital.setContent(rs.getString("content"));
                digital.setDescription(rs.getString("description"));
                digital.setImage(rs.getString("image"));
                digital.setAuthor(rs.getString("author"));
                digital.setCreatedDate(rs.getDate("createdDate"));
                return digital;
            }
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
        return null;
    }

    /* Get list digitals news if title contains keywords in paging page */
    public List<Digital> searchDigitalPaging(String keyword, int index, int size) throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM Digital WHERE title LIKE ? ORDER BY id OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        List<Digital> listSearchPaging = new ArrayList<>();
        try {
            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ps.setInt(2, (index - 1) * size);
            ps.setInt(3, size);
            rs = ps.executeQuery();
            while (rs.next()) {
                Digital digital = new Digital();
                digital.setId(rs.getInt("id"));
                digital.setTitle(rs.getString("title"));
                digital.setContent(rs.getString("content"));
                digital.setDescription(rs.getString("description"));
                digital.setImage(rs.getString("image"));
                digital.setAuthor(rs.getString("author"));
                digital.setCreatedDate(rs.getDate("createdDate"));
                listSearchPaging.add(digital);
            }
            return listSearchPaging;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
    } 

    /* Get total of number where titles contains keyword */
    public int counSearchRecords(String keyword) throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT COUNT(*) AS total FROM Digital WHERE title LIKE ?";
        int count = 0;
        try {
            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");

            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt("total");
            }
            return count;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
    }

}
