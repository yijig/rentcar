package com.example.rentcar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.example.rentcar.dao.MemberDAO;
import com.example.rentcar.model.Member;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
    
    @Autowired
    private MemberDAO memberDAO;


    @RequestMapping("/")
    public String index(Model model){
        
        List<Member> members =memberDAO.findAll();
        
        model.addAttribute("members", members);
        
        
        return "index";
    }
    


   


    @RequestMapping("/x")
    public String indexx(HttpSession session,Model model){
            Member member =(Member)session.getAttribute("user");
            Member members=new Member();
            Member a123 = memberDAO.findByAccount("a123");
            
            if(member!=null){
                model.addAttribute("member", member);
            }
            
            model.addAttribute("user",a123 );

            
        
        return "memberpofile";
    }



    
}
