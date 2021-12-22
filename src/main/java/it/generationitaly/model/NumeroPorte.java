package it.generationitaly.model;

public enum NumeroPorte {

	DUE(2), TRE(3), QUATTRO(4), CINQUE(5);

	private final int value;

	private NumeroPorte(int value) {
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	public static NumeroPorte fromValue(int value) {
		for (NumeroPorte numeroPorte : values()) {
			if (numeroPorte.getValue() == value) {
				return numeroPorte;
			}
		}
		return null;
	}

}
