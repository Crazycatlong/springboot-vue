package com.djy.diary.service.ServiceImpl;

import com.djy.diary.pojo.Diary;
import com.djy.diary.repository.DiaryRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;


@RunWith(SpringRunner.class)
@SpringBootTest
public class DiaryServiceImplTest {
    @Autowired
    private DiaryServiceImpl diaryServiceImpl;
    private DiaryRepository diaryRepository;
    public void test(){
        Diary diary=diaryServiceImpl.findById(8);
        diaryServiceImpl.deleteDiary(diary);
        List<Diary> list= diaryServiceImpl.findAll();
        System.out.println(list);
    }
    public void deleteByIdTest(){
        diaryServiceImpl.deleteById(1);
        List<Diary> list= diaryServiceImpl.findAll();
        System.out.println(list);
    }
    @Test
    public void findByIdTest(){
        Diary diary = diaryRepository.findOne(2);
        System.out.println(diary);
    }
    @Test
    public void findAllTest(){
        List<Diary> list = diaryRepository.findAll();
        System.out.println(list);

    }


    @Test
    public void findById() {
    }

    @Test
    public void findAll() {
    }

    @Test
    public void deleteDiary() {
    }

    @Test
    public void addDiary() {
    }

    @Test
    public void update() {
    }

    @Test
    public void deleteById() {
    }
}