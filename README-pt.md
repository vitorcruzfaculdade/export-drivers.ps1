# Script de Exportação de Drivers do Windows

Um pequeno e simples script em PowerShell para exportar drivers de terceiros de uma instalação do Windows (Server ou Desktop) para uma pasta estruturada, ideal para backup, implantação ou migração.

## Funcionalidades

- Extrai **drivers de terceiros** do sistema atual
- Compatível com **Windows Server 2012+** e **Windows 8+ (todas edições Desktop)**
- Ideal para uso com **DISM**, **WDS** ou **MDT** em ambientes corporativos
- Gera arquivos `.inf` prontos para uso e organizados por pastas
- Executa de forma silenciosa, sem interação do usuário e sem ferramentas de terceiros

## Sistemas Operacionais Suportados

### Edições do Windows Server

- Windows Server 2012 / 2012 R2
- Windows Server 2016
- Windows Server 2019
- Windows Server 2022

### Edições do Windows Desktop

- Windows 8 / 8.1
- Windows 10 (todas as edições)
- Windows 11 (todas as edições)

**Requisitos:**

- PowerShell 4.0 ou superior
- Cmdlet `Export-WindowsDriver` (incluído por padrão no Windows 8 e superiores)

## Como Usar

1. Abra o **PowerShell como Administrador**
2. Execute o script:

   ```powershell
   .\Export-Drivers.ps1
   ```

3. Os drivers serão exportados para:

   ```text
   C:\DriverBackup
   ```

### Para instalar os drivers em outra máquina

```powershell
pnputil /add-driver "C:\DriverBackup\*.inf" /subdirs /install
```

### Para injetar os drivers em uma imagem do Windows

```powershell
dism /Image:D:\Mount /Add-Driver /Driver:C:\DriverBackup /Recurse
```

## Licença

Este projeto está licenciado sob a **Licença GPL-3.0**.  
Você pode usar, adaptar e redistribuir com a devida atribuição de crédito.

## Autoria

**Vitor Cruz**  
[Perfil no GitHub](https://github.com/vitorcruzfaculdade)
