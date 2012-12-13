 
<%@page import="org.json.simple.JSONAware"%>
<%@page contentType="text/html; charset=UTF-8"%>
  <%@page import="org.json.simple.JSONArray"%>
  <%@page import="org.json.simple.JSONObject"%>
  <%
  class Ticket implements JSONAware{
        private int id;
        private String nombre;
        private String drescripcion;
        private double x;
        private double y;
        
        public Ticket(int id, String nombre, String descripcion,double x, double y){
                this.id = id;
                this.nombre = nombre;
                this.drescripcion = descripcion;
                this.x = x;
                this.y = y;
        }
        
        public String toJSONString(){
                StringBuffer sb = new StringBuffer();
                
                sb.append("{");
                
                sb.append(JSONObject.escape("id"));
                sb.append(":");
                sb.append(id);
                
                sb.append(",");
                
                sb.append(JSONObject.escape("nombre"));
                sb.append(":");
                sb.append("\"" + JSONObject.escape(nombre) + "\"");
                
                sb.append(",");
                
                sb.append(JSONObject.escape("drescripcion"));
                sb.append(":");
                sb.append("\"" + JSONObject.escape(drescripcion) + "\"");
                
                sb.append(",");
                
                sb.append(JSONObject.escape("x"));
                sb.append(":");
                sb.append(x);
                
                sb.append(",");
                
                sb.append(JSONObject.escape("y"));
                sb.append(":");
                sb.append(y);
                
                sb.append("}");
                
                return sb.toString();
        }
}
  String user = request.getParameter("user");
  
  JSONArray tickets = new JSONArray();
  tickets.add(new Ticket(1,"uno","primer ticket",1,1));
  tickets.add(new Ticket(2,"dos", "segundo ticket",2,2));
  tickets.add(new Ticket(3,"tres", "tercer ticket",3,3));

    out.print(tickets);
    out.flush();
    
  %>