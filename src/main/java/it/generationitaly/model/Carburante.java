package it.generationitaly.model;

public enum Carburante {
	BENZINA("Benzina"), DIESEL("Diesel"), GPL("Gpl"), METANO("Metano"), IBRIDA("Ibrida"), ELETTRICA("Elettrica");

	private final String value;

	private Carburante(String value) {
		this.value = value;
	}

	public String getDescription() {
		return value;
	}
	
}
