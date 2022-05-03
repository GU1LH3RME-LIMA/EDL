#include <stdio.h> 
enum PERSONAGENS{GUERREIRO,MAGO,SACERDOTE}; //criado os tipos de peronagens com seus idx
struct comum{
		char nome[255];float altura;int peso; // criado os atributos comuns dos personagens
}comum;
		
struct Personagem{
	enum PERSONAGENS sub;
	struct comum c;// criado os subtipos
	union{
		struct{char armadura[255];float forca;};
		struct{char feitico[255];int impacto;};
		struct{char cura[255];char reza[255];};
	};
}personagem;

int main (void){
	struct Personagem xena={GUERREIRO,{"Xena",1.90,80},{"Espada",100.5}};
	struct Personagem dovakin={MAGO,{"Dovakin",1.50,70},{"Escolhiososa",200}}; //definido os personagens
	printf("%2.2f \n",xena.c.altura);
	printf("%s \n",dovakin.c.nome);
	}
