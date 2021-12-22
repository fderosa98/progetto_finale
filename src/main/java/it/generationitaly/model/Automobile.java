package it.generationitaly.model;

public class Automobile {
	private int id;
	private String marca;
	private String modello;
	private int anno;
	private int prezzo;
	private int km;
	private Carburante carburante;
	private NumeroPorte numeroPorte;
	private Annuncio annuncio;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModello() {
		return modello;
	}

	public void setModello(String modello) {
		this.modello = modello;
	}

	public int getAnno() {
		return anno;
	}

	public void setAnno(int anno) {
		this.anno = anno;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(int prezzo) {
		this.prezzo = prezzo;
	}

	public int getKm() {
		return km;
	}

	public void setKm(int km) {
		this.km = km;
	}

	public Carburante getCarburante() {
		return carburante;
	}

	public void setCarburante(Carburante carburante) {
		this.carburante = carburante;
	}

	public NumeroPorte getNumeroPorte() {
		return numeroPorte;
	}

	public void setNumeroPorte(NumeroPorte numeroPorte) {
		this.numeroPorte = numeroPorte;
	}

	public Annuncio getAnnuncio() {
		return annuncio;
	}

	public void setAnnuncio(Annuncio annuncio) {
		this.annuncio = annuncio;
	}

	@Override
	public String toString() {
		return "Automobile [id=" + id + ", marca=" + marca + ", modello=" + modello + ", anno=" + anno + ", prezzo="
				+ prezzo + ", km=" + km + ", carburante=" + carburante + ", numeroPorte=" + numeroPorte + "]";
	}

	
	
}
