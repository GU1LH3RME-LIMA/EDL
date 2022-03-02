

public class Carro {
	private String placa,ano,modelo;
	private int potencia;
	

	public Carro(String placa, String ano, String modelo, int potencia) {
		this.placa = placa;
		this.ano = ano;
		this.modelo = modelo;
		this.potencia = potencia;
	}
	public String toString() {
		return "Carro [placa=" + placa + ", ano=" + ano + ", modelo=" + modelo + ", potencia=" + potencia + " CV]";
	}
	
	public static void main(String[] args) {
		Carro celta= new Carro("HY66SH","2007","celta",29);
		System.out.println(celta);
	}
	
}
