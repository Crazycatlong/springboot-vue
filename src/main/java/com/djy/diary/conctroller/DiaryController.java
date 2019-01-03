package com.djy.diary.conctroller;

import com.djy.diary.pojo.Diary;
import com.djy.diary.service.DiaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/**
 * @ Author     ：crazycatlong.
 * @ Date       ：Created in 14:24 2018/12/3 0003
 * @ Description：
 */
@RestController
@RequestMapping("/diary")
public class DiaryController {
    @Autowired
    private DiaryService service;


    //1.查
    @RequestMapping("/findAll")
    public Object[] findAll(){
        List<Diary> list = service.findAll();
        Object [] diary = new Object[list.size()];
        Object[] diaryList = list.toArray(diary);
        System.out.println(diaryList);
        //request.setAttribute("diaryList",diaryList);
        //return "asd";
        return diaryList;
    }

//   分页,使用restful风格
//    @RequestMapping("/getAllPage/{currentPage}")
//    public Page<Diary> getAllPage(@PathVariable("currentPage") int currentPage){
//        PageRequest pageRequest = new PageRequest(currentPage,8);
//        Page<Diary> page = service.getAllPage(pageRequest);
//        System.out.println(page);
//        return  page;
//    };
//   普通分页
    @RequestMapping("/getAllPage")
    public Page<Diary> getAllPage(Integer currentPage,Integer pageSize){
        Integer new_currentPage = currentPage-1;
        PageRequest pageRequest = new PageRequest(new_currentPage,pageSize);
        Page<Diary> page = service.getAllPage(pageRequest);

//        page.getTotalPages();
//        page.getTotalElements();
//        List<Diary> diaryList = page.getContent();
//        List<Object> list = new ArrayList<Object>();
//        list.add(diaryList);
//        list.add(currentPage);
//        list.add(pageSize);
//        list.add(page.getTotalElements());
//        list.add(page.getTotalPages());
//        System.out.println(page.getContent());
        return page;
    };


    //保存
    @RequestMapping("/saveDiary")
    public void saveDiary(Diary diary){
        service.addDiary(diary);

    }
    //删除
    @RequestMapping("/delete")
    //@ResponseBody
    public String deleteById(Integer id){
        Diary diary=service.findById(id);
        System.out.println(diary);
        service.deleteDiary(diary);
        return "redirect:/diary/findAll";



    }

    @RequestMapping("/findById")
    public Diary updateee(Integer id, HttpServletRequest request){
        Diary diary=service.findById(id);
        //request.setAttribute("diaryl",diaryl);
        //service.update(id, title, content, weather);
        System.out.println(diary);
//        return "udp";
        return diary;

    }


    @RequestMapping("/update")
    public String uppdate(Diary diary){
        service.addDiary(diary);
            return "redirect:/diary/findAll";

    }



}
