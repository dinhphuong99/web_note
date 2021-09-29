package model;


import java.sql.Date;

public class NoteTypes {
    private int id;
    private String name;

    public NoteTypes() {
    }

    public NoteTypes(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
