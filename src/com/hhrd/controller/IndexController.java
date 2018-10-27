package com.hhrd.controller;

import com.hhrd.dao.mapper.BearingMapper;
import com.hhrd.model.Bearing;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping({"index"})
public class IndexController
{
    @Resource
    private BearingMapper bearingMapper;
    private Model model;

    @RequestMapping({"/about"})
    public String toabout(Model model)
    {
        return "about";
    }

    @RequestMapping({"/index"})
    public String toindex(Model model)
    {
        return "index";
    }

    @RequestMapping({"/product"})
    public String toproduct(Model model)
    {
        return "product";
    }

    @RequestMapping({"/mail"})
    public String tomail(Model model)
    {
        return "mail";
    }

    @RequestMapping({"/news"})
    public String tonews(Model model)
    {
        return "news";
    }

    @RequestMapping({"/news1"})
    public String tonews1(Model model)
    {
        return "news1";
    }

    @RequestMapping({"/news2"})
    public String tonews2(Model model)
    {
        return "news2";
    }

    @RequestMapping({"/news3"})
    public String tonews3(Model model)
    {
        return "news3";
    }

    @RequestMapping({"/news4"})
    public String tonews4(Model model)
    {
        return "news4";
    }

    @RequestMapping({"/news5"})
    public String tonews5(Model model)
    {
        return "news5";
    }

    @RequestMapping({"/news6"})
    public String tonews6(Model model)
    {
        return "news6";
    }

    @RequestMapping({"/newsn1"})
    public String tonewsn1(Model model)
    {
        return "newsn1";
    }

    @RequestMapping({"/newsn2"})
    public String tonewsn2(Model model)
    {
        return "newsn2";
    }

    @RequestMapping({"/newsn3"})
    public String tonewsn3(Model model)
    {
        return "newsn3";
    }

    @RequestMapping({"/newsn4"})
    public String tonewsn4(Model model)
    {
        return "newsn4";
    }

    @RequestMapping({"/newsg1"})
    public String tonewsg1(Model model)
    {
        return "newsg1";
    }

    @RequestMapping({"/find"})
    public ModelAndView find(@RequestParam("type")String type, Model model)
    {
        System.out.println("start================");
        Map<Integer,Object> map = new HashMap<Integer, Object>();
        List<Bearing> bearingList = bearingMapper.selectByType(type);
        int i =0;
        for (Bearing bearing : bearingList){
            map.put(i,bearing);
            i++;
            System.out.println("==============="+bearing.getBear_type());
        }
        ModelAndView mav = new ModelAndView("findList");
        mav.addObject("type", type);
        mav.addObject("map",map);
        return  mav;
//        return new ModelAndView( "findList", "map", map);
    }
}
