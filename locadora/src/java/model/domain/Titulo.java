/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 *
 * @author root
 */
@Entity
@Table(name="Titulo")
public class Titulo implements Serializable {

    @Id
    @GeneratedValue
    private Long idTitulo;
    
    private String nome;
    
    private int ano;
    
    private String sinopse;
    
    private String categoria;

   @ManyToMany(fetch = FetchType.EAGER)
    private List<Ator> atores = new ArrayList<>();
    @ManyToOne
    Diretor diretor;
    @ManyToOne
    Classe classe;


    public Titulo() {
      this.atores   = new ArrayList<>();
    }

    public Titulo(Long idTitulo, String nome, int ano, String sinopse, String categoria,List<Ator> atores, Diretor diretor, Classe classe) {
        this.idTitulo = idTitulo;
        this.nome = nome;
        this.ano = ano;
        this.sinopse = sinopse;
        this.categoria = categoria;
        this.atores =  atores;
        this.diretor = diretor;
        this.classe = classe;
    }

    public Titulo(String nome, int ano, String sinopse, String categoria, List<Ator> atores, Diretor diretor, Classe classe) {
        this.nome = nome;
        this.ano = ano;
        this.sinopse = sinopse;
        this.categoria = categoria;
        this.atores =  atores;
        this.diretor = diretor;
        this.classe = classe;
    }

  
    public Long getID() {
        return idTitulo;
    }

    public void setID(Long idTitulo) {
        this.idTitulo = idTitulo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getSinopse() {
        return sinopse;
    }

    public void setSinopse(String sinopse) {
        this.sinopse = sinopse;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public List<Ator> getAtores() {
        return atores;
    }

    public void setAtores(List<Ator> atores) {
        this.atores = atores;
    }

  

    public Diretor getDiretor() {
        return diretor;
    }

    public void setDiretor(Diretor diretor) {
        this.diretor = diretor;
    }

    public Classe getClasse() {
        return classe;
    }

    public void setClasse(Classe classe) {
        this.classe = classe;
    }

   
}
