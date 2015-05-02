# hyunsus
#include <stdio.h>
main()
{
	int sub;
	printf("별찍기 번호 입력 : ");
	scanf_s("%d", &sub);
	if (sub == 1)
	{
		int a;
		printf("찍고싶으신 별개수 입력 : ");
		scanf_s("%d", &a);
		for (int i = 0; i < a; i++)
		{
			printf("*");
		}
		printf("\n");
	}
	if (sub == 2)
	{
		int a;
		printf("찍고싶으신 별개수 입력 : ");
		scanf_s("%d", &a);
		for (int i = 0; i < a; i++)
		{
			printf("*\n");
		}
	}
	if (sub == 3)
	{
		int a;
		printf("찍고싶으신 별의크기(정사각형) 입력 : ");
		scanf_s("%d", &a);
		for (int i = 0; i < a; i++)
		{
			for (int j = 0; j < a; j++)
			{
				printf("* ");
			}
			printf("\n");
		}
	}
	if (sub == 4)
	{
		int a;
		printf("숫자 줄 입력(행) : ");
		scanf_s("%d", &a);
		for (int i = 1; i <= a; i++)
		{
			for (int j = 0; j < 5; j++)
			{
				printf("%d", i);
			}
			printf("\n");
		}
	}
	if (sub == 5)
	{
		int a;
		printf("숫자 줄 입력(열) : ");
		scanf_s("%d", &a);
		for (int i = 1; i <= a; i++)
		{
			for (int j = 1; j <= a; j++)
			{
				printf("%d", j);
			}
			printf("\n");
		}
	}
	if (sub == 6)
	{
		int a;
		printf("찍고싶으신 별줄 입력 : ");
		scanf_s("%d", &a);
		for (int i = 0; i < a; i++)
		{
			for (int j = 0; j < i; j++)
			{
				printf(" ");
			}
			printf("*\n");
		}
	}
	if (sub == 7)
	{
		int a;
		printf("찍고싶으신 별줄(역) 입력 : ");
		scanf_s("%d", &a);
		for (int i = 0; i < a; i++)
		{
			for (int j = (a - 1); j > i; j--)
			{
				printf(" ");
			}
			printf("*\n");
		}
	}
	if (sub == 8)
	{
		int a;
		printf("찍고싶으신 별줄(역삼각형) 입력 : ");
		scanf_s("%d", &a);
		for (int i = 0; i < a; i++)
		{
			for (int k = 0; k < i; k++)
			{
				printf(" ");
			}
			for (int j = a; j > i; j--)
			{
				printf("* ");
			}
			printf("\n");
		}
	}
	if (sub == 9)
	{
		int a, b;
		printf("찍고싶으신 별줄(역삼각형) 입력 : ");
		scanf_s("%d", &a);
		b = a;
		for (int i = 0; i < a; i++)
		{
			for (int k = b; k > 0; k--)
			{
				printf(" ");
			}
			for (int j = 0; j <= i; j++)
			{
				printf("* ");
			}
			printf("\n");
			b--;
		}
	}
	if (sub == 10)
	{
		int a, b = 0;
		printf("찍고싶으신 별줄(사각형-대각선) 입력 : ");
		scanf_s("%d", &a);
		for (int i = 0; i < a; i++)
		{
			for (int j = 0; j < (a - 1); j++)
			{
				if (j == b)
				{
					printf(" ");
				}
				printf("* ");
			}
			b++;
			printf("\n");
		}
	}
	if (sub == 11)
	{
		int a, b;
		printf("찍고싶으신 별줄(사각형-대각선) 입력 : ");
		scanf_s("%d", &a);
		b = a;
		for (int i = 0; i < a; i++)
		{
			for (int j = 0; j < a; j++)
			{
				if (j == b)
				{
					printf(" ");
				}
				printf("* ");
			}
			b--;
			printf("\n");
		}
	}
	if (sub == 12)
	{
		int a, b;
		printf("찍고싶으신 별줄(속이빈 정사각형) 입력 : ");
		scanf_s("%d", &a);
		b = a;
		for (int i = 0; i < a; i++)
		{
			for (int j = 0; j <= a; j++)
			{
				if (i == 0)
				{
					printf("**");
					for (int k = 0; k < a; k++)
					{
						printf("**");
					}
					break;
				}
				if (j == 1)
				{
					printf("*");
					for (int h = 0; h < a; h++)
					{
						printf("  ");
					}
					printf("*");
				}
				if (i == (a - 1))
				{
					printf("**");
					for (int k = 0; k < a; k++)
					{
						printf("**");
					}
					break;
				}
			}
			printf("\n");
		}
	}
	if (sub == 13)
	{
		int a, b;
		printf("찍고싶으신 별줄(속빈정사각+대각) 입력 : ");
		scanf_s("%d", &a);
		b = a;
		for (int i = 0; i < a; i++)
		{
			for (int j = 0; j <= a; j++)
			{
				if (i == 0)
				{
					for (int k = 0; k < a; k++)
					{
						printf("*");
					}
					break;
				}
				if (j == 1)
				{
					printf("*");
					for (int h = 0; h < a; h++)
					{
						if (h == i)
						{
							for (int s = 1; s < i; s++)
							{
								printf(" ");
							}
							printf("*");
							for (int c = (a - 2); c > i; c--)
							{
								printf(" ");
							}
							printf("*");
						}
					}
				}
				if (i == (a - 1))
				{
					for (int k = 0; k < a; k++)
					{
						printf("*");
					}
					break;
				}
			}
			printf("\n");
		}
	}
	if (sub == 14)
	{
		int a;
		printf("(A)\n");
		a = 5;
		for (int i = 0; i < 6; i++)
		{
			for (int j = a; j > 0; j--)
			{
				printf(" ");
			}
			printf("*");
			
			if (i>0)
			{
				if (i == 3)
				{
					printf(" ");
					for (int h = 0; h < 3; h++)
					{
						printf("* ");
					}
					printf("\n");
					a--;
					continue;
				}
				for (int k = 0; k < ((i*2)-1); k++)
				{
					printf(" ");
				}
				printf("*");
			}
			printf("\n");
			a--;
		}
		/*
	if (sub == 15)
	{
		int a;
		printf("(E)\n");
		
	}
	*/
}
