<%@ page import="java.sql.ResultSet, java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student User Page</title>
     <style>
        table {
            width: 100%;
            border-collapse: collapse;
            display:flex;
            justify-content: center;
          
            			
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px 15px 8px 15px;
            width: auto;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        h1,td{
        
        text-align: center;
        }
        .scontent {
            flex: 1;
            padding: 20px;
        }
        
    </style>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>
 <jsp:include page="sidebar.jsp"></jsp:include>
 <div class="scontent">
  <c:if test="${not empty infoname and infoname=='book'}" >
    <h1>Book Information</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Edision</th>
                <th>price</th>
            </tr>
        </thead>
        <tbody>
            <% 
                ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                if (rs != null) {
                    try {
                        while (rs.next()) {
            %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("edision") %></td>
                    <td><%= rs.getInt("price") %></td>
                </tr>
            <% 
                        }
                    } catch (SQLException e) {
                        out.println("Error processing result set.");
                    }
                } else {
            %>
                <tr>
                    <td colspan="4">No data available</td>
                </tr>
            <% 
                }
            %>
        </tbody>
    </table>
    </c:if>
 
 
 </div>

</body>
</html>
