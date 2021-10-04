package service;

import model.NoteTypes;
import model.Priority;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PriorityService implements IPriorityService{
    private String jdbcURL = "jdbc:mysql://localhost:3306/notes_database";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";


    public PriorityService() {
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

    String INSERT_PRIORITY_SQL = "INSERT INTO priority" + "(name)VALUES" + "(?);";
    String SELECT_PRIORITY_SQL = "SELECT * FROM priority";
    String SELECT_PRIORITY_BY_ID = "SELECT name FROM priority WHERE id = ?";
    String DELETE_PRIORITY_SQL = "DELETE FROM priority WHERE id = ?;";
    String UPDATE_PRIORITY_SQL = "UPDATE priority SET name = ? WHERE id = ?;";

    public boolean insertPriority(Priority priority) throws SQLException {
        boolean insert = false;
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRIORITY_SQL)) {
            preparedStatement.setString(1, priority.getPriorityName());
            preparedStatement.executeUpdate();
            insert = true;
            return insert;
        } catch (SQLException e) {
            printSQLException(e);
            return insert;
        }
    }

    @Override
    public Priority selectPriority(int id) throws SQLException {
        Priority priority = null;
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRIORITY_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("priority_name");
                priority = new Priority(id, name);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return priority;
    }


    public List<Priority> selectAllPriority() throws SQLException {
        List<Priority> priorities = new ArrayList<>();
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRIORITY_SQL);) {
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("priority_name");

                priorities.add(new Priority(id, name));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return priorities;
    }


    public boolean deletePriority(int id) throws SQLException {
        boolean rowDelete;
        try (Connection connection = connection(); PreparedStatement statement = connection.prepareStatement(DELETE_PRIORITY_SQL)) {
            statement.setInt(1, id);
            rowDelete = statement.executeUpdate() > 0;
        }
        return rowDelete;
    }


    public boolean updatePriority(Priority priority) throws SQLException {
        boolean rowUpdate;
        try (Connection connection = connection(); PreparedStatement statement = connection.prepareStatement(UPDATE_PRIORITY_SQL)) {
            statement.setString(1, priority.getPriorityName());
            statement.setInt(2,priority.getId());
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
