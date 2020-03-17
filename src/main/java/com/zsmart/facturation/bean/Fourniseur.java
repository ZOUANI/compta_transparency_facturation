package com.zsmart.facturation.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Fourniseur implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id ;
	private String ice;
	private String identifiantFiscale;
	private String rc;
	private String libelle;
	private String code;
	
	
	
	public String getIce() {
		return ice;
	}
	public void setIce(String ice) {
		this.ice = ice;
	}
	public String getIdentifiantFiscale() {
		return identifiantFiscale;
	}
	public void setIdentifiantFiscale(String identifiantFiscale) {
		this.identifiantFiscale = identifiantFiscale;
	}
	public String getRc() {
		return rc;
	}
	public void setRc(String rc) {
		this.rc = rc;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
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
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Fourniseur other = (Fourniseur) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	

}
