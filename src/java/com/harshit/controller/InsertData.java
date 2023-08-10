/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harshit.controller;

import com.harshit.bean.Emp;
import com.harshit.dao.EmpDao;
import com.harshit.utility.HibernateUtil;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class InsertData {
    public static void main(String[] args) {
        EmpDao ed = new EmpDao();
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Emp e = new Emp();
        e.setComm(31f);
        e.setDeptno(23);
        e.setGender("male");
        e.setName("shrikant");
        e.setSal(30000f);
        e.setEmpno(4);
//        ed.updateDate(e);
    int x=ed.addData(e);
        System.out.println((x>0)?"Sucess":"Failed");
//    List<Emp>al=    ed.FindById(4);
//    
//        System.out.println("Id :" +al.get(0).getEmpno()+"\t"+"Name : "+al.get(0).getName());
//    
    }
}
