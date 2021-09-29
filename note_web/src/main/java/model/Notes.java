package model;

import java.sql.Date;

public class Notes {
    private int id;
    private String eventName;
    private Date startTime;
    private Date endTime;
    private Short priority;
    private String description;
    private int typeId;

    public Notes() {
    }

    public Notes(int id, String eventName,
                 Date startTime, Date endTime,
                 Short priority, String description, int typeId) {
        this.id = id;
        this.eventName = eventName;
        this.startTime = startTime;
        this.endTime = endTime;
        this.priority = priority;
        this.description = description;
        this.typeId = typeId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Short getPriority() {
        return priority;
    }

    public void setPriority(Short priority) {
        this.priority = priority;
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
}
