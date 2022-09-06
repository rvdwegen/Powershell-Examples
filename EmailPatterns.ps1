'FirstName.LastName' { # Pattern: john.snow@domain.tld
    Set-Variable -Name 'FullEmailAddress' -Value ((($AADFirstName + "." + $AADLastName).ToLower() + "@" + ($Tenant.TenantDomain)).replace(" ","") -as ([MailAddress]))
}
'FirstNameLetter.LastName' { # Pattern: j.snow@domain.tld
    Set-Variable -Name 'FullEmailAddress' -Value ((($AADFirstName.Substring(0,1) + "." + $AADLastName).ToLower() + "@" + ($Tenant.TenantDomain)).replace(" ","") -as ([MailAddress]))
}
'FirstNameLastName' { # Pattern: johnsnow@domain.tld
    Set-Variable -Name 'FullEmailAddress' -Value ((($AADFirstName + $AADLastName).ToLower() + "@" + ($Tenant.TenantDomain)).replace(" ","") -as ([MailAddress]))
}
'FirstNameLetterLastName' { # Pattern: jsnow@domain.tld
    Set-Variable -Name 'FullEmailAddress' -Value ((($AADFirstName.Substring(0,1) + $AADLastName).ToLower() + "@" + ($Tenant.TenantDomain)).replace(" ","") -as ([MailAddress]))
}
'Firstname' { # Pattern: john@domain.tld
    Set-Variable -Name 'FullEmailAddress' -Value ((($AADFirstName).ToLower() + "@" + ($Tenant.TenantDomain)).replace(" ","") -as ([MailAddress]))
}
'Lastname' { # Pattern: snow@domain.tld
    Set-Variable -Name 'FullEmailAddress' -Value ((($AADLastName).ToLower() + "@" + ($Tenant.TenantDomain)).replace(" ","") -as ([MailAddress]))
}

# Note that this is lifted directly from an account creation script, several vvariables will need to be handled if you use this in a script.
