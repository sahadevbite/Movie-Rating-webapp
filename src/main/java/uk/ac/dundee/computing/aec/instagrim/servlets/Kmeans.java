/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.servlets;

import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;

import static java.lang.Math.abs;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.aec.instagrim.models.Rate;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "Kmeans", urlPatterns = {"/Kmeans"})
public class Kmeans extends HttpServlet {

    Cluster cluster;

    @Override
    public void init(ServletConfig config) throws ServletException {
        // TODO Auto-generated method stub
        cluster = CassandraHosts.getCluster();

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    	
    	 // TODO Auto-generated method stub
        cluster = CassandraHosts.getCluster();
        Session session = cluster.connect();
        session.execute("USE Movies");
        String mv_name=request.getParameter("mv_name");
       // String mv_name="kaabil";
        String email,cmmnt,ok,ok1,ok2;
        int stars=0;
        
        String cql = "SELECT * FROM rating where mv_name='"+mv_name+"' ALLOW FILTERING" ;
        
        //Getting the ResultSet
        ResultSet result = session.execute(cql);
        List<Row> initlist =  result.all();
        System.out.println("1");
        int total = initlist.size();
        //Row c1(50), c2[50], c3[50];
        Row c1[] = new Row[50];
        Row c2[] = new Row[50];
        Row c3[] = new Row[50];
        
        int cen1, cen2, cen3, oldcen1, oldcen2, oldcen3, count1, count2, count3;
        
        cen1 = 1;
        cen2 = 3;
        cen3 = 5;
        count1 = 0;
        count2 = 0;
        count3 = 0;
        System.out.println("2");
        while(true)
        {
           for(Row r : initlist)
           {
               if (abs(cen1-r.getInt("stars")) < abs(cen2-r.getInt("stars")))
                   {
                       if (abs(cen1-r.getInt("stars")) < abs(cen3-r.getInt("stars")))
                   {
                       c1[count1] = r;
                       count1++;
                       
                   }   
               }
           else    
               {
                   if (abs(cen2-r.getInt("stars")) < abs(cen3-r.getInt("stars")))
                   {
                       c2[count2] = r;
                       count2++;
                   }   
                   else
                   {
                       c3[count3] = r;
                       count3++;
                   }
               }
            }
           
           oldcen1 = cen1;
           oldcen2 = cen2;
           oldcen3 = cen3;
           
            int sum = 0;
            for(int i = 0 ; i<count1 ; i++)
            {
                    //jTextField1.setText(jTextField1.getText() + ": " + c1[i].getInt("marks"));
                    sum = sum + c1[i].getInt("stars");
            }
            
            if (count1 != 0)
              cen1 = sum / count1;
        
           sum = 0;
           for(int i = 0 ; i<count2 ; i++)
           {
                //jTextField2.setText(jTextField2.getText() + ": " + c2[i].getInt("marks"));
                sum = sum + c2[i].getInt("stars");
            }
            if (count2 != 0)
           cen2 = sum / count2;
            
            sum = 0;
            for(int i = 0 ; i<count3 ; i++)
            {
                //jTextField3.setText(jTextField3.getText() + ": " + c3[i].getInt("marks"));
                sum = sum + c3[i].getInt("stars");
            }
             if (count3 != 0)
            cen3 = sum / count3;
            
            if ((oldcen1 == cen1) && (oldcen2 == cen2) && (oldcen3 == cen3))
            {
            	
                 ok = new DecimalFormat ("##.##").format(((float)count1/(float)total)*100);
               System.out.println(ok+" IS THE VALUE OF OK");
                ok1 = new DecimalFormat ("##.##").format(((float)count2/(float)total)*100);
                ok2 = new DecimalFormat ("##.##").format(((float)count3/(float)total)*100);
              
               break;
            }
            else
            {
                count1 = 0;
                count2 = 0;
                count3 = 0;
            }
             
            // Recalculate Centrioid;
            
        }

        //jList1.removeAll();
       // jList2.removeAll();
       // jList3.removeAll();
           Vector<String> cv1 = new Vector<String>();
           Vector<String> cv2 = new Vector<String>();
           Vector<String> cv3 = new Vector<String>();
         for(int i = 0 ; i<count1 ; i++)
            {
                    //jTextField1.setText(jTextField1.getText() + ": " + c1[i].getInt("marks"));
      
                    cv1.add(c1[i].getString("mv_name"));
                 
                    
            }
           for(int i = 0 ; i<count2 ; i++)
           {
               // jTextField2.setText(jTextField2.getText() + ": " + c2[i].getInt("marks"));
               cv2.add(c2[i].getString("mv_name"));
                 
                
           }
            
            for(int i = 0 ; i<count3 ; i++)
            {
               // jTextField3.setText(jTextField3.getText() + ": " + c3[i].getInt("marks"));
               cv3.add(c3[i].getString("mv_name"));
                 
                
            }
           
            //jList1.setListData(cv1);
           // jList2.setListData(cv2);
           // jList3.setListData(cv3);
            System.out.println("3");
            
        System.out.println("Completed !!!");
        request.setAttribute("ok", ok);
        request.setAttribute("ok1", ok1);
        request.setAttribute("ok2", ok2);
        request.setAttribute("mv_name", mv_name);


        request.getRequestDispatcher("/Analysis.jsp").forward(request, response);
        //response.sendRedirect("/Movie/Analysis.jsp");
    }
}
     