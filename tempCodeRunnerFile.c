#include <stdio.h>
#include <stdlib.h>

typedef struct{  
  double* Data;
  int Size;
  int Count;
} Stack;

Stack* CreateStack(int size);
void DisposeStack(Stack* s);
void PushStack(Stack* s, double x);
double PopStack(Stack* s);
void PrintStack(Stack* s);

int main(void) {
  /* 最大格納数4でスタックを作成 */
  Stack* s = CreateStack(4);

  while (1) {
    int cmd;
    double x;
    PrintStack(s);  /* スタックの中身表示 */
    printf("select 1) push, 2) pop, 0) exit: ");
    scanf("%d", &cmd);  /* コマンド入力 */
    if (cmd == 0) break;
    if (cmd == 1) {
      printf("input: ");
      scanf("%lf", &x);
      PushStack(s, x);
    }
    if (cmd == 2) {
      x = PopStack(s);
      printf("output: %.1f\n", x);
    }
  }DisposeStack(s);
  return 0;
}

/* 関数の定義 */
/* エラーチェック付malloc */
void* mallocx(size_t size) {
  void* p = malloc(size);
  if (p == NULL) {
    fprintf(stderr, "cannot allocate memory\n");
    exit(1);
  }
  return p;
}

Stack* CreateStack(int size) {
  /* この中身を作成する */
  Stack *s = (Stack*)malloc(sizeof(Stack));
  s->Data = (double*)malloc(sizeof(double)*size);
  s->Size = size;
  s->Count = 0;
  return s;
}

void DisposeStack(Stack* s) {
  /* この中身を作成する */
  free(s->Data);
  free(s);
}

void PushStack(Stack* s, double x) {
  /* この中身を作成する */
  s->Data[s->Count] = x;
  s->Count++;
  if(s->Count == s->Size){
    printf("stack overflow\n");
    exit(1);
  }
}

double PopStack(Stack* s) {
  /* この中身を作成する */
  s->Count--;
  return s->Data[s->Count];
  if(s->Count == 0){
    printf("stack underflow\n");
    exit(1);
  }
}

void PrintStack(Stack* s) {
  /* この中身を作成する */
  if(s->Count == 0){
    printf("stack: (none)\n");
  }else{
    for(int i = 0; i < s->Count; i++){
      printf("%.1f ", s->Data[i]);
    }
    printf("\n");
  }
}