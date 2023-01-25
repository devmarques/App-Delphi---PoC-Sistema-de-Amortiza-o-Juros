program Simulador;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {frmPrincipal},
  View.Simulador in 'View\View.Simulador.pas' {frmSimulador},
  Data.Module in 'DAO\Data.Module.pas' {dm: TDataModule},
  Controller.Simulador in 'Controller\Controller.Simulador.pas',
  DAO.DataSource in 'DAO\DAO.DataSource.pas',
  Model.Simulador in 'Model\Model.Simulador.pas',
  DAO.ClientDataSet in 'DAO\DAO.ClientDataSet.pas',
  Helpers.Variant in 'Helpers\Helpers.Variant.pas',
  Model.Arquivo in 'Model\Model.Arquivo.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
