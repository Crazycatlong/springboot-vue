package com.djy.diary.service;

import com.djy.diary.pojo.Diary;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface DiaryService {
    Diary findById(Integer id);
    List<Diary> findAll();
    void deleteDiary(Diary diary);
    void addDiary(Diary diary);
    int update(Integer id, String title, String content, String weather);
    void deleteById(Integer id);
    Page<Diary> getAllPage(Pageable pageable);

}
