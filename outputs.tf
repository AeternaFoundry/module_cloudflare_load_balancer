output "load_balancers_id" {
  description = "Map of id values across all load_balancers, keyed the same as var.load_balancers except keys with no id are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancers_adaptive_routing" {
  description = "Map of adaptive_routing values across all load_balancers, keyed the same as var.load_balancers except keys with no adaptive_routing are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.adaptive_routing if v.adaptive_routing != null && length(v.adaptive_routing) > 0 }
}
output "load_balancers_country_pools" {
  description = "Map of country_pools values across all load_balancers, keyed the same as var.load_balancers except keys with no country_pools are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.country_pools if v.country_pools != null && length(v.country_pools) > 0 }
}
output "load_balancers_created_on" {
  description = "Map of created_on values across all load_balancers, keyed the same as var.load_balancers except keys with no created_on are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.created_on if v.created_on != null && length(v.created_on) > 0 }
}
output "load_balancers_default_pools" {
  description = "Map of default_pools values across all load_balancers, keyed the same as var.load_balancers except keys with no default_pools are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.default_pools if v.default_pools != null && length(v.default_pools) > 0 }
}
output "load_balancers_description" {
  description = "Map of description values across all load_balancers, keyed the same as var.load_balancers except keys with no description are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "load_balancers_enabled" {
  description = "Map of enabled values across all load_balancers, keyed the same as var.load_balancers except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.enabled if v.enabled != null }
}
output "load_balancers_fallback_pool" {
  description = "Map of fallback_pool values across all load_balancers, keyed the same as var.load_balancers except keys with no fallback_pool are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.fallback_pool if v.fallback_pool != null && length(v.fallback_pool) > 0 }
}
output "load_balancers_location_strategy" {
  description = "Map of location_strategy values across all load_balancers, keyed the same as var.load_balancers except keys with no location_strategy are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.location_strategy if v.location_strategy != null && length(v.location_strategy) > 0 }
}
output "load_balancers_modified_on" {
  description = "Map of modified_on values across all load_balancers, keyed the same as var.load_balancers except keys with no modified_on are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.modified_on if v.modified_on != null && length(v.modified_on) > 0 }
}
output "load_balancers_name" {
  description = "Map of name values across all load_balancers, keyed the same as var.load_balancers except keys with no name are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "load_balancers_networks" {
  description = "Map of networks values across all load_balancers, keyed the same as var.load_balancers except keys with no networks are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.networks if v.networks != null && length(v.networks) > 0 }
}
output "load_balancers_pop_pools" {
  description = "Map of pop_pools values across all load_balancers, keyed the same as var.load_balancers except keys with no pop_pools are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.pop_pools if v.pop_pools != null && length(v.pop_pools) > 0 }
}
output "load_balancers_proxied" {
  description = "Map of proxied values across all load_balancers, keyed the same as var.load_balancers except keys with no proxied are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.proxied if v.proxied != null }
}
output "load_balancers_random_steering" {
  description = "Map of random_steering values across all load_balancers, keyed the same as var.load_balancers except keys with no random_steering are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.random_steering if v.random_steering != null && length(v.random_steering) > 0 }
}
output "load_balancers_region_pools" {
  description = "Map of region_pools values across all load_balancers, keyed the same as var.load_balancers except keys with no region_pools are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.region_pools if v.region_pools != null && length(v.region_pools) > 0 }
}
output "load_balancers_rules" {
  description = "Map of rules values across all load_balancers, keyed the same as var.load_balancers except keys with no rules are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "load_balancers_session_affinity" {
  description = "Map of session_affinity values across all load_balancers, keyed the same as var.load_balancers except keys with no session_affinity are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.session_affinity if v.session_affinity != null && length(v.session_affinity) > 0 }
}
output "load_balancers_session_affinity_attributes" {
  description = "Map of session_affinity_attributes values across all load_balancers, keyed the same as var.load_balancers except keys with no session_affinity_attributes are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.session_affinity_attributes if v.session_affinity_attributes != null && length(v.session_affinity_attributes) > 0 }
}
output "load_balancers_session_affinity_ttl" {
  description = "Map of session_affinity_ttl values across all load_balancers, keyed the same as var.load_balancers except keys with no session_affinity_ttl are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.session_affinity_ttl if v.session_affinity_ttl != null }
}
output "load_balancers_steering_policy" {
  description = "Map of steering_policy values across all load_balancers, keyed the same as var.load_balancers except keys with no steering_policy are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.steering_policy if v.steering_policy != null && length(v.steering_policy) > 0 }
}
output "load_balancers_ttl" {
  description = "Map of ttl values across all load_balancers, keyed the same as var.load_balancers except keys with no ttl are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.ttl if v.ttl != null }
}
output "load_balancers_zone_id" {
  description = "Map of zone_id values across all load_balancers, keyed the same as var.load_balancers except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}
output "load_balancers_zone_name" {
  description = "Map of zone_name values across all load_balancers, keyed the same as var.load_balancers except keys with no zone_name are omitted"
  value       = { for k, v in cloudflare_load_balancer.load_balancers : k => v.zone_name if v.zone_name != null && length(v.zone_name) > 0 }
}

