/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Employee;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.PathParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.Produces;

/**
 * REST Web Service
 *
 * @author jorge
 */
@Path("Employee")
public class EmployeeResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of EmployeeResource
     */
    public EmployeeResource() {
    }

    /**
     * Retrieves representation of an instance of Employee.EmployeeResource
     * @return an instance of java.lang.String
     */
    @GET   // this method process GET request from client
    @Produces("application/json")   // sends JSON
    public String getJson( @PathParam("empno") int empno) {  // empno represents the empno sent from client   
      switch(empno) {
          case 1 :
              return "{'name':'George Koch', 'age':58}";
          case 2:
              return "{'name':'Peter Norton', 'age':50}";
          default:
              return "{'name':'unknown', 'age':-1}";
      } // end of switch
   } // end of 

    /**
     * PUT method for updating or creating an instance of EmployeeResource
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/json")
    public void putJson(String content) {
    }
}
