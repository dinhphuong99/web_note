package model;

import java.sql.Date;

public class Notes {
    private int id;
    private String noteName;
    private String startTime;
    private String endTime;
    private String description;
    private int typeId;
    private int priorityId;

    public Notes() {
    }

    public Notes(int id, String noteName,
                 String startTime, String endTime,
                 String description, int typeId, int priorityId) {
        this.id = id;
        this.noteName = noteName;
        this.startTime = startTime;
        this.endTime = endTime;
        this.description = description;
        this.typeId = typeId;
        this.priorityId = priorityId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNoteName() {
        return noteName;
    }

    public void setNoteName(String noteName) {
        this.noteName = noteName;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getPriorityId() {
        return priorityId;
    }

    public void setPriorityId(int priorityId) {
        this.priorityId = priorityId;
    }
}
