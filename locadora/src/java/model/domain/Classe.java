/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import static javax.persistence.TemporalType.DATE;

/**
 *
 * @author root
 */
@Entity
public class Classe implements Serializable {

    @Id
    @GeneratedValue
    private Long ID;
    
    private String nome;
    
    private float valor;
    
    private Date prazoDevoulcao;

    public Classe() {
    }

    public Classe(String nome, float valor, Date prazoDevoulcao) {
        this.nome = nome;
        this.valor = valor;
        this.prazoDevoulcao = prazoDevoulcao;
    }

    public Date getPrazoDevoulcao() {
        return prazoDevoulcao;
    }

    public void setPrazoDevoulcao(Date prazoDevoulcao) {
        this.prazoDevoulcao = prazoDevoulcao;
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
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }

}
