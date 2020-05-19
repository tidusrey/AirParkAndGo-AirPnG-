<%-- 
    Document   : myGarages
    Created on : Mar 24, 2020, 10:16:38 AM
    Author     : dimit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
   
 
        <title>My Garages!</title>
        
   <jsp:include page = "includes_for_css.jsp"></jsp:include>  
        <style>
            body {
                background-color: #f2f2f2;
            }


            .collapsible {
                background-color: #777;
                color: white;
                cursor: pointer;
                padding: 18px;
                width: 100%;
                border: none;
                text-align: left;
                outline: none;
                font-size: 15px;
                margin: 10px;
            }

            .active, .collapsible:hover {
                background-color: #555;
            }

            .content {
                padding: 0 18px;
                display: none;
                overflow: hidden;
                background-color: #f1f1f1;
            }

        </style>

    </head>
    <body>
        
         <jsp:include page = "includes/navBarSide.jsp"></jsp:include>


            <div class="preloader"></div>


        <jsp:include page = "includes/navBar.jsp"></jsp:include>
        
        <div class="container" style="position: static ; padding-top: 120px">
            <div class="row">
                <h1 style="margin-top: 40px">My Reviews</h1>

         <table>
    <!-- here should go some titles... -->
    <tr>
        <th>My Rating</th>
        <th>My Comment</th>
     
    </tr>
     <div class="container">
            <c:forEach items="${userReviews}" var="gar">
                <tr>
                <div class="row" style="border: 1px solid black; margin-top: 3px">
                   
                    <td> <div class="col-3">
                        <c:forEach var = "i" begin = "1" end = "${gar.ureviewRating}">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        </c:forEach>
                    
                        </div></td>
                        <br/>
                        <td><div class="col-3">
                            
                        ${gar.ureviewComment}
                        </div></td> 
             
</tr>
            </c:forEach>
        </div>
         </table>
            </div>
        </div>
        
            <%--<jsp:include page = "includes/footer.jsp"></jsp:include>--%>  

        <jsp:include page = "includes_for_scripts_bottom.jsp"></jsp:include>  

    </body>
</html>

