package com.zsmart.facturation.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;

@Entity
public class PaimentFacture implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private Long id;
    @Temporal(javax.persistence.TemporalType.DATE)
    private LocalDateTime datePaiment;

    @Temporal(javax.persistence.TemporalType.DATE)
    private LocalDateTime dateSaisie;
    @Column(precision = 16, scale = 4)
    private BigDecimal montant;
    private String description;
    private String scan;
    @ManyToOne
    private EtatPaiment etatPaiment;
    @ManyToOne
    private TypePaiment typePaiment;
    @ManyToOne
    private Facture facture;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getDatePaiment() {
        return datePaiment;
    }

    public void setDatePaiment(LocalDateTime datePaiment) {
        this.datePaiment = datePaiment;
    }

    public LocalDateTime getDateSaisie() {
        return dateSaisie;
    }

    public void setDateSaisie(LocalDateTime dateSaisie) {
        this.dateSaisie = dateSaisie;
    }

    public BigDecimal getMontant() {
        return montant;
    }

    public void setMontant(BigDecimal montant) {
        this.montant = montant;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getScan() {
        return scan;
    }

    public void setScan(String scan) {
        this.scan = scan;
    }

    public EtatPaiment getEtatPaiment() {
        return etatPaiment;
    }

    public void setEtatPaiment(EtatPaiment etatPaiment) {
        this.etatPaiment = etatPaiment;
    }

    public TypePaiment getTypePaiment() {
        return typePaiment;
    }

    public void setTypePaiment(TypePaiment typePaiment) {
        this.typePaiment = typePaiment;
    }

    public Facture getFacture() {
        return facture;
    }

    public void setFacture(Facture facture) {
        this.facture = facture;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        PaimentFacture other = (PaimentFacture) obj;
        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false;
        }
        return true;
    }

}