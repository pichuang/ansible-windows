Set-ExecutionPolicy RemoteSigned
Get-ExecutionPolicy

winrm quickconfig

# Enable WinRm Auth
winrm set winrm/config/service/auth '@{Basic="true"}'

# Enable Allow Un-encrypt
winrm set winrm/config/service '@{AllowUnencrypted="true"}'

# Verify WinRm Listener
winrm enumerate winrm/config/listener
