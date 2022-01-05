package it.generationitaly.model;

public class Messaggio {

	private int id;
	private Utente mittente;
	private Utente destinatario;
	private String corpoMessaggio;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Utente getMittente() {
		return mittente;
	}

	public void setMittente(Utente mittente) {
		this.mittente = mittente;
	}

	public Utente getDestinatario() {
		return destinatario;
	}

	public void setDestinatario(Utente destinatario) {
		this.destinatario = destinatario;
	}

	public String getCorpoMessaggio() {
		return corpoMessaggio;
	}

	public void setCorpoMessaggio(String corpoMessaggio) {
		this.corpoMessaggio = corpoMessaggio;
	}

	@Override
	public String toString() {
		return "Messaggio [id=" + id + ", mittente=" + mittente + ", destinatario=" + destinatario + ", corpoMessaggio="
				+ corpoMessaggio + "]";
	}

	
}
