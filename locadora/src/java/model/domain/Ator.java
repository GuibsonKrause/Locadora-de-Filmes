/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.io.Serializable;
import javax.persistence.*;


/**
 *
 * @author root
 */
@Entity
@Table(name="Ator")
public class Ator implements Serializable {

    @Id
    @GeneratedValue
    private Long ID;
    
    
    private String nome;

    public Ator() {
    }

    public Ator(Long ID, String nome) {
        this.ID = ID;
        this.nome = nome;
    }

    public Ator(String nome) {
        this.nome = nome;
    }

    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    
}
