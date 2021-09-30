package service;

import model.NoteTypes;
import model.Notes;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface INoteService {
    public boolean insertNote (Notes note) throws SQLException;

    public Notes selectNote(int id) throws SQLException;

    public List<Notes>selectAllNotes() throws SQLException;

    public boolean deleteNote(int id) throws SQLException;

    public boolean updateNote(Notes note) throws SQLException;
}
