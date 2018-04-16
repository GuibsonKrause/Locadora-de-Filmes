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
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;

/**
 *
 * @author root
 */
@Entity
public class Locacao implements Serializable {

    @Id
    @GeneratedValue
    private Long ID;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dtLocacao;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dtDevolucaoPrevista;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dtDevolucaoEfetiva;
    
    private float valorCobrado;
    
    private float multaCobrada;
    @ManyToOne
    private Item item;
    @ManyToOne
    private Cliente cliente;

    public Locacao() {
    }
    
    

    public Locacao(Long ID, Date dtLocacao, Date dtDevolucaoPrevista, Date dtDevolucaoEfetiva, float valorCobrado, float multaCobrada, Item item, Cliente cliente) {
        this.ID = ID;
        this.dtLocacao = dtLocacao;
        this.dtDevolucaoPrevista = dtDevolucaoPrevista;
        this.dtDevolucaoEfetiva = dtDevolucaoEfetiva;
        this.valorCobrado = valorCobrado;
        this.multaCobrada = multaCobrada;
        this.item = item;
        this.cliente = cliente;
    }

    public Locacao(Date dtLocacao, Date dtDevolucaoPrevista, Date dtDevolucaoEfetiva, float valorCobrado, float multaCobrada, Item item, Cliente cliente) {
        this.dtLocacao = dtLocacao;
        this.dtDevolucaoPrevista = dtDevolucaoPrevista;
        this.dtDevolucaoEfetiva = dtDevolucaoEfetiva;
        this.valorCobrado = valorCobrado;
        this.multaCobrada = multaCobrada;
        this.item = item;
        this.cliente = cliente;
    }

  
    
    
}
