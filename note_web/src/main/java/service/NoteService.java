package service;

import model.NoteTypes;
import model.Notes;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NoteService implements INoteService {
    private String jdbcURL = "jdbc:mysql://localhost:3306/notes_database";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";


    public NoteService() {
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

    String INSERT_NOTE_SQL = "INSERT INTO notes" + "(note_name, start_time, end_time, description, type_id, priority_id)VALUES" + "(?, ?, ?, ?, ?, ?);";
    String SELECT_ALL_NOTE_SQL = "SELECT * FROM notes";
    String SELECT_NOTE_BY_ID = "SELECT note_name, start_time, end_time, description, type_id, priority_id FROM customers WHERE id = ?";
    String DELETE_NOTE_SQL = "DELETE FROM notes WHERE id = ?;";
    String UPDATE_NOTE_SQL = "UPDATE customers SET note_name = ?, start_time = ?, end_time = ?, description = ?, type_id = ?, priority_id = ? WHERE id = ?;";

    @Override
    public void insertNote(Notes note) throws SQLException {
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_NOTE_SQL)) {
            preparedStatement.setString(1, note.getNoteName());
            preparedStatement.setString(2, note.getStartTime());
            preparedStatement.setString(3, note.getEndTime());
            preparedStatement.setString(4, note.getDescription());
            preparedStatement.setInt(5, note.getTypeId());
            preparedStatement.setInt(6, note.getPriorityId());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Notes selectNote(int id) throws SQLException {
        Notes note = null;
        //    `id` int NOT NULL AUTO_INCREMENT,
//  `note_name` varchar(45) NOT NULL,
//  `start_time` datetime DEFAULT NULL,
//            `end_time` datetime DEFAULT NULL,
//            `description` text,
//            `type_id` int NOT NULL,
//            `priority_id` int NOT NULL,
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_NOTE_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String noteName = resultSet.getString("note_name");
                String startTime = resultSet.getString("start_time");
                String endTime = resultSet.getString("end_time");
                String description = resultSet.getString("description");
                int typeId = resultSet.getInt("type_id");
                int priorityId = resultSet.getInt("priority_id");
                note = new Notes(id, noteName, startTime, endTime, description, typeId, priorityId);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return note;
    }


    public List<Notes> selectAllNotes() throws SQLException {
        List<Notes> notes = new ArrayList<>();
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_NOTE_SQL);) {
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String noteName = resultSet.getString("note_name");
                String startTime = resultSet.getString("start_time");
                String endTime = resultSet.getString("end_time");
                String description = resultSet.getString("description");
                int typeId = resultSet.getInt("type_id");
                int priorityId = resultSet.getInt("priority_id");

                notes.add(new Notes(id, noteName, startTime, endTime, description, typeId, priorityId));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return notes;
    }


    public boolean deleteNote(int id) throws SQLException {
        boolean rowDelete;
        try (Connection connection = connection(); PreparedStatement statement = connection.prepareStatement(DELETE_NOTE_SQL)) {
            statement.setInt(1, id);
            rowDelete = statement.executeUpdate() > 0;
        }
        return rowDelete;
    }


    public boolean updateNote(Notes note) throws SQLException {
        boolean rowUpdate;
        try (Connection connection = connection(); PreparedStatement statement = connection.prepareStatement(UPDATE_NOTE_SQL)) {
            statement.setString(1, note.getNoteName());
            statement.setString(2, note.getStartTime());
            statement.setString(3, note.getEndTime());
            statement.setString(4, note.getDescription());
            statement.setInt(5, note.getTypeId());
            statement.setInt(6, note.getPriorityId());
            statement.setInt(7,note.getId());

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
