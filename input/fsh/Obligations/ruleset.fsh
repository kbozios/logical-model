RuleSet: Full(strength)
* ^extension[$obligation][+].extension[code].valueCode = {strength}:able-to-populate
* ^extension[$obligation][=].extension[actor].valueCanonical = Canonical(actor-full)
RuleSet: Basic(strength)
* ^extension[$obligation][+].extension[code].valueCode = {strength}:able-to-populate
* ^extension[$obligation][=].extension[actor].valueCanonical = Canonical(actor-basic)