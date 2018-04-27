/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.Transient;

/**
 *
 * @author root
 */
@Entity
public class Item implements Serializable {
    @Id
    @GeneratedValue
    private Long IdSerie;
    private String numSerie;
 

    private Calendar dtAquisicao;

    
    private String tipoItem;
    @ManyToOne
    private Titulo titulo;
    
    @Transient
    @OneToMany(mappedBy = "item", fetch = FetchType.EAGER)
    private List<Locacao> locacoes;

    public Item() {
    }
    
    
    public Item(Long IdSerie, String numSerie, Calendar dtAquisicao, String tipoItem, Titulo titulo) {
        this.IdSerie = IdSerie;
        this.numSerie = numSerie;
        this.dtAquisicao = dtAquisicao;
        this.tipoItem = tipoItem;
        this.titulo = titulo;
        
    }

    public Item(String numSerie, Calendar dtAquisicao, String tipoItem, Titulo titulo) {
        this.numSerie = numSerie;
        this.dtAquisicao = dtAquisicao;
        this.tipoItem = tipoItem;
        this.titulo = titulo;
        
    }

    public Long getID() {
        return IdSerie;
    }

    public void setID(Long IdSerie) {
        this.IdSerie = IdSerie;
    }

    public String getNumSerie() {
        return numSerie;
    }

    public void setNumSerie(String numSerie) {
        this.numSerie = numSerie;
    }

    public Calendar getDtAquisicao() {
        return dtAquisicao;
    }

    public void setDtAquisicao(Calendar dtAquisicao) {
        this.dtAquisicao = dtAquisicao;
    }

    public String getTipoItem() {
        return tipoItem;
    }

    public void setTipoItem(String tipoItem) {
        this.tipoItem = tipoItem;
    }

    public Titulo getTitulo() {
        return titulo;
    }

    public void setTitulo(Titulo titulo) {
        this.titulo = titulo;
    }

    public List<Locacao> getLocacoes() {
        return locacoes;
    }

    public void setLocacoes(List<Locacao> locacoes) {
        this.locacoes = locacoes;
    }
    


}
