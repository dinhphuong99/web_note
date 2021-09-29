package service;



import model.Priority;

import java.sql.SQLException;
import java.util.List;

public interface IPriorityService {
    public void insertNoteType (Priority noteTypes) throws SQLException;

    public Priority selectNoteType(int id) throws SQLException;

    public List<Priority> selectAllNoteTypes() throws SQLException;

    public boolean deleteNoteTypes(int id) throws SQLException;

    public boolean updateNoteTypes(Priority noteTypes) throws SQLException;
}
