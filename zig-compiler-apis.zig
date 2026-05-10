compiler.aro.aro.annex_g {
  fn complexFloatDiv(comptime T: type, a_param: T, b_param: T, c_param: T, d_param: T) [2]T
  fn complexFloatMul(comptime T: type, a_param: T, b_param: T, c_param: T, d_param: T) [2]T
}

compiler.aro.aro.Attribute.names {
  const NameBuf = struct
  const Tag = enum(u16) {    aarch64_sve_pc
  const data = blk:
  const longest_name = 3
  const shortest_name = 
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Attribute {
  const Alignment = struct
  const Arguments = blk:
  const Formatting = struct
  const Identifier = struct
  const Iterator = struct
  const Kind = enum
  const Syntax = enum
  const Tag = std.meta.DeclEnum(attributes
  const applyParameterAttributes = applyVariableAttribute
  fn ArgumentsForTag(comptime tag: Tag) type
  fn applyEnumeratorAttributes(p: *Parser, qt: QualType, attr_buf_start: usize) !QualType
  fn applyFieldAttributes(p: *Parser, field_qt: *QualType, attr_buf_start: usize) ![]const Attribute
  fn applyFunctionAttributes(p: *Parser, qt: QualType, attr_buf_start: usize) !QualType
  fn applyLabelAttributes(p: *Parser, attr_buf_start: usize) !QualType
  fn applyStatementAttributes(p: *Parser, expr_start: TokenIndex, attr_buf_start: usize) !QualType
  fn applyTypeAttributes(p: *Parser, qt: QualType, attr_buf_start: usize, diagnostic: ?Parser.Diagnostic) !QualType
  fn applyVariableAttributes(p: *Parser, qt: QualType, attr_buf_start: usize, diagnostic: ?Parser.Diagnostic) !QualType
  fn diagnose(attr: Tag, arguments: *Arguments, arg_idx: u32, res: Parser.Result, arg_start: TokenIndex, node: Tree.Node, p: *Parser) !bool
  fn diagnoseAlignment(attr: Tag, arguments: *Arguments, arg_idx: u32, res: Parser.Result, arg_start: TokenIndex, p: *Parser) !bool
  fn diagnoseIdent(attr: Tag, arguments: *Arguments, ident: TokenIndex, p: *Parser) !bool
  fn fromString(kind: Kind, namespace: ?[]const u8, name: []const u8) ?Tag
  fn initArguments(tag: Tag, name_tok: TokenIndex) Arguments
  fn maxArgCount(attr: Tag) u32
  fn normalize(name: []const u8) []const u8
  fn requiredArgCount(attr: Tag) u32
  fn visibilityFromString(s: []const u8) ?std.builtin.SymbolVisibility
  fn wantsAlignment(attr: Tag, idx: usize) bool
  fn wantsIdentEnum(attr: Tag) bool
}

compiler.aro.aro.Builtins.aarch64 {
  const NameBuf = struct
  const Tag = enum(u16) {    _AddressOfReturnAddres
  const data = blk:
  const longest_name = 3
  const shortest_name = 
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.amdgcn {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_amdgcn_alignbi
  const data = blk:
  const longest_name = 5
  const shortest_name = 2
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.arm {
  const NameBuf = struct
  const Tag = enum(u16) {    _BitScanForwar
  const data = blk:
  const longest_name = 3
  const shortest_name = 
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.bpf {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_btf_type_i
  const data = blk:
  const longest_name = 2
  const shortest_name = 2
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.common {
  const NameBuf = struct
  const Tag = enum(u16) {    _Block_object_assig
  const data = blk:
  const longest_name = 4
  const shortest_name = 
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.eval {
  fn eval(expanded: Builtins.Expanded, p: *Parser, args: []const Tree.Node.Index) !Value
}

compiler.aro.aro.Builtins.hexagon {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_HEXAGON_A2_ab
  const data = blk:
  const longest_name = 4
  const shortest_name = 1
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.loongarch {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_lasx_vext2xv_d_
  const data = blk:
  const longest_name = 3
  const shortest_name = 1
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.mips {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_mips_absq_s_p
  const data = blk:
  const longest_name = 3
  const shortest_name = 1
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.nvptx {
  const NameBuf = struct
  const Tag = enum(u16) {    __bmma_m8n8k128_ld_a_b
  const data = blk:
  const longest_name = 4
  const shortest_name = 1
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.powerpc {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_addf128_round_to_od
  const data = blk:
  const longest_name = 3
  const shortest_name = 1
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.properties {
  const Attributes = packed struct
  const Header = enum
  const Language = enum
  fn isVarArgs(param_str: [*:0]const u8) bool
}

compiler.aro.aro.Builtins.riscv {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_riscv_aes32ds
  const data = blk:
  const longest_name = 2
  const shortest_name = 2
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.s390x {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_non_tx_stor
  const data = blk:
  const longest_name = 2
  const shortest_name = 1
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.TypeDescription {
  const Component = union(enum)
  const ComponentIterator = struct
  const TypeIterator = struct
}

compiler.aro.aro.Builtins.ve {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_ve_vl_andm_MM
  const data = blk:
  const longest_name = 3
  const shortest_name = 2
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.x86 {
  const NameBuf = struct
  const Tag = enum(u16) {    _AddressOfReturnAddres
  const data = blk:
  const longest_name = 4
  const shortest_name = 
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.x86_64 {
  const NameBuf = struct
  const Tag = enum(u16) {    _BitScanForward6
  const data = blk:
  const longest_name = 4
  const shortest_name = 
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins.xcore {
  const NameBuf = struct
  const Tag = enum(u16) {    __builtin_bitre
  const data = blk:
  const longest_name = 1
  const shortest_name = 1
  fn exists(name: []const u8) bool
  fn findInList(first_child_index: u16, char: u8) ?u16
  fn fromName(name: []const u8) ?Properties
  fn fromTag(tag: Tag) Properties
  fn nameFromTag(tag: Tag) NameBuf
  fn nameFromTagIntoBuf(tag: Tag, name_buf: []u8) []u8
  fn nameFromUniqueIndex(index: u16, buf: []u8) []u8
  fn tagFromName(name: []const u8) ?Tag
  fn uniqueIndex(name: []const u8) ?u16
  fn with(comptime Properties: type) type
}

compiler.aro.aro.Builtins {
  const Expanded = struct
  const FromName = struct
  const Tag = union(enum)
  fn deinit(b: *Builtins, gpa: std.mem.Allocator) void
  fn fromName(comp: *Compilation, name: []const u8) ?FromName
  fn getOrCreate(b: *Builtins, comp: *Compilation, name: []const u8) !?Expanded
  fn lookup(b: *const Builtins, name: []const u8) Expanded
}

compiler.aro.aro.char_info.identifier_tables {
  const chunk = 6
  const leaf: [7584]u8 align(64) = 
  const trie_continue: [1793]u8 align(8) = 
  const trie_start: [402]u8 align(8) = 
}

compiler.aro.aro.char_info {
  const CanonicalCombiningClass = enum(u8)
  const NfcQuickCheck = enum { no, maybe, yes 
  fn getCanonicalClass(codepoint: u21) CanonicalCombiningClass
  fn homoglyph(codepoint: u21) ?[]const u8
  fn isC11DisallowedInitialIdChar(codepoint: u21) bool
  fn isC11IdChar(codepoint: u21) bool
  fn isC99DisallowedInitialIDChar(codepoint: u21) bool
  fn isC99IdChar(codepoint: u21) bool
  fn isInvisible(codepoint: u21) bool
  fn isNormalized(codepoint: u21) NfcQuickCheck
  fn isXidContinue(c: u21) bool
  fn isXidStart(c: u21) bool
}

compiler.aro.aro.CodeGen {
  fn genIr(tree: *const Tree) Compilation.Error!Ir
}

compiler.aro.aro.Compilation {
  const AddSourceError = Error || error{FileTooBig
  const CharUnitSize = enum(u32)
  const Diagnostic = struct
  const Environment = struct
  const Error = erro
  const Include = struct
  const IncludeType = enum
  const InitOptions = struct
  const SystemDefinesMode = enum
  const WhichInclude = enum
  const bit_int_max_bits = std.math.maxInt(u16
  fn addDefaultPragmaHandlers(comp: *Compilation) Allocator.Error!void
  fn addPragmaHandler(comp: *Compilation, name: []const u8, handler: *Pragma) Allocator.Error!void
  fn addSourceAlias(comp: *Compilation, source: Source.Id, new_path: []const u8, new_kind: Source.Kind) !Source.Id
  fn addSourceFromBuffer(comp: *Compilation, path: []const u8, buf: []const u8) AddSourceError!Source
  fn addSourceFromFile(comp: *Compilation, file: std.Io.File, path: []const u8, kind: Source.Kind) !Source
  fn addSourceFromOwnedBuffer(comp: *Compilation, path: []const u8, buf: []u8, kind: Source.Kind) !Source
  fn addSourceFromPath(comp: *Compilation, path: []const u8) !Source
  fn deinit(comp: *Compilation) void
  fn findEmbed(comp: *Compilation, filename: []const u8, includer_token_source: Source.Id, include_type: IncludeType, limit: Io.Limit, opt_dep_file: ?*DepFile) !?[]u8
  fn findInclude(comp: *Compilation, filename: []const u8, includer_token: Token, include_type: IncludeType, which: WhichInclude) Compilation.Error!?Source
  fn fixedEnumTagType(comp: *const Compilation) ?QualType
  fn float80Type(comp: *const Compilation) ?QualType
  fn generateBuiltinMacros(comp: *Compilation, system_defines_mode: SystemDefinesMode) AddSourceError!Source
  fn getCharSignedness(comp: *const Compilation) std.builtin.Signedness
  fn getPragma(comp: *Compilation, name: []const u8) ?*Pragma
  fn getSource(comp: *const Compilation, id: Source.Id) Source
  fn getSourceMTimeUncached(comp: *const Compilation, source_id: Source.Id) ?u64
  fn hasClangStyleBoundsSafety(comp: *const Compilation) bool
  fn hasFloat128(comp: *const Compilation) bool
  fn hasHalfPrecisionFloatABI(comp: *const Compilation) bool
  fn hasInclude(comp: *Compilation, filename: []const u8, includer_token_source: Source.Id, include_type: IncludeType, which: WhichInclude, opt_dep_file: ?*DepFile) Compilation.Error!bool
  fn init(options: InitOptions) !Compilation
  fn initSearchPath(comp: *Compilation, includes: []const Include, verbose: bool) !void
  fn intLeastN(comp: *const Compilation, bits: usize, signedness: std.builtin.Signedness) QualType
  fn internString(comp: *Compilation, str: []const u8) !StringInterner.StringId
  fn isTargetAbi(comp: *const Compilation, query: []const u8) bool
  fn isTargetArch(comp: *const Compilation, query: []const u8) bool
  fn isTargetOs(comp: *const Compilation, query: []const u8) bool
  fn isTargetVariantEnvironment(comp: *const Compilation, query: []const u8) bool
  fn isTargetVariantOs(comp: *const Compilation, query: []const u8) bool
  fn isTargetVendor(comp: *const Compilation, query: []const u8) bool
  fn locSlice(comp: *const Compilation, loc: Source.Location) []const u8
  fn maxArrayBytes(comp: *const Compilation) u64
  fn nextLargestIntSameSign(comp: *const Compilation, qt: QualType) ?QualType
  fn pragmaEvent(comp: *Compilation, event: PragmaEvent) void
  fn wcharMax(comp: *const Compilation) u32
}

compiler.aro.aro.DepFile {
  const Format = enum { make, nmake 
  fn addDependency(d: *DepFile, gpa: Allocator, path: []const u8) !void
  fn addDependencyDupe(d: *DepFile, gpa: Allocator, arena: Allocator, path: []const u8) !void
  fn deinit(d: *DepFile, gpa: Allocator) void
  fn write(d: *const DepFile, w: *std.Io.Writer) std.Io.Writer.Error!void
}

compiler.aro.aro.Diagnostics {
  const Message = struct
  const Option = enum
  const State = struct
  fn add(d: *Diagnostics, msg: Message) Compilation.Error!void
  fn addWithLocation(d: *Diagnostics, comp: *const Compilation, msg: Message, expansion_locs: []const Source.Location, note_msg_loc: bool) Compilation.Error!void
  fn deinit(d: *Diagnostics) void
  fn effectiveKind(d: *Diagnostics, message: anytype) Message.Kind
  fn formatArgs(w: *std.Io.Writer, fmt: []const u8, args: anytype) std.Io.Writer.Error!void
  fn formatInt(w: *std.Io.Writer, fmt: []const u8, int: anytype) std.Io.Writer.Error!usize
  fn formatString(w: *std.Io.Writer, fmt: []const u8, str: []const u8) std.Io.Writer.Error!usize
  fn set(d: *Diagnostics, name: []const u8, to: Message.Kind) Compilation.Error!void
  fn templateIndex(w: *std.Io.Writer, fmt: []const u8, template: []const u8) std.Io.Writer.Error!usize
  fn warningExists(name: []const u8) bool
}

compiler.aro.aro.Driver.Distro {
  const HashStyle = enum
  const Tag = enum
  fn detect(target: *const Target, tc: *const Toolchain) Tag
}

compiler.aro.aro.Driver.GCCDetector {
  fn appendToolPath(self: *const GCCDetector, tc: *Toolchain) !void
  fn deinit(self: *GCCDetector) void
  fn discover(self: *GCCDetector, tc: *Toolchain) !void
}

compiler.aro.aro.Driver.GCCVersion {
  fn isLessThan(self: GCCVersion, rhs_major: i32, rhs_minor: i32, rhs_patch: i32, rhs_suffix: []const u8) bool
  fn order(a: GCCVersion, b: GCCVersion) Order
  fn parse(text: []const u8) GCCVersion
  fn toUnsigned(self: GCCVersion) u32
}

compiler.aro.aro.Driver.Multilib {
  const Detected = struct
  const Filter = struct
  fn flags(m: *const Multilib) []const []const u8
  fn init(gcc_suffix: []const u8, os_suffix: []const u8, init_flags: []const []const u8) Multilib
}

compiler.aro.aro.Driver {
  const Linker = enum
  const usage
  fn deinit(d: *Driver) void
  fn detectMode(d: *Driver, file: std.Io.File) std.Io.Cancelable!std.Io.Terminal.Mode
  fn err(d: *Driver, fmt: []const u8, args: anytype) Compilation.Error!void
  fn errorDescription(e: anyerror) []const u8
  fn fatal(d: *Driver, comptime fmt: []const u8, args: anytype) error{ FatalError, OutOfMemory }
  fn getDepFileName(d: *Driver, source: Source, buf: *[std.fs.max_name_bytes]u8) Compilation.Error!?[]const u8
  fn getPICMode(d: *Driver, lastpic: []const u8) Compilation.Error!struct { backend.CodeGenOptions.PicLevel, bool }
  fn initDepFile(d: *Driver, source: Source, buf: *[std.fs.max_name_bytes]u8, omit_source: bool) Compilation.Error!?DepFile
  fn invokeLinker(d: *Driver, tc: *Toolchain, comptime fast_exit: bool) Compilation.Error!void
  fn main(d: *Driver, tc: *Toolchain, args: []const []const u8, comptime fast_exit: bool, asm_gen_fn: ?AsmCodeGenFn) (Compilation.Error || std.Io.Cancelable)!void
  fn parseArgs(d: *Driver, stdout: *std.Io.Writer, macro_buf: *std.ArrayList(u8), args: []const []const u8) (Compilation.Error || std.Io.Writer.Error)!bool
  fn printDiagnosticsStats(d: *Driver) void
  fn warn(d: *Driver, fmt: []const u8, args: anytype) Compilation.Error!void
}

compiler.aro.aro.features {
  fn hasExtension(comp: *Compilation, ext: []const u8) bool
  fn hasFeature(comp: *Compilation, ext: []const u8) bool
}

compiler.aro.aro.Hideset {
  const Hideset = @This(
  const Index = enum(u32)
  fn @"union"(self: *Hideset, a: Index, b: Index) !Index
  fn clearAndFree(self: *Hideset) void
  fn clearRetainingCapacity(self: *Hideset) void
  fn contains(self: *const Hideset, list: Index, str: []const u8) bool
  fn deinit(self: *Hideset) void
  fn get(self: *const Hideset, loc: Source.Location) Index
  fn intersection(self: *Hideset, a: Index, b: Index) !Index
  fn prepend(self: *Hideset, loc: Source.Location, tail: Index) !Index
  fn put(self: *Hideset, loc: Source.Location, value: Index) !void
}

compiler.aro.aro.InitList {
  const empty: InitList = 
  fn deinit(il: *InitList, gpa: Allocator) void
  fn find(il: *InitList, gpa: Allocator, index: u64) !*InitList
}

compiler.aro.aro.LangOpts {
  const BoundsSafety = enum
  const Compiler = enum
  const FPEvalMethod = enum(i8)
  const Standard = enum
  fn hasChar8_T(self: *const LangOpts) bool
  fn hasDigraphs(self: *const LangOpts) bool
  fn setCharSignedness(self: *LangOpts, signedness: std.builtin.Signedness) void
  fn setEmulatedCompiler(self: *LangOpts, compiler: Compiler) void
  fn setFpEvalMethod(self: *LangOpts, fp_eval_method: FPEvalMethod) void
  fn setMSExtensions(self: *LangOpts, enabled: bool) void
  fn setStandard(self: *LangOpts, name: []const u8) error{InvalidStandard}!void
}

compiler.aro.aro.Parser.Diagnostic {
  const addr_of_bitfield: Diagnostic = 
  const addr_of_register: Diagnostic = 
  const addr_of_rvalue: Diagnostic = 
  const align_ignored: Diagnostic = 
  const alignas_on_func: Diagnostic = 
  const alignas_on_param: Diagnostic = 
  const alignas_unavailable: Diagnostic = 
  const alignof_expr: Diagnostic = 
  const alloc_align_required_int_param: Diagnostic = 
  const alloc_align_requires_ptr_return: Diagnostic = 
  const anonymous_struct: Diagnostic = 
  const argument_types_differ: Diagnostic = 
  const arr_init_too_long: Diagnostic = 
  const array_address_to_bool: Diagnostic = 
  const array_after: Diagnostic = 
  const array_argument_too_small: Diagnostic = 
  const array_before: Diagnostic = 
  const array_func_elem: Diagnostic = 
  const array_incomplete_elem: Diagnostic = 
  const array_init_str: Diagnostic = 
  const array_not_assignable: Diagnostic = 
  const array_overflow: Diagnostic = 
  const array_qualifiers: Diagnostic = 
  const array_size_non_int: Diagnostic = 
  const array_too_large: Diagnostic = 
  const atomic_address_pointer: Diagnostic = 
  const atomic_address_type: Diagnostic = 
  const atomic_array: Diagnostic = 
  const atomic_atomic: Diagnostic = 
  const atomic_auto: Diagnostic = 
  const atomic_complex: Diagnostic = 
  const atomic_func: Diagnostic = 
  const atomic_incomplete: Diagnostic = 
  const atomic_qualified: Diagnostic = 
  const attribute_arg_invalid: Diagnostic = 
  const attribute_int_out_of_range: Diagnostic = 
  const attribute_not_enough_args: Diagnostic = 
  const attribute_param_out_of_bounds: Diagnostic = 
  const attribute_requires_identifier: Diagnostic = 
  const attribute_requires_pointer: Diagnostic = 
  const attribute_requires_string: Diagnostic = 
  const attribute_todo: Diagnostic = 
  const attribute_too_many_args: Diagnostic = 
  const auto_on_global: Diagnostic = 
  const auto_type_array: Diagnostic = 
  const auto_type_extension: Diagnostic = 
  const auto_type_from_bitfield: Diagnostic = 
  const auto_type_not_allowed: Diagnostic = 
  const auto_type_requires_initializer: Diagnostic = 
  const auto_type_requires_plain_declarator: Diagnostic = 
  const auto_type_requires_single_declarator: Diagnostic = 
  const auto_type_self_initialized: Diagnostic = 
  const auto_type_with_init_list: Diagnostic = 
  const binary_integer_literal: Diagnostic = 
  const bit_int: Diagnostic = 
  const bit_int_vec_not_pow2: Diagnostic = 
  const bit_int_vec_too_small: Diagnostic = 
  const bitfield_too_big: Diagnostic = 
  const bitint_suffix: Diagnostic = 
  const break_not_in_loop_or_switch: Diagnostic = 
  const builtin_choose_cond: Diagnostic = 
  const builtin_must_be_called: Diagnostic = 
  const builtin_unused: Diagnostic = 
  const c23_auto_array: Diagnostic = 
  const c23_auto_not_allowed: Diagnostic = 
  const c23_auto_requires_initializer: Diagnostic = 
  const c23_auto_single_declarator: Diagnostic = 
  const c23_auto_with_init_list: Diagnostic = 
  const c99_compat: Diagnostic = 
  const callconv_non_func: Diagnostic = 
  const callconv_not_supported: Diagnostic = 
  const callee_with_static_array: Diagnostic = 
  const cannot_apply_attribute_to_statement: Diagnostic = 
  const cannot_combine_spec: Diagnostic = 
  const cannot_combine_spec_qt: Diagnostic = 
  const cannot_combine_with_typeof: Diagnostic = 
  const case_not_in_switch: Diagnostic = 
  const case_val_unavailable: Diagnostic = 
  const cast_to_incomplete_type: Diagnostic = 
  const cast_to_same_type: Diagnostic = 
  const cast_to_smaller_int: Diagnostic = 
  const closing_paren: Diagnostic = 
  const comparison_distinct_ptr: Diagnostic = 
  const comparison_ptr_int: Diagnostic = 
  const complex_component_init: Diagnostic = 
  const complex_conj: Diagnostic = 
  const complex_int: Diagnostic = 
  const complex_prefix_postfix_op: Diagnostic = 
  const cond_expr_type: Diagnostic = 
  const conflicting_nullability: Diagnostic = 
  const const_decl_folded: Diagnostic = 
  const const_decl_folded_vla: Diagnostic = 
  const const_var_assignment: Diagnostic = 
  const constexpr_requires_const: Diagnostic = 
  const continue_not_in_loop: Diagnostic = 
  const convertvector_arg: Diagnostic = 
  const convertvector_size: Diagnostic = 
  const declarator_name_tok: Diagnostic = 
  const declared_const_here: Diagnostic = 
  const declspec_attr_not_supported: Diagnostic = 
  const declspec_not_allowed_after_declarator: Diagnostic = 
  const declspec_not_enabled: Diagnostic = 
  const def_no_proto_deprecated: Diagnostic = 
  const deprecated_declarations: Diagnostic = 
  const deprecated_note: Diagnostic = 
  const deref_incomplete_ty_ptr: Diagnostic = 
  const designated_init_invalid: Diagnostic = 
  const designated_init_needed: Diagnostic = 
  const division_by_zero: Diagnostic = 
  const division_by_zero_macro: Diagnostic = 
  const dollar_in_identifier_extension: Diagnostic = 
  const dollars_in_identifiers: Diagnostic = 
  const duplicate_asm_qual: Diagnostic = 
  const duplicate_decl_spec: Diagnostic = 
  const duplicate_label: Diagnostic = 
  const duplicate_member: Diagnostic = 
  const duplicate_nullability: Diagnostic = 
  const duplicate_switch_case: Diagnostic = 
  const elementwise_type: Diagnostic = 
  const empty_aggregate_init_braces: Diagnostic = 
  const empty_case_range: Diagnostic = 
  const empty_char_literal_error: Diagnostic = 
  const empty_enum: Diagnostic = 
  const empty_if_body: Diagnostic = 
  const empty_if_body_note: Diagnostic = 
  const empty_initializer: Diagnostic = 
  const empty_record: Diagnostic = 
  const empty_record_size: Diagnostic = 
  const empty_translation_unit: Diagnostic = 
  const enum_atomic_ignored: Diagnostic = 
  const enum_different_explicit_ty: Diagnostic = 
  const enum_fixed: Diagnostic = 
  const enum_forward_declaration: Diagnostic = 
  const enum_invalid_underlying_type: Diagnostic = 
  const enum_not_representable: Diagnostic = 
  const enum_not_representable_fixed: Diagnostic = 
  const enum_prev_fixed: Diagnostic = 
  const enum_prev_nonfixed: Diagnostic = 
  const enum_qualifiers_ignored: Diagnostic = 
  const enum_too_large: Diagnostic = 
  const enum_val_unavailable: Diagnostic = 
  const enumerator_overflow: Diagnostic = 
  const enumerator_too_large: Diagnostic = 
  const enumerator_too_small: Diagnostic = 
  const error_attribute: Diagnostic = 
  const excess_array_init: Diagnostic = 
  const excess_scalar_init: Diagnostic = 
  const excess_str_init: Diagnostic = 
  const excess_struct_init: Diagnostic = 
  const excess_union_init: Diagnostic = 
  const excess_vector_init: Diagnostic = 
  const expected_arguments: Diagnostic = 
  const expected_arguments_old: Diagnostic = 
  const expected_at_least_arguments: Diagnostic = 
  const expected_eof: Diagnostic = 
  const expected_expr: Diagnostic = 
  const expected_external_decl: Diagnostic = 
  const expected_fn_body: Diagnostic = 
  const expected_ident_or_l_paren: Diagnostic = 
  const expected_identifier: Diagnostic = 
  const expected_integer_constant_expr: Diagnostic = 
  const expected_invalid: Diagnostic = 
  const expected_member_name: Diagnostic = 
  const expected_param_decl: Diagnostic = 
  const expected_parens_around_typename: Diagnostic = 
  const expected_record_ty: Diagnostic = 
  const expected_stmt: Diagnostic = 
  const expected_str_literal: Diagnostic = 
  const expected_str_literal_in: Diagnostic = 
  const expected_token: Diagnostic = 
  const expected_type: Diagnostic = 
  const exponent_has_no_digits: Diagnostic = 
  const extension_token_used: Diagnostic = 
  const extern_initializer: Diagnostic = 
  const extra_semi: Diagnostic = 
  const field_incomplete_ty: Diagnostic = 
  const flexible_in_empty: Diagnostic = 
  const flexible_in_empty_msvc: Diagnostic = 
  const flexible_in_union: Diagnostic = 
  const flexible_in_union_msvc: Diagnostic = 
  const flexible_non_final: Diagnostic = 
  const float_literal_in_pp_expr: Diagnostic = 
  const float_out_of_range: Diagnostic = 
  const float_overflow_conversion: Diagnostic = 
  const float_to_int: Diagnostic = 
  const float_value_changed: Diagnostic = 
  const float_zero_conversion: Diagnostic = 
  const forward_declaration_here: Diagnostic = 
  const func_cannot_return_array: Diagnostic = 
  const func_cannot_return_func: Diagnostic = 
  const func_does_not_return: Diagnostic = 
  const func_field: Diagnostic = 
  const func_init: Diagnostic = 
  const func_not_in_root: Diagnostic = 
  const func_should_return: Diagnostic = 
  const func_spec_non_func: Diagnostic = 
  const generic_array_type: Diagnostic = 
  const generic_duplicate: Diagnostic = 
  const generic_duplicate_default: Diagnostic = 
  const generic_duplicate_here: Diagnostic = 
  const generic_func_type: Diagnostic = 
  const generic_no_match: Diagnostic = 
  const generic_qual_type: Diagnostic = 
  const gnu_asm_disabled: Diagnostic = 
  const gnu_imaginary_constant: Diagnostic = 
  const gnu_label_as_value: Diagnostic = 
  const gnu_missing_eq_designator: Diagnostic = 
  const gnu_pointer_arith: Diagnostic = 
  const gnu_statement_expression: Diagnostic = 
  const gnu_switch_range: Diagnostic = 
  const gnu_union_cast: Diagnostic = 
  const hex_floating_constant_requires_exponent: Diagnostic = 
  const ident_or_l_brace: Diagnostic = 
  const identifier_not_normalized: Diagnostic = 
  const ignore_always_inline: Diagnostic = 
  const ignore_cold: Diagnostic = 
  const ignore_common: Diagnostic = 
  const ignore_hot: Diagnostic = 
  const ignore_nocommon: Diagnostic = 
  const ignore_noinline: Diagnostic = 
  const ignored_attribute: Diagnostic = 
  const ignored_record_attr: Diagnostic = 
  const illegal_initializer: Diagnostic = 
  const illegal_storage_on_func: Diagnostic = 
  const implicit_builtin: Diagnostic = 
  const implicit_builtin_header_note: Diagnostic = 
  const implicit_func_decl: Diagnostic = 
  const implicit_int_to_ptr: Diagnostic = 
  const implicit_ptr_to_int: Diagnostic = 
  const implicitly_unsigned_literal: Diagnostic = 
  const incompatible_arg: Diagnostic = 
  const incompatible_array_init: Diagnostic = 
  const incompatible_assign: Diagnostic = 
  const incompatible_init: Diagnostic = 
  const incompatible_pointers: Diagnostic = 
  const incompatible_ptr_arg: Diagnostic = 
  const incompatible_ptr_arg_sign: Diagnostic = 
  const incompatible_ptr_assign: Diagnostic = 
  const incompatible_ptr_assign_sign: Diagnostic = 
  const incompatible_ptr_init: Diagnostic = 
  const incompatible_ptr_init_sign: Diagnostic = 
  const incompatible_return: Diagnostic = 
  const incompatible_return_sign: Diagnostic = 
  const incompatible_va_arg: Diagnostic = 
  const incompatible_vec_types: Diagnostic = 
  const indirection_ptr: Diagnostic = 
  const initializer_overrides: Diagnostic = 
  const int_literal_too_big: Diagnostic = 
  const int_value_changed: Diagnostic = 
  const invalid_alignof: Diagnostic = 
  const invalid_argument_un: Diagnostic = 
  const invalid_array_designator: Diagnostic = 
  const invalid_asm_output: Diagnostic = 
  const invalid_asm_str: Diagnostic = 
  const invalid_attribute_location: Diagnostic = 
  const invalid_bin_types: Diagnostic = 
  const invalid_binary_digit: Diagnostic = 
  const invalid_cast_operand_type: Diagnostic = 
  const invalid_cast_to_float: Diagnostic = 
  const invalid_cast_to_pointer: Diagnostic = 
  const invalid_cast_type: Diagnostic = 
  const invalid_compound_literal_storage_class: Diagnostic = 
  const invalid_computed_goto: Diagnostic = 
  const invalid_fallthrough: Diagnostic = 
  const invalid_field_designator: Diagnostic = 
  const invalid_float_suffix: Diagnostic = 
  const invalid_identifier_start_char: Diagnostic = 
  const invalid_imag: Diagnostic = 
  const invalid_index: Diagnostic = 
  const invalid_int_suffix: Diagnostic = 
  const invalid_noreturn: Diagnostic = 
  const invalid_nullability: Diagnostic = 
  const invalid_object_cast: Diagnostic = 
  const invalid_octal_digit: Diagnostic = 
  const invalid_old_style_params: Diagnostic = 
  const invalid_preproc_operator: Diagnostic = 
  const invalid_real: Diagnostic = 
  const invalid_sizeof: Diagnostic = 
  const invalid_static_star: Diagnostic = 
  const invalid_storage_on_param: Diagnostic = 
  const invalid_subscript: Diagnostic = 
  const invalid_union_cast: Diagnostic = 
  const invalid_utf8: Diagnostic = 
  const invalid_vec_conversion: Diagnostic = 
  const invalid_vec_conversion_int: Diagnostic = 
  const invalid_vec_conversion_scalar: Diagnostic = 
  const invalid_vec_elem_ty: Diagnostic = 
  const invalid_void_param: Diagnostic = 
  const label_compound_end: Diagnostic = 
  const local_variable_attribute: Diagnostic = 
  const main_return_type: Diagnostic = 
  const maximum_alignment: Diagnostic = 
  const meaningless_asm_qual: Diagnostic = 
  const member_expr_atomic: Diagnostic = 
  const member_expr_not_ptr: Diagnostic = 
  const member_expr_ptr: Diagnostic = 
  const minimum_alignment: Diagnostic = 
  const missing_declaration: Diagnostic = 
  const missing_semicolon: Diagnostic = 
  const missing_type_specifier: Diagnostic = 
  const missing_type_specifier_c23: Diagnostic = 
  const mixing_decimal_floats: Diagnostic = 
  const multiple_bounds_annotations: Diagnostic = 
  const multiple_default: Diagnostic = 
  const multiple_storage_class: Diagnostic = 
  const must_use_enum: Diagnostic = 
  const must_use_struct: Diagnostic = 
  const must_use_union: Diagnostic = 
  const negative_alignment: Diagnostic = 
  const negative_array_designator: Diagnostic = 
  const negative_array_size: Diagnostic = 
  const negative_bitwidth: Diagnostic = 
  const negative_shift_count: Diagnostic = 
  const no_such_field_designator: Diagnostic = 
  const no_such_member: Diagnostic = 
  const nodiscard_unused: Diagnostic = 
  const non_int_bitfield: Diagnostic = 
  const non_null_argument: Diagnostic = 
  const non_object_not_assignable: Diagnostic = 
  const non_pow2_align: Diagnostic = 
  const non_string_ignored: Diagnostic = 
  const nontemporal_address_pointer: Diagnostic = 
  const nontemporal_address_type: Diagnostic = 
  const not_assignable: Diagnostic = 
  const not_callable: Diagnostic = 
  const not_floating_type: Diagnostic = 
  const nullability_extension: Diagnostic = 
  const offsetof_array: Diagnostic = 
  const offsetof_incomplete: Diagnostic = 
  const offsetof_ty: Diagnostic = 
  const old_style_flexible_struct: Diagnostic = 
  const omitting_parameter_name: Diagnostic = 
  const oob_array_designator: Diagnostic = 
  const out_of_scope_use: Diagnostic = 
  const overflow: Diagnostic = 
  const overflow_builtin_requires_int: Diagnostic = 
  const overflow_result_requires_ptr: Diagnostic = 
  const packed_member_address: Diagnostic = 
  const param_before_var_args: Diagnostic = 
  const param_not_declared: Diagnostic = 
  const parameter_here: Diagnostic = 
  const parameter_incomplete_ty: Diagnostic = 
  const parameter_missing: Diagnostic = 
  const passing_args_to_kr: Diagnostic = 
  const plain_complex: Diagnostic = 
  const pointer_arith_single: Diagnostic = 
  const pointer_arith_void: Diagnostic = 
  const pointer_bounds_declared_here: Diagnostic = 
  const pointer_mismatch: Diagnostic = 
  const pre_c23_compat: Diagnostic = 
  const predefined_top_level: Diagnostic = 
  const previous_case: Diagnostic = 
  const previous_declaration: Diagnostic = 
  const previous_definition: Diagnostic = 
  const previous_initializer: Diagnostic = 
  const previous_label: Diagnostic = 
  const ptr_arg_discards_quals: Diagnostic = 
  const ptr_arithmetic_incomplete: Diagnostic = 
  const ptr_assign_discards_quals: Diagnostic = 
  const ptr_init_discards_quals: Diagnostic = 
  const ptr_ret_discards_quals: Diagnostic = 
  const qual_cast: Diagnostic = 
  const qual_on_ret_type: Diagnostic = 
  const qualifier_non_outermost_array: Diagnostic = 
  const record_too_large: Diagnostic = 
  const redefinition: Diagnostic = 
  const redefinition_different_sym: Diagnostic = 
  const redefinition_incompatible: Diagnostic = 
  const redefinition_of_parameter: Diagnostic = 
  const redefinition_of_typedef: Diagnostic = 
  const redundant_bounds_annotation: Diagnostic = 
  const register_on_global: Diagnostic = 
  const register_on_global_compound_literal: Diagnostic = 
  const restrict_non_pointer: Diagnostic = 
  const shufflevector_arg: Diagnostic = 
  const shufflevector_index_too_big: Diagnostic = 
  const shufflevector_negative_index: Diagnostic = 
  const shufflevector_same_type: Diagnostic = 
  const sign_conversion: Diagnostic = 
  const signed_bit_int_too_big: Diagnostic = 
  const signed_bit_int_too_small: Diagnostic = 
  const single_requires_zero_index: Diagnostic = 
  const sizeof_array_arg: Diagnostic = 
  const sizeof_returns_zero: Diagnostic = 
  const star_non_param: Diagnostic = 
  const statement_int: Diagnostic = 
  const statement_scalar: Diagnostic = 
  const static_assert_failure: Diagnostic = 
  const static_assert_failure_message: Diagnostic = 
  const static_assert_missing_message: Diagnostic = 
  const static_assert_not_constant: Diagnostic = 
  const static_func_not_global: Diagnostic = 
  const static_non_outermost_array: Diagnostic = 
  const static_non_param: Diagnostic = 
  const stmt_expr_not_allowed_file_scope: Diagnostic = 
  const str_init_too_long: Diagnostic = 
  const string_literal_to_bool: Diagnostic = 
  const subtract_pointers_zero_elem_size: Diagnostic = 
  const suggest_pointer_for_invalid_fp16: Diagnostic = 
  const tentative_array: Diagnostic = 
  const tentative_definition_incomplete: Diagnostic = 
  const threadlocal_non_var: Diagnostic = 
  const to_match_brace: Diagnostic = 
  const to_match_bracket: Diagnostic = 
  const to_match_paren: Diagnostic = 
  const todo: Diagnostic = 
  const too_big_shift_count: Diagnostic = 
  const too_many_scalar_init_braces: Diagnostic = 
  const transparent_union_one_field: Diagnostic = 
  const transparent_union_size: Diagnostic = 
  const transparent_union_size_note: Diagnostic = 
  const transparent_union_wrong_type: Diagnostic = 
  const type_not_supported_on_target: Diagnostic = 
  const u8_char_lit: Diagnostic = 
  const unavailable: Diagnostic = 
  const unavailable_note: Diagnostic = 
  const unbound_vla: Diagnostic = 
  const undeclared_identifier: Diagnostic = 
  const undeclared_label: Diagnostic = 
  const unexpected_character: Diagnostic = 
  const unexpected_type_name: Diagnostic = 
  const unicode_homoglyph: Diagnostic = 
  const unicode_zero_width: Diagnostic = 
  const unknown_attr_enum: Diagnostic = 
  const unknown_attribute: Diagnostic = 
  const unknown_builtin: Diagnostic = 
  const unknown_type_name: Diagnostic = 
  const unreachable_code: Diagnostic = 
  const unsigned_bit_int_too_big: Diagnostic = 
  const unsigned_bit_int_too_small: Diagnostic = 
  const unsupported_str_cat: Diagnostic = 
  const unterminated_char_literal_error: Diagnostic = 
  const unused_value: Diagnostic = 
  const useless_static: Diagnostic = 
  const va_func_fixed_args: Diagnostic = 
  const va_func_not_always_inline: Diagnostic = 
  const va_func_not_in_func: Diagnostic = 
  const va_pack_non_call: Diagnostic = 
  const va_pack_non_final_arg: Diagnostic = 
  const va_pack_non_variadic_arg: Diagnostic = 
  const va_pack_non_variadic_call: Diagnostic = 
  const va_start_not_last_param: Diagnostic = 
  const variable_incomplete_ty: Diagnostic = 
  const variable_len_array_file_scope: Diagnostic = 
  const vec_size_not_multiple: Diagnostic = 
  const vla: Diagnostic = 
  const vla_field: Diagnostic = 
  const vla_init: Diagnostic = 
  const void_func_returns_value: Diagnostic = 
  const void_must_be_first_param: Diagnostic = 
  const void_only_param: Diagnostic = 
  const void_param_qualified: Diagnostic = 
  const warn_unused_result: Diagnostic = 
  const warning_attribute: Diagnostic = 
  const wrong_tag: Diagnostic = 
  const zero_length_array: Diagnostic = 
  const zero_width_named_field: Diagnostic = 
}

compiler.aro.aro.Parser {
  const DeclSpec = struct
  const Diagnostic = @import("Parser/Diagnostic.zig"
  const Error = Compilation.Error || error{ParsingFailed
  const Result = struct
  fn err(p: *Parser, tok_i: TokenIndex, diagnostic: Diagnostic, args: anytype) Compilation.Error!void
  fn errValueChanged(p: *Parser, tok_i: TokenIndex, diagnostic: Diagnostic, res: Result, old_val: Value, int_qt: QualType) !void
  fn getDecayedStringLiteral(p: *Parser, node: Node.Index) ?Value
  fn isAddressOfStringLiteral(p: *Parser, node: Node.Index) bool
  fn macroExpr(p: *Parser) Compilation.Error!bool
  fn parse(pp: *Preprocessor) Compilation.Error!Tree
  fn parseNumberToken(p: *Parser, tok_i: TokenIndex) !Result
  fn removeNull(p: *Parser, str: Value) !Value
  fn setTentativeDeclDefinition(p: *Parser, tentative_decl: Node.Index, definition: Node.Index) void
  fn todo(p: *Parser, msg: []const u8) Error
  fn tokSlice(p: *Parser, tok: TokenIndex) []const u8
}

compiler.aro.aro.Pragma {
  const Diagnostic = struct
  const Error = Compilation.Error || error{ UnknownPragma, StopPreprocessing 
  const do_nothing: Pragma = 
  fn err(pp: *Preprocessor, tok_i: TokenIndex, diagnostic: Diagnostic, args: anytype) Compilation.Error!void
  fn parserCB(self: *Pragma, p: *Parser, start_idx: TokenIndex) Compilation.Error!void
  fn pasteTokens(pp: *Preprocessor, start_idx: TokenIndex) ![]const u8
  fn preprocessorCB(self: *Pragma, pp: *Preprocessor, start_idx: TokenIndex) Error!void
  fn shouldExpandTokenAtIndex(self: *const Pragma, idx: TokenIndex) bool
  fn shouldPreserveTokens(self: *Pragma, pp: *Preprocessor, start_idx: TokenIndex) bool
}

compiler.aro.aro.pragmas.gcc {
  fn init(allocator: mem.Allocator) !*Pragma
}

compiler.aro.aro.pragmas.message {
  fn init(allocator: mem.Allocator) !*Pragma
}

compiler.aro.aro.pragmas.once {
  fn init(allocator: mem.Allocator) !*Pragma
}

compiler.aro.aro.pragmas.pack {
  fn init(allocator: mem.Allocator) !*Pragma
}

compiler.aro.aro.Preprocessor.Diagnostic {
  const base_file_is_clang_extension: Diagnostic = 
  const builtin_macro_redefined: Diagnostic = 
  const builtin_missing_r_paren: Diagnostic = 
  const cannot_convert_to_identifier: Diagnostic = 
  const closing_paren: Diagnostic = 
  const comma_deletion_va_args: Diagnostic = 
  const date_time: Diagnostic = 
  const defined_as_macro_name: Diagnostic = 
  const duplicate_embed_param: Diagnostic = 
  const elif_after_else: Diagnostic = 
  const elif_without_if: Diagnostic = 
  const elifdef_after_else: Diagnostic = 
  const elifdef_without_if: Diagnostic = 
  const elifndef_after_else: Diagnostic = 
  const elifndef_without_if: Diagnostic = 
  const else_after_else: Diagnostic = 
  const else_without_if: Diagnostic = 
  const empty_char_literal_warning: Diagnostic = 
  const empty_filename: Diagnostic = 
  const endif_without_if: Diagnostic = 
  const error_directive: Diagnostic = 
  const expansion_to_defined_func: Diagnostic = 
  const expansion_to_defined_obj: Diagnostic = 
  const expected_arguments: Diagnostic = 
  const expected_at_least_arguments: Diagnostic = 
  const expected_comma_param_list: Diagnostic = 
  const expected_filename: Diagnostic = 
  const expected_identifier: Diagnostic = 
  const expected_str_literal_in: Diagnostic = 
  const expected_value_in_expr: Diagnostic = 
  const extra_tokens_directive_end: Diagnostic = 
  const feature_check_requires_identifier: Diagnostic = 
  const file_name_is_clang_extension: Diagnostic = 
  const fn_macro_undefined: Diagnostic = 
  const gnu_va_macro: Diagnostic = 
  const hash_hash_at_end: Diagnostic = 
  const hash_hash_at_start: Diagnostic = 
  const hash_not_followed_param: Diagnostic = 
  const header_str_closing: Diagnostic = 
  const header_str_match: Diagnostic = 
  const include_level_is_clang_extension: Diagnostic = 
  const include_next: Diagnostic = 
  const include_next_outside_header: Diagnostic = 
  const incomplete_ucn: Diagnostic = 
  const invalid_pp_stringify_escape: Diagnostic = 
  const invalid_preproc_expr_start: Diagnostic = 
  const invalid_preproc_operator: Diagnostic = 
  const invalid_preprocessing_directive: Diagnostic = 
  const invalid_source_epoch: Diagnostic = 
  const invalid_token_param_list: Diagnostic = 
  const keyword_macro: Diagnostic = 
  const line_invalid_filename: Diagnostic = 
  const line_invalid_flag: Diagnostic = 
  const line_invalid_number: Diagnostic = 
  const line_simple_digit: Diagnostic = 
  const macro_name_missing: Diagnostic = 
  const macro_name_must_be_identifier: Diagnostic = 
  const macro_redefined: Diagnostic = 
  const malformed_embed_limit: Diagnostic = 
  const malformed_embed_param: Diagnostic = 
  const malformed_warning_check: Diagnostic = 
  const missing_lparen_after_builtin: Diagnostic = 
  const missing_paren_param_list: Diagnostic = 
  const newline_eof: Diagnostic = 
  const no_argument_variadic_macro: Diagnostic = 
  const pasting_formed_invalid: Diagnostic = 
  const poisoned_identifier: Diagnostic = 
  const pragma_once_in_main_file: Diagnostic = 
  const pragma_operator_string_literal: Diagnostic = 
  const previous_definition: Diagnostic = 
  const string_literal_in_pp_expr: Diagnostic = 
  const to_match_paren: Diagnostic = 
  const too_many_includes: Diagnostic = 
  const undefined_macro: Diagnostic = 
  const unknown_pragma: Diagnostic = 
  const unsupported_embed_param: Diagnostic = 
  const unterminated_char_literal_warning: Diagnostic = 
  const unterminated_comment: Diagnostic = 
  const unterminated_conditional_directive: Diagnostic = 
  const unterminated_macro_arg_list: Diagnostic = 
  const unterminated_macro_param_list: Diagnostic = 
  const unterminated_string_literal_warning: Diagnostic = 
  const va_opt_lparen: Diagnostic = 
  const va_opt_rparen: Diagnostic = 
  const warning_directive: Diagnostic = 
  const whitespace_after_macro_name: Diagnostic = 
}

compiler.aro.aro.Preprocessor {
  const Diagnostic = @import("Preprocessor/Diagnostic.zig"
  const DumpMode = enum
  const InitOptions = struct
  const Linemarkers = enum
  const Macro = struct
  const parse = Parser.pars
  fn addBuiltinMacros(pp: *Preprocessor) !void
  fn addIncludeResume(pp: *Preprocessor, source: Source.Id, offset: u32, line: u32) !void
  fn addIncludeStart(pp: *Preprocessor, source: Source.Id) !void
  fn addToken(pp: *Preprocessor, tok_arg: TokenWithExpansionLocs) !void
  fn addTokenAssumeCapacity(pp: *Preprocessor, tok: TokenWithExpansionLocs) void
  fn clearBuffers(pp: *Preprocessor) void
  fn deinit(pp: *Preprocessor) void
  fn ensureTotalTokenCapacity(pp: *Preprocessor, capacity: usize) !void
  fn ensureUnusedTokenCapacity(pp: *Preprocessor, capacity: usize) !void
  fn expandedSlice(pp: *const Preprocessor, tok: anytype) []const u8
  fn expansionSlice(pp: *const Preprocessor, tok: Tree.TokenIndex) []Source.Location
  fn init(comp: *Compilation, options: InitOptions) !Preprocessor
  fn preprocess(pp: *Preprocessor, source: Source) Error!TokenWithExpansionLocs
  fn preprocessSources(pp: *Preprocessor, sources: struct
  fn prettyPrintTokens(pp: *Preprocessor, w: *std.Io.Writer, macro_dump_mode: DumpMode) !void
  fn tokSlice(pp: *const Preprocessor, token: anytype) []const u8
  fn tokenize(pp: *Preprocessor, source: Source) Error!Token
}

compiler.aro.aro.record_layout {
  const Error = error{Overflow
  fn compute(fields: []Type.Record.Field, qt: QualType, comp: *const Compilation, pragma_pack: ?u8) Error!Type.Record.Layout
  fn msvcPragmaPack(comp: *const Compilation, pack: u32) ?u32
}

compiler.aro.aro.Source {
  const ExpandedLocation = struct
  const Id = packed struct(u32)
  const Kind = enum
  const Location = struct
  fn lineCol(source: Source, loc: Location) ExpandedLocation
}

compiler.aro.aro.StringInterner {
  const StringId = enum(u32)
  fn deinit(si: *StringInterner, allocator: mem.Allocator) void
  fn intern(si: *StringInterner, allocator: mem.Allocator, str: []const u8) !StringId
}

compiler.aro.aro.SymbolStack {
  const Kind = enum
  const Symbol = struct
  fn declareSymbol(s: *SymbolStack, p: *Parser, name: StringId, qt: QualType, tok: TokenIndex, node: Node.Index) !void
  fn define(s: *SymbolStack, allocator: Allocator, symbol: Symbol) !void
  fn defineEnumeration(s: *SymbolStack, p: *Parser, name: StringId, qt: QualType, tok: TokenIndex, val: Value, node: Node.Index) !void
  fn defineParam(s: *SymbolStack, p: *Parser, name: StringId, qt: QualType, tok: TokenIndex, node: ?Node.Index) !void
  fn defineSymbol(s: *SymbolStack, p: *Parser, name: StringId, qt: QualType, tok: TokenIndex, node: Node.Index, val: Value, constexpr: bool) !void
  fn defineTag(s: *SymbolStack, p: *Parser, name: StringId, kind: Token.Id, tok: TokenIndex) !?Symbol
  fn defineTypedef(s: *SymbolStack, p: *Parser, name: StringId, qt: QualType, tok: TokenIndex, node: Node.Index) !void
  fn deinit(s: *SymbolStack, gpa: Allocator) void
  fn findSymbol(s: *SymbolStack, name: StringId) ?Symbol
  fn findTag(s: *SymbolStack, p: *Parser, name: StringId, kind: Token.Id, name_tok: TokenIndex, next_tok_id: Token.Id) !?Symbol
  fn findTypedef(s: *SymbolStack, p: *Parser, name: StringId, name_tok: TokenIndex, no_type_yet: bool) !?Symbol
  fn get(s: *SymbolStack, name: StringId, kind: ScopeKind) ?Symbol
  fn getPtr(s: *SymbolStack, name: StringId, kind: ScopeKind) *Symbol
  fn popScope(s: *SymbolStack) void
  fn pushScope(s: *SymbolStack, p: *Parser) !void
}

compiler.aro.aro.Target {
  const ArchSubArch = struct { std.Target.Cpu.Arch, ?SubArch 
  const DefaultPIStatus = enum { yes, no, depends_on_linker 
  const FPSemantics = enum
  const SubArch = enum
  const Vendor = enum
  const default: Target = 
  fn cCharSignedness(target: *const Target) std.builtin.Signedness
  fn cTypeAlignment(target: *const Target, c_type: std.Target.CType) u16
  fn cTypeBitSize(target: *const Target, c_type: std.Target.CType) u16
  fn defaultAlignment(target: *const Target) u29
  fn defaultFpEvalMethod(target: *const Target) LangOpts.FPEvalMethod
  fn defaultFunctionAlignment(target: *const Target) u8
  fn float80Type(target: *const Target) ?QualType
  fn get32BitArchVariant(target: *const Target) ?Target
  fn get64BitArchVariant(target: *const Target) ?Target
  fn hasFloat128(target: *const Target) bool
  fn hasHalfPrecisionFloatABI(target: *const Target) bool
  fn hasInt128(target: *const Target) bool
  fn ignoreNonZeroSizedBitfieldTypeAlignment(target: *const Target) bool
  fn ignoreZeroSizedBitfieldTypeAlignment(target: *const Target) bool
  fn int16Type(target: *const Target) QualType
  fn int64Type(target: *const Target) QualType
  fn intMaxType(target: *const Target) QualType
  fn intPtrType(target: *const Target) QualType
  fn isAbi(target: *const Target, query: []const u8) bool
  fn isKnownWindowsMSVCEnvironment(target: *const Target) bool
  fn isLP64(target: *const Target) bool
  fn isMinGW(target: *const Target) bool
  fn isOs(target: *const Target, query: []const u8) bool
  fn isPICDefaultForced(target: *const Target) DefaultPIStatus
  fn isPICdefault(target: *const Target) DefaultPIStatus
  fn isPIEDefault(target: *const Target) DefaultPIStatus
  fn isPS(target: *const Target) bool
  fn isTlsSupported(target: *const Target) bool
  fn isWindowsMSVCEnvironment(target: *const Target) bool
  fn ldEmulationOption(target: *const Target, arm_endianness: ?std.builtin.Endian) ?[]const u8
  fn minFunctionAlignment(target: *const Target) u8
  fn minZeroWidthBitfieldAlignment(target: *const Target) ?u29
  fn nullRepr(_: *const Target) u64
  fn packAllEnums(target: *const Target) bool
  fn parseAbi(result: *std.Target.Query, text: []const u8, version_string: ?*[]const u8) !void
  fn parseAbiName(query: []const u8) ?Abi
  fn parseArchName(query: []const u8) ?ArchSubArch
  fn parseOs(result: *std.Target.Query, text: []const u8, version_string: ?*[]const u8) !void
  fn parseOsName(query: []const u8) ?Os.Tag
  fn parseVendorName(query: []const u8) ?Vendor
  fn ppcElfVersion(target: *const Target) u32
  fn ptrBitWidth(target: *const Target) u16
  fn sigAtomicType(target: *const Target) QualType
  fn standardDynamicLinkerPath(target: *const Target) std.Target.DynamicLinker
  fn systemCompiler(target: *const Target) LangOpts.Compiler
  fn toLLVMTriple(target: *const Target, buf: []u8) []const u8
  fn unnamedFieldAffectsAlignment(target: *const Target) bool
  inline fn fromZigTarget(target: std.Target) Target
  inline fn toZigTarget(target: *const Target) std.Target
}

compiler.aro.aro.text_literal {
  const Ascii = struct
  const Item = union(enum)
  const Kind = enum
  const Parser = struct
}

compiler.aro.aro.Tokenizer {
  const Token = struct
  fn colonColon(self: *Tokenizer) Token
  fn next(self: *Tokenizer) Token
  fn nextNoWS(self: *Tokenizer) Token
  fn nextNoWSComments(self: *Tokenizer) Token
}

compiler.aro.aro.Toolchain {
  const FileKind = enum
  const LibGCCKind = enum
  const PathList = std.ArrayList([]const u8
  const RuntimeLibKind = enum
  const UnwindLibKind = enum
  fn addBuiltinIncludeDir(tc: *const Toolchain) !void
  fn addFilePathLibArgs(tc: *const Toolchain, argv: *std.ArrayList([]const u8)) !void
  fn addPathFromComponents(tc: *Toolchain, components: []const []const u8, dest_kind: PathKind) !void
  fn addPathIfExists(tc: *Toolchain, components: []const []const u8, dest_kind: PathKind) !void
  fn addRuntimeLibs(tc: *const Toolchain, argv: *std.ArrayList([]const u8)) !void
  fn addSystemIncludeDir(tc: *const Toolchain, path: []const u8) !void
  fn canExecute(tc: *const Toolchain, path: []const u8) bool
  fn defineSystemIncludes(tc: *Toolchain) !void
  fn deinit(tc: *Toolchain) void
  fn discover(tc: *Toolchain) !void
  fn exists(tc: *const Toolchain, path: []const u8) bool
  fn findProgramByName(tc: *const Toolchain, name: []const u8, buf: []u8) ?[]const u8
  fn getAssemblerPath(tc: *const Toolchain, buf: []u8) ![]const u8
  fn getCompilerRt(tc: *const Toolchain, component: []const u8, file_kind: FileKind) ![]const u8
  fn getFilePath(tc: *const Toolchain, name: []const u8) ![]const u8
  fn getLinkerPath(tc: *const Toolchain, buf: []u8) ![]const u8
  fn getRuntimeLibKind(tc: *const Toolchain) RuntimeLibKind
  fn getSysroot(tc: *const Toolchain) []const u8
  fn getTarget(tc: *const Toolchain) *const Target
  fn joinedExists(tc: *const Toolchain, parts: []const []const u8) bool
  fn readFile(tc: *const Toolchain, path: []const u8, buf: []u8) ?[]const u8
}

compiler.aro.aro.tracy {
  const Ctx = if (enable) ___tracy_c_zone_context else struct
  const enable = if (builtin.is_test) false else build_options.enable_trac
  const enable_allocation = enable and build_options.enable_tracy_allocatio
  const enable_callstack = enable and build_options.enable_tracy_callstac
  fn Frame(comptime name: [:0]const u8) type
  fn TracyAllocator(comptime name: ?[:0]const u8) type
  fn tracyAllocator(allocator: std.mem.Allocator) TracyAllocator(null)
  inline fn frameMark() void
  inline fn frameMarkNamed(comptime name: [:0]const u8) void
  inline fn message(comptime msg: [:0]const u8) void
  inline fn messageColor(comptime msg: [:0]const u8, color: u32) void
  inline fn messageColorCopy(msg: [:0]const u8, color: u32) void
  inline fn messageCopy(msg: []const u8) void
  inline fn namedFrame(comptime name: [:0]const u8) Frame(name)
  inline fn trace(comptime src: std.builtin.SourceLocation) Ctx
  inline fn traceNamed(comptime src: std.builtin.SourceLocation, comptime name: [:0]const u8) Ctx
}

compiler.aro.aro.Tree.number_affixes {
  const Prefix = enum(u8)
  const Suffix = enum
}

compiler.aro.aro.Tree {
  const GNUAssemblyQualifiers = packed struct(u32)
  const Node = union(enum)
  const Token = struct
  const TokenIndex = u3
  const TokenWithExpansionLocs = struct
  const ValueMap = std.AutoHashMapUnmanaged(Node.Index, Value
  const genIr = CodeGen.genI
  fn addNode(tree: *Tree, node: Node) !Node.Index
  fn bitfieldWidth(tree: *const Tree, node: Node.Index, inspect_lval: bool) ?u32
  fn callableResultUsage(tree: *const Tree, node: Node.Index) ?CallableResultUsage
  fn deinit(tree: *Tree) void
  fn dump(tree: *const Tree, term: std.Io.Terminal) std.Io.Terminal.SetColorError!void
  fn isBitfield(tree: *const Tree, node: Node.Index) bool
  fn isLval(tree: *const Tree, node: Node.Index) bool
  fn isLvalExtra(tree: *const Tree, node: Node.Index, is_const: *bool) bool
  fn setNode(tree: *Tree, node: Node, index: usize) !void
  fn tokSlice(tree: *const Tree, tok_i: TokenIndex) []const u8
}

compiler.aro.aro.TypeStore {
  const Builder = struct
  const QualType = packed struct(u32)
  const Type = union(enum)
  const std = @import("std"
  fn deinit(ts: *TypeStore, gpa: std.mem.Allocator) void
  fn initNamedTypes(ts: *TypeStore, comp: *Compilation) !void
  fn put(ts: *TypeStore, gpa: std.mem.Allocator, ty: Type) !QualType
  fn putExtra(ts: *TypeStore, gpa: std.mem.Allocator, ty: Type) !Index
  fn set(ts: *TypeStore, gpa: std.mem.Allocator, ty: Type, index: usize) !void
}

compiler.aro.aro.Value {
  const @"null" = Value{ .opt_ref = .null 
  const FloatToIntChangeKind = enum
  const IntCastChangeKind = enum
  const one = Value{ .opt_ref = .one 
  const zero = Value{ .opt_ref = .zero 
  fn add(res: *Value, lhs: Value, rhs: Value, qt: QualType, comp: *Compilation) !bool
  fn bitAnd(lhs: Value, rhs: Value, comp: *Compilation) !Value
  fn bitNot(val: Value, qt: QualType, comp: *Compilation) !Value
  fn bitOr(lhs: Value, rhs: Value, comp: *Compilation) !Value
  fn bitXor(lhs: Value, rhs: Value, comp: *Compilation) !Value
  fn boolCast(v: *Value, comp: *const Compilation) void
  fn compare(lhs: Value, op: std.math.CompareOperator, rhs: Value, comp: *const Compilation) bool
  fn comparePointers(lhs: Value, op: std.math.CompareOperator, rhs: Value, comp: *const Compilation) ?bool
  fn complexConj(val: Value, qt: QualType, comp: *Compilation) !Value
  fn decrement(res: *Value, val: Value, qt: QualType, comp: *Compilation) !bool
  fn div(res: *Value, lhs: Value, rhs: Value, qt: QualType, comp: *Compilation) !bool
  fn floatCast(v: *Value, dest_ty: QualType, comp: *Compilation) !void
  fn floatToInt(v: *Value, dest_ty: QualType, comp: *Compilation) !FloatToIntChangeKind
  fn fromBool(b: bool) Value
  fn fromRef(r: Interner.Ref) Value
  fn imag(v: Value, comptime T: type, comp: *const Compilation) T
  fn imaginaryPart(v: Value, comp: *Compilation) !Value
  fn int(i: anytype, comp: *Compilation) !Value
  fn intCast(v: *Value, dest_ty: QualType, comp: *Compilation) !IntCastChangeKind
  fn intToFloat(v: *Value, dest_ty: QualType, comp: *Compilation) !void
  fn intern(comp: *Compilation, k: Interner.Key) !Value
  fn is(v: Value, tag: std.meta.Tag(Interner.Key), comp: *const Compilation) bool
  fn isArithmetic(v: Value, comp: *const Compilation) bool
  fn isInf(v: Value, comp: *const Compilation) bool
  fn isInfSign(v: Value, comp: *const Compilation) IsInfKind
  fn isNan(v: Value, comp: *const Compilation) bool
  fn isPointer(v: Value, comp: *const Compilation) bool
  fn isZero(v: Value, comp: *const Compilation) bool
  fn maxInt(qt: QualType, comp: *Compilation) !Value
  fn minInt(qt: QualType, comp: *Compilation) !Value
  fn minSignedBits(v: Value, comp: *const Compilation) usize
  fn minUnsignedBits(v: Value, comp: *const Compilation) usize
  fn mul(res: *Value, lhs: Value, rhs: Value, qt: QualType, comp: *Compilation) !bool
  fn negate(res: *Value, val: Value, qt: QualType, comp: *Compilation) !bool
  fn pointer(r: Interner.Key.Pointer, comp: *Compilation) !Value
  fn print(v: Value, qt: QualType, comp: *const Compilation, w: *std.Io.Writer) std.Io.Writer.Error!?NestedPrint
  fn printPointer(offset: Value, base: []const u8, comp: *const Compilation, w: *std.Io.Writer) std.Io.Writer.Error!void
  fn printString(bytes: []const u8, qt: QualType, comp: *const Compilation, w: *std.Io.Writer) std.Io.Writer.Error!void
  fn realPart(v: Value, comp: *Compilation) !Value
  fn ref(v: Value) Interner.Ref
  fn rem(lhs: Value, rhs: Value, qt: QualType, comp: *Compilation) !Value
  fn shl(res: *Value, lhs: Value, rhs: Value, qt: QualType, comp: *Compilation) !bool
  fn shr(lhs: Value, rhs: Value, qt: QualType, comp: *Compilation) !Value
  fn sub(res: *Value, lhs: Value, rhs: Value, qt: QualType, elem_size: u64, comp: *Compilation) !bool
  fn toBool(v: Value, comp: *const Compilation) bool
  fn toBytes(v: Value, comp: *const Compilation) []const u8
  fn toFloat(v: Value, comptime T: type, comp: *const Compilation) T
  fn toInt(v: Value, comptime T: type, comp: *const Compilation) ?T
}

compiler.aro.aro {
  const Assembly = backend.Assembl
  const CallingConvention = backend.CallingConventio
  const CodeGen = @import("aro/CodeGen.zig"
  const Compilation = @import("aro/Compilation.zig"
  const Diagnostics = @import("aro/Diagnostics.zig"
  const Driver = @import("aro/Driver.zig"
  const Interner = backend.Interne
  const Ir = backend.I
  const Object = backend.Objec
  const Parser = @import("aro/Parser.zig"
  const Preprocessor = @import("aro/Preprocessor.zig"
  const QualType = TypeStore.QualTyp
  const Source = @import("aro/Source.zig"
  const StringInterner = @import("aro/StringInterner.zig"
  const Target = @import("aro/Target.zig"
  const Tokenizer = @import("aro/Tokenizer.zig"
  const Toolchain = @import("aro/Toolchain.zig"
  const Tree = @import("aro/Tree.zig"
  const Type = TypeStore.Typ
  const TypeStore = @import("aro/TypeStore.zig"
  const Value = @import("aro/Value.zig"
  const version = backend.versio
  const version_str = backend.version_st
}

compiler.aro.assembly_backend.x86_64 {
  fn genAsm(tree: *const Tree) Error!Assembly
  fn todo(c: *AsmCodeGen, msg: []const u8, tok: Tree.TokenIndex) Error
}

compiler.aro.assembly_backend {
  const x86_64 = @import("assembly_backend/x86_64.zig"
  fn genAsm(target: std.Target, tree: *const aro.Tree) aro.Compilation.Error!aro.Assembly
}

compiler.aro.backend.Assembly {
  fn deinit(self: *const Assembly, gpa: Allocator) void
  fn writeToFile(self: Assembly, io: std.Io, file: std.Io.File) !void
}

compiler.aro.backend.CodeGenOptions {
  const DebugFormat = union(enum)
  const DwarfVersion = enum(u3)
  const OptimizationLevel = enum
  const PicLevel = enum(u8)
  const default: @This() = 
}

compiler.aro.backend.Interner {
  const Key = union(enum)
  const OptRef = enum(u32)
  const PackedU64 = packed struct(u64)
  const Ref = enum(u32)
  const Tag = enum(u8)
  fn deinit(i: *Interner, gpa: Allocator) void
  fn get(i: *const Interner, ref: Ref) Key
  fn put(i: *Interner, gpa: Allocator, key: Key) !Ref
}

compiler.aro.backend.Ir.x86.Renderer {
  fn render(base: *BaseRenderer) !void
}

compiler.aro.backend.Ir {
  const Builder = struct
  const Decl = struct
  const DumpError = std.Io.Terminal.SetColorError || std.mem.Allocator.Erro
  const Inst = struct
  const Ref = enum(u32) { none = std.math.maxInt(u32), _ 
  const Renderer = struct
  fn deinit(ir: *Ir, gpa: std.mem.Allocator) void
  fn dump(ir: *const Ir, gpa: Allocator, term: std.Io.Terminal) DumpError!void
  fn render(ir: *const Ir, gpa: Allocator, target: std.Target, errors: ?*Renderer.ErrorList) !*Object
}

compiler.aro.backend.Object.Elf {
  fn addRelocation(elf: *Elf, name: []const u8, section_kind: Object.Section, address: u64, addend: i64) !void
  fn create(gpa: Allocator, target: Target) !*Object
  fn declareSymbol(elf: *Elf, section_kind: Object.Section, maybe_name: ?[]const u8, linkage: std.builtin.GlobalLinkage, @"type": Object.SymbolType, offset: u64, size: u64) ![]const u8
  fn deinit(elf: *Elf) void
  fn finish(elf: *Elf, w: *std.Io.Writer) !void
  fn getSection(elf: *Elf, section_kind: Object.Section) !*std.ArrayList(u8)
}

compiler.aro.backend.Object {
  const Section = union(enum)
  const SymbolType = enum
  fn addRelocation(obj: *Object, name: []const u8, section: Section, address: u64, addend: i64) !void
  fn create(gpa: Allocator, target: std.Target) !*Object
  fn declareSymbol(obj: *Object, section: Section, name: ?[]const u8, linkage: std.builtin.GlobalLinkage, @"type": SymbolType, offset: u64, size: u64) ![]const u8
  fn deinit(obj: *Object) void
  fn finish(obj: *Object, w: *std.Io.Writer) !void
  fn getSection(obj: *Object, section: Section) !*std.ArrayList(u8)
}

compiler.aro.backend {
  const Assembly = @import("backend/Assembly.zig"
  const CallingConvention = enum
  const CodeGenOptions = @import("backend/CodeGenOptions.zig"
  const Interner = @import("backend/Interner.zig"
  const Ir = @import("backend/Ir.zig"
  const Object = @import("backend/Object.zig"
  const version = @import("std").SemanticVersion.parse(version_str) catch unreachabl
  const version_str = "aro-zig
}

compiler.aro.main {
  fn main(init: process.Init.Minimal) u8
}

compiler.build_runner {
  const dependencies = @import("@dependencies"
  const root = @import("@build"
  const std_options: std.Options = 
  fn main(init: process.Init.Minimal) !void
  fn printErrorMessages(gpa: Allocator, failing_step: *Step, options: std.zig.ErrorBundle.RenderOptions, stderr: Io.Terminal, error_style: ErrorStyle, multiline_errors: MultilineErrors) !void
}

compiler.libc {
  fn main(init: std.process.Init) !void
}

compiler.objcopy {
  const EmitRawElfOptions = struct
  fn main(init: std.process.Init) !void
}

compiler.objdump {
  fn main(init: std.process.Init) !void
}

compiler.reduce.Walk {
  const Error = error{OutOfMemory
  const Transformation = union(enum)
  fn findTransformations(arena: std.mem.Allocator, ast: *const Ast, transformations: *std.array_list.Managed(Transformation)) !void
}

compiler.reduce {
  fn main(init: std.process.Init) !void
}

compiler.resinator.ani {
  fn isAnimatedIcon(reader: *std.Io.Reader) bool
}

compiler.resinator.ast {
  const CodePageLookup = struct
  const Node = struct
  const Tree = struct
}

compiler.resinator.bmp {
  const BITMAPCOREHEADER = extern struct
  const BITMAPINFOHEADER = extern struct
  const BitmapInfo = struct
  const Compression = enum(u32)
  const ReadError = erro
  const file_header_len = 1
  const windows_format_id = std.mem.readInt(u16, "BM", native_endian
  fn read(reader: *std.Io.Reader, max_size: u64) ReadError!BitmapInfo
}

compiler.resinator.cli {
  const Arg = struct
  const Diagnostics = struct
  const Options = struct
  const ParseError = error{ParseError} || Allocator.Erro
  const max_string_literal_length_100_percent = 819
  const usage_string_after_command_name
  fn filepathWithExtension(allocator: Allocator, path: []const u8, ext: []const u8) ![]const u8
  fn isSupportedInputExtension(ext: []const u8) bool
  fn isSupportedTransformation(input: Options.InputFormat, output: Options.OutputFormat) bool
  fn isValidIdentifier(str: []const u8) bool
  fn parse(allocator: Allocator, io: Io, args: []const []const u8, diagnostics: *Diagnostics) ParseError!Options
  fn parsePercent(str: []const u8) error{InvalidFormat}!u32
  fn renderErrorMessage(t: Io.Terminal, err_details: Diagnostics.ErrorDetails, args: []const []const u8) !void
  fn writeUsage(writer: *std.Io.Writer, command_name: []const u8) !void
}

compiler.resinator.code_pages {
  const CodePage = blk:
  const Codepoint = struct
  const SupportedCodePage = enum(u16)
  const UnsupportedCodePage = enum(u16)
  const Utf8 = struct
  fn getByIdentifier(identifier: u16) !CodePage
  fn getByIdentifierEnsureSupported(identifier: u16) !SupportedCodePage
  fn isSupported(code_page: CodePage) bool
}

compiler.resinator.comments {
  fn removeComments(source: []const u8, buf: []u8, source_mappings: ?*SourceMappings) ![]u8
  fn removeCommentsAlloc(allocator: Allocator, source: []const u8, source_mappings: ?*SourceMappings) ![]u8
}

compiler.resinator.compile {
  const CompileOptions = struct
  const Compiler = struct
  const Dependencies = struct
  const FontDir = struct
  const OpenSearchPathError = std.Io.Dir.OpenErro
  const SearchDir = struct
  const StringTable = struct
  const StringTablesByLanguage = struct
  fn compile(allocator: Allocator, io: Io, source: []const u8, writer: *std.Io.Writer, options: CompileOptions) !void
}

compiler.resinator.cvtres {
  const CoffOptions = struct
  const Diagnostics = union
  const ParseResOptions = struct
  const ParsedResources = struct
  const Resource = struct
  const ResourceAndSize = struct
  const ResourceDataEntry = extern struct
  const ResourceDirectoryEntry = extern struct
  const ResourceDirectoryTable = extern struct
  const supported_targets = struct
  fn parseNameOrOrdinal(allocator: Allocator, reader: *std.Io.Reader) !NameOrOrdinal
  fn parseRes(allocator: Allocator, reader: *std.Io.Reader, options: ParseResOptions) !ParsedResources
  fn parseResInto(resources: *ParsedResources, reader: *std.Io.Reader, options: ParseResOptions) !void
  fn parseResource(allocator: Allocator, reader: *std.Io.Reader, max_size: u64) !ResourceAndSize
  fn writeCoff(allocator: Allocator, writer: *std.Io.Writer, resources: []const Resource, options: CoffOptions, diagnostics: ?*Diagnostics) !void
}

compiler.resinator.disjoint_code_page {
  fn hasDisjointCodePage(source: []const u8, source_mappings: ?*const SourceMappings, default_code_page: SupportedCodePage) bool
}

compiler.resinator.errors {
  const Diagnostics = struct
  const DiagnosticsContext = struct
  const ErrorDetails = struct
  const ErrorDetailsWithoutCodePage = blk:
  fn renderErrorMessage(io: Io, t: Io.Terminal, cwd: Io.Dir, err_details: ErrorDetails, source: []const u8, strings: []const []const u8, source_mappings: ?SourceMappings) !void
}

compiler.resinator.ico {
  const BitmapHeader = extern struct
  const Entry = struct
  const IconDir = struct
  const ImageFormat = enum(u2)
  const ImageType = enum(u16)
  const ReadError = std.mem.Allocator.Error || error{ InvalidHeader, InvalidImageType, ImpossibleDataSize, UnexpectedEOF, ReadFailed 
  fn read(allocator: std.mem.Allocator, reader: *std.Io.Reader, max_size: u64) ReadError!IconDir
}

compiler.resinator.lang {
  const LANG_ENGLISH = 0x0
  const LOCALE_CUSTOM_UNSPECIFIED = 0x100
  const LanguageId = enum(u16)
  const Parsed = struct
  const SUBLANG_ENGLISH_US = 0x0
  fn MAKELANGID(primary: u10, sublang: u6) u16
  fn parse(lang_tag: []const u8) error{InvalidLanguageTag}!Parsed
  fn parseInt(str: []const u8) error{InvalidLanguageId}!u16
  fn tagToId(tag: []const u8) error{InvalidLanguageTag}!?LanguageId
  fn tagToInt(tag: []const u8) error{InvalidLanguageTag}!u16
}

compiler.resinator.lex {
  const LexError = erro
  const Lexer = struct
  const LineHandler = struct
  const Token = struct
  const default_max_string_literal_codepoints = 409
  fn parsePragmaCodePage(full_command: []const u8) !?SupportedCodePage
}

compiler.resinator.literals {
  const IterativeStringParser = struct
  const Number = struct
  const SourceBytes = struct
  const StringParseOptions = struct
  const StringType = enum { ascii, wide 
  fn columnWidth(cur_column: usize, c: u8, tab_columns: usize) usize
  fn columnsUntilTabStop(column: usize, tab_columns: usize) usize
  fn isValidNumberDataLiteral(str: []const u8) bool
  fn parseNumberLiteral(bytes: SourceBytes) Number
  fn parseQuotedAsciiString(allocator: std.mem.Allocator, bytes: SourceBytes, options: StringParseOptions) ![]u8
  fn parseQuotedString(comptime literal_type: StringType, allocator: std.mem.Allocator, bytes: SourceBytes, options: StringParseOptions) !(switch (literal_type)
  fn parseQuotedStringAsWideString(allocator: std.mem.Allocator, bytes: SourceBytes, options: StringParseOptions) ![:0]u16
  fn parseQuotedWideString(allocator: std.mem.Allocator, bytes: SourceBytes, options: StringParseOptions) ![:0]u16
}

compiler.resinator.main {
  fn main(init: std.process.Init.Minimal) !void
}

compiler.resinator.parse {
  const Parser = struct
  const max_nested_expression_level: u32 = 20
  const max_nested_menu_level: u32 = 51
  const max_nested_version_level: u32 = 51
}

compiler.resinator.preprocess {
  fn appendAroArgs(arena: Allocator, argv: *std.ArrayList([]const u8), options: cli.Options, system_include_paths: []const []const u8, include_env_value: ?[]const u8) !void
  fn preprocess(comp: *aro.Compilation, writer: *std.Io.Writer, argv: []const []const u8, maybe_dependencies: ?*Dependencies) PreprocessError!void
}

compiler.resinator.rc {
  const AcceleratorTypeAndOptions = enum
  const CommonResourceAttributes = enum
  const Control = enum
  const ControlClass = struct
  const MenuItem = enum
  const OptionalStatements = enum
  const ResourceType = enum
  const ToolbarButton = enum
  const TopLevelKeywords = enum
  const VersionBlock = enum
  const VersionInfo = enum
}

compiler.resinator.res {
  const AcceleratorModifiers = struct
  const BS = struct
  const ControlClass = enum(u16)
  const DS = struct
  const FixedFileInfo = struct
  const ForcedOrdinal = struct
  const LBS = struct
  const Language = packed struct(u16)
  const MF = struct
  const MemoryFlags = packed struct(u16)
  const MenuItemFlags = struct
  const NameOrOrdinal = union(enum)
  const ParseAcceleratorKeyStringError = error{ EmptyAccelerator, AcceleratorTooLong, InvalidControlCharacter, ControlCharacterOutOfRange 
  const RT = enum(u8)
  const SS = struct
  const VersionNode = struct
  const WS = struct
  fn parseAcceleratorKeyString(bytes: SourceBytes, is_virt: bool, options: literals.StringParseOptions) (ParseAcceleratorKeyStringError || Allocator.Error)!u16
}

compiler.resinator.source_mapping {
  const ParseAndRemoveLineCommandsOptions = struct
  const ParseLineCommandsResult = struct
  const SourceMappings = struct
  const StringTable = struct
  fn formsLineEndingPair(source: []const u8, line_ending: u8, next_index: usize) bool
  fn handleLineCommand(allocator: Allocator, line_command: []const u8, current_mapping: *CurrentMapping) error{ OutOfMemory, InvalidLineCommand }!void
  fn handleLineEnd(allocator: Allocator, post_processed_line_number: usize, mapping: *SourceMappings, current_mapping: *CurrentMapping) !void
  fn parseAndRemoveLineCommands(allocator: Allocator, source: []const u8, buf: []u8, options: ParseAndRemoveLineCommandsOptions) error{ OutOfMemory, InvalidLineCommand, LineNumberOverflow }!ParseLineCommandsResult
  fn parseAndRemoveLineCommandsAlloc(allocator: Allocator, source: []const u8, options: ParseAndRemoveLineCommandsOptions) !ParseLineCommandsResult
}

compiler.resinator.utils {
  const ErrorMessageType = enum { err, warning, note 
  const UncheckedSliceWriter = struct
  fn isLineEndingPair(first: u8, second: u8) bool
  fn isNonAsciiDigit(c: u21) bool
  fn renderErrorMessage(t: Io.Terminal, msg_type: ErrorMessageType, comptime format: []const u8, args: anytype) !void
  fn renderErrorMessageToStderr(io: std.Io, msg_type: ErrorMessageType, comptime format: []const u8, args: anytype) !void
}

compiler.resinator.windows1252 {
  fn bestFitFromCodepoint(codepoint: u21) ?u8
  fn toCodepoint(c: u8) u16
}

compiler.std-docs {
  fn main(init: std.process.Init) !void
}

compiler.test_runner {
  const std_options: std.Options = 
  fn fuzz(context: anytype, comptime testOne: fn (context: @TypeOf(context), *std.testing.Smith) anyerror!void, options: testing.FuzzInputOptions) anyerror!void
  fn log(comptime message_level: std.log.Level, comptime scope: @EnumLiteral(), comptime format: []const u8, args: anytype) void
  fn main(init: std.process.Init.Minimal) void
  fn mainSimple() anyerror!void
}

compiler.translate-c.ast {
  const Node = extern union
  const Payload = struct
  fn render(gpa: Allocator, nodes: []const Node) !std.zig.Ast
}

compiler.translate-c.builtins {
  const Builtin = struct
  const map = std.StaticStringMap(Builtin).initComptime([_]struct { []const u8, Builtin 
}

compiler.translate-c.MacroTranslator {
  const ParseError = Error || error{ParseError
  fn transFnMacro(mt: *MacroTranslator) ParseError!void
  fn transMacro(mt: *MacroTranslator) ParseError!void
}

compiler.translate-c.main {
  const usage
  fn main(init: process.Init) u8
}

compiler.translate-c.PatternList {
  const MacroProcessingError = Error || error{UnexpectedMacroToken
  const MacroSlicer = struct
  fn deinit(pl: *PatternList, allocator: mem.Allocator) void
  fn init(allocator: mem.Allocator) Error!PatternList
  fn match(pl: PatternList, ms: MacroSlicer) Error!?Impl
}

compiler.translate-c.Scope {
  const AliasList = std.ArrayList(struct
  const Block = struct
  const Condition = struct
  const ContainerMemberFns = struct
  const ContainerMemberFnsHashMap = std.ArrayHashMapUnmanage
  const Id = enum
  const Root = struct
  const SymbolTable = std.StringArrayHashMapUnmanaged(ast.Node
  fn appendNode(inner: *Scope, node: ast.Node) !void
  fn findBlockReturnType(inner: *Scope) aro.QualType
  fn findBlockScope(inner: *Scope, t: *Translator) !*Block
  fn getAlias(scope: *Scope, name: []const u8) ?[]const u8
  fn skipVariableDiscard(inner: *Scope, name: []const u8) void
}

compiler.translate-c.Translator {
  const Error = std.mem.Allocator.Erro
  const MacroProcessingError = Error || error{UnexpectedMacroToken
  const Options = struct
  const QualTypeHashContext = struct
  const StrictFlexArraysLevel = enum
  const TransError = TypeError || error{ UnsupportedTranslation, SelfReferential 
  const TypeError = Error || error{UnsupportedType
  const builtin_typedef_map = std.StaticStringMap([]const u8).initComptime(
  fn addTopLevelDecl(t: *Translator, name: []const u8, decl_node: ZigNode) !void
  fn createHelperCallNode(t: *Translator, name: std.meta.DeclEnum(std.zig.c_translation.helpers), args_opt: ?[]const ZigNode) !ZigNode
  fn failDecl(t: *Translator, scope: *Scope, tok_idx: TokenIndex, name: []const u8, comptime format: []const u8, args: anytype) Error!void
  fn failDeclExtra(t: *Translator, scope: *Scope, loc: aro.Source.Location, name: []const u8, comptime format: []const u8, args: anytype) Error!void
  fn getFnProto(t: *Translator, ref: ZigNode) ?*ast.Payload.Func
  fn getMangle(t: *Translator) u32
  fn locStr(t: *Translator, loc: aro.Source.Location) ![]const u8
  fn translate(options: Options) mem.Allocator.Error![]u8
}

compiler.util {
  fn aroDiagnosticsToErrorBundle(d: *const aro.Diagnostics, gpa: std.mem.Allocator, fail_msg: ?[]const u8) !ErrorBundle
}

