#!/bin/bash
# Validate bash
function validate(){
  grep -q "### Next properties has been auto-generated by" "${file_name:?}" && 
    echo "sonar-project.properties modified automatically" && return 1
  return 0
}
