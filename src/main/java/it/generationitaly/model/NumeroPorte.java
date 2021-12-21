package it.generationitaly.model;

public enum NumeroPorte {

	DUE("2"), TRE("3"), QUATTRO("4"), CINQUE("5");

	private final String value;

	private NumeroPorte(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

}
