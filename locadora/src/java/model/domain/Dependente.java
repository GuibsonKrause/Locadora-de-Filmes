/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author root
 */
@Entity
public class Dependente extends Cliente{
    
    @Id
    @GeneratedValue
    private Long numInscricao;
    
    @ManyToOne
    private Socio associado;

    public Dependente() {
    }

    public Dependente(Socio associado, Long numInscricao, String nome, Date dtNascimento, String sexo, boolean Ativo) {
        super(numInscricao, nome, dtNascimento, sexo, Ativo);
        this.associado = associado;
        this.numInscricao = numInscricao;
    }

    public Dependente(Socio associado, String nome, Date dtNascimento, String sexo, boolean Ativo) {
        super(nome, dtNascimento, sexo, Ativo);
        this.associado = associado;
    }

    @Override
    public Long getNumInscricao() {
        return numInscricao;
    }

    @Override
    public void setNumInscricao(Long numInscricao) {
        this.numInscricao = numInscricao;
    }

    public Socio getAssociado() {
        return associado;
    }

    public void setAssociado(Socio associado) {
        this.associado = associado;
    }
    

    

}
