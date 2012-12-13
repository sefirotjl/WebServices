  <%@page contentType="text/html; charset=UTF-8"%>
  <%@page import="org.json.simple.JSONObject"%>
  <%
  String user = request.getParameter("user");
  out.print("usuario ingresado " + user);
  if(user.equals("jorge") == true){
    JSONObject obj=new JSONObject();
    obj.put("resp","ok");
    obj.put("user","jorge");
    obj.put("pass","jorge");
    out.print(obj);
    out.flush();
       }
   else{
    JSONObject obj=new JSONObject();
    obj.put("resp","error");
    obj.put("description","usuario no existente");
    out.print(obj);
    out.flush();
   }
  %>
