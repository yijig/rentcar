package com.example.rentcar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.rentcar.dao.MemberDAO;
import com.example.rentcar.model.Member;
import com.example.rentcar.model.RentalPlan;
import com.example.rentcar.dao.RentalPlanDAO;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

    @Autowired
    private MemberDAO memberDAO;

    @Autowired
    private RentalPlanDAO rentDAO;

    @RequestMapping("/")
    public String index(Model model) {

        Member members = memberDAO.findById(3);

        model.addAttribute("members", members);

        return "index";
    }

    @RequestMapping("/rent3")
    public String caroderdata(Model model) {
        List<RentalPlan> rentalPlans = rentDAO.findAll();

        RentalPlan firstPlan = rentalPlans.get(1);
        firstPlan.setDaily_Price(9999.0);

        rentDAO.update(firstPlan);
        return "rent/rent-vehicles";
    }

    @RequestMapping("/text")
    public String text(Model model) {

        return "text";
    }

    @RequestMapping("/text1")
    public String text1(Model model) {

        return "text1";
    }

    @RequestMapping("/text2")
    public String text2(Model model) {

        return "text2";
    }

    @RequestMapping("/text3")
    public String text3(Model model) {

        return "text3";
    }

    @RequestMapping("/text4")
    public String text4(Model model) {

        return "text4";
    }

    @RequestMapping("/text5")
    public String text5(Model model) {

        return "text5";
    }

    @RequestMapping("/rent5")
    public String extalnfo(Model model) {

        return "rent-vehicke-order";
    }

    @RequestMapping("/rent4")
    public String reservation(Model model) {

        return "rent-vehicle-options";
    }

    @RequestMapping("/rent2")
    public String carinformation(Model model) {

        return "rent-confirmation";
    }

    @RequestMapping("/rent1")
    public String rentcarinfo(Model model) {

        return "rent-vehicle-detail";
    }

    @RequestMapping("/x")
    public String indexx(HttpSession session, Model model) {
        Member member = (Member) session.getAttribute("user");

        Member a123 = memberDAO.findByAccount("a123");

        if (member != null) {
            model.addAttribute("member", member);
        }

        model.addAttribute("user", a123);

        return "memberpofile";
    }

}
