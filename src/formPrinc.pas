unit formPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FormData;

type
  TForm1 = class(TForm)
    btnStart: TButton;
    Memo1: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    procedure btnStartClick(Sender: TObject);

  private
    { Private declarations }
    Finstancia: TformDt;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}




{ TForm1 }



procedure TForm1.btnStartClick(Sender: TObject);
begin
   Finstancia := formDt.create(Memo1);
   Finstancia.ShowModal;
end;

end.
