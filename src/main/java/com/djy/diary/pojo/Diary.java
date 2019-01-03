package com.djy.diary.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * @ Author     ：crazycatlong.
 * @ Date       ：Created in 12:06 2018/12/3 0003
 * @ Description：
 */
@Entity
@Data
public class Diary {
    @Id
    @GeneratedValue
    private Integer id;
    private String title;
    private String content;
    private String weather;

    public Diary(Integer id, String title, String content, String weather) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.weather = weather;
    }

    public Diary() {
    }
}
