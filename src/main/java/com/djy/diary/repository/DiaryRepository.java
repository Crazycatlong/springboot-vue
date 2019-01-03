package com.djy.diary.repository;

import com.djy.diary.pojo.Diary;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;


@Transactional
public interface DiaryRepository extends JpaRepository<Diary,Integer>{

    @Modifying
    @Query(value = "update  diary set title:=title,content:=content,weather:=weather where id:=id",nativeQuery = true)
    public int  updatee(@Param("id") Integer id,  @Param("title")String title, @Param("content") String content,@Param("weather") String weather);


}
