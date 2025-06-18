Instructions:
Go to the GitHub repository: Crankers/Invoke-GetHardwareHashWithoutAdmin

Download the Invoke-GetHardwareHashWithoutAdmin.ps1 script file to your target Windows device.

Open PowerShell (does not need to be as Administrator) on the target device.

Navigate to the directory where you saved the script. For example, if you saved it to Downloads: cd $HOME\Downloads

Unblock the script file (if necessary): Unblock-File -Path .\Invoke-GetHardwareHashWithoutAdmin.ps1

Run the script: .\Invoke-GetHardwareHashWithoutAdmin.ps1

The script will output the hardware hash directly to the PowerShell console.

Copy this hash from the console and paste it into the "Paste Hashes" tab in the uploader.

Note: This method's success may depend on system permissions and execution policies. If it fails, you may need to use the admin script or consult with an administrator.

