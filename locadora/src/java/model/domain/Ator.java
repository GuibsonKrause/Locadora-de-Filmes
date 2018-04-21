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
 * @author root
 */
@Entity
public class Ator implements Serializable {

    @Id
    @GeneratedValue
    private Long idAtor;
    
    
    private String nome;

     @ManyToMany
    private List<Titulo> titulo = new ArrayList<>();
    
    public Ator() {
    }

    public Ator(Long idAtor, String nome) {
        this.idAtor = idAtor;
        this.nome = nome;
    }

    public Ator(String nome) {
        this.nome = nome;
    }

    public Long getID() {
        return idAtor;
    }

    public void setID(Long idAtor) {
        this.idAtor = idAtor;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    
}
