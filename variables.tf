variable "container_analysis_notes" {
  description = <<EOT
Map of container_analysis_notes, attributes below
Required:
    - name
    - attestation_authority (block):
        - hint (required, block):
            - human_readable_name (required)
Optional:
    - deletion_policy
    - expiration_time
    - long_description
    - project
    - related_note_names
    - short_description
    - related_url (block):
        - label (optional)
        - url (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name               = string
    deletion_policy    = optional(string)
    expiration_time    = optional(string)
    long_description   = optional(string)
    project            = optional(string)
    related_note_names = optional(set(string))
    short_description  = optional(string)
    attestation_authority = object({
      hint = object({
        human_readable_name = string
      })
    })
    related_url = optional(list(object({
      label = optional(string)
      url   = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

