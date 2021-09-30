package service;



import model.Priority;

import java.sql.SQLException;
import java.util.List;

public interface IPriorityService {
    public boolean insertPriority (Priority priority) throws SQLException;

    public Priority selectPriority(int id) throws SQLException;

    public List<Priority> selectAllPriority() throws SQLException;

    public boolean deletePriority(int id) throws SQLException;

    public boolean updatePriority(Priority priority) throws SQLException;
}
