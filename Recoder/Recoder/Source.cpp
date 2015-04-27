#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
	char aa[27] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	char pt[10];
	int m, d, q = 0, i, j, k[3][3], p[5], pp[5], t[6];
	int k1[3][3], k2[3][3], det;
	printf("암호화할 단어를 입력하세요 : ");
	scanf_s("%s", pt, 10);
	printf("암호화키를 입력하세요 : \n");
	for (i = 0; i<2; i++)
	{
		for (j = 0; j<2; j++)
		{
			scanf_s("%d", &k[i][j]);
		}
	}
	m = strlen(pt);
	for (i = 0; i<m; i++)
	{
		printf("%d,", pt[i]);
		for (j = i; j<27; j++)

		{
			if (pt[i] == aa[j])
				
			{
				t[q] = j % 26;
				++q;
			}
		}
	}
	p[0] = (k[0][0] * t[0]) + (k[0][1] * t[1]);
	p[1] = (k[1][0] * t[0]) + (k[1][1] * t[1]);
	p[2] = (k[0][0] * t[2]) + (k[0][1] * t[3]);
	p[3] = (k[1][0] * t[2]) + (k[1][1] * t[3]);
	k1[0][0] = k[1][1];
	k1[0][1] = -(k[0][1]);
	k1[1][0] = -(k[1][0]);
	k1[1][1] = k[0][0];

	det = (k1[0][0] * k1[1][1]) - (k1[0][1] * k1[1][0]);
	for (i = 0; i<26; i++)
	{
		if ((det*i) % 26 == 1)
		{
			d = i;
		}
	}
	for (i = 0; i<2; i++)
	{
		for (j = 0; j<2; j++)
		{
			k2[i][j] = (d*k1[i][j]) % 26;
		}
	}
	for (i = 0; i<2; i++)
	{
		for (j = 0; j<2; j++)
		{
			if (k2[i][j]<0)
				k2[i][j] += 26;
		}
	}
	pp[0] = ((k2[0][0] * p[0]) + (k2[0][1] * p[1])) % 26;
	pp[1] = ((k2[1][0] * p[0]) + (k2[1][1] * p[1])) % 26;
	pp[2] = ((k2[0][0] * p[2]) + (k2[0][1] * p[3])) % 26;
	pp[3] = ((k2[1][0] * p[2]) + (k2[1][1] * p[3])) % 26;
	m = strlen(pt);
	for (i = 0; i<m; i++)
	{
		printf("\n암호화 된 단어는 : %d 입니다.", aa[pp[i]]);
		printf("\n암호화 된 단어는 : %c 입니다.", aa[pp[i]]);
	}
}