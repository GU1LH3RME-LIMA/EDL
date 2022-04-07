#include <stdio.h>
#include <stdlib.h>
typedef struct list{
	int c;
	struct list *prox;
	}list; //Criamos uma struct que será a nossa lista encadeada

void imprimeLista(list * );//Fiz uma função somente para ilustrar

int main(){
	struct list *origem=NULL;//criaremos nossa origem que servirá como cabeça de nossa lista
	list *A=(list*) malloc(sizeof(list*));
	A->c=1;
	A->prox=origem;//A irá aponta pra onde a origem aponta(Nulo)
	origem=A;//origem irá apontar pra A
	
	list *B=(list*) malloc(sizeof(list*));
	B->c=2;
	B->prox=A->prox;//B irá aponta pra onde A aponta(Nulo)
	A->prox=B;//A irá apontar para B
	list *C=(list*) malloc(sizeof(list*));
	C->c=3;
	C->prox=B->prox;
	B->prox=C;
	list *D=(list*) malloc(sizeof(list*));
	D->c=4;
	D->prox=C->prox;
	C->prox=D;
	imprimeLista(origem);
	return 0;
}

void imprimeLista(list *origem){//Fiz uma função somente para ilustrar 
	list *p=origem;
	while(p!=NULL){
		printf("%hd ",p->c);
		p=p->prox;
	}
}
