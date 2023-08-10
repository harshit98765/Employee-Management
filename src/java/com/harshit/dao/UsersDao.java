/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harshit.dao;

import com.harshit.bean.Users;
import com.harshit.utility.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author hp
 */
public class UsersDao {
     SessionFactory sf = HibernateUtil.getSessionFactory();
    Session session = sf.openSession();
    Transaction transaction = session.beginTransaction();

    public int addData(Users users) {
        int result = 0;
        Object ob = session.save(users);
        transaction.commit();
        if (ob != null) {
            result++;
        }
        session.close();
        return result;
    }

    public void updateDate(Users users) {
        session.update(users);
        transaction.commit();
        session.close();
    }

    public void deleteData(Users users) {
        session.delete(users);
        transaction.commit();
        session.close();
    }
   public List<Users> FindAllUsers(){
        Query q = session.createQuery("select d from Users d");
        List<Users> al = q.list();
        
        return  al;
   }
            
    public List<Users> FindById(int n){
       Query q=session.createQuery("select d from Users d where userid=:n");
        q.setInteger("n",n );
        List<Users> al=q.list();
        return  al;
   }
    
    public List<Users> Authenticate( String uname,String pass){
        
       Query q=session.createQuery("select u from Users u where username=:n ,password=:p");
        q.setParameter("n",uname );
        q.setParameter("p", pass );
        List<Users> al=q.list();
          transaction.commit();
        session.close();
        return  al;
   }
    
    public List<Users> authenticate(String uname, String pass) {
       
        Query q = session.createQuery("select u from Users u where username=:n and password=:p");
        q.setParameter("n", uname);
        q.setParameter("p", pass);

        List<Users> usersList = q.list();
        
        transaction.commit();
        session.close();

        return usersList;
    }
}
