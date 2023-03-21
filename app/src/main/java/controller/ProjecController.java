/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Project;
import util.ConecctionFactory;

/**
 *
 * @author lrgal
 */
public class ProjecController {
    
    public void save(Project project){
        
        String sql = "INSERT INTO projects (name, "
                + "description, "
                + "createdAt, "
                + "updatedAt) VALUES (?, ?, ?, ?)";
        
        Connection connection = null;
        PreparedStatement statement = null;
        
        try {
            //Conexão com o Banco do dados
            connection = ConecctionFactory.getConnection();
            
            //Prepara a Query
            statement = connection.prepareStatement(sql);
            
            statement.setString(1,project.getName());
            statement.setString(2,project.getDescription());
            statement.setDate(3, new Date(project.getCreatedAt().getTime()));
            statement.setDate(4, new Date(project.getUpdatedAt().getTime()));
            
            //Executando a query
            statement.execute();
            
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao salvar projeto"
                        + ex.getMessage(), ex);
        }finally{
            ConecctionFactory.closeConnection(connection, statement);
        }
    }
    
    public void update(Project project){
        
        String sql = "UPDATE projects SET "
             + "name = ?, "
             + "description = ?, "
             + "createdAt = ?, "
             + "updatedAt = ?, "
             + "WHERE id = ?";
        
            
            Connection connection = null;
            PreparedStatement statement = null;
        
        try {
            
            //Criar conexão com banco de dados
            connection = ConecctionFactory.getConnection();
            
            //Preparando a query
            statement = connection.prepareStatement(sql);

            //Setando valores do statement
            statement.setString(1,project.getName());
            statement.setString(2,project.getDescription());
            statement.setDate(3,new Date(project.getCreatedAt().getTime()));
            statement.setDate(4,new Date(project.getUpdatedAt().getTime()));
            statement.setInt(5,project.getId());

            //Executa a query
            statement.execute();

            } catch (SQLException ex) {
                throw new RuntimeException("Erro ao alterar projeto"
                        + ex.getMessage(), ex);
        }finally{
            ConecctionFactory.closeConnection(connection, statement);
            }
    }
    
    public void removeById(Int idProjec){
        
        String sql = "DELETE FROM projects WHERE id = ?";
        
        Connection connection = null;
        PreparedStatement statement = null;
        
        try {
            //Criação conexão com banco de dados
            connection = ConecctionFactory.getConnection();
            
            //Preparando a query
            statement = connection.prepareStatement(sql);
            
            //Setando os valores
            statement.setInt(1, idProjec);
            
            //Executando a query
            statement.execute();
            
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao deletar a tarefa"
            + ex.getMessage(), ex);
            
        }finally {
            ConecctionFactory.closeConnection(connection, statement);
        }
    
    }
    
    public List<Project> getAll(){
        
        String sql = "SELECT * FROM projects";
        
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        
        // Lista de Tarefas, que será devolvida quando a chamada do método acontecer
        List<Project> projects = new ArrayList<>();
        
        try {
            //Criação conexão com banco de dados
            connection = ConecctionFactory.getConnection();
            
            //Preparando a query
            statement = connection.prepareStatement(sql);
            
            //Valor retornado pela execução da query
            resultSet = statement.executeQuery();
            
            //Enquanto houverem valores a serem percorridos pelo resultset
            while(resultSet.next()){
                
                Project project = new Project();
                
                project.setId(resultSet.getInt("id"));
                project.setName(resultSet.getString("name"));
                project.setDescription(resultSet.getString("description"));
                project.setCreatedAt(resultSet.getDate("createdAt"));
                project.setUpdatedAt(resultSet.getDate("updatedAt"));
                
                projects.add(project);
 
            }
            
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao buscar a tarefa"
            + ex.getMessage(), ex);
            
        }finally {
            ConecctionFactory.closeConnection(connection, statement, resultSet);
        }
        // Retorna a lista de tarefas criada e carrega do banco de dados
        return projects;
    }
    
}