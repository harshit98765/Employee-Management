/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harshit.dao;

import com.harshit.bean.Emp;
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
public class EmpDao {
   SessionFactory sf = HibernateUtil.getSessionFactory();
    Session session = sf.openSession();
    Transaction transaction = session.beginTransaction();

    public int addData(Emp emp) {
        int result = 0;
        Object ob = session.save(emp);
        transaction.commit();
        if (ob != null) {
            result++;
        }
        session.close();
        return result;
    }

    public void updateDate(Emp emp) {
        session.update(emp);
        transaction.commit();
        session.close();
    }

    public void deleteData(Emp emp) {
        session.delete(emp);
        transaction.commit();
        session.close();
    }
   public List<Emp> FindAllEmp(){
        Query q = session.createQuery("select d from Emp d");
        List<Emp> al = q.list();
        
        return  al;
   }
            
    public List<Emp> FindById(int n){
       Query q=session.createQuery("select d from Emp d where empno=:n");
        q.setInteger("n",n );
        List<Emp> al=q.list();
        return  al;
   }
            
     
}
