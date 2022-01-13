package it.generationitaly.model;

import java.util.ArrayList;
import java.util.List;

public class Indirizzo {

	private int id;
	private String citta;
	private String provincia;
	private Annuncio annuncio;	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public Annuncio getAnnuncio() {
		return annuncio;
	}

	public void setAnnuncio(Annuncio annuncio) {
		this.annuncio = annuncio;
	}

	@Override
	public String toString() {
		return "Indirizzo [id=" + id + ", citta=" + citta + ", provincia=" + provincia + "]";
	}

	
	
	

}
