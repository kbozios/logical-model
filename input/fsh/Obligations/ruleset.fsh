RuleSet: Full(strength)
* ^extension[$obligation][+].extension[code].valueCode = {strength}:process
* ^extension[$obligation][=].extension[actor].valueCanonical = Canonical(actor-full)
RuleSet: Basic(strength)
* ^extension[$obligation][+].extension[code].valueCode = {strength}:process
* ^extension[$obligation][=].extension[actor].valueCanonical = Canonical(actor-basic)