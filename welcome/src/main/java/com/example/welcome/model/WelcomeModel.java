// src/main/java/com/example/welcome/model/WelcomeModel.java
package com.example.welcome.model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class WelcomeModel {
    private String message;
    private String time;

    public WelcomeModel(String message) {
        this.message = message;
        // Lấy thời gian hiện tại dưới dạng chuỗi
        this.time = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
    }

    // Getter & Setter cho message
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    // Getter & Setter cho time
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
