#include "stdio.h"
#include "stdlib.h"

int log2(int n) {
	int r=0;
	while (n>>=1) r++;
	return r;
}

int main(){
	int wordlength;
	int cachecapacity;
	int cacheways;
	int cacheblocksize;
	int pagesize;
	int frames;
	int sets;
	int vpages;
	int cacheoffsetbits;
	int indexbits;
	int tagbits;
	int pageoffsetbits;
	int pagenumbits;
	int vaddress;
	int addpageoffset;
	int addvpagenum;
	int addppagenum;
	int physadd;
	int addcacheoffset;
	int addcacheind;
	int addcachetag;

	char instring[30];
	char l[80];
	char lr[80];
	scanf("%s", instring);
	FILE *f;
	f = fopen(instring, "rt");

	fscanf(f, %d %d %d %d %d, &wordlength, &cachecapacity, &cacheways, &cacheblocksize, &pagesize);
	frames = cachecapacity/cacheblocksize;
	sets = frames/cacheways;
	vpages = (1 << wordlength)/pagesize;


	cacheoffsetbits = log2(cacheblocksize);
	indexbits = log2(sets);
	tagbits = wordlength - cacheoffsetbits - indexbits;



	fclose(f);
	printf("%-40s %d\n","Word size:",wordlength);
	printf("%-40s %d\n","Cache capacity:",cachecapacity);
	printf("%-40s %d\n","Cache associativity:",cacheways);
	printf("%-40s %d\n","Cache block size:",cacheblocksize);
	printf("%-40s %d\n","Page size:",pagesize);
	printf("%-40s %d\n","Cache frames:", frames);
	printf("%-40s %d\n","Cache sets:", sets);
	printf("%-40s %d\n","Virtual pages:", vpages);
	printf("%-40s %d\n","Bits for cache block offset:", cacheoffsetbits);
	printf("%-40s %d\n","Bits for cache index:", indexbits);
	printf("%-40s %d\n","Bits for cache tag:", tagbits);
	printf("%-40s %d\n","Bits for page offset:", pageoffsetbits);
	printf("%-40s %d\n","Bits for page number:", pagenumbits);
	printf("%-40s %d\n","Virtual address:", vaddress);
	printf("%-40s %d\n","Address page offset:", addpageoffset);
	printf("%-40s %d\n","Address virtual page number:", addvpagenum);
	

	/* printf("%-40s %d\n","", );
	printf("%-40s %d\n","", );
	printf("%-40s %d\n","", ); */

	
}