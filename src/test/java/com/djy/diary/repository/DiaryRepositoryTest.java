package com.djy.diary.repository;

import com.djy.diary.pojo.Diary;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;
@RunWith(SpringRunner.class)
@SpringBootTest
public class DiaryRepositoryTest {
    @Autowired
    private DiaryRepository diaryRepository;
    @Test
  public void findAll(){
      System.out.println(diaryRepository.findAll());
  }
  @Test
  public void findOne(){
        System.out.println(diaryRepository.findOne(1));
    }

    @Test
    public void delete(){
        Diary diary = diaryRepository.findOne(9);
        diaryRepository.delete(diary);
    }
    @Test
    public void update(){
         Diary diary = new Diary(1,"pp","pp","pp");

        diaryRepository.save(diary);
       // diaryRepository.updatee(1,"pp","pp","pp");
    }


}