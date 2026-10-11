resource "oci_os_management_hub_software_source" "os_management_hub_software_sources" {
  for_each = var.os_management_hub_software_sources

  compartment_id               = each.value.compartment_id
  software_source_type         = each.value.software_source_type
  advanced_repo_options        = each.value.advanced_repo_options
  arch_type                    = each.value.arch_type
  defined_tags                 = each.value.defined_tags
  description                  = each.value.description
  display_name                 = each.value.display_name
  freeform_tags                = each.value.freeform_tags
  gpg_key_url                  = each.value.gpg_key_url
  is_auto_resolve_dependencies = each.value.is_auto_resolve_dependencies
  is_automatically_updated     = each.value.is_automatically_updated
  is_created_from_package_list = each.value.is_created_from_package_list
  is_gpg_check_enabled         = each.value.is_gpg_check_enabled
  is_latest_content_only       = each.value.is_latest_content_only
  is_mirror_sync_allowed       = each.value.is_mirror_sync_allowed
  is_ssl_verify_enabled        = each.value.is_ssl_verify_enabled
  origin_display_name          = each.value.origin_display_name
  origin_software_source_id    = each.value.origin_software_source_id
  os_family                    = each.value.os_family
  packages                     = each.value.packages
  software_source_sub_type     = each.value.software_source_sub_type
  software_source_version      = each.value.software_source_version
  url                          = each.value.url

  dynamic "custom_software_source_filter" {
    for_each = each.value.custom_software_source_filter != null ? [each.value.custom_software_source_filter] : []
    content {
      dynamic "module_stream_profile_filters" {
        for_each = custom_software_source_filter.value.module_stream_profile_filters != null ? custom_software_source_filter.value.module_stream_profile_filters : []
        content {
          filter_type  = module_stream_profile_filters.value.filter_type
          module_name  = module_stream_profile_filters.value.module_name
          profile_name = module_stream_profile_filters.value.profile_name
          stream_name  = module_stream_profile_filters.value.stream_name
        }
      }
      dynamic "package_filters" {
        for_each = custom_software_source_filter.value.package_filters != null ? custom_software_source_filter.value.package_filters : []
        content {
          filter_type          = package_filters.value.filter_type
          package_name         = package_filters.value.package_name
          package_name_pattern = package_filters.value.package_name_pattern
          package_version      = package_filters.value.package_version
        }
      }
      dynamic "package_group_filters" {
        for_each = custom_software_source_filter.value.package_group_filters != null ? custom_software_source_filter.value.package_group_filters : []
        content {
          filter_type    = package_group_filters.value.filter_type
          package_groups = package_group_filters.value.package_groups
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vendor_software_sources" {
    for_each = each.value.vendor_software_sources != null ? each.value.vendor_software_sources : []
    content {
      display_name = vendor_software_sources.value.display_name
      id           = vendor_software_sources.value.id
    }
  }
}

