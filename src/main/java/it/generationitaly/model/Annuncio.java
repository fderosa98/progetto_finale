package it.generationitaly.model;

import java.util.ArrayList;
import java.util.List;

public class Annuncio {

	private int id;
	private String titolo;
	private String descrizione;
	private Automobile automobile;
	private Utente utente;
	private Indirizzo indirizzo;
	private List<Foto> foto = new ArrayList<Foto>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public Automobile getAutomobile() {
		return automobile;
	}

	public void setAutomobile(Automobile automobile) {
		this.automobile = automobile;
	}

	public Utente getUtente() {
		return utente;
	}

	public void setUtente(Utente utente) {
		this.utente = utente;
	}

	public Indirizzo getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(Indirizzo indirizzo) {
		this.indirizzo = indirizzo;
	}

	public List<Foto> getFoto() {
		return foto;
	}

	public void setFoto(List<Foto> foto) {
		this.foto = foto;
	}
	
	

}
