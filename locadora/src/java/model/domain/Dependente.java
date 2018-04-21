package model.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity
public class Dependente extends Cliente implements Serializable {
    
   @ManyToOne
    private Socio socio;

    
    public Dependente(){
    }    

    public Dependente(Socio socio, long numInscricao, String nome, Calendar dt_nascimento, String sexo, boolean ativo) {
        super(numInscricao, nome, dt_nascimento, sexo, ativo);
        this.socio = socio;
    }

    public Dependente(Socio socio, String nome, Calendar dt_nascimento, String sexo, boolean ativo) {
        super(nome, dt_nascimento, sexo, ativo);
        this.socio = socio;
    }
    
   
}
