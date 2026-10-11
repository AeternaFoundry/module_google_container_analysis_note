resource "google_container_analysis_note" "container_analysis_notes" {
  for_each = var.container_analysis_notes

  name               = each.value.name
  deletion_policy    = each.value.deletion_policy
  expiration_time    = each.value.expiration_time
  long_description   = each.value.long_description
  project            = each.value.project
  related_note_names = each.value.related_note_names
  short_description  = each.value.short_description

  attestation_authority {
    hint {
      human_readable_name = each.value.attestation_authority.hint.human_readable_name
    }
  }

  dynamic "related_url" {
    for_each = each.value.related_url != null ? each.value.related_url : []
    content {
      label = related_url.value.label
      url   = related_url.value.url
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
}

