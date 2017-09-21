package helloworld

//go:generate protoc -I . -I ../vendor -I ../vendor/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis helloworld.proto --go_out=plugins=grpc:.
//go:generate protoc -I . -I ../vendor -I ../vendor/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis helloworld.proto --grpc-gateway_out=logtostderr=true:.
//go:generate protoc -I . -I ../vendor -I ../vendor/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis helloworld.proto --swagger_out=logtostderr=true:.
