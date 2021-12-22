package it.generationitaly.model;

public enum Carburante {
	BENZINA("Benzina"), DIESEL("Diesel"), GPL("Gpl"), METANO("Metano"), IBRIDA("Ibrida"), ELETTRICA("Elettrica");

	private final String value;

	private Carburante(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	public static Carburante fromValue(String value) {
		for (Carburante carburante : values()) {
			if (carburante.getValue().equals(value)) {
				return carburante;
			}
		}
		return null;
	}

}
