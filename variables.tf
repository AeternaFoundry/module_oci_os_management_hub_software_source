variable "os_management_hub_software_sources" {
  description = <<EOT
Map of os_management_hub_software_sources, attributes below
Required:
    - compartment_id
    - software_source_type
Optional:
    - advanced_repo_options
    - arch_type
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - gpg_key_url
    - is_auto_resolve_dependencies
    - is_automatically_updated
    - is_created_from_package_list
    - is_gpg_check_enabled
    - is_latest_content_only
    - is_mirror_sync_allowed
    - is_ssl_verify_enabled
    - origin_display_name
    - origin_software_source_id
    - os_family
    - packages
    - software_source_sub_type
    - software_source_version
    - url
    - custom_software_source_filter (block):
        - module_stream_profile_filters (optional, block):
            - filter_type (optional)
            - module_name (optional)
            - profile_name (optional)
            - stream_name (optional)
        - package_filters (optional, block):
            - filter_type (optional)
            - package_name (optional)
            - package_name_pattern (optional)
            - package_version (optional)
        - package_group_filters (optional, block):
            - filter_type (optional)
            - package_groups (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vendor_software_sources (block):
        - display_name (optional)
        - id (optional)
EOT

  type = map(object({
    compartment_id               = string
    software_source_type         = string
    advanced_repo_options        = optional(string)
    arch_type                    = optional(string)
    defined_tags                 = optional(map(string))
    description                  = optional(string)
    display_name                 = optional(string)
    freeform_tags                = optional(map(string))
    gpg_key_url                  = optional(string)
    is_auto_resolve_dependencies = optional(bool)
    is_automatically_updated     = optional(bool)
    is_created_from_package_list = optional(bool)
    is_gpg_check_enabled         = optional(bool)
    is_latest_content_only       = optional(bool)
    is_mirror_sync_allowed       = optional(bool)
    is_ssl_verify_enabled        = optional(bool)
    origin_display_name          = optional(string)
    origin_software_source_id    = optional(string)
    os_family                    = optional(string)
    packages                     = optional(list(string))
    software_source_sub_type     = optional(string)
    software_source_version      = optional(string)
    url                          = optional(string)
    custom_software_source_filter = optional(object({
      module_stream_profile_filters = optional(list(object({
        filter_type  = optional(string)
        module_name  = optional(string)
        profile_name = optional(string)
        stream_name  = optional(string)
      })))
      package_filters = optional(list(object({
        filter_type          = optional(string)
        package_name         = optional(string)
        package_name_pattern = optional(string)
        package_version      = optional(string)
      })))
      package_group_filters = optional(list(object({
        filter_type    = optional(string)
        package_groups = optional(list(string))
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vendor_software_sources = optional(list(object({
      display_name = optional(string)
      id           = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.os_management_hub_software_sources : (
        contains([for v in ["CUSTOM", "PRIVATE", "THIRD_PARTY", "VENDOR", "VERSIONED"] : lower(v)], lower(v.software_source_type))
      )
    ])
    error_message = "must be one of: \"CUSTOM\", \"PRIVATE\", \"THIRD_PARTY\", \"VENDOR\", \"VERSIONED\""
  }
}

