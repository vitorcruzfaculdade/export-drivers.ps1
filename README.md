# Export Windows Drivers Script - export-drivers.ps1 - en-us - 🇺🇲

(Para instruções em Português do Brasil continue descendo a página! - To Brazilian Portuguese instructions, go down in this page)

A small and simple PowerShell script to export third-party drivers from a Windows installation (Server or Desktop) into a structured folder for backup, deployment, or migration purposes.

## Features

- Extracts **third-party drivers** from the current online system
- Supports **Windows Server 2012+** and **Windows 8+ Desktop editions**
- Ideal for use with **DISM**, **WDS**, or **MDT** in enterprise environments
- Outputs ready-to-use `.inf` driver files and folders
- Silent, unattended, and requires no third-party tools

## Supported Operating Systems

### Windows Server Editions

- Windows Server 2012 / 2012 R2
- Windows Server 2016
- Windows Server 2019
- Windows Server 2022

### Windows Desktop Editions

- Windows 8 / 8.1
- Windows 10 (all editions)
- Windows 11 (all editions)

**Requirements:**

- PowerShell 4.0 or newer
- `Export-WindowsDriver` cmdlet (included by default in Windows 8 and later)

## Usage

1. Open **PowerShell as Administrator**

2. If necessary, temporarily allow script execution:

   ```powershell
   Set-ExecutionPolicy Unrestricted -Scope Process -Force
   ```

3. Run the script:

   ```powershell
   .\Export-Drivers.ps1
   ```

4. Drivers will be exported to:

   ```text
   C:\DriverBackup
   ```

### To install the drivers on another machine

```powershell
pnputil /add-driver "C:\DriverBackup\*.inf" /subdirs /install
```

### To inject drivers into a Windows image

```powershell
dism /Image:D:\Mount /Add-Driver /Driver:C:\DriverBackup /Recurse
```

## License

This project is licensed under the **GPL-3.0 License**.  
You are free to use, adapt, and redistribute it with proper attribution.

## Author

**Vitor Cruz**  
[GitHub Profile](https://github.com/vitorcruzfaculdade)

# Script de Exportação de Drivers do Windows  - export-drivers.ps1 - pt-br - 🇧🇷

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

2. Se necessário, permita a execução de scripts temporariamente:

   ```powershell
   Set-ExecutionPolicy Unrestricted -Scope Process -Force
   ```
   
3. Execute o script:

   ```powershell
   .\Export-Drivers.ps1
   ```

4. Os drivers serão exportados para:

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
