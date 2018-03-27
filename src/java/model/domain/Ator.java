package model.domain;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;




/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 2016122760198
 */


@Entity
public class Ator implements Serializable{
   
    @Id
    @GeneratedValue
    private long id;
    
    private String nome;
    

    public Ator(long id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    public Ator(String nome) {
        this.nome = nome;
    }

    public Ator() 
    {
        
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    
}
