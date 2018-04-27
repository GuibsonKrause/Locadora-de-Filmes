/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.domain;

import java.io.Serializable;
import java.util.Calendar;
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
    private Long IdLocacao;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Calendar dtLocacao;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Calendar dtDevolucaoPrevista;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Calendar dtDevolucaoEfetiva;
    
    private float valorCobrado;
    
    private float multaCobrada;
    @ManyToOne
    private Item item;
    @ManyToOne
     Cliente cliente;

    public Locacao() {
    }

    public Long getID() {
        return IdLocacao;
    }

    public void setID(Long IdLocacao) {
        this.IdLocacao = IdLocacao;
    }

    public Calendar getDtLocacao() {
        return dtLocacao;
    }

    public void setDtLocacao(Calendar dtLocacao) {
        this.dtLocacao = dtLocacao;
    }

    public Calendar getDtDevolucaoPrevista() {
        return dtDevolucaoPrevista;
    }

    public void setDtDevolucaoPrevista(Calendar dtDevolucaoPrevista) {
        this.dtDevolucaoPrevista = dtDevolucaoPrevista;
    }

    public Calendar getDtDevolucaoEfetiva() {
        return dtDevolucaoEfetiva;
    }

    public void setDtDevolucaoEfetiva(Calendar dtDevolucaoEfetiva) {
        this.dtDevolucaoEfetiva = dtDevolucaoEfetiva;
    }

    public float getValorCobrado() {
        return valorCobrado;
    }

    public void setValorCobrado(float valorCobrado) {
        this.valorCobrado = valorCobrado;
    }

    public float getMultaCobrada() {
        return multaCobrada;
    }

    public void setMultaCobrada(float multaCobrada) {
        this.multaCobrada = multaCobrada;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    
    

  
  
    
}
