package service;

import model.NoteType;
import model.Notes;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface INoteService {
    public void insertNote (Notes note) throws SQLException;

    public Notes selectNote(int id) throws SQLException;

    public List<Notes>selectAllNotes() throws SQLException;

    public boolean deleteNote(int id) throws SQLException;

    public boolean updateNote(Notes note) throws SQLException;

    public boolean findNotes(Notes note) throws SQLException;

    public List<Notes> findNoteWithName (int id, String nameNote) throws SQLException;

    //
    public void insertNoteType (NoteType noteType) throws SQLException;

    public NoteType selectNoteType(int id) throws SQLException;

    public List<NoteType>selectAllNoteType() throws SQLException;

    public boolean deleteNoteType(int id) throws SQLException;

    public boolean updateNoteType(NoteType noteType) throws SQLException;

    public boolean findNoteType(Notes note) throws SQLException;

    public List<Notes> findNoteTypeWithName (int id, String name) throws SQLException;
}
