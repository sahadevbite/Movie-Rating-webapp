package uk.ac.dundee.computing.aec.instagrim.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import com.datastax.driver.core.querybuilder.QueryBuilder;
import com.datastax.driver.core.querybuilder.Select;

import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;


/**
 * Servlet implementation class view
 */
@WebServlet(name = "view", urlPatterns = {"/view"})
public class view extends HttpServlet {

    Cluster cluster;

    @Override
    public void init(ServletConfig config) throws ServletException {
        // TODO Auto-generated method stub
        cluster = CassandraHosts.getCluster();

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { //String url = request.getRequestURL().toString();
        
        String mv_name = request.getParameter("mv_name");

       // out.println("====================== " + Username);
        
        //String name = (String) request.
                //getAttribute("username");

        //out.println("---------------------- " + name);
        
        //Username = getUserFromUrl(url);
     
       // String mv_name = "";
        String stars = "";
        String cmmnt = "";


       
        Session session = cluster.connect("Movies");
        
        PreparedStatement ps = session.prepare("select mv_name,stars,cmmnt FROM rating WHERE mv_name =? ALLOW FILTERING");
        
      ResultSet rs = null;
    
            BoundStatement boundStatement = new BoundStatement(ps);
       rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        mv_name)); 
      

            request.setAttribute("mv_name", mv_name);
            request.setAttribute("stars", stars);
            request.setAttribute("cmmnt", cmmnt);

            
        
        request.getRequestDispatcher("/star.jsp").forward(request, response);

    }

    private String getUserFromUrl(String url) {
        String user;
        user = url.substring(40);
        return user;
    }

}