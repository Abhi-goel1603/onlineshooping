package Pack;

import com.mysql.jdbc.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author sapna
 */
public class jdbc {

    public jdbc() {
    }

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    public void getStatement() throws ClassNotFoundException, SQLException {
        if (con == null) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
        }
        st = con.createStatement();
    }

    public int addStudent(String q) throws SQLException, ClassNotFoundException {
        getStatement();
        return st.executeUpdate(q);
    }

    public ResultSet getdetails(String q) throws SQLException, ClassNotFoundException {
        getStatement();
        return st.executeQuery(q);
    }

    public void placeorder(String cid, String addid, String paytype) throws SQLException, ClassNotFoundException {
        getStatement();
        String Q = "{CALL proc_order(" + cid + "," + addid + ",'" + paytype + "')}";
        CallableStatement cs = (CallableStatement) con.prepareCall(Q);
        cs.execute();
    }

    public ResultSet getorderdetail(String cid) throws SQLException, ClassNotFoundException {
        getStatement();
        String Q = "{CALL getorderdetail(" + cid + ")}";
        CallableStatement cs = (CallableStatement) con.prepareCall(Q);
        return cs.executeQuery();
    }

    public ResultSet add2cart(String custid, String prodid, String q) throws SQLException, ClassNotFoundException {
        getStatement();
        String Q = "{CALL add2cart(" + custid + "," + prodid + "," + q + ")}";
        CallableStatement cs = (CallableStatement) con.prepareCall(Q);
        return cs.executeQuery();
    }

    public ArrayList<String> getCategory() throws SQLException, ClassNotFoundException {
        ResultSet rs1 = getdetails("Select distinct cname from brand");
        ArrayList<String> cname = new ArrayList<String>();
        while (rs1.next()) {
            cname.add(rs1.getString("cname"));
        }
        return cname;
    }

    public ArrayList<String> getBrand() throws SQLException, ClassNotFoundException {
        ResultSet rs1 = getdetails("Select concat(cname,'#',bname) as 'B' from brand order by cname asc");
        ArrayList<String> bname = new ArrayList<>();
        while (rs1.next()) {
            bname.add(rs1.getString("B"));
        }
        return bname;
    }

}
