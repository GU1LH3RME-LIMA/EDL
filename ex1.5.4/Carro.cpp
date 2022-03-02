#include <cstring>
#include<iostream>
#include<iomanip>
using namespace std;
class Carro{
	private:
		char placa[20],ano[4],modelo[20] ;
		int potencia;
	public:
		Carro(const char* placa,const char* ano,const char* modelo,int potencia){
			strcpy(this->placa,placa);
			strcpy(this->ano,ano);
			strcpy(this->modelo,modelo);
			this->potencia=potencia;
		};
		void toString(){
			cout<< "Carro [placa=" << placa << ", ano=" << ano << ", modelo=" << modelo << ", potencia=" << potencia << " CV]";
		}
};

int main(){
	Carro carro("HY66SH","2007","celta",29);
	carro.toString();
	return 0;
}

