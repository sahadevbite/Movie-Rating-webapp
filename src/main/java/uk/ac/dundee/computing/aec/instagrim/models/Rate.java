/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.models;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
//import uk.ac.dundee.computing.aec.instagrim.stores.Pic;

/**
 *
 * @author Administrator
 */
public class Rate {
    Cluster cluster;
    public Rate(){
        
    }
    
    public boolean RegisterUser(String mv_name,String email, String cmmnt, int stars){
   
    	
         Session session = cluster.connect("Movies");
         PreparedStatement ps = session.prepare("insert into rating (mv_name,email,cmmnt,stars) Values(?,?,?,?)");
        
         BoundStatement boundStatement = new BoundStatement(ps);
         session.execute( // this is where the query is executed
                 boundStatement.bind( // here you are binding the 'boundStatement'
                		 mv_name,email,cmmnt,stars));
         //We are assuming this always works.  Also a transaction would be good here !
         
         return true;
     }
     
      
    
        public void setCluster(Cluster cluster) {
         this.cluster = cluster;
     }

     
 }
