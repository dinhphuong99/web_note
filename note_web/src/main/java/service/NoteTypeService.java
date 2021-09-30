package service;

import model.NoteTypes;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NoteTypeService implements INoteTypeSevice{

    private String jdbcURL = "jdbc:mysql://localhost:3306/notes_database";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";


    public NoteTypeService() {
    }

    protected Connection connection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    String INSERT_NOTE_TYPE_SQL = "INSERT INTO note_types" + "(name)VALUES" + "(?);";
    String SELECT_ALL_NOTE_TYPES_SQL = "SELECT * FROM note_types";
    String SELECT_NOTE_TYPE_BY_ID = "SELECT name FROM note_types WHERE id = ?";
    String DELETE_NOTE_TYPE_SQL = "DELETE FROM note_types WHERE id = ?;";
    String UPDATE_NOTE_TYPE_SQL = "UPDATE note_types SET name = ? WHERE id = ?;";

    @Override
    public boolean insertNoteType(NoteTypes noteTypes) throws SQLException {
        boolean insert = false;
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_NOTE_TYPE_SQL)) {
            preparedStatement.setString(1, noteTypes.getName());
            preparedStatement.executeUpdate();
            insert = true;
            return insert;
        } catch (SQLException e) {
            printSQLException(e);
            return insert;
        }
    }

    @Override
    public NoteTypes selectNoteType(int id) throws SQLException {
        NoteTypes noteType = null;
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_NOTE_TYPE_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("name");
                noteType = new NoteTypes(id, name);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return noteType;
    }


    public List<NoteTypes> selectAllNoteTypes() throws SQLException {
        List<NoteTypes> noteTypes = new ArrayList<>();
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_NOTE_TYPES_SQL);) {
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");

                noteTypes.add(new NoteTypes(id, name));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return noteTypes;
    }


    public boolean deleteNoteTypes(int id) throws SQLException {
        boolean rowDelete;
        try (Connection connection = connection(); PreparedStatement statement = connection.prepareStatement(DELETE_NOTE_TYPE_SQL)) {
            statement.setInt(1, id);
            rowDelete = statement.executeUpdate() > 0;
        }
        return rowDelete;
    }


    public boolean updateNoteTypes(NoteTypes noteTypes) throws SQLException {
        boolean rowUpdate;
        try (Connection connection = connection(); PreparedStatement statement = connection.prepareStatement(UPDATE_NOTE_TYPE_SQL)) {
            statement.setString(1, noteTypes.getName());
            statement.setInt(2,noteTypes.getId());
            rowUpdate = statement.executeUpdate() > 0;
        }
        return rowUpdate;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
