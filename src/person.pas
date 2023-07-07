unit person;

interface

uses
  myInterface;

type
  TPerson = class(TInterfacedObject, iPerson)
    private
      Fname: string;
      Forder : string;
      function setName(name:string): iPerson;
      function setOrder(order:string): iPerson;
      function GetOrder(): string;
    public
      class function new: iPerson;
      class var Finstance: TPerson;
  end;

implementation

{ TPessoa }



{ TPessoa }



function TPerson.GetOrder: string;
begin
     Result := Fname + ' ' + Forder;
end;

class function TPerson.new: iPerson;
begin
  if not assigned(Finstance) then
    Finstance := Self.Create;

  Result := Finstance;

end;

function TPerson.setName(name: string): iPerson;
begin
    Result := Self;
    Fname := name;
end;

function TPerson.setOrder(order: string): iPerson;
begin
   Result := Self;
   Forder := order;
end;

end.
