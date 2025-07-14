<%@ page import="java.util.Map" %>
<%
    Map<String, String> tenderData = (Map<String, String>) request.getAttribute("tenderData");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Tender Data</title>
    <style>
        body { font-family: Arial; background: #f4f6f8; padding: 30px; }
        form { background: white; padding: 25px; max-width: 700px; margin: auto; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; }
        label { font-weight: bold; display: block; margin-top: 12px; }
        input, select, textarea { width: 100%; padding: 8px; margin-top: 4px; border: 1px solid #ccc; border-radius: 4px; }
        button { background-color: #28a745; color: white; padding: 12px; border: none; border-radius: 5px; width: 100%; cursor: pointer; margin-top: 20px; }
    </style>
</head>
<body>
    <form action="editTender" method="post">
        <h2 color:blue>Edit Tender Data</h2>

        <label>Email (Read-Only)</label>
        <input type="email" name="email" value="<%= tenderData.get("email") %>" readonly>

        <label>Full Name</label>
        <input type="text" name="fullName" value="<%= tenderData.get("full_name") %>" required>

        <label>Tenderer Type</label>
        <input type="text" name="tendererType" value="<%= tenderData.get("tenderer_type") %>" required>

        <label>Address 1</label>
        <textarea name="address1" required><%= tenderData.get("address1") %></textarea>

        <label>Address 2</label>
        <textarea name="address2"><%= tenderData.get("address2") %></textarea>

        <label>City</label>
        <input type="text" name="city" value="<%= tenderData.get("city") %>">

        <label>District</label>
        <input type="text" name="district" value="<%= tenderData.get("district") %>">

        <label>State</label>
        <input type="text" name="state" value="<%= tenderData.get("state") %>">

        <label>Pincode</label>
        <input type="text" name="pincode" value="<%= tenderData.get("pincode") %>">

        <label>Mobile</label>
        <input type="text" name="mobile" value="<%= tenderData.get("mobile") %>" required>

        <label>License YN</label>
        <input type="text" name="licenseYN" value="<%= tenderData.get("license_yn") %>" required>

        <label>GST YN</label>
        <input type="text" name="gstYN" value="<%= tenderData.get("gst_yn") %>" required>

        <label>Goods Type</label>
        <input type="text" name="goodsType" value="<%= tenderData.get("goods_type") %>" required>

        <label>Goods Demand</label>
        <input type="text" name="goodsDemand" value="<%= tenderData.get("goods_demand") %>" required>

        <label>Sale Rate</label>
        <input type="text" name="saleRate" value="<%= tenderData.get("sale_rate") %>" required>

        <label>Remarks</label>
        <textarea name="remarks"><%= tenderData.get("remarks") %></textarea>

        <button type="submit">Update</button>
    </form>
</body>
</html>
