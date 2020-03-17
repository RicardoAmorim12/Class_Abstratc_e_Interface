unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit5, Vcl.StdCtrls, Vcl.ExtCtrls, System.StrUtils;

type  
    Tcarro = class(TVeiculo)
    
    public         
    procedure Andar(); Override;
    procedure FazBarulho(); Override;      
    procedure LigarFarol(); override;
    procedure FecharVidro();
end;

type
    TMoto = class(TVeiculo)
    public
    procedure Andar(); Override;
    procedure FazBarulho(); Override;       
    procedure LigarFarol(); override;
    procedure DarGrau(); 
end;

type
    TPessoa = class(TAnimal)
    public
    procedure Andar(); Override;
    procedure FazBarulho(); Override;
end;

type
    TCachorro = class(TAnimal)
    public
    procedure Andar(); Override;
    procedure FazBarulho(); Override;
end;
  
type
  TForm6 = class(TForm5)
    cbbOpcao: TComboBox;
    btnFazBarulho: TButton;
    btnAnda: TButton;
    procedure btnFazBarulhoClick(Sender: TObject);
    procedure btnAndaClick(Sender: TObject);
  private
    { Private declarations }
    procedure FazBarulho(fazedorDeBarulho: IFazBarulho);
    procedure Andar(andador: IAndador);
    function GetFazedorDeBarulho(): IFazBarulho;
    function GetAndador(tipo: Integer): IAndador;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
{$R *.dfm}


procedure Tcarro.Andar;
begin
  ShowMessage('Andando em 4 rodas');
end;

procedure Tcarro.FazBarulho;
begin
  ShowMessage('Vruuuum');
end;

procedure Tcarro.LigarFarol;
begin
  inherited;

  ShowMessage('ligando dois farol');
end;

procedure TMoto.Andar;
begin
  ShowMessage('Andando em 2 rodas');
end;

procedure TMoto.FazBarulho;
begin
  ShowMessage('BiBip!');
end;

procedure TMoto.LigarFarol;
begin
  inherited;
  ShowMessage('ligando um farol');
end;

procedure TPessoa.Andar;
begin
  ShowMessage('Andando em 2 pernas');
end;

procedure TPessoa.FazBarulho;
begin
  ShowMessage('CoronaVirus');
end;

procedure TCachorro.Andar;
begin
  ShowMessage('Andando em 4 patas');
end;

procedure TCachorro.FazBarulho;
begin
  ShowMessage('AuAu!');
end;

function TForm6.GetAndador(tipo: Integer): IAndador;
begin
    case tipo of
      0: result:=(Tcarro.Create);
      1: result:=(TMoto.Create);
      2: result:=(TPessoa.Create);
      3: result:=(TCachorro.Create);
    end;
   
end;

function TForm6.GetFazedorDeBarulho(): IFazBarulho;
begin
    case cbbOpcao.ItemIndex of
       0: result:=(Tcarro.Create);        
       1: result:=(TMoto.Create);       
       2: result:=(TPessoa.Create);  
       3: result:=(TCachorro.Create);  
    end;
        
end;

procedure TForm6.btnAndaClick(Sender: TObject);
var
  a: IAndador;
begin
  a :=  GetAndador(cbbOpcao.ItemIndex);
  andar(a); 
  if a is TVeiculo then
   TVeiculo(a).LigarFarol();
end;

procedure TForm6.btnFazBarulhoClick(Sender: TObject);
begin       
   GetFazedorDeBarulho; 
end;

procedure TForm6.Andar(andador: IAndador);
begin
  andador.Andar;
end;

procedure TForm6.FazBarulho(fazedorDeBarulho: IFazBarulho);
begin
  fazedorDeBarulho.FazBarulho;
end;

end.
