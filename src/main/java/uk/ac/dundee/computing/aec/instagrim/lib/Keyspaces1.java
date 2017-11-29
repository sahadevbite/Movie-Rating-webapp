package uk.ac.dundee.computing.aec.instagrim.lib;

import java.util.ArrayList;
import java.util.List;


import com.datastax.driver.core.*;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Session;

public final class Keyspaces1 {

    public Keyspaces1() {

    }

    public static void SetUpKeySpaces(Cluster c) {
        try {
            //Add some keyspaces here
            String createkeyspace = "create keyspace if not exists Movies  WITH replication = {'class':'SimpleStrategy', 'replication_factor':1}";
            String CreatePicTable = "CREATE TABLE if not exists Movies.Pics ("
                    + " user varchar,"
                    + " picid uuid, "
                    + " interaction_time timestamp,"
                    + " title varchar,"
                    + " image blob,"
                    + " thumb blob,"
                    + " processed blob,"
                    + " imagelength int,"
                    + " thumblength int,"
                    + "  processedlength int,"
                    + " type  varchar,"
                    + " name  varchar,"
                    + " PRIMARY KEY (picid)"
                    + ")"; 
     /*       String Createuserpiclist = "CREATE TABLE if not exists instagrim.userpiclist (\n"
                    + "picid uuid,\n"
                    + "user varchar,\n"
                    + "pic_added timestamp,\n"
                    + "PRIMARY KEY (user,pic_added)\n"
                    + ") WITH CLUSTERING ORDER BY (pic_added desc);"; 
            String CreateAddressType = "CREATE TYPE if not exists instagrim.address (\n"
                    + "      street text,\n"
                    + "      city text,\n"
                    + "      zip int\n"
                    + "  );"; */
            String CreateUserProfile = "CREATE TABLE if not exists Movies.userprofiles (\n"
                    + "      fname text,\n"
                    + "      lname text,\n"
                    + "      email text PRIMARY KEY,\n"
                    + "      gender  text, \n"
                    +"       mobile text, \n "
                    + "  );";
            String CreateMovieRate = "CREATE TABLE if not exists Movies.rating (\n"
                    + "      email text PRIMARY KEY,\n"
                    + "      mv_name text,\n"
                    + "      cmmnt  text, \n"
                    +"       stars int, \n "
                    + "  );";
            Session session = c.connect();
            try {
                PreparedStatement statement = session
                        .prepare(createkeyspace);
                BoundStatement boundStatement = new BoundStatement(
                        statement);
                ResultSet rs = session
                        .execute(boundStatement);
                System.out.println("created Movies ");
            } catch (Exception et) {
                System.out.println("Can't create Movies " + et);
            }

            //now add some column families 
            System.out.println("" + CreatePicTable);

            try {
                SimpleStatement cqlQuery = new SimpleStatement(CreatePicTable);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create tweet table " + et);
            }
          /*  System.out.println("" + Createuserpiclist);

            try {
                SimpleStatement cqlQuery = new SimpleStatement(Createuserpiclist);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create user pic list table " + et);
            }
            System.out.println("" + CreateAddressType);
            try {
                SimpleStatement cqlQuery = new SimpleStatement(CreateAddressType);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address type " + et);
            } */
            System.out.println("" + CreateUserProfile);
            try {
                SimpleStatement cqlQuery = new SimpleStatement(CreateUserProfile);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            }
            System.out.println("" + CreateMovieRate);
            try {
                SimpleStatement cqlQuery = new SimpleStatement(CreateMovieRate);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            }
            session.close();

        } catch (Exception et) {
            System.out.println("Other keyspace or coulm definition error" + et);
        }

    }
}
