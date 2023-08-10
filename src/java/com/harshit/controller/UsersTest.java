/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harshit.controller;

import com.harshit.bean.Users;
import com.harshit.dao.UsersDao;
import java.util.List;

/**
 *
 * @author hp
 */
public class UsersTest {
      public static void main(String[] args) {
        UsersDao ud = new UsersDao();
        Users ub = new Users();
//        ub.setUsername("shrikant@123");
//        ub.setPassword("shrikant");
//         int x=ud.addData(ub);
//        System.out.println((x>0)?"Sucess":"Failed");
        
//        ud.deleteData(ub);
        List<Users> ul= ud.authenticate("shrikant@123","shrikan");
        System.out.println("UserName :" +ul.get(0).getUsername()+ " ,Password : "+ ul.get(0).getPassword());
    }
}
