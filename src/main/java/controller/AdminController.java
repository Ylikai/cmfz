package controller;

import entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;
    @RequestMapping("login")
    public @ResponseBody Boolean login (Admin admin){
        System.out.println(admin);
        Admin adm=adminService.query(admin);
        if(adm!=null){
            System.out.println(adm);
            return true;
        }else{
            return false;
        }

    }
}
