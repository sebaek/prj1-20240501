package com.prj1.domain;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class Member {
    private Integer id;
    private String email;
    private String password;
    private String nickName;
    private LocalDateTime inserted;

    private List<String> authority;
}
