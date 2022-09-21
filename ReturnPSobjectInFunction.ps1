Function Get-PSObjectExample {
		$value1 = "value1"
		$value2 = "value2"
		$value3 = "value3"

    $obj = New-Object -TypeName PSObject
    $obj | Add-Member -MemberType NoteProperty -Name 'value1' -Value $value1
    $obj | Add-Member -MemberType NoteProperty -Name 'value2' -Value $value2
    $obj | Add-Member -MemberType NoteProperty -Name 'value3' -Value $value3
    
    $obj | Add-Member -MemberType NoteProperty -Name 'value1' -Value $value1
    $obj | Add-Member -MemberType NoteProperty -Name 'value2' -Value $value2
    $obj | Add-Member -MemberType NoteProperty -Name 'value3' -Value $value3


    # Return the object
    Return $obj
}
