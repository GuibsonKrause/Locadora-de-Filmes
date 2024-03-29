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
public class Diretor implements Serializable {

    @Id
    @GeneratedValue
    private Long ID;

    private String nome;

    public Diretor() {
    }

    public Diretor(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        return nome;
    }

    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }
}
