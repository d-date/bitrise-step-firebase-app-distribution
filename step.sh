#!/bin/bash

set -ex

curl -sL firebase.tools | bash

firebase appdistribution:distribute "${ipa_path}" \
  --app "${app}" \
  --token "${token}" \
  --release-notes "${release_notes}" \
  --release-notes-file "${release_notes_file}" \
  --testers "${testers}" \
  --testers-file "${testers_file}" \
  --groups "${groups}" \
  --groups-file "${groups_file}"
