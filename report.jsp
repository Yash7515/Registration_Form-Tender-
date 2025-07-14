<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tender Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        table {
            border-collapse: collapse;
            width: 90%;
            margin: auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0f7fa;
        }
    </style>
</head>
<body>

<h2 color:blue>Tender Report</h2>

<table>
<tr>
  <th>ID</th>
  <th>Type</th>
  <th>Full Name</th>
  <th>Mobile</th>
  <th>Email</th>
  <th>Goods</th>
  <th>Demand</th>
  <th>Rate</th>
</tr>

<%
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "yash");
  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery("SELECT id, tenderer_type, full_name, mobile, email, goods_type, goods_demand, sale_rate FROM tender_data");
  while (rs.next()) {
%>
<tr>
  <td><%= rs.getInt("id") %></td>
  <td><%= rs.getString("tenderer_type") %></td>
  <td><%= rs.getString("full_name") %></td>
  <td><%= rs.getString("mobile") %></td>
  <td><%= rs.getString("email") %></td>
  <td><%= rs.getString("goods_type") %></td>
  <td><%= rs.getString("goods_demand") %></td>
  <td><%= rs.getString("sale_rate") %></td>
</tr>
<%
  }
  conn.close();
%>
</table>

</body>
</html>