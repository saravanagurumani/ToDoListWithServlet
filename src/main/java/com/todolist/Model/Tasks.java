package com.todolist.Model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Tasks {
    private int id;
    private String description;
    private boolean done;
//    private LocalDate createdDate;
//    private String status;


    public Tasks(int id, String description) {
        this.id = id;
        this.description = description;
    }

    public Tasks(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Tasks{" +
                "description='" + description + '\'' +
                ", id=" + id +
                '}';
    }
}
