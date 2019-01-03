package com.djy.diary.service.ServiceImpl;

import com.djy.diary.pojo.Diary;
import com.djy.diary.repository.DiaryRepository;
import com.djy.diary.service.DiaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ Author     ：crazycatlong.
 * @ Date       ：Created in 14:15 2018/12/3 0003
 * @ Description：
 */
@Service
public class DiaryServiceImpl implements DiaryService {
    @Autowired
    private DiaryRepository diaryRepository;

    @Override
    public Diary findById(Integer id) {
        return diaryRepository.findOne(id);
    }

    @Override
    public List<Diary> findAll() {
        return diaryRepository.findAll();
    }

    @Override
    public void deleteDiary(Diary diary) {
       diaryRepository.delete(diary);

    }

    @Override
    public void addDiary(Diary diary) {
        diaryRepository.save(diary);
    }

    @Override
    public int update(Integer id, String title, String content, String weather) {
        return diaryRepository.updatee(id, title, content, weather);
    }


    @Override
    public void deleteById(Integer id) {
        diaryRepository.delete(id);
    }

    @Override
    public Page<Diary> getAllPage(Pageable pageable) {
        return diaryRepository.findAll(pageable);
    }
}
