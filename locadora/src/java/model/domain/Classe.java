/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import static javax.persistence.TemporalType.DATE;

/**
 *
 * @author root
 */
@Entity
public class Classe implements Serializable {

    @Id
    @GeneratedValue
    private Long idClasse;
    
    private String nome;
    
    private float valor;
    
     @OneToMany
    private List<Titulo> titulo = new ArrayList<>();
    
    private Calendar prazoDevoulcao;

    public Classe() {
    }

    public Classe(String nome, float valor, Calendar prazoDevoulcao) {
        this.nome = nome;
        this.valor = valor;
        this.prazoDevoulcao = prazoDevoulcao;
    }

    public Classe(Long idClasse, String nome, float valor, Calendar prazoDevoulcao) {
        this.idClasse = idClasse;
        this.nome = nome;
        this.valor = valor;
        this.prazoDevoulcao = prazoDevoulcao;
    }

    
   
    public Calendar getPrazoDevolucao() {
        return prazoDevoulcao;
    }

    public void setPrazoDevolucao(Calendar PrazoDevolucao) {
        this.prazoDevoulcao = PrazoDevolucao;
    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    @Override
    public String toString() {
        return nome;
    }

    public Long getID() {
        return idClasse;
    }

    public void setID(Long idClasse) {
        this.idClasse = idClasse;
    }

   

}
