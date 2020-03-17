unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;


type
    IAndador = interface
    procedure Andar();
end;

type
  IFazBarulho = interface
  procedure FazBarulho();
end;

type
    TAnimal = class abstract(TInterfacedObject, IAndador, IFazBarulho)
  public
    procedure Andar(); virtual; abstract;
    procedure FazBarulho(); virtual; abstract;
end;

type
     TVeiculo = class abstract(TInterfacedObject, IAndador, IFazBarulho)
  public
     procedure Andar(); virtual; abstract;
     procedure FazBarulho(); virtual; abstract;
     procedure LigarFarol(); virtual; abstract;
end;

type
  TForm5 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

end.
