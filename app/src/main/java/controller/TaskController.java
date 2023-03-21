/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
//import java.util.Date;
import java.sql.Date;
import java.util.List;
import model.Task;
import java.sql.SQLException;
import util.ConecctionFactory;

/**
 *
 * @author lrgal
 */
public class TaskController {
    
    
    public void save(Task task){
        
        String sql = "INSERT INTO tasks (idProject, "
                + "name,"
                + "description,"
                + "completed,"
                + "notes,"
                + "deadline,"
                + "createdAt,"
                + "updatedAt) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        
        Connection connection = null;
        PreparedStatement statement = null;
        
        try {
            //Estabelecendo conexão com o banco de dados
            connection = ConecctionFactory.getConnection();
            
            //Preparando a query
            statement = connection.prepareStatement(sql);
 
            //Setando os valores
            statement.setInt(1, task.getIdProjetc());
            statement.setString(2, task.getName());
            statement.setString(3,task.getDescription());
            statement.setBoolean(4, task.isIsCompleted());
            statement.setString(5,task.getNotes());
            statement.setDate(6, new Date(task.getDeadline().getTime()));
            statement.setDate(7, new Date(task.getCreatedAt().getTime()));
            statement.setDate(8, new Date(task.getUpdatedAt().getTime()));
            
            //Excecutando a query
            statement.execute();
                        
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao salvar tarefa"
                        + ex.getMessage(), ex);
        }finally{
            ConecctionFactory.closeConnection(connection, statement);    
        }
        
    
    }
    
    public void update(Task task){
    
     String sql = "UPDATE tasks SET "
             + "idProject = ?, "
             + "name = ?, "
             + "description = ?, "
             + "notes = ?, "
             + "completed = ?, "
             + "deadline = ?, "
             + "createdAt = ?, "
             + "updatedAt = ?, "
             + "WHERE id = ?";
     
     Connection connection = null;
     PreparedStatement statement = null;
     
        try {
            //Estabelecendo a conexão com o banco de dados
            connection = ConecctionFactory.getConnection();
            //Declarando a query
            statement = connection.prepareStatement(sql);
            
            //Setando os valores do statement
            statement.setInt(1, task.getIdProjetc());
            statement.setString(2,task.getName());
            statement.setString(3,task.getDescription());
            statement.setString(4,task.getNotes());
            statement.setBoolean(5,task.isIsCompleted());
            statement.setDate(6, new Date(task.getDeadline().getTime()));
            statement.setDate(7, new Date(task.getCreatedAt().getTime()));
            statement.setDate(8, new Date(task.getUpdatedAt().getTime()));
            statement.setInt(9,task.getId());
            
            //Executando a quary
            statement.execute();
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao alterar tarefa"
                        + ex.getMessage(), ex);
        }finally{
            ConecctionFactory.closeConnection(connection, statement);
        }
        
    
    }
    
    public void removeById(int taskId){
        
        String sql = "DELETE FROM tasks where id = ?";
        
        Connection connection = null;
        PreparedStatement statement = null;
        
        try{
            //Criação da conexão com o banco de dados
            connection = ConecctionFactory.getConnection();
            
            //Preparando a query
            statement = connection.prepareStatement(sql);
            
            //Setando os valores
            statement.setInt(1, taskId);
            
            //Executando a query
            statement.execute();
            
        } catch (SQLException ex){
            throw new RuntimeException("Erro ao deletar a tarefa"
            + ex.getMessage(), ex);
            
        }finally {
            ConecctionFactory.closeConnection(connection, statement);
        
        }
        
    
    }
    
    public List<Task> getAll(int idProject){
        
        String sql = "SELECT * FROM tasks WHERE idProject = ?";
        
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        
        // Lista de Tarefas, que será devolvida quando a chamada do método acontecer
        List<Task> tasks = new ArrayList<Task>();
        
        try {
            //Criação da conexão
            connection = ConecctionFactory.getConnection();
            
            //Preparando a query
            statement = connection.prepareStatement(sql);
            
            //Setando valores que corresponde ao filtro de busca
            statement.setInt(1, idProject);
            
            //Valor retornado pela execução da query
            resultSet = statement.executeQuery();
            
            
            //Enquanto houverem valores a serem percorridos pelo resultset
            while(resultSet.next()){
                
                Task task = new Task();
                task.setId(resultSet.getInt("id"));
                task.setIdProjetc(resultSet.getInt("idProject"));
                task.setName(resultSet.getString("name"));
                task.setDescription(resultSet.getString("description"));
                task.setNotes(resultSet.getString("notes"));
                task.setCompleted(resultSet.getBoolean("completed"));
                task.setDeadline(resultSet.getDate("deadline"));
                task.setCreatedAt(resultSet.getDate("createdAt"));
                task.setUpdatedAt(resultSet.getDate("updatedAt"));
                
                task.add(task);
 
            }
            
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao inserir a tarefa"
            + ex.getMessage(), ex);
            
        }finally {
            ConecctionFactory.closeConnection(connection, statement, resultSet);
        }
        // Retorna a lista de tarefas criada e carrega do banco de dados
        return tasks;
    }
    
    
}
