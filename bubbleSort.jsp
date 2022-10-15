<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%--<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>--%>
<html lang="en">
    
    
      
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
  
.insert input[type=text]
{
    margin-left: 50px;
    margin-top:30px;
    width:100px;
}
    
    </style>
    <title>Hello, world!</title>
  </head>
  <body>
      
<nav class="navbar navbar-light bg-dark">
  <div class="container-fluid">
    <a class="fs-2 fw-bolder navbar-brand text-light bg-dark">Sorting Visulaizer</a>
    <form class="d-flex">
     
        <button class="btn btn-outline-success active" type="submit">Bubble Sort</button>
        <button class="btn btn-outline-success" type="submit">Selection Sort</button>
        <button class="btn btn-outline-success" type="submit">Insertion Sort</button>
    </form>
  </div>
</nav>
      <form action="bubbleSort.jsp">
      <div class="insert">
      <input type="text" name="val" >
      <input type="submit" value="insert" name="b1">
     </div> 
      </form>
      
      
      
      
    
    <%!
        
     ArrayList<Integer> al=new ArrayList<Integer>();
   %>
      
      <% 
      
    String s1=request.getParameter("b1");
        if(s1!=null)
        {
            
            try
            {
                String s2=request.getParameter("val");
                al.add(Integer.parseInt(s2));
        
                out.println(al);
            }
            catch(Exception e)
            {
             out.println(e);   
            }
                    
            
            

        }        

      %>
      
 <canvas id="myChart" style="width:50%;max-width:500px"></canvas>

 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>