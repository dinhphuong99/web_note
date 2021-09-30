package service;

import model.NoteTypes;

import java.sql.SQLException;
import java.util.List;

public interface INoteTypeSevice {
    public boolean insertNoteType (NoteTypes noteTypes) throws SQLException;

    public NoteTypes selectNoteType(int id) throws SQLException;

    public List<NoteTypes> selectAllNoteTypes() throws SQLException;

    public boolean deleteNoteTypes(int id) throws SQLException;

    public boolean updateNoteTypes(NoteTypes noteTypes) throws SQLException;
}
