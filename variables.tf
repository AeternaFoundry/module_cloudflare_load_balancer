variable "load_balancers" {
  description = <<EOT
Map of load_balancers, attributes below
Required:
    - default_pools
    - fallback_pool
    - name
    - zone_id
Optional:
    - adaptive_routing
    - country_pools
    - description
    - enabled
    - location_strategy
    - networks
    - pop_pools
    - proxied
    - random_steering
    - region_pools
    - rules
    - session_affinity
    - session_affinity_attributes
    - session_affinity_ttl
    - steering_policy
    - ttl
EOT

  type = map(object({
    default_pools = list(string)
    fallback_pool = string
    name          = string
    zone_id       = string
    adaptive_routing = optional(object({
      failover_across_pools = optional(bool)
    }))
    country_pools = optional(map(any))
    description   = optional(string)
    enabled       = optional(bool)
    location_strategy = optional(object({
      mode       = optional(string)
      prefer_ecs = optional(string)
    }))
    networks  = optional(list(string))
    pop_pools = optional(map(any))
    proxied   = optional(bool)
    random_steering = optional(object({
      default_weight = optional(number)
      pool_weights   = optional(map(number))
    }))
    region_pools = optional(map(any))
    rules = optional(list(object({
      condition = optional(string)
      disabled  = optional(bool)
      fixed_response = optional(object({
        content_type = optional(string)
        location     = optional(string)
        message_body = optional(string)
        status_code  = optional(number)
      }))
      name = optional(string)
      overrides = optional(object({
        adaptive_routing = optional(object({
          failover_across_pools = optional(bool)
        }))
        country_pools = optional(map(any))
        default_pools = optional(list(string))
        fallback_pool = optional(string)
        location_strategy = optional(object({
          mode       = optional(string)
          prefer_ecs = optional(string)
        }))
        pop_pools = optional(map(any))
        random_steering = optional(object({
          default_weight = optional(number)
          pool_weights   = optional(map(number))
        }))
        region_pools     = optional(map(any))
        session_affinity = optional(string)
        session_affinity_attributes = optional(object({
          drain_duration         = optional(number)
          headers                = optional(list(string))
          require_all_headers    = optional(bool)
          samesite               = optional(string)
          secure                 = optional(string)
          zero_downtime_failover = optional(string)
        }))
        session_affinity_ttl = optional(number)
        steering_policy      = optional(string)
        ttl                  = optional(number)
      }))
      priority   = optional(number)
      terminates = optional(bool)
    })))
    session_affinity = optional(string)
    session_affinity_attributes = optional(object({
      drain_duration         = optional(number)
      headers                = optional(list(string))
      require_all_headers    = optional(bool)
      samesite               = optional(string)
      secure                 = optional(string)
      zero_downtime_failover = optional(string)
    }))
    session_affinity_ttl = optional(number)
    steering_policy      = optional(string)
    ttl                  = optional(number)
  }))
}

