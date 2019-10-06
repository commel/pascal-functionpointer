program HelloWorld;

type
   TExecFn = function(const a	: integer; const b:integer): integer;

function ExecCalc(const a : integer; const b: integer; const fn: TExecFn): integer;
begin
   result := fn(a, b);
end;

function Add(const a : integer; const b: integer): integer;
begin
   result := a + b;
end;

var
   n : integer = 0;

begin
   n := ExecCalc(1, 5, Add);
   writeln('Result is ', n);
end.
