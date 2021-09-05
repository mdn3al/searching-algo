Program FindAlgorithm;
Const m=25;
Type ar=Array[1..m]Of Word;
Const x:ar=(1,2,3,4,5,
            6,7,8,9,10,
            213,342,654,5,2,
            36,84,66,22,45,
            21,4,64,62,65);
Var v:Word;
    n:1..m;
    i:1..(m+1);
    errC:integer;
Begin
    n:=m;
    {Write(' Enter the value to be find: ');ReadLn(v);}
    v:=78;
    If ParamCount>=1 Then
        Val(ParamStr(1),v,errC); {v:=ParamStr(1);}
                              {Pre: n>0 && v integer }
    i:=1;
    While (i<n)And(x[i]<>v)Do {Inv: All j: (1<=j<i) -> x[j]<>v }
            Inc(i);
    If  (i=n)And(x[i]<>v) Then
            Inc(i);
                              {Post: (Exist i: ( 1<=i<=n && x[i]==v )) || (i>n && not Exist j: (1<=j<=n -> x[j]==v ) ) }
    If i>n Then
        WriteLn(' The element ',v,' is missing from the array')
    Else
        WriteLn(' The elment ',v,' is on position ',i);
End.
