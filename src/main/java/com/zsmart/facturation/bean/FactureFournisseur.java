/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zsmart.facturation.bean;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;

/**
 *
 * @author YOUNES
 */
@Entity
public class FactureFournisseur extends Facture implements Serializable {

    @ManyToOne
    private Fourniseur fourniseur;

    public Fourniseur getFourniseur() {
        return fourniseur;
    }

    public void setFourniseur(Fourniseur fourniseur) {
        this.fourniseur = fourniseur;
    }

}
