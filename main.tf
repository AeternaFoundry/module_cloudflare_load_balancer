resource "cloudflare_load_balancer" "load_balancers" {
  for_each = var.load_balancers

  default_pools               = each.value.default_pools
  fallback_pool               = each.value.fallback_pool
  name                        = each.value.name
  zone_id                     = each.value.zone_id
  adaptive_routing            = each.value.adaptive_routing
  country_pools               = each.value.country_pools
  description                 = each.value.description
  enabled                     = each.value.enabled
  location_strategy           = each.value.location_strategy
  networks                    = each.value.networks
  pop_pools                   = each.value.pop_pools
  proxied                     = each.value.proxied
  random_steering             = each.value.random_steering
  region_pools                = each.value.region_pools
  rules                       = each.value.rules
  session_affinity            = each.value.session_affinity
  session_affinity_attributes = each.value.session_affinity_attributes
  session_affinity_ttl        = each.value.session_affinity_ttl
  steering_policy             = each.value.steering_policy
  ttl                         = each.value.ttl
}

