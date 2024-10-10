## Protobuf parser for BigQuery

bqpb is a **self-contained, yet feature-complete** parser for the [Protocol Buffers](https://protobuf.dev/) format, which is intended for use on [BigQuery](https://cloud.google.com/bigquery/) as a [JavaScript UDF](https://cloud.google.com/bigquery/docs/reference/standard-sql/user-defined-functions#javascript-udfs).

### Supported features

- [x] Protobuf input
- [x] JSON output
- [x] JSON output conformance -- see [JSON Mapping](https://protobuf.dev/programming-guides/proto3/#json) defined in the spec.
- Schema support
  - [x] Rough inspection of the message without a schema
  - [x] Precise parsing and serialization of the message with a schema
- Supported types
  - [x] All integer types -- `uint32`, `int32`, `sint32`, `uint64`, `int64`, `sint64`, `fixed32`, `sfixed32`, `fixed64`, `sfixed64`
  - [x] `float` and `double`
  - [x] `bool`
  - [x] `bytes` and `string`
  - [x] `map`
  - [x] Enums
  - [x] Messages
- Supported field types
  - [x] optional
  - [x] repeated
    - [x] packed representation
  - [x] oneof (partially supported)
  - [x] group in proto2
- Supported special JSON serialization rules
  - [x] Any
  - [x] Generic JSON Values -- Value, Struct, ListValue, and NullValue
  - [x] Timestamp and Duration
  - [x] FieldMask
  - [x] Wrapper types -- `UInt32Value`, `Int32Value`, `UInt64Value`, `Int64Value`, `FloatValue`, `DoubleValue`, `BoolValue`, `StringValue`, `BytesValue`

### Usage

Paste SQL to BigQuery from pqpb.sql

### API Reference

See [parse-protobuf.md](docs/parse-protobuf.md).

### License

MIT License. See [LICENSE](LICENSE).
