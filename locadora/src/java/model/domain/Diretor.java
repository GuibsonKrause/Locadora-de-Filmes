/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;

/**
 *
 * @author Guibson
 */
@Entity
public class Diretor implements Serializable {

    @Id
    @GeneratedValue
    private Long idDiretor;

    private String nome;

     @OneToMany
    private List<Titulo> titulo = new ArrayList<>();
    
    public Diretor() {
    }
    
    public Diretor(Long idDiretor, String nome) {
        this.idDiretor = idDiretor;
        this.nome = nome;
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

    public Long getID() {
        return idDiretor;
    }

    public void setID(Long idDiretor) {
        this.idDiretor = idDiretor;
    }
}

