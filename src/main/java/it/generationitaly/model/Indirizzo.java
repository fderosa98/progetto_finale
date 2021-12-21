package it.generationitaly.model;

import java.util.ArrayList;
import java.util.List;

public class Indirizzo {

	private int id;
	private String città;
	private String provincia;
	private List<Annuncio> annunci = new ArrayList<Annuncio>();			

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCittà() {
		return città;
	}

	public void setCittà(String città) {
		this.città = città;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public List<Annuncio> getAnnunci() {
		return annunci;
	}

	public void setAnnunci(List<Annuncio> annunci) {
		this.annunci = annunci;
	}

	
	

}
