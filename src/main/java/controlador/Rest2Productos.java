/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.List;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import modelo.Productos;
import modelo.ProductosCRUD;

/**
 * REST Web Service
 *
 * @author Bueno
 */
@Path("rest2")
public class Rest2Productos {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of Rest2Productos
     */
    public Rest2Productos() {
    }

    @GET
    public String ping() {
        return "Probando rest";
    }

    @GET
    @Path("/test/{nombre}")
    public String ping2(@PathParam("nombre") String nombre) {
        return "Probando " + nombre;
    }
    
    @POST
    @Path("/producto")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public void setProducto(Productos producto) {
        ProductosCRUD.insertaProducto(producto);
    }
    
    @PUT
    @Path("/producto")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Productos updateProducto(Productos producto) {
        ProductosCRUD.actualizaProducto(producto);
        return producto;
    }
    
    @DELETE
    @Path("/producto/{id}")
    public void deleteProducto(@PathParam("id") int id) {
        ProductosCRUD.destroyProducto(id);
    }
    
    /**
     * Retrieves representation of an instance of controlador.Rest2Productos
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Path("/persona")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getJson() {

        String persona = "{\"nombre\":\"Juan\",\"contrase??a\":\"1234\",\"pais\":\"Espa??a\"}";
        
        ResponseBuilder res = Response.ok(persona);
        return res.build();
    }

    @GET
    @Path("/productos")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Productos> getProductos() {
        List<Productos> misProductos = ProductosCRUD.getProductos();
        return misProductos;
    }
    
    
    @GET
    @Path("/producto/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Productos getProductoJson(@PathParam("id") int id) {
        Productos miProducto = ProductosCRUD.getProducto(id);
        return miProducto;
    }

    
    /**
     * PUT method for updating or creating an instance of Rest2Productos
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }
}
