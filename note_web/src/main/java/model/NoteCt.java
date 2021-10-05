package model;

public class NoteCt {
    private int id;
    private String noteName;
    private String startTime;
    private String endTime;
    private String description;
    private String type;
    private String priority;

    public NoteCt() {
    }

    public NoteCt(int id, String noteName,
                  String startTime, String endTime,
                  String description, String type, String priority) {
        this.id = id;
        this.noteName = noteName;
        this.startTime = startTime;
        this.endTime = endTime;
        this.description = description;
        this.type = type;
        this.priority = priority;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }
}
