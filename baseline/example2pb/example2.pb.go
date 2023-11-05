// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.31.0
// 	protoc        v3.12.4
// source: example2.proto

package example2pb

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type RepeatedGroup struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	MyField []*RepeatedGroup_MyField `protobuf:"group,1,rep,name=My_field,json=myField" json:"my_field,omitempty"`
}

func (x *RepeatedGroup) Reset() {
	*x = RepeatedGroup{}
	if protoimpl.UnsafeEnabled {
		mi := &file_example2_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *RepeatedGroup) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*RepeatedGroup) ProtoMessage() {}

func (x *RepeatedGroup) ProtoReflect() protoreflect.Message {
	mi := &file_example2_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use RepeatedGroup.ProtoReflect.Descriptor instead.
func (*RepeatedGroup) Descriptor() ([]byte, []int) {
	return file_example2_proto_rawDescGZIP(), []int{0}
}

func (x *RepeatedGroup) GetMyField() []*RepeatedGroup_MyField {
	if x != nil {
		return x.MyField
	}
	return nil
}

type RepeatedGroup_MyField struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	SubmessageField []uint32 `protobuf:"varint,1,rep,name=submessage_field,json=submessageField" json:"submessage_field,omitempty"`
}

func (x *RepeatedGroup_MyField) Reset() {
	*x = RepeatedGroup_MyField{}
	if protoimpl.UnsafeEnabled {
		mi := &file_example2_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *RepeatedGroup_MyField) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*RepeatedGroup_MyField) ProtoMessage() {}

func (x *RepeatedGroup_MyField) ProtoReflect() protoreflect.Message {
	mi := &file_example2_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use RepeatedGroup_MyField.ProtoReflect.Descriptor instead.
func (*RepeatedGroup_MyField) Descriptor() ([]byte, []int) {
	return file_example2_proto_rawDescGZIP(), []int{0, 0}
}

func (x *RepeatedGroup_MyField) GetSubmessageField() []uint32 {
	if x != nil {
		return x.SubmessageField
	}
	return nil
}

var File_example2_proto protoreflect.FileDescriptor

var file_example2_proto_rawDesc = []byte{
	0x0a, 0x0e, 0x65, 0x78, 0x61, 0x6d, 0x70, 0x6c, 0x65, 0x32, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x12, 0x08, 0x65, 0x78, 0x61, 0x6d, 0x70, 0x6c, 0x65, 0x32, 0x22, 0x83, 0x01, 0x0a, 0x0d, 0x52,
	0x65, 0x70, 0x65, 0x61, 0x74, 0x65, 0x64, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x12, 0x3b, 0x0a, 0x08,
	0x6d, 0x79, 0x5f, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0a, 0x32, 0x20,
	0x2e, 0x65, 0x78, 0x61, 0x6d, 0x70, 0x6c, 0x65, 0x32, 0x2e, 0x52, 0x65, 0x70, 0x65, 0x61, 0x74,
	0x65, 0x64, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x2e, 0x4d, 0x79, 0x5f, 0x66, 0x69, 0x65, 0x6c, 0x64,
	0x52, 0x07, 0x6d, 0x79, 0x46, 0x69, 0x65, 0x6c, 0x64, 0x1a, 0x35, 0x0a, 0x08, 0x4d, 0x79, 0x5f,
	0x66, 0x69, 0x65, 0x6c, 0x64, 0x12, 0x29, 0x0a, 0x10, 0x73, 0x75, 0x62, 0x6d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x5f, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0d, 0x52,
	0x0f, 0x73, 0x75, 0x62, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x46, 0x69, 0x65, 0x6c, 0x64,
	0x42, 0x0e, 0x5a, 0x0c, 0x2e, 0x2f, 0x65, 0x78, 0x61, 0x6d, 0x70, 0x6c, 0x65, 0x32, 0x70, 0x62,
}

var (
	file_example2_proto_rawDescOnce sync.Once
	file_example2_proto_rawDescData = file_example2_proto_rawDesc
)

func file_example2_proto_rawDescGZIP() []byte {
	file_example2_proto_rawDescOnce.Do(func() {
		file_example2_proto_rawDescData = protoimpl.X.CompressGZIP(file_example2_proto_rawDescData)
	})
	return file_example2_proto_rawDescData
}

var file_example2_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_example2_proto_goTypes = []interface{}{
	(*RepeatedGroup)(nil),         // 0: example2.RepeatedGroup
	(*RepeatedGroup_MyField)(nil), // 1: example2.RepeatedGroup.My_field
}
var file_example2_proto_depIdxs = []int32{
	1, // 0: example2.RepeatedGroup.my_field:type_name -> example2.RepeatedGroup.My_field
	1, // [1:1] is the sub-list for method output_type
	1, // [1:1] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_example2_proto_init() }
func file_example2_proto_init() {
	if File_example2_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_example2_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*RepeatedGroup); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_example2_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*RepeatedGroup_MyField); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_example2_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_example2_proto_goTypes,
		DependencyIndexes: file_example2_proto_depIdxs,
		MessageInfos:      file_example2_proto_msgTypes,
	}.Build()
	File_example2_proto = out.File
	file_example2_proto_rawDesc = nil
	file_example2_proto_goTypes = nil
	file_example2_proto_depIdxs = nil
}
