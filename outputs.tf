output "container_analysis_notes_id" {
  description = "Map of id values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no id are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_analysis_notes_attestation_authority" {
  description = "Map of attestation_authority values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no attestation_authority are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => one(v.attestation_authority) if v.attestation_authority != null && length(v.attestation_authority) > 0 }
}
output "container_analysis_notes_create_time" {
  description = "Map of create_time values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no create_time are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "container_analysis_notes_deletion_policy" {
  description = "Map of deletion_policy values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no deletion_policy are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "container_analysis_notes_expiration_time" {
  description = "Map of expiration_time values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no expiration_time are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.expiration_time if v.expiration_time != null && length(v.expiration_time) > 0 }
}
output "container_analysis_notes_kind" {
  description = "Map of kind values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no kind are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "container_analysis_notes_long_description" {
  description = "Map of long_description values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no long_description are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.long_description if v.long_description != null && length(v.long_description) > 0 }
}
output "container_analysis_notes_name" {
  description = "Map of name values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no name are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "container_analysis_notes_project" {
  description = "Map of project values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no project are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.project if v.project != null && length(v.project) > 0 }
}
output "container_analysis_notes_related_note_names" {
  description = "Map of related_note_names values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no related_note_names are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.related_note_names if v.related_note_names != null && length(v.related_note_names) > 0 }
}
output "container_analysis_notes_related_url" {
  description = "Map of related_url values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no related_url are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.related_url if v.related_url != null && length(v.related_url) > 0 }
}
output "container_analysis_notes_short_description" {
  description = "Map of short_description values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no short_description are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.short_description if v.short_description != null && length(v.short_description) > 0 }
}
output "container_analysis_notes_update_time" {
  description = "Map of update_time values across all container_analysis_notes, keyed the same as var.container_analysis_notes except keys with no update_time are omitted"
  value       = { for k, v in google_container_analysis_note.container_analysis_notes : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

