unit FormData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, myInterface,
  System.Generics.Collections;

type
  TformDt = class(TForm)
    Panel1: TPanel;
    edtName: TEdit;
    Label1: TLabel;
    btnFinish: TButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    editOrder: TEdit;
    Label3: TLabel;
    procedure btnFinishClick(Sender: TObject);
    procedure view;
  private
    ForderMemo : TMemo;
    Flist: TList<iPerson>;
    { Private declarations }
  public
    class var Finstance: TformDt;
    class function new(memo: Tmemo): TformDt;
    { Public declarations }

  constructor Create(memo:Tmemo); virtual;
  end;

var
  formDt: TformDt;

implementation

uses
  factory;

{$R *.dfm}

procedure TformDt.btnFinishClick(Sender: TObject);
begin
  try

    var teste :=
      Tfactory.Create
        .GetName(TTypeName(ComboBox1.ItemIndex))
        .setName(edtName.Text)
        .setOrder(editOrder.Text);

    Flist.Add(teste);

    view;

  finally
    edtName.Clear;
    editOrder.Clear;
  end;
end;

constructor TformDt.Create(memo: Tmemo);
begin
  ForderMemo := memo;
  Flist := TList<iPerson>.Create;
end;

class function TformDt.new(memo: Tmemo): TformDt;
begin
  if not Assigned(Finstance) then
    Finstance := Self.Create(memo);

  Result := Finstance;
  
end;

procedure TformDt.view;
begin
  ForderMemo.Clear;

  for var I := 0 to pred(Flist.Count) do
    ForderMemo.Lines.Add(
      Flist[I].GetOrder
  )


end;

end.
