output "os_management_hub_software_sources_id" {
  description = "Map of id values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no id are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "os_management_hub_software_sources_advanced_repo_options" {
  description = "Map of advanced_repo_options values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no advanced_repo_options are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.advanced_repo_options if v.advanced_repo_options != null && length(v.advanced_repo_options) > 0 }
}
output "os_management_hub_software_sources_arch_type" {
  description = "Map of arch_type values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no arch_type are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.arch_type if v.arch_type != null && length(v.arch_type) > 0 }
}
output "os_management_hub_software_sources_availability" {
  description = "Map of availability values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no availability are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.availability if v.availability != null && length(v.availability) > 0 }
}
output "os_management_hub_software_sources_availability_at_oci" {
  description = "Map of availability_at_oci values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no availability_at_oci are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.availability_at_oci if v.availability_at_oci != null && length(v.availability_at_oci) > 0 }
}
output "os_management_hub_software_sources_checksum_type" {
  description = "Map of checksum_type values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no checksum_type are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.checksum_type if v.checksum_type != null && length(v.checksum_type) > 0 }
}
output "os_management_hub_software_sources_compartment_id" {
  description = "Map of compartment_id values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no compartment_id are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "os_management_hub_software_sources_custom_software_source_filter" {
  description = "Map of custom_software_source_filter values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no custom_software_source_filter are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => one(v.custom_software_source_filter) if v.custom_software_source_filter != null && length(v.custom_software_source_filter) > 0 }
}
output "os_management_hub_software_sources_defined_tags" {
  description = "Map of defined_tags values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no defined_tags are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "os_management_hub_software_sources_description" {
  description = "Map of description values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no description are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.description if v.description != null && length(v.description) > 0 }
}
output "os_management_hub_software_sources_display_name" {
  description = "Map of display_name values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no display_name are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "os_management_hub_software_sources_freeform_tags" {
  description = "Map of freeform_tags values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "os_management_hub_software_sources_gpg_key_fingerprint" {
  description = "Map of gpg_key_fingerprint values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no gpg_key_fingerprint are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.gpg_key_fingerprint if v.gpg_key_fingerprint != null && length(v.gpg_key_fingerprint) > 0 }
}
output "os_management_hub_software_sources_gpg_key_id" {
  description = "Map of gpg_key_id values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no gpg_key_id are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.gpg_key_id if v.gpg_key_id != null && length(v.gpg_key_id) > 0 }
}
output "os_management_hub_software_sources_gpg_key_url" {
  description = "Map of gpg_key_url values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no gpg_key_url are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.gpg_key_url if v.gpg_key_url != null && length(v.gpg_key_url) > 0 }
}
output "os_management_hub_software_sources_is_auto_resolve_dependencies" {
  description = "Map of is_auto_resolve_dependencies values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no is_auto_resolve_dependencies are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.is_auto_resolve_dependencies if v.is_auto_resolve_dependencies != null }
}
output "os_management_hub_software_sources_is_automatically_updated" {
  description = "Map of is_automatically_updated values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no is_automatically_updated are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.is_automatically_updated if v.is_automatically_updated != null }
}
output "os_management_hub_software_sources_is_created_from_package_list" {
  description = "Map of is_created_from_package_list values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no is_created_from_package_list are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.is_created_from_package_list if v.is_created_from_package_list != null }
}
output "os_management_hub_software_sources_is_gpg_check_enabled" {
  description = "Map of is_gpg_check_enabled values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no is_gpg_check_enabled are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.is_gpg_check_enabled if v.is_gpg_check_enabled != null }
}
output "os_management_hub_software_sources_is_latest_content_only" {
  description = "Map of is_latest_content_only values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no is_latest_content_only are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.is_latest_content_only if v.is_latest_content_only != null }
}
output "os_management_hub_software_sources_is_mandatory_for_autonomous_linux" {
  description = "Map of is_mandatory_for_autonomous_linux values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no is_mandatory_for_autonomous_linux are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.is_mandatory_for_autonomous_linux if v.is_mandatory_for_autonomous_linux != null }
}
output "os_management_hub_software_sources_is_mirror_sync_allowed" {
  description = "Map of is_mirror_sync_allowed values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no is_mirror_sync_allowed are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.is_mirror_sync_allowed if v.is_mirror_sync_allowed != null }
}
output "os_management_hub_software_sources_is_ssl_verify_enabled" {
  description = "Map of is_ssl_verify_enabled values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no is_ssl_verify_enabled are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.is_ssl_verify_enabled if v.is_ssl_verify_enabled != null }
}
output "os_management_hub_software_sources_origin_display_name" {
  description = "Map of origin_display_name values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no origin_display_name are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.origin_display_name if v.origin_display_name != null && length(v.origin_display_name) > 0 }
}
output "os_management_hub_software_sources_origin_software_source_id" {
  description = "Map of origin_software_source_id values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no origin_software_source_id are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.origin_software_source_id if v.origin_software_source_id != null && length(v.origin_software_source_id) > 0 }
}
output "os_management_hub_software_sources_os_family" {
  description = "Map of os_family values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no os_family are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.os_family if v.os_family != null && length(v.os_family) > 0 }
}
output "os_management_hub_software_sources_package_count" {
  description = "Map of package_count values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no package_count are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.package_count if v.package_count != null && length(v.package_count) > 0 }
}
output "os_management_hub_software_sources_packages" {
  description = "Map of packages values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no packages are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.packages if v.packages != null && length(v.packages) > 0 }
}
output "os_management_hub_software_sources_repo_id" {
  description = "Map of repo_id values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no repo_id are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.repo_id if v.repo_id != null && length(v.repo_id) > 0 }
}
output "os_management_hub_software_sources_size" {
  description = "Map of size values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no size are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.size if v.size != null }
}
output "os_management_hub_software_sources_software_source_sub_type" {
  description = "Map of software_source_sub_type values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no software_source_sub_type are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.software_source_sub_type if v.software_source_sub_type != null && length(v.software_source_sub_type) > 0 }
}
output "os_management_hub_software_sources_software_source_type" {
  description = "Map of software_source_type values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no software_source_type are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.software_source_type if v.software_source_type != null && length(v.software_source_type) > 0 }
}
output "os_management_hub_software_sources_software_source_version" {
  description = "Map of software_source_version values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no software_source_version are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.software_source_version if v.software_source_version != null && length(v.software_source_version) > 0 }
}
output "os_management_hub_software_sources_state" {
  description = "Map of state values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no state are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.state if v.state != null && length(v.state) > 0 }
}
output "os_management_hub_software_sources_system_tags" {
  description = "Map of system_tags values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no system_tags are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "os_management_hub_software_sources_time_created" {
  description = "Map of time_created values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no time_created are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "os_management_hub_software_sources_time_metadata_updated" {
  description = "Map of time_metadata_updated values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no time_metadata_updated are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.time_metadata_updated if v.time_metadata_updated != null && length(v.time_metadata_updated) > 0 }
}
output "os_management_hub_software_sources_url" {
  description = "Map of url values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no url are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.url if v.url != null && length(v.url) > 0 }
}
output "os_management_hub_software_sources_vendor_name" {
  description = "Map of vendor_name values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no vendor_name are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.vendor_name if v.vendor_name != null && length(v.vendor_name) > 0 }
}
output "os_management_hub_software_sources_vendor_software_sources" {
  description = "Map of vendor_software_sources values across all os_management_hub_software_sources, keyed the same as var.os_management_hub_software_sources except keys with no vendor_software_sources are omitted"
  value       = { for k, v in oci_os_management_hub_software_source.os_management_hub_software_sources : k => v.vendor_software_sources if v.vendor_software_sources != null && length(v.vendor_software_sources) > 0 }
}

