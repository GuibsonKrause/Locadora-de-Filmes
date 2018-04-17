/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Temporal;

/**
 *
 * @author root
 */
//@Entity
@Inheritance ( strategy = InheritanceType.JOINED)
public abstract class Cliente implements Serializable {
    
    //@Id
    //@GeneratedValue
    private Long numInscricao; //ID
   
    private String nome;
   
    //@Temporal(javax.persistence.TemporalType.DATE)
    private Date dtNascimento;
    
    private String sexo;
    
    private boolean Ativo;


    public Cliente() {
    }

    public Cliente(Long numInscricao, String nome, Date dtNascimento, String sexo, boolean Ativo) {
        this.numInscricao = numInscricao;
        this.nome = nome;
        this.dtNascimento = dtNascimento;
        this.sexo = sexo;
        this.Ativo = Ativo;
    }

    public Cliente(String nome, Date dtNascimento, String sexo, boolean Ativo) {
        this.nome = nome;
        this.dtNascimento = dtNascimento;
        this.sexo = sexo;
        this.Ativo = Ativo;
    }

    public Long getNumInscricao() {
        return numInscricao;
    }

    public void setNumInscricao(Long numInscricao) {
        this.numInscricao = numInscricao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDtNascimento() {
        return dtNascimento;
    }

    public void setDtNascimento(Date dtNascimento) {
        this.dtNascimento = dtNascimento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public boolean isAtivo() {
        return Ativo;
    }

    public void setAtivo(boolean Ativo) {
        this.Ativo = Ativo;
    }

   
 

   
}
