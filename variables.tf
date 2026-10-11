variable "volumes_lookup" {
  description = <<EOT
Map of volumes_lookup, attributes below
Required:
    - catalog_name
    - schema_name
Optional:
    - ids
    - provider_config
EOT

  type = map(object({
    catalog_name = string
    schema_name  = string
    ids          = optional(list(string))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

