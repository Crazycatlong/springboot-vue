package com.djy.diary.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @ Author     ：crazycatlong.
 * @ Date       ：Created in 11:55 2018/12/27 0027
 * @ Description：
 */
@Entity
@Data
public class User {
    @Id
    private Integer userId;
    private String userName;
    private  String PassWorld;
    private  Integer roleType;
}
