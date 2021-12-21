package it.generationitaly.model;

public class Foto {

	private int id;
	private String url;
	private boolean isPrincipale;
	private Annuncio annuncio;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public boolean isPrincipale() {
		return isPrincipale;
	}

	public void setPrincipale(boolean isPrincipale) {
		this.isPrincipale = isPrincipale;
	}

	public Annuncio getAnnuncio() {
		return annuncio;
	}

	public void setAnnuncio(Annuncio annuncio) {
		this.annuncio = annuncio;
	}

}
