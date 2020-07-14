#!/bin/bash

main() {
  read -p "company name: " company
  mkdir -p "companies/$company/jobs"
  echo -e '\\def\\company{'${company^}'} \n' \
  '\\def\\companyaddress\{}\n' \
  '\\def\\companyhiringmanager{}\n' \
  '\\def\\companymission{misssion}\n' > "companies/$company/company.tex"
}

main "$@"
