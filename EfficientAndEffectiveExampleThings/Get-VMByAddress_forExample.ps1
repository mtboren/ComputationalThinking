<#	.Description
	Find all VMs w/ a NIC w/ the given MAC address or IP address (by IP address relies on info returned from VMware Tools in the guest, so those must be installed). Matt Boren.  Get-by-MAC written Jul 2011. Updated Feb 2013 to include get-by-IP portion.
	Updated Sep 2013 -- added FindByIPWildcard, so that one can find VMs that approximate IP, like "10.0.0.*"
	.Example
	Get-VMByAddress.ps1 -MAC 00:50:56:b0:00:01
	VMName        MacAddress
	------        ------------
	myvm0         00:50:56:b0:00:01,00:50:56:b0:00:18

	Get VMs with given MAC address, return VM name and its MAC addresses
	.Example
	Get-VMByAddress.ps1 -IP 10.37.31.120 | ft -AutoSize
	VMName         IP
	------         ---
	myvm10         192.168.133.1,192.168.253.1,10.37.31.120,fe80::abcd:ef01:9eba:1ab9%14

	Get VMs with given IP as reported by Tools, return VM name and its IP addresses
#>

[CmdletBinding(DefaultParametersetName="FindByMac")]
param (
## MAC address in question, if finding VM by MAC; expects address in format "00:50:56:01:23:45"
[parameter(Mandatory=$true,ParameterSetName="FindByMac")][string[]]$MAC,

	## IP address in question, if finding VM by IP
	[parameter(Mandatory=$true,ParameterSetName="FindByIP")][ValidateScript({[bool][System.Net.IPAddress]::Parse($_)})][string]$IP,

	## wildcard string IP address (standard wildcards like "10.0.0.*"), if finding VM by approximate IP
[parameter(ParameterSetName="FindByIPWildcard")][string]$AddressWildcard
) ## end param

## for example:
## needs formatted, needs aliases expanded

		Process {
		Switch ($PsCmdlet.ParameterSetName) {
	"FindByMac" {
## return the some info for the VM(s) with the NIC w/ the given MAC
Get-View -Viewtype VirtualMachine -Property Name, Config.Hardware.Device | ? {$_.Config.Hardware.Device | ? {($_ -is [VMware.Vim.VirtualEthernetCard]) -and ($MAC -contains $_.MacAddress)}} | select @{n="VMName"; e={$_.Name}}, @{n="MacAddress"; e={($_.Config.Hardware.Device | ? {$_ -is [VMware.Vim.VirtualEthernetCard]} | % {$_.MacAddress} | sort) -join ","}}, MoRef
break;
} ## end case
			{"FindByIp","FindByIPWildcard" -contains $_} {
## scriptblock to use for the Where clause in finding VMs
	$sblkFindByIP_WhereStatement = if ($PsCmdlet.ParameterSetName -eq "FindByIPWildcard") {
{$_.IpAddress | ? {$_ -like $AddressWildcard}}
}
else {
{$_.IpAddress -contains $IP}
}
## return the .Net View object(s) for the VM(s) with the NIC(s) w/ the given IP
			Get-View -Viewtype VirtualMachine -Property Name, Guest.Net | ? {$_.Guest.Net | ? $sblkFindByIP_WhereStatement} | Select @{n="VMName"; e={$_.Name}}, @{n="IP"; e={($_.Guest.Net | % {$_.IpAddress} | sort) -join ","}}, MoRef
				} ## end case
} ## end switch
} ## end process