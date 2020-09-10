awk -F= '!a[$1]++' ./test1/address-business-service-test1.properties  ./global/address-business-service.properties
