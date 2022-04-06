unit ufdatafhotorefund;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  Tfdatafhotorefund = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Image2: TImage;
    GroupBox3: TGroupBox;
    Image3: TImage;
    GroupBox4: TGroupBox;
    Image4: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure resizeimage();
  public
    { Public declarations }
    procedure tampilktp(alamat:string);
    procedure tampilfaktur(alamat:string);
    procedure tampiltransfer(alamat:string);
    procedure tampilss(alamat:string);
  end;

var
  fdatafhotorefund: Tfdatafhotorefund;

implementation

{$R *.dfm}

procedure Tfdatafhotorefund.resizeimage;
begin
  GroupBox1.Height := (Self.Height - Panel1.Height) div 2 - 2;
  GroupBox1.Width := (Self.Width) div 2 - 2;
  GroupBox1.Top := Panel1.Height;
  GroupBox1.Left := 0;

  GroupBox2.Height := ((Self.Height - Panel1.Height) div 2) - 2;
  GroupBox2.Width := ((Self.Width) div 2) - 2;
  GroupBox2.Top := Panel1.Height;
  GroupBox2.Left := GroupBox1.Width;

  GroupBox3.Height := ((Self.Height - Panel1.Height) div 2) - 2;
  GroupBox3.Width := ((Self.Width) div 2) - 2;
  GroupBox3.Top := Panel1.Height + GroupBox1.Height;
  GroupBox3.Left := 0;

  GroupBox4.Height := ((Self.Height - Panel1.Height) div 2) - 2;
  GroupBox4.Width := ((Self.Width) div 2) - 2;
  GroupBox4.Top := Panel1.Height + GroupBox1.Height;
  GroupBox4.Left := GroupBox3.Width;
end;

procedure Tfdatafhotorefund.FormShow(Sender: TObject);
begin
  resizeimage;
end;

procedure Tfdatafhotorefund.FormResize(Sender: TObject);
begin
  resizeimage;
end;

procedure Tfdatafhotorefund.tampilktp(alamat: string);
begin
  try
      Image1.Picture.LoadFromFile(alamat);
  except
      Image1.Picture:=nil;
  end;
end;

procedure Tfdatafhotorefund.tampilfaktur(alamat: string);
begin
  try
      Image2.Picture.LoadFromFile(alamat);
  except
      Image2.Picture:=nil;
  end;
end;

procedure Tfdatafhotorefund.tampilss(alamat: string);
begin
  try
      Image4.Picture.LoadFromFile(alamat);
  except
      Image4.Picture:=nil;
  end;
end;

procedure Tfdatafhotorefund.tampiltransfer(alamat: string);
begin
  try
      Image3.Picture.LoadFromFile(alamat);
  except
      Image3.Picture:=nil;
  end;
end;

end.
