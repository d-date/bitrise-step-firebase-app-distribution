#!/bin/bash

set -ex

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

npm install --prefix $THIS_SCRIPT_DIR firebase-tools --save

firebase appdistribution:distribute "${ipa_path}" \
  --app "${app}" \
  --token "${token}" \
  --release-notes "${release_notes}" \
  --release-notes-file "${release_notes_file}" \
  --testers "${testers}" \
  --testers-file "${testers_file}" \
  --groups "${groups}" \
  --groups-file "${groups_file}"
