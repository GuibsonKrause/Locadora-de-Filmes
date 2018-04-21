package model.domain;

import java.io.Serializable;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.xml.bind.annotation.XmlRootElement;


@Entity
abstract class Cliente implements Serializable {

    @Id
    @GeneratedValue
    private long numInscricao;

    
    private String nome;

    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Calendar dt_nascimento;

    
    private String sexo;

    private boolean ativo;

    //CONSTUTORES
    public Cliente() {
    }

    public Cliente(long numInscricao, String nome, Calendar dt_nascimento, String sexo, boolean ativo) {
        this.numInscricao = numInscricao;
        this.nome = nome;
        this.dt_nascimento = dt_nascimento;
        this.sexo = sexo;
        this.ativo = ativo;
    }

    public Cliente(String nome, Calendar dt_nascimento, String sexo, boolean ativo) {
        this.nome = nome;
        this.dt_nascimento = dt_nascimento;
        this.sexo = sexo;
        this.ativo = ativo;
    }

    
    
    public long getNum_inscricao() {
        return numInscricao;
    }

    public void setNum_inscricao(long numInscricao) {
        this.numInscricao = numInscricao;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Calendar getDt_nascimento() {
        return dt_nascimento;
    }

    public void setDt_nascimento(Calendar dt_nascimento) {
        this.dt_nascimento = dt_nascimento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

}
