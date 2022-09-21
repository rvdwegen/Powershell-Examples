Function Get-PSObjectExample {
	$value1 = "value1"
	$value2 = "value2"

	$obj = New-Object -TypeName PSObject
	$obj | Add-Member -MemberType NoteProperty -Name 'value1' -Value $value1
	$obj | Add-Member -MemberType NoteProperty -Name 'value2' -Value $value2

	# Return the object
	Return $obj
}
