unit enterprise;

interface

uses
  myInterface;

type
  Tenterprise = class(TInterfacedObject, iPerson)
    private
      Fname: string;
      Forder : string;
      class var Finstance: Tenterprise;
      function setName(name:string): iPerson;
      function setOrder(order:string): iPerson;
      function GetOrder(): string;
    public
      class function new: iPerson;
  end;

implementation

{ Tenterprise }

function Tenterprise.GetOrder: string;
begin
    Result := Fname + ' LTDA' + ' ' + Forder;
end;

class function Tenterprise.new: iPerson;
begin
  if not Assigned(Finstance) then
    Finstance := Self.Create;

  Result := Finstance;
end;

function Tenterprise.setName(name: string): iPerson;
begin
  Result := Self;
  Fname := name;
end;

function Tenterprise.setOrder(order: string): iPerson;
begin
   Result := Self;
   Forder := order;
end;

end.
