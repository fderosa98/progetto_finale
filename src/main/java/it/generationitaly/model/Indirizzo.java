package it.generationitaly.model;

import java.util.ArrayList;
import java.util.List;

public class Indirizzo {

	private int id;
	private String citt�;
	private String provincia;
	private List<Annuncio> annunci = new ArrayList<Annuncio>();			

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCitt�() {
		return citt�;
	}

	public void setCitt�(String citt�) {
		this.citt� = citt�;
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
