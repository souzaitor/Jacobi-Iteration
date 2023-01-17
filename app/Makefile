CC=gcc

all: clean sequential pthread

sequential:
	$(CC) laplace_seq_iteracoes.c -o laplace_seq_iteracoes

pthread:
	$(CC) laplace_pth.c -o laplace_pth -lpthread

clean:
	rm -f laplace_seq_iteracoes laplace_pth 
