#!/bin/bash
# Validate pem
function validate(){
  which openssl 2>/dev/null >/dev/null || return 126
  openssl x509 -checkend 1 -in "${file_name}" -noout 2>/dev/stdout
}
