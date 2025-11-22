package com.todolist.Model;

import java.util.ArrayList;
import java.util.List;

public class DaoClass {
    static ArrayList<Tasks> arrtask=new ArrayList<>();
    static int counter = 1;



    //POST
    public String addtasks(Tasks task){
        task.setId(counter++);
        arrtask.add(task);
        return "successfully added";
    }

    //GET
    public List<Tasks> getalltasks(){
        return arrtask;
    }

    //UPDATE
    public boolean updatetask(int id, String desc) {
        for (Tasks t : arrtask) {
            if (t.getId() == id) {
                t.setDescription(desc);
                return true;
            }
        }
        return false;
    }

    //DELETE
    public String deletetask(int id){
        Tasks toremove=null;
        for(Tasks t: arrtask ){
            if(t.getId()==id){
                toremove=t;
                break;
            }
        }
        if(toremove != null){
            arrtask.remove(toremove);
            return "successfully added";
        }else {
            return "Task Not Found";
        }
    }
}
