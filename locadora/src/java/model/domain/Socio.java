/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 *
 * @author root
 */
@Entity
public class Socio extends Cliente {

     @Id
    @GeneratedValue
    private Long numInscricao;
    private String cpf;
    
    private String endereco;
    
    private String telefone;
    @OneToMany(mappedBy = "associado", fetch = FetchType.EAGER)    
    private List<Dependente> dependentes = new ArrayList<>();

    public Socio() {
    }

    public Socio(String cpf, String endereco, String telefone, Long numInscricao, String nome, Date dtNascimento, String sexo, boolean Ativo) {
        super(numInscricao, nome, dtNascimento, sexo, Ativo);
        this.cpf = cpf;
        this.endereco = endereco;
        this.telefone = telefone;
        this.numInscricao = numInscricao;
    }

    public Socio(String cpf, String endereco, String telefone, String nome, Date dtNascimento, String sexo, boolean Ativo) {
        super(nome, dtNascimento, sexo, Ativo);
        this.cpf = cpf;
        this.endereco = endereco;
        this.telefone = telefone;
    }

     @Override
    public Long getNumInscricao() {
        return numInscricao;
    }

     @Override
    public void setNumInscricao(Long numInscricao) {
        this.numInscricao = numInscricao;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public List<Dependente> getDependentes() {
        return dependentes;
    }

    public void setDependentes(List<Dependente> dependentes) {
        this.dependentes = dependentes;
    }
    
    

    
   

}
