output "route53_delegation_sets_id" {
  description = "Map of id values across all route53_delegation_sets, keyed the same as var.route53_delegation_sets"
  value       = { for k, v in aws_route53_delegation_set.route53_delegation_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_delegation_sets_arn" {
  description = "Map of arn values across all route53_delegation_sets, keyed the same as var.route53_delegation_sets"
  value       = { for k, v in aws_route53_delegation_set.route53_delegation_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route53_delegation_sets_name_servers" {
  description = "Map of name_servers values across all route53_delegation_sets, keyed the same as var.route53_delegation_sets"
  value       = { for k, v in aws_route53_delegation_set.route53_delegation_sets : k => v.name_servers if v.name_servers != null && length(v.name_servers) > 0 }
}
output "route53_delegation_sets_reference_name" {
  description = "Map of reference_name values across all route53_delegation_sets, keyed the same as var.route53_delegation_sets"
  value       = { for k, v in aws_route53_delegation_set.route53_delegation_sets : k => v.reference_name if v.reference_name != null && length(v.reference_name) > 0 }
}

