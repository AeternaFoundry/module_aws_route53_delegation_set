variable "route53_delegation_sets" {
  description = <<EOT
Map of route53_delegation_sets, attributes below
Optional:
    - reference_name
EOT

  type = map(object({
    reference_name = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53_delegation_sets : (
        v.reference_name == null || (length(v.reference_name) >= 0 && length(v.reference_name) <= 128)
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
}

