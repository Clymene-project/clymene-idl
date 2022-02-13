

.PHONY: proto-metric
proto-metric:
	protoc -I=./github.com/gogo/protobuf -I=./prompb -I=./googleapis -I=. --gofast_out=plugins=grpc:output prompb/types.proto
	protoc -I=./github.com/gogo/protobuf -I=./prompb -I=./googleapis -I=. --gofast_out=plugins=grpc:output prompb/remote.proto
	protoc -I=./github.com/gogo/protobuf -I=./prompb -I=./googleapis -I=. --gofast_out=plugins=grpc:output prompb/service.proto
