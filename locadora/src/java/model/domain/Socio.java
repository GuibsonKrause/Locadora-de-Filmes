/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 *
 * @author root
 */
@Entity
public class Socio extends Cliente implements Serializable {

    @OneToMany
    private List<Dependente> dependentes = new ArrayList<>();

    public Socio() {
        this.dependentes = new ArrayList<>();
    }
    private String cpf;

    private String endereco;

    private String telefone;

    public Socio(String cpf, String endereco, String telefone, String nome, Calendar dtNascimento, String sexo, boolean ativo) {
        super(nome, dtNascimento, sexo, ativo);
        this.dependentes = new ArrayList<>();
        this.cpf = cpf;
        this.endereco = endereco;
        this.telefone = telefone;
    }

    public Socio(String cpf, String endereco, String telefone, Long numInscircao, String nome, Calendar dtNascimento, String sexo, boolean ativo) {
        super(numInscircao, nome, dtNascimento, sexo, ativo);
        this.dependentes = new ArrayList<>();
        this.cpf = cpf;
        this.endereco = endereco;
        this.telefone = telefone;
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
