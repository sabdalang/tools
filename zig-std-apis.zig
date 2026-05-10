std.array_hash_map {
  const ArrayHashMap = Custo
  const StringContext = struct
  fn Auto(comptime K: type, comptime V: type) type
  fn AutoContext(comptime K: type) type
  fn Custom(comptime K: type, comptime V: type, comptime Context: type, comptime store_hash: bool) type
  fn String(comptime V: type) type
  fn autoEqlIsCheap(comptime K: type) bool
  fn eqlString(a: []const u8, b: []const u8) bool
  fn getAutoEqlFn(comptime K: type, comptime Context: type) (fn (Context, K, K, usize) bool)
  fn getAutoHashFn(comptime K: type, comptime Context: type) (fn (Context, K) u32)
  fn getAutoHashStratFn(comptime K: type, comptime Context: type, comptime strategy: std.hash.Strategy) (fn (Context, K) u32)
  fn getHashPtrAddrFn(comptime K: type, comptime Context: type) (fn (Context, K) u32)
  fn getTrivialEqlFn(comptime K: type, comptime Context: type) (fn (Context, K, K) bool)
  fn hashString(s: []const u8) u32
}

std.array_list {
  fn Aligned(comptime T: type, comptime alignment: ?mem.Alignment) type
  fn AlignedManaged(comptime T: type, comptime alignment: ?mem.Alignment) type
  fn Managed(comptime T: type) type
}

std.ascii {
  const HexEscape = struct
  const control_code = struct
  const indexOfIgnoreCase = findIgnoreCas
  const indexOfIgnoreCasePos = findIgnoreCasePo
  const indexOfIgnoreCasePosLinear = findIgnoreCasePosLinea
  const letters = lowercase ++ uppercas
  const lowercase = "abcdefghijklmnopqrstuvwxyz
  const uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ
  const whitespace = [_]u8{ ' ', '\t', '\n', '\r', control_code.vt, control_code.ff 
  fn allocLowerString(allocator: std.mem.Allocator, ascii_string: []const u8) ![]u8
  fn allocUpperString(allocator: std.mem.Allocator, ascii_string: []const u8) ![]u8
  fn boundedOrderIgnoreCaseZ(lhs: [*:0]const u8, rhs: [*:0]const u8, bound: usize) std.math.Order
  fn endsWithIgnoreCase(haystack: []const u8, needle: []const u8) bool
  fn eqlIgnoreCase(a: []const u8, b: []const u8) bool
  fn findIgnoreCase(haystack: []const u8, needle: []const u8) ?usize
  fn findIgnoreCasePos(haystack: []const u8, start_index: usize, needle: []const u8) ?usize
  fn findIgnoreCasePosLinear(haystack: []const u8, start_index: usize, needle: []const u8) ?usize
  fn hexEscape(bytes: []const u8, case: std.fmt.Case) std.fmt.Alt(HexEscape, HexEscape.format)
  fn isAlphabetic(c: u8) bool
  fn isAlphanumeric(c: u8) bool
  fn isAscii(c: u8) bool
  fn isControl(c: u8) bool
  fn isDigit(c: u8) bool
  fn isGraphical(c: u8) bool
  fn isHex(c: u8) bool
  fn isLower(c: u8) bool
  fn isPrint(c: u8) bool
  fn isPunctuation(c: u8) bool
  fn isUpper(c: u8) bool
  fn isWhitespace(c: u8) bool
  fn lessThanIgnoreCase(lhs: []const u8, rhs: []const u8) bool
  fn lowerString(output: []u8, ascii_string: []const u8) []u8
  fn orderIgnoreCase(lhs: []const u8, rhs: []const u8) std.math.Order
  fn orderIgnoreCaseZ(lhs: [*:0]const u8, rhs: [*:0]const u8) std.math.Order
  fn startsWithIgnoreCase(haystack: []const u8, needle: []const u8) bool
  fn toLower(c: u8) u8
  fn toUpper(c: u8) u8
  fn upperString(output: []u8, ascii_string: []const u8) []u8
}

std.atomic {
  const Mutex = enum(u8)
  const cache_line: comptime_int = cacheLineForCpu(builtin.cpu
  fn Value(comptime T: type) type
  fn cacheLineForCpu(cpu: std.Target.Cpu) u16
  inline fn spinLoopHint() void
}

std.base64 {
  const Base64Decoder = struct
  const Base64DecoderWithIgnore = struct
  const Base64Encoder = struct
  const Codecs = struct
  const Error = erro
  const standard = Codec
  const standard_alphabet_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".
  const standard_no_pad = Codec
  const url_safe = Codec
  const url_safe_alphabet_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".
  const url_safe_no_pad = Codec
}

std.BitStack {
  fn deinit(self: *@This()) void
  fn ensureTotalCapacity(self: *@This(), bit_capacity: usize) Allocator.Error!void
  fn init(allocator: Allocator) @This()
  fn peek(self: *const @This()) u1
  fn peekWithState(buf: []const u8, bit_len: usize) u1
  fn pop(self: *@This()) u1
  fn popWithState(buf: []const u8, bit_len: *usize) u1
  fn push(self: *@This(), b: u1) Allocator.Error!void
  fn pushWithStateAssumeCapacity(buf: []u8, bit_len: *usize, b: u1) void
}

std.bit_set {
  const DynamicBitSet = struct
  const DynamicBitSetUnmanaged = struct
  const IteratorOptions = struct
  const Range = struct
  fn ArrayBitSet(comptime MaskIntType: type, comptime size: usize) type
  fn IntegerBitSet(comptime size: u16) type
  fn StaticBitSet(comptime size: usize) type
}

std.buf_map {
  const BufMap = struct
}

std.buf_set {
  const BufSet = struct
}

std.Build.abi {
  const BuildStatus = enum(u8)
  const Hello = extern struct
  const Rebuild = extern struct
  const StatusUpdate = extern struct
  const StepUpdate = extern struct
  const ToClientTag = enum(u8)
  const ToServerTag = enum(u8)
  const fuzz = struct
  const time_report = struct
}

std.Build.Cache.DepTokenizer {
  const Token = union(enum)
  fn next(self: *Tokenizer) ?Token
}

std.Build.Cache.Directory {
  fn clone(d: Directory, arena: Allocator) Allocator.Error!Directory
  fn closeAndFree(self: *Directory, gpa: Allocator, io: Io) void
  fn cwd() Directory
  fn eql(self: Directory, other: Directory) bool
  fn format(self: Directory, writer: *std.Io.Writer) std.Io.Writer.Error!void
  fn join(self: Directory, allocator: Allocator, paths: []const []const u8) ![]u8
  fn joinZ(self: Directory, allocator: Allocator, paths: []const []const u8) ![:0]u8
}

std.Build.Cache.Path {
  const TableAdapter = struct
  fn access(p: Path, io: Io, sub_path: []const u8, flags: Io.Dir.AccessOptions) !void
  fn atomicFile(p: Path, io: Io, sub_path: []const u8, options: Io.Dir.AtomicFileOptions, buf: *[fs.max_path_bytes]u8) !fs.AtomicFile
  fn basename(p: Path) []const u8
  fn clone(p: Path, arena: Allocator) Allocator.Error!Path
  fn createDirPath(p: Path, io: Io, sub_path: []const u8) !void
  fn createDirPathOpen(p: Path, io: Io, sub_path: []const u8, opts: Io.Dir.OpenOptions) !Io.Dir
  fn cwd() Path
  fn eql(self: Path, other: Path) bool
  fn fmtEscapeChar(path: Path) std.fmt.Alt(Path, formatEscapeChar)
  fn fmtEscapeString(path: Path) std.fmt.Alt(Path, formatEscapeString)
  fn format(self: Path, writer: *Io.Writer) Io.Writer.Error!void
  fn formatEscapeChar(path: Path, writer: *Io.Writer) Io.Writer.Error!void
  fn formatEscapeString(path: Path, writer: *Io.Writer) Io.Writer.Error!void
  fn initCwd(sub_path: []const u8) Path
  fn join(p: Path, arena: Allocator, sub_path: []const u8) Allocator.Error!Path
  fn joinString(p: Path, gpa: Allocator, sub_path: []const u8) Allocator.Error![]u8
  fn joinStringZ(p: Path, gpa: Allocator, sub_path: []const u8) Allocator.Error![:0]u8
  fn openDir(p: Path, io: Io, sub_path: []const u8, args: Io.Dir.OpenOptions) Io.Dir.OpenError!Io.Dir
  fn openFile(p: Path, io: Io, sub_path: []const u8, flags: Io.File.OpenFlags) !Io.File
  fn resolvePosix(p: Path, arena: Allocator, sub_path: []const u8) Allocator.Error!Path
  fn statFile(p: Path, io: Io, sub_path: []const u8) !Io.Dir.Stat
  fn stem(p: Path) []const u8
  fn subPathOpt(self: Path) ?[]const u8
  fn subPathOrDot(self: Path) []const u8
  fn toString(p: Path, allocator: Allocator) Allocator.Error![]u8
  fn toStringZ(p: Path, allocator: Allocator) Allocator.Error![:0]u8
}

std.Build.Cache {
  const BinDigest = [bin_digest_len]u
  const DepTokenizer = @import("Cache/DepTokenizer.zig"
  const Directory = @import("Cache/Directory.zig"
  const File = struct
  const HashHelper = struct
  const Hasher = crypto.auth.siphash.SipHash128(1, 3
  const HexDigest = [hex_digest_len]u
  const Lock = struct
  const Manifest = struct
  const Path = @import("Cache/Path.zig"
  const bin_digest_len = 1
  const hasher_init: Hasher = Hasher.init(&
  const hex_digest_len = bin_digest_len * 
  const manifest_file_size_max = 100 * 1024 * 102
  fn addPrefix(cache: *Cache, directory: Directory) void
  fn binToHex(bin_digest: BinDigest) HexDigest
  fn obtain(cache: *Cache) Manifest
  fn prefixes(cache: *const Cache) []const Directory
}

std.Build.Fuzz {
  const Mode = union(enum)
  const Previous = struct
  fn deinit(fuzz: *Fuzz) void
  fn init(gpa: Allocator, io: Io, all_steps: []const *Build.Step, root_prog_node: std.Progress.Node, mode: Mode) error{ OutOfMemory, Canceled }!Fuzz
  fn sendUpdate(fuzz: *Fuzz, socket: *std.http.Server.WebSocket, prev: *Previous) !void
  fn serveSourcesTar(fuzz: *Fuzz, req: *std.http.Server.Request) !void
  fn start(fuzz: *Fuzz) void
  fn waitAndPrintReport(fuzz: *Fuzz) Io.Cancelable!void
}

std.Build.Module {
  const AddCSourceFilesOptions = struct
  const CSourceFile = struct
  const CSourceFiles = struct
  const CSourceLanguage = enum
  const CreateOptions = struct
  const Graph = struct
  const Import = struct
  const IncludeDir = union(enum)
  const LinkFrameworkOptions = struct
  const LinkObject = union(enum)
  const LinkSystemLibraryOptions = struct
  const RPath = union(enum)
  const RcSourceFile = struct
  const SystemLib = struct
  fn addAfterIncludePath(m: *Module, lazy_path: LazyPath) void
  fn addAnonymousImport(m: *Module, name: []const u8, options: CreateOptions) void
  fn addAssemblyFile(m: *Module, source: LazyPath) void
  fn addCMacro(m: *Module, name: []const u8, value: []const u8) void
  fn addCSourceFile(m: *Module, source: CSourceFile) void
  fn addCSourceFiles(m: *Module, options: AddCSourceFilesOptions) void
  fn addConfigHeader(m: *Module, config_header: *Step.ConfigHeader) void
  fn addEmbedPath(m: *Module, lazy_path: LazyPath) void
  fn addFrameworkPath(m: *Module, directory_path: LazyPath) void
  fn addImport(m: *Module, name: []const u8, module: *Module) void
  fn addIncludePath(m: *Module, lazy_path: LazyPath) void
  fn addLibraryPath(m: *Module, directory_path: LazyPath) void
  fn addObject(m: *Module, object: *Step.Compile) void
  fn addObjectFile(m: *Module, object: LazyPath) void
  fn addOptions(m: *Module, module_name: []const u8, options: *Step.Options) void
  fn addRPath(m: *Module, directory_path: LazyPath) void
  fn addRPathSpecial(m: *Module, bytes: []const u8) void
  fn addSystemFrameworkPath(m: *Module, directory_path: LazyPath) void
  fn addSystemIncludePath(m: *Module, lazy_path: LazyPath) void
  fn addWin32ResourceFile(m: *Module, source: RcSourceFile) void
  fn appendZigProcessFlags(m: *Module, zig_args: *std.array_list.Managed([]const u8), asking_step: ?*Step) !void
  fn create(owner: *std.Build, options: CreateOptions) *Module
  fn getGraph(root: *Module) Graph
  fn init(m: *Module, owner: *std.Build, value: union(enum) { options: CreateOptions, existing: *const Module }) void
  fn linkFramework(m: *Module, name: []const u8, options: LinkFrameworkOptions) void
  fn linkLibrary(m: *Module, library: *Step.Compile) void
  fn linkSystemLibrary(m: *Module, name: []const u8, options: LinkSystemLibraryOptions) void
}

std.Build.Step.CheckFile {
  const Options = struct
  const base_id: Step.Id = .check_fil
  fn create(owner: *std.Build, source: std.Build.LazyPath, options: Options) *CheckFile
  fn setName(check_file: *CheckFile, name: []const u8) void
}

std.Build.Step.CheckObject {
  const base_id: Step.Id = .check_objec
  fn checkComputeCompare(check_object: *CheckObject, program: []const u8, expected: ComputeCompareExpected) void
  fn checkContains(check_object: *CheckObject, phrase: []const u8) void
  fn checkContainsPath(check_object: *CheckObject, phrase: []const u8, lazy_path: std.Build.LazyPath) void
  fn checkExact(check_object: *CheckObject, phrase: []const u8) void
  fn checkExactPath(check_object: *CheckObject, phrase: []const u8, lazy_path: std.Build.LazyPath) void
  fn checkExtract(check_object: *CheckObject, phrase: []const u8) void
  fn checkExtractLazyPath(check_object: *CheckObject, phrase: []const u8, lazy_path: std.Build.LazyPath) void
  fn checkInArchiveSymtab(check_object: *CheckObject) void
  fn checkInDyldBind(check_object: *CheckObject) void
  fn checkInDyldLazyBind(check_object: *CheckObject) void
  fn checkInDyldRebase(check_object: *CheckObject) void
  fn checkInDyldWeakBind(check_object: *CheckObject) void
  fn checkInDynamicSection(check_object: *CheckObject) void
  fn checkInDynamicSymtab(check_object: *CheckObject) void
  fn checkInExports(check_object: *CheckObject) void
  fn checkInHeaders(check_object: *CheckObject) void
  fn checkInIndirectSymtab(check_object: *CheckObject) void
  fn checkInSymtab(check_object: *CheckObject) void
  fn checkNotPresent(check_object: *CheckObject, phrase: []const u8) void
  fn checkNotPresentLazyPath(check_object: *CheckObject, phrase: []const u8, lazy_path: std.Build.LazyPath) void
  fn create(owner: *std.Build, source: std.Build.LazyPath, obj_format: std.Target.ObjectFormat) *CheckObject
  fn dumpSection(check_object: *CheckObject, name: [:0]const u8) void
}

std.Build.Step.Compile {
  const Entry = union(enum)
  const ExpectedCompileErrors = union(enum)
  const HeaderInstallation = union(enum)
  const Kind = enum
  const Options = struct
  const TestRunner = struct
  const base_id: Step.Id = .compil
  fn addObjCopy(cs: *Compile, options: Step.ObjCopy.Options) *Step.ObjCopy
  fn checkObject(compile: *Compile) *Step.CheckObject
  fn create(owner: *std.Build, options: Options) *Compile
  fn dependsOnSystemLibrary(compile: *Compile, name: []const u8) bool
  fn doAtomicSymLinks(step: *Step, output_path: []const u8, filename_major_only: []const u8, filename_name_only: []const u8) !void
  fn forceUndefinedSymbol(compile: *Compile, symbol_name: []const u8) void
  fn getCompileDependencies(start: *Compile, chase_dynamic: bool) []const *Compile
  fn getEmittedAsm(compile: *Compile) LazyPath
  fn getEmittedBin(compile: *Compile) LazyPath
  fn getEmittedBinDirectory(compile: *Compile) LazyPath
  fn getEmittedCompilerRtDynLib(compile: *Compile) ?LazyPath
  fn getEmittedDocs(compile: *Compile) LazyPath
  fn getEmittedH(compile: *Compile) LazyPath
  fn getEmittedImplib(compile: *Compile) LazyPath
  fn getEmittedIncludeTree(cs: *Compile) LazyPath
  fn getEmittedLlvmBc(compile: *Compile) LazyPath
  fn getEmittedLlvmIr(compile: *Compile) LazyPath
  fn getEmittedPdb(compile: *Compile) LazyPath
  fn installConfigHeader(cs: *Compile, config_header: *Step.ConfigHeader) void
  fn installHeader(cs: *Compile, source: LazyPath, dest_rel_path: []const u8) void
  fn installHeadersDirectory(cs: *Compile, source: LazyPath, dest_rel_path: []const u8, options: HeaderInstallation.Directory.Options) void
  fn installLibraryHeaders(cs: *Compile, lib: *Compile) void
  fn isDll(compile: *Compile) bool
  fn isDynamicLibrary(compile: *const Compile) bool
  fn isStaticLibrary(compile: *const Compile) bool
  fn producesCompilerRtDynLib(compile: *Compile) bool
  fn producesImplib(compile: *Compile) bool
  fn producesPdbFile(compile: *Compile) bool
  fn rebuildInFuzzMode(c: *Compile, gpa: Allocator, progress_node: std.Progress.Node) !Path
  fn rootModuleTarget(c: *Compile) std.Target
  fn runPkgConfig(step: *Step, lib_name: []const u8) !PkgConfigResult
  fn setExecCmd(compile: *Compile, args: []const ?[]const u8) void
  fn setLibCFile(compile: *Compile, libc_file: ?LazyPath) void
  fn setLinkerScript(compile: *Compile, source: LazyPath) void
  fn setVerboseCC(compile: *Compile, value: bool) void
  fn setVerboseLink(compile: *Compile, value: bool) void
  fn setVersionScript(compile: *Compile, source: LazyPath) void
}

std.Build.Step.ConfigHeader {
  const Options = struct
  const Style = union(enum)
  const Value = union(enum)
  const base_id: Step.Id = .config_heade
  fn addIdent(config_header: *ConfigHeader, name: []const u8, value: []const u8) void
  fn addValue(config_header: *ConfigHeader, name: []const u8, comptime T: type, value: T) void
  fn addValues(config_header: *ConfigHeader, values: anytype) void
  fn create(owner: *std.Build, options: Options) *ConfigHeader
  fn getOutputDir(ch: *ConfigHeader) std.Build.LazyPath
  fn getOutputFile(ch: *ConfigHeader) std.Build.LazyPath
}

std.Build.Step.Fail {
  const base_id: Step.Id = .fai
  fn create(owner: *std.Build, error_msg: []const u8) *Fail
}

std.Build.Step.Fmt {
  const Options = struct
  const base_id: Step.Id = .fm
  fn create(owner: *std.Build, options: Options) *Fmt
}

std.Build.Step.InstallArtifact {
  const Options = struct
  const base_id: Step.Id = .install_artifac
  fn create(owner: *std.Build, artifact: *Step.Compile, options: Options) *InstallArtifact
}

std.Build.Step.InstallDir {
  const Options = struct
  const base_id: Step.Id = .install_di
  fn create(owner: *std.Build, options: Options) *InstallDir
}

std.Build.Step.InstallFile {
  const base_id: Step.Id = .install_fil
  fn create(owner: *std.Build, source: LazyPath, dir: InstallDir, dest_rel_path: []const u8) *InstallFile
}

std.Build.Step.ObjCopy {
  const AddSection = struct
  const Options = struct
  const RawFormat = enum
  const SectionFlags = packed struct
  const SetSectionAlignment = struct
  const SetSectionFlags = struct
  const Strip = enum
  const base_id: Step.Id = .objcop
  fn create(owner: *std.Build, input_file: std.Build.LazyPath, options: Options) *ObjCopy
  fn getOutput(objcopy: *const ObjCopy) std.Build.LazyPath
  fn getOutputSeparatedDebug(objcopy: *const ObjCopy) ?std.Build.LazyPath
}

std.Build.Step.Options {
  const base_id: Step.Id = .option
  fn addOption(options: *Options, comptime T: type, name: []const u8, value: T) void
  fn addOptionPath(options: *Options, name: []const u8, path: LazyPath) void
  fn create(owner: *std.Build) *Options
  fn createModule(options: *Options) *std.Build.Module
  fn getOutput(options: *Options) LazyPath
}

std.Build.Step.Run {
  const Arg = union(enum)
  const CachedTestMetadata = struct
  const CapturedStdIo = struct
  const Color = enum
  const DecoratedLazyPath = struct
  const Output = struct
  const PrefixedArtifact = struct
  const PrefixedLazyPath = struct
  const StdIn = union(enum)
  const StdIo = union(enum)
  const base_id: Step.Id = .ru
  fn addArg(run: *Run, arg: []const u8) void
  fn addArgs(run: *Run, args: []const []const u8) void
  fn addArtifactArg(run: *Run, artifact: *Step.Compile) void
  fn addCheck(run: *Run, new_check: StdIo.Check) void
  fn addDecoratedDirectoryArg(run: *Run, prefix: []const u8, lazy_directory: std.Build.LazyPath, suffix: []const u8) void
  fn addDepFileOutputArg(run: *Run, basename: []const u8) std.Build.LazyPath
  fn addDirectoryArg(run: *Run, lazy_directory: std.Build.LazyPath) void
  fn addFileArg(run: *Run, lp: std.Build.LazyPath) void
  fn addFileContentArg(run: *Run, lp: std.Build.LazyPath) void
  fn addFileInput(self: *Run, file_input: std.Build.LazyPath) void
  fn addOutputDirectoryArg(run: *Run, basename: []const u8) std.Build.LazyPath
  fn addOutputFileArg(run: *Run, basename: []const u8) std.Build.LazyPath
  fn addPathDir(run: *Run, search_path: []const u8) void
  fn addPrefixedArtifactArg(run: *Run, prefix: []const u8, artifact: *Step.Compile) void
  fn addPrefixedDepFileOutputArg(run: *Run, prefix: []const u8, basename: []const u8) std.Build.LazyPath
  fn addPrefixedDirectoryArg(run: *Run, prefix: []const u8, lazy_directory: std.Build.LazyPath) void
  fn addPrefixedFileArg(run: *Run, prefix: []const u8, lp: std.Build.LazyPath) void
  fn addPrefixedFileContentArg(run: *Run, prefix: []const u8, lp: std.Build.LazyPath) void
  fn addPrefixedOutputDirectoryArg(run: *Run, prefix: []const u8, basename: []const u8) std.Build.LazyPath
  fn addPrefixedOutputFileArg(run: *Run, prefix: []const u8, basename: []const u8) std.Build.LazyPath
  fn captureStdErr(run: *Run, options: CapturedStdIo.Options) std.Build.LazyPath
  fn captureStdOut(run: *Run, options: CapturedStdIo.Options) std.Build.LazyPath
  fn clearEnvironment(run: *Run) void
  fn create(owner: *std.Build, name: []const u8) *Run
  fn enableTestRunnerMode(run: *Run) void
  fn expectExitCode(run: *Run, code: u8) void
  fn expectStdErrEqual(run: *Run, bytes: []const u8) void
  fn expectStdErrMatch(run: *Run, bytes: []const u8) void
  fn expectStdOutEqual(run: *Run, bytes: []const u8) void
  fn expectStdOutMatch(run: *Run, bytes: []const u8) void
  fn getEnvMap(run: *Run) *EnvMap
  fn hasTermCheck(run: Run) bool
  fn removeEnvironmentVariable(run: *Run, key: []const u8) void
  fn rerunInFuzzMode(run: *Run, fuzz: *std.Build.Fuzz, prog_node: std.Progress.Node) !void
  fn setCwd(run: *Run, cwd: Build.LazyPath) void
  fn setEnvironmentVariable(run: *Run, key: []const u8, value: []const u8) void
  fn setName(run: *Run, name: []const u8) void
  fn setStdIn(run: *Run, stdin: StdIn) void
}

std.Build.Step.TranslateC {
  const AddExecutableOptions = struct
  const Options = struct
  const base_id: Step.Id = .translate_
  fn addAfterIncludePath(translate_c: *TranslateC, lazy_path: LazyPath) void
  fn addCheckFile(translate_c: *TranslateC, expected_matches: []const []const u8) *Step.CheckFile
  fn addConfigHeader(translate_c: *TranslateC, config_header: *Step.ConfigHeader) void
  fn addFrameworkPath(translate_c: *TranslateC, directory_path: LazyPath) void
  fn addIncludePath(translate_c: *TranslateC, lazy_path: LazyPath) void
  fn addModule(translate_c: *TranslateC, name: []const u8) *std.Build.Module
  fn addSystemFrameworkPath(translate_c: *TranslateC, directory_path: LazyPath) void
  fn addSystemIncludePath(translate_c: *TranslateC, lazy_path: LazyPath) void
  fn create(owner: *std.Build, options: Options) *TranslateC
  fn createModule(translate_c: *TranslateC) *std.Build.Module
  fn defineCMacro(translate_c: *TranslateC, name: []const u8, value: ?[]const u8) void
  fn defineCMacroRaw(translate_c: *TranslateC, name_and_value: []const u8) void
  fn getOutput(translate_c: *TranslateC) std.Build.LazyPath
  fn linkSystemLibrary(translate_c: *TranslateC, name: []const u8, options: std.Build.Module.LinkSystemLibraryOptions) void
}

std.Build.Step.UpdateSourceFiles {
  const Contents = union(enum)
  const OutputSourceFile = struct
  const base_id: Step.Id = .update_source_file
  fn addBytesToSource(usf: *UpdateSourceFiles, bytes: []const u8, sub_path: []const u8) void
  fn addCopyFileToSource(usf: *UpdateSourceFiles, source: std.Build.LazyPath, sub_path: []const u8) void
  fn create(owner: *std.Build) *UpdateSourceFiles
}

std.Build.Step.WriteFile {
  const Contents = union(enum)
  const Directory = struct
  const File = struct
  const Mode = union(enum)
  const base_id: Step.Id = .write_fil
  fn add(write_file: *WriteFile, sub_path: []const u8, bytes: []const u8) std.Build.LazyPath
  fn addCopyDirectory(write_file: *WriteFile, source: std.Build.LazyPath, sub_path: []const u8, options: Directory.Options) std.Build.LazyPath
  fn addCopyFile(write_file: *WriteFile, source: std.Build.LazyPath, sub_path: []const u8) std.Build.LazyPath
  fn create(owner: *std.Build) *WriteFile
  fn getDirectory(write_file: *WriteFile) std.Build.LazyPath
}

std.Build.Step {
  const CheckFile = @import("Step/CheckFile.zig"
  const CheckObject = @import("Step/CheckObject.zig"
  const Compile = @import("Step/Compile.zig"
  const ConfigHeader = @import("Step/ConfigHeader.zig"
  const Fail = @import("Step/Fail.zig"
  const Fmt = @import("Step/Fmt.zig"
  const Id = enum
  const Inputs = struct
  const InstallArtifact = @import("Step/InstallArtifact.zig"
  const InstallDir = @import("Step/InstallDir.zig"
  const InstallFile = @import("Step/InstallFile.zig"
  const MakeFn = *const fn (step: *Step, options: MakeOptions) anyerror!voi
  const MakeOptions = struct
  const ObjCopy = @import("Step/ObjCopy.zig"
  const Options = @import("Step/Options.zig"
  const Run = @import("Step/Run.zig"
  const State = enum
  const StepOptions = struct
  const TestResults = struct
  const TranslateC = @import("Step/TranslateC.zig"
  const UpdateSourceFiles = @import("Step/UpdateSourceFiles.zig"
  const WriteFile = @import("Step/WriteFile.zig"
  const ZigProcess = struct
  fn addDirectoryWatchInput(step: *Step, lazy_directory: Build.LazyPath) Allocator.Error!bool
  fn addDirectoryWatchInputFromPath(step: *Step, path: Build.Cache.Path) !void
  fn addError(step: *Step, comptime fmt: []const u8, args: anytype) error{OutOfMemory}!void
  fn addWatchInput(step: *Step, lazy_file: Build.LazyPath) Allocator.Error!void
  fn allocPrintCmd(gpa: Allocator, cwd: std.process.Child.Cwd, opt_env: ?struct { child: *const std.process.Environ.Map, parent: *const std.process.Environ.Map, }, argv: []const []const u8) Allocator.Error![]u8
  fn cacheHit(s: *Step, man: *Build.Cache.Manifest) !bool
  fn cacheHitAndWatch(s: *Step, man: *Build.Cache.Manifest) !bool
  fn captureChildProcess(s: *Step, gpa: Allocator, progress_node: std.Progress.Node, argv: []const []const u8) !std.process.RunResult
  fn cast(step: *Step, comptime T: type) ?*T
  fn clearWatchInputs(step: *Step) void
  fn dependOn(step: *Step, other: *Step) void
  fn dump(step: *Step, t: Io.Terminal) void
  fn evalZigProcess(s: *Step, argv: []const []const u8, prog_node: std.Progress.Node, watch: bool, web_server: ?*Build.WebServer, gpa: Allocator) !?Path
  fn fail(step: *Step, comptime fmt: []const u8, args: anytype) error{ OutOfMemory, MakeFailed }
  fn getZigProcess(s: *Step) ?*ZigProcess
  fn handleChildProcessTerm(s: *Step, term: std.process.Child.Term) error{ MakeFailed, OutOfMemory }!void
  fn handleVerbose(b: *Build, cwd: std.process.Child.Cwd, argv: []const []const u8) error{OutOfMemory}!void
  fn handleVerbose2(b: *Build, cwd: std.process.Child.Cwd, opt_env: ?*const std.process.Environ.Map, argv: []const []const u8) error{OutOfMemory}!void
  fn init(options: StepOptions) Step
  fn installDir(s: *Step, dest_path: []const u8) !Io.Dir.CreatePathStatus
  fn installFile(s: *Step, src_lazy_path: Build.LazyPath, dest_path: []const u8) !Io.Dir.PrevStatus
  fn invalidateResult(step: *Step, gpa: Allocator) bool
  fn make(s: *Step, options: MakeOptions) error{ MakeFailed, MakeSkipped }!void
  fn reset(step: *Step, gpa: Allocator) void
  fn singleUnchangingWatchInput(step: *Step, lazy_path: Build.LazyPath) Allocator.Error!void
  fn writeManifest(s: *Step, man: *Build.Cache.Manifest) !void
  fn writeManifestAndWatch(s: *Step, man: *Build.Cache.Manifest) !void
  inline fn handleChildProcUnsupported(s: *Step) error{ OutOfMemory, MakeFailed }!void
}

std.Build.Watch.FsEvents {
  fn deinit(fse: *FsEvents, gpa: Allocator, io: Io) void
  fn init(cwd_path: []const u8) error{ OpenFrameworkFailed, MissingCoreServicesSymbol, SystemResources }!FsEvents
  fn setPaths(fse: *FsEvents, gpa: Allocator, steps: []const *std.Build.Step) !void
  fn wait(fse: *FsEvents, gpa: Allocator, timeout_ns: ?u64) error{ OutOfMemory, StartFailed }!std.Build.Watch.WaitResult
}

std.Build.Watch {
  const Match = struct
  const Timeout = union(enum)
  const WaitResult = enum
  const have_impl = Os != voi
  fn init(cwd_path: []const u8) !Watch
  fn update(w: *Watch, gpa: Allocator, steps: []const *Step) !void
  fn wait(w: *Watch, gpa: Allocator, io: Io, timeout: Timeout) !WaitResult
}

std.Build.WebServer {
  const Options = struct
  const base_clock: Io.Clock = .awak
  fn deinit(ws: *WebServer) void
  fn finishBuild(ws: *WebServer, opts: struct
  fn getRunnerRequest(ws: *WebServer) ?RunnerRequest
  fn init(opts: Options) WebServer
  fn notifyUpdate(ws: *WebServer) void
  fn now(s: *const WebServer) i64
  fn serveFile(ws: *WebServer, request: *http.Server.Request, path: Cache.Path, content_type: []const u8) !void
  fn serveTarFile(ws: *WebServer, request: *http.Server.Request, paths: []const Cache.Path) !void
  fn start(ws: *WebServer) error{AlreadyReported}!void
  fn startBuild(ws: *WebServer) void
  fn updateStepStatus(ws: *WebServer, step: *Build.Step, new_status: abi.StepUpdate.Status) void
  fn updateTimeReportCompile(ws: *WebServer, opts: struct
  fn updateTimeReportGeneric(ws: *WebServer, step: *Build.Step, duration: Io.Duration) void
  fn updateTimeReportRunTest(ws: *WebServer, run: *Build.Step.Run, tests: *const Build.Step.Run.CachedTestMetadata, ns_per_test: []const u64) void
  fn wait(ws: *WebServer) Io.Cancelable!RunnerRequest
}

std.Build {
  const AssemblyOptions = struct
  const Cache = @import("Build/Cache.zig"
  const Dependency = struct
  const DirList = struct
  const ExecutableOptions = struct
  const Fuzz = @import("Build/Fuzz.zig"
  const GeneratedFile = struct
  const Graph = struct
  const InstallDir = union(enum)
  const LazyPath = union(enum)
  const LibraryOptions = struct
  const Module = @import("Build/Module.zig"
  const ObjectOptions = struct
  const PkgConfigError = erro
  const PkgConfigPkg = struct
  const ReleaseMode = enum
  const ResolvedTarget = struct
  const RunError = erro
  const StandardOptimizeOptionOptions = struct
  const StandardTargetOptionsArgs = struct
  const Step = @import("Build/Step.zig"
  const SystemIntegrationOptionConfig = struct
  const TestOptions = struct
  const Watch = @import("Build/Watch.zig"
  const WebServer = @import("Build/WebServer.zig"
  const abi = @import("Build/abi.zig"
  fn addCheckFile(b: *Build, file_source: LazyPath, options: Step.CheckFile.Options) *Step.CheckFile
  fn addConfigHeader(b: *Build, options: Step.ConfigHeader.Options, values: anytype) *Step.ConfigHeader
  fn addExecutable(b: *Build, options: ExecutableOptions) *Step.Compile
  fn addFail(b: *Build, error_msg: []const u8) *Step.Fail
  fn addFmt(b: *Build, options: Step.Fmt.Options) *Step.Fmt
  fn addInstallArtifact(b: *Build, artifact: *Step.Compile, options: Step.InstallArtifact.Options) *Step.InstallArtifact
  fn addInstallBinFile(b: *Build, source: LazyPath, dest_rel_path: []const u8) *Step.InstallFile
  fn addInstallDirectory(b: *Build, options: Step.InstallDir.Options) *Step.InstallDir
  fn addInstallFile(b: *Build, source: LazyPath, dest_rel_path: []const u8) *Step.InstallFile
  fn addInstallFileWithDir(b: *Build, source: LazyPath, install_dir: InstallDir, dest_rel_path: []const u8) *Step.InstallFile
  fn addInstallHeaderFile(b: *Build, source: LazyPath, dest_rel_path: []const u8) *Step.InstallFile
  fn addInstallLibFile(b: *Build, source: LazyPath, dest_rel_path: []const u8) *Step.InstallFile
  fn addLibrary(b: *Build, options: LibraryOptions) *Step.Compile
  fn addModule(b: *Build, name: []const u8, options: Module.CreateOptions) *Module
  fn addMutateFiles(b: *Build, tmp_path: LazyPath) *Step.WriteFile
  fn addNamedLazyPath(b: *Build, name: []const u8, lp: LazyPath) void
  fn addNamedWriteFiles(b: *Build, name: []const u8) *Step.WriteFile
  fn addObjCopy(b: *Build, source: LazyPath, options: Step.ObjCopy.Options) *Step.ObjCopy
  fn addObject(b: *Build, options: ObjectOptions) *Step.Compile
  fn addOptions(b: *Build) *Step.Options
  fn addRunArtifact(b: *Build, exe: *Step.Compile) *Step.Run
  fn addSearchPrefix(b: *Build, search_prefix: []const u8) void
  fn addSystemCommand(b: *Build, argv: []const []const u8) *Step.Run
  fn addTempFiles(b: *Build) *Step.WriteFile
  fn addTest(b: *Build, options: TestOptions) *Step.Compile
  fn addTranslateC(b: *Build, options: Step.TranslateC.Options) *Step.TranslateC
  fn addUpdateSourceFiles(b: *Build) *Step.UpdateSourceFiles
  fn addUserInputFlag(b: *Build, name_raw: []const u8) error{OutOfMemory}!bool
  fn addUserInputOption(b: *Build, name_raw: []const u8, value_raw: []const u8) error{OutOfMemory}!bool
  fn addWriteFile(b: *Build, file_path: []const u8, data: []const u8) *Step.WriteFile
  fn addWriteFiles(b: *Build) *Step.WriteFile
  fn create(graph: *Graph, build_root: Cache.Directory, cache_root: Cache.Directory, available_deps: AvailableDeps) error{OutOfMemory}!*Build
  fn createModule(b: *Build, options: Module.CreateOptions) *Module
  fn dependency(b: *Build, name: []const u8, args: anytype) *Dependency
  fn dependencyFromBuildZig(b: *Build, comptime build_zig: type, args: anytype) *Dependency
  fn dumpBadGetPathHelp(s: *Step, t: Io.Terminal, src_builder: *Build, asking_step: ?*Step) anyerror!void
  fn dupe(b: *Build, bytes: []const u8) []u8
  fn dupeInner(allocator: std.mem.Allocator, bytes: []const u8) []u8
  fn dupePath(b: *Build, bytes: []const u8) []u8
  fn dupeStrings(b: *Build, strings: []const []const u8) [][]u8
  fn findProgram(b: *Build, names: []const []const u8, paths: []const []const u8) error{FileNotFound}![]const u8
  fn fmt(b: *Build, comptime format: []const u8, args: anytype) []u8
  fn getInstallPath(b: *Build, dir: InstallDir, dest_rel_path: []const u8) []const u8
  fn getInstallStep(b: *Build) *Step
  fn getUninstallStep(b: *Build) *Step
  fn installArtifact(b: *Build, artifact: *Step.Compile) void
  fn installBinFile(b: *Build, src_path: []const u8, dest_rel_path: []const u8) void
  fn installDirectory(b: *Build, options: Step.InstallDir.Options) void
  fn installFile(b: *Build, src_path: []const u8, dest_rel_path: []const u8) void
  fn installLibFile(b: *Build, src_path: []const u8, dest_rel_path: []const u8) void
  fn lazyDependency(b: *Build, name: []const u8, args: anytype) ?*Dependency
  fn option(b: *Build, comptime T: type, name_raw: []const u8, description_raw: []const u8) ?T
  fn parseTargetQuery(options: std.Target.Query.ParseOptions) error{ParseFailed}!std.Target.Query
  fn path(b: *Build, sub_path: []const u8) LazyPath
  fn pathFromRoot(b: *Build, sub_path: []const u8) []u8
  fn pathJoin(b: *Build, paths: []const []const u8) []u8
  fn pathResolve(b: *Build, paths: []const []const u8) []u8
  fn resolveInstallPrefix(b: *Build, install_prefix: ?[]const u8, dir_list: DirList) void
  fn resolveTargetQuery(b: *Build, query: Target.Query) ResolvedTarget
  fn run(b: *Build, argv: []const []const u8) []u8
  fn runAllowFail(b: *Build, argv: []const []const u8, out_code: *u8, stderr_behavior: std.process.SpawnOptions.StdIo) RunError![]u8
  fn runBuild(b: *Build, build_zig: anytype) anyerror!void
  fn standardOptimizeOption(b: *Build, options: StandardOptimizeOptionOptions) std.builtin.OptimizeMode
  fn standardTargetOptions(b: *Build, args: StandardTargetOptionsArgs) ResolvedTarget
  fn standardTargetOptionsQueryOnly(b: *Build, args: StandardTargetOptionsArgs) Target.Query
  fn step(b: *Build, name: []const u8, description: []const u8) *Step
  fn systemIntegrationOption(b: *Build, name: []const u8, config: SystemIntegrationOptionConfig) bool
  fn tmpPath(b: *Build) LazyPath
  fn truncateFile(b: *Build, dest_path: []const u8) (Io.Dir.CreateDirError || Io.Dir.StatFileError)!void
  fn validateUserInputDidItFail(b: *Build) bool
  fn wantSharedLibSymLinks(target: Target) bool
  inline fn lazyImpor
}

std.builtin.assembly {
  const Clobbers = switch (@import("builtin").cpu.arch)
}

std.builtin {
  const AddressSpace = enum(u5)
  const AtomicOrder = enum
  const AtomicRmwOp = enum
  const BranchHint = enum(u3)
  const CallModifier = enum
  const CallingConvention = union(enum(u8))
  const CodeModel = enum
  const CompilerBackend = enum(u64)
  const Endian = enum
  const ExportOptions = struct
  const ExternOptions = struct
  const FloatMode = enum
  const GlobalLinkage = enum(u2)
  const LinkMode = enum
  const OptimizeMode = enum
  const OutputMode = enum
  const PrefetchOptions = struct
  const ReduceOp = enum
  const Signedness = enum(u1)
  const SourceLocation = struct
  const StackTrace = struct
  const SymbolVisibility = enum(u2)
  const TestFn = struct
  const Type = union(enum)
  const TypeId = std.meta.Tag(Type
  const UnwindTables = enum
  const VaList = switch (builtin.cpu.arch)
  const VaListAarch64 = extern struct
  const VaListAlpha = extern struct
  const VaListArm = extern struct
  const VaListHexagon = extern struct
  const VaListPowerPc = extern struct
  const VaListS390x = extern struct
  const VaListSh = extern struct
  const VaListX86_64 = extern struct
  const VaListXtensa = extern struct
  const WasiExecModel = enum
  const assembly = @import("builtin/assembly.zig"
  const panic: type = p:
  noinline fn returnError() void
}

std.c.darwin.dispatch {
  const @"resume" = dispatch_resum
  const @"suspend" = dispatch_suspen
  const CURRENT_QUEUE_LABEL: ?[*:0]const u8 = nul
  const SOURCE_TYPE_DATA_ADD = &_dispatch_source_type_data_ad
  const SOURCE_TYPE_DATA_OR = &_dispatch_source_type_data_o
  const SOURCE_TYPE_DATA_REPLACE = &_dispatch_source_type_data_replac
  const SOURCE_TYPE_MACH_RECV = &_dispatch_source_type_mach_rec
  const SOURCE_TYPE_MACH_SEND = &_dispatch_source_type_mach_sen
  const SOURCE_TYPE_MEMORYPRESSURE = &_dispatch_source_type_memorypressur
  const SOURCE_TYPE_PROC = &_dispatch_source_type_pro
  const SOURCE_TYPE_READ = &_dispatch_source_type_rea
  const SOURCE_TYPE_SIGNAL = &_dispatch_source_type_signa
  const SOURCE_TYPE_TIMER = &_dispatch_source_type_time
  const SOURCE_TYPE_VNODE = &_dispatch_source_type_vnod
  const SOURCE_TYPE_WRITE = &_dispatch_source_type_writ
  const TARGET_QUEUE_DEFAULT: ?queue_t = nul
  const TIME_FOREVER = ~@as(u64, 0
  const TIME_NOW: u64 = 
  const WALLTIME_NOW = ~@as(u64, 1
  const activate = dispatch_activat
  const after_f = dispatch_after_
  const apply_f = dispatch_apply_
  const async_and_wait_f = dispatch_async_and_wait_
  const async_f = dispatch_async_
  const function_t = *const fn (?*anyopaque) callconv(.c) voi
  const get_context = dispatch_get_contex
  const get_current_queue = dispatch_get_current_queu
  const get_global_queue = dispatch_get_global_queu
  const main = dispatch_mai
  const object_t = *_os_object_
  const once_f = dispatch_once_
  const once_t = enum(isize)
  const queue_attr_make_initially_inactive = dispatch_queue_attr_make_initially_inactiv
  const queue_attr_t = ?*queue_attr_
  const queue_concurrent_t = queue_
  const queue_create = dispatch_queue_creat
  const queue_create_with_target = dispatch_queue_create_with_targe
  const queue_get_label = dispatch_queue_get_labe
  const queue_global_t = queue_
  const queue_main_t = queue_serial_
  const queue_priority_t = enum(c_long)
  const queue_serial_executor_t = queue_
  const queue_serial_t = queue_
  const queue_t = *queue_
  const release = dispatch_releas
  const retain = dispatch_retai
  const semaphore_create = dispatch_semaphore_creat
  const semaphore_signal = dispatch_semaphore_signa
  const semaphore_t = *semaphore_
  const semaphore_wait = dispatch_semaphore_wai
  const set_context = dispatch_set_contex
  const set_finalizer_f = dispatch_set_finalizer_
  const source_cancel = dispatch_source_cance
  const source_create = dispatch_source_creat
  const source_flags_t = packed union(usize)
  const source_get_data = dispatch_source_get_dat
  const source_get_handle = dispatch_source_get_handl
  const source_get_mask = dispatch_source_get_mas
  const source_mach_recv_flags_t = packed struct(usize)
  const source_mach_send_flags_t = packed struct(usize)
  const source_memorypressure_flags_t = packed struct(usize)
  const source_merge_data = dispatch_source_merge_dat
  const source_proc_flags_t = packed struct(usize)
  const source_set_cancel_handler_f = dispatch_source_set_cancel_handler_
  const source_set_event_handler_f = dispatch_source_set_event_handler_
  const source_set_registration_handler_f = dispatch_source_set_registration_handler_
  const source_set_timer = dispatch_source_set_time
  const source_t = *source_
  const source_testcancel = dispatch_source_testcance
  const source_timer_flags_t = packed struct(usize)
  const source_type_t = *const source_type_
  const source_vnode_flags_t = packed struct(usize)
  const sync_f = dispatch_sync_
  const time = dispatch_tim
  const time_t = enum(u64)
  const walltime = dispatch_walltim
  inline fn QUEUE_CONCURRENT() queue_attr_t
  inline fn QUEUE_CONCURRENT_INACTIVE() queue_attr_t
  inline fn QUEUE_INACTIVE() queue_attr_t
  inline fn QUEUE_SERIAL() queue_attr_t
  inline fn get_main_queue() queue_main_t
}

std.c.darwin {
  const CALENDAR_CLOCK = 
  const COPYFILE = packed struct(u32)
  const CPUFAMILY = enum(u32)
  const DB_RECORDTYPE = enum(u32)
  const E = enum(u16)
  const EXC = enum(exception_type_t)
  const EXCEPTION = enum(u32)
  const FCNTL_FS_SPECIFIC_BASE = 0x0001000
  const IP = struct
  const IPTOS = struct
  const IPV6 = struct
  const KEVENT = struct
  const MACH = struct
  const MACH_MSG_TYPE = @compileError("use MACH.MSG.TYPE"
  const MACH_PORT_RIGHT = @compileError("use MACH.PORT.RIGHT"
  const MACH_TASK_BASIC_INFO = @compileError("use MACH.TASK.BASIC.INFO"
  const MACH_TASK_BASIC_INFO_COUNT = @compileError("use MACH.TASK.BASIC.INFO_COUNT"
  const MATTR = struct
  const MSG = struct
  const NSIG = 3
  const OPEN_MAX = 1024
  const OS = struct
  const POSIX_SPAWN = packed struct(c_short)
  const PT = enum(c_int)
  const SYSPROTO_CONTROL = 
  const SYSPROTO_EVENT = 
  const TASK = struct
  const TASK_NULL = @compileError("use TASK.NULL"
  const TASK_VM_INFO = @compileError("use TASK.VM.INFO"
  const TASK_VM_INFO_COUNT = @compileError("use TASK.VM.INFO_COUNT"
  const TCP = struct
  const THREAD = struct
  const THREAD_BASIC_INFO = @compileError("use THREAD.BASIC.INFO"
  const THREAD_BASIC_INFO_COUNT = @compileError("use THREAD.BASIC.INFO_COUNT"
  const THREAD_IDENTIFIER_INFO_COUNT = @compileError("use THREAD.IDENTIFIER.INFO_COUNT"
  const THREAD_NULL = @compileError("use THREAD.NULL"
  const THREAD_STATE_NONE = @compileError("use THREAD.STATE.NONE"
  const UL = packed struct(u32)
  const VM = struct
  const boolean_t = c_in
  const clock_res_t = c_in
  const clock_serv_t = mach_port_
  const copyfile_state_t = *opaque {
  const dispatch = @import("darwin/dispatch.zig"
  const dl_info = extern struct
  const exception_behavior_array_t = [*]exception_behavior_
  const exception_behavior_t = c_uin
  const exception_data_t = ?*mach_exception_data_type_
  const exception_data_type_t = integer_
  const exception_flavor_array_t = [*]thread_state_flavor_
  const exception_handler_array_t = [*]exception_handler_
  const exception_handler_t = mach_port_
  const exception_mask_array_t = [*]exception_mask_
  const exception_mask_t = c_uin
  const exception_port_array_t = exception_handler_array_
  const exception_port_t = exception_handler_
  const exception_type_t = c_in
  const host_t = mach_port_
  const integer_t = c_in
  const ipc_space_port_t = ipc_space_
  const ipc_space_t = mach_port_
  const kern_return_t = c_in
  const kevent64_s = extern struct
  const mach_exception_data_t = ?*mach_exception_data_type_
  const mach_exception_data_type_t = i6
  const mach_hdr = if (@sizeOf(usize) == 8) mach_header_64 else mach_heade
  const mach_header = std.macho.mach_heade
  const mach_header_64 = std.macho.mach_header_6
  const mach_msg_bits_t = c_uin
  const mach_msg_header_t = extern struct
  const mach_msg_id_t = integer_
  const mach_msg_option_t = packed union(integer_t)
  const mach_msg_return_t = enum(kern_return_t)
  const mach_msg_size_t = natural_
  const mach_msg_timeout_t = enum(natural_t)
  const mach_msg_type_name_t = enum(c_uint)
  const mach_msg_type_number_t = natural_
  const mach_port_array_t = [*]mach_port_
  const mach_port_name_t = natural_
  const mach_port_right_t = enum(natural_t)
  const mach_port_t = c_uin
  const mach_task_basic_info = extern struct
  const mach_timebase_info_data = extern struct
  const mach_timespec_t = extern struct
  const mach_vm_address_t = usiz
  const mach_vm_size_t = u6
  const memory_object_offset_t = u6
  const natural_t = c_uin
  const os_log_t = *opaque {
  const os_log_type_t = enum(u8)
  const os_signpost_id_t = enum(u64)
  const os_unfair_lock = extern struct
  const os_unfair_lock_t = *os_unfair_loc
  const policy_t = c_in
  const posix_spawn_file_actions_t = *opaque {
  const posix_spawnattr_t = *opaque {
  const qos_class_t = enum(c_uint)
  const sigset_t = u3
  const task_flavor_t = natural_
  const task_info_t = *integer_
  const task_name_t = mach_port_name_
  const task_policy_flavor_t = natural_
  const task_policy_t = *integer_
  const task_read_t = mach_port_
  const task_t = mach_port_
  const task_vm_info = extern struct
  const task_vm_info_data_t = task_vm_inf
  const thread_act_t = mach_port_
  const thread_basic_info = extern struct
  const thread_flavor_t = natural_
  const thread_identifier_info = extern struct
  const thread_info_t = *integer_
  const thread_port_t = task_
  const thread_state_flavor_t = c_in
  const thread_state_t = *natural_
  const thread_t = thread_port_
  const time_value = extern struct
  const time_value_t = time_valu
  const vm32_object_id_t = u3
  const vm_address_t = vm_offset_
  const vm_behavior_t = i3
  const vm_inherit_t = u3
  const vm_machine_attribute_t = usiz
  const vm_machine_attribute_val_t = isiz
  const vm_map_read_t = mach_port_
  const vm_map_t = mach_port_
  const vm_object_id_t = u6
  const vm_offset_t = usiz
  const vm_prot_t = std.macho.vm_prot_
  const vm_region_basic_info_64 = extern struct
  const vm_region_extended_info = extern struct
  const vm_region_flavor_t = c_in
  const vm_region_info_t = *c_in
  const vm_region_recurse_info_t = *c_in
  const vm_region_submap_info_64 = extern struct
  const vm_region_submap_short_info_64 = extern struct
  const vm_region_top_info = extern struct
  const vm_size_t = mach_vm_size_
  extern "c" fn @"close$NOCANCEL"(fd: fd_t) c_in
  extern "c" fn NSVersionOfRunTimeLibrary(library_name: [*:0]const u8) u3
  extern "c" fn _NSGetExecutablePath(buf: [*]u8, bufsize: *u32) c_in
  extern "c" fn __getdirentries64(fd: c_int, buf_ptr: [*]u8, buf_len: usize, basep: *i64) isiz
  extern "c" fn __ulock_wait(op: UL, addr: ?*const anyopaque, val: u64, timeout_us: u32) c_in
  extern "c" fn __ulock_wait2(op: UL, addr: ?*const anyopaque, val: u64, timeout_ns: u64, val2: u64) c_in
  extern "c" fn __ulock_wake(op: UL, addr: ?*const anyopaque, val: u64) c_in
  extern "c" fn _dyld_get_image_header(image_index: u32) ?*mach_heade
  extern "c" fn _dyld_get_image_header_containing_address(address: *const anyopaque) ?*mach_heade
  extern "c" fn _dyld_get_image_name(image_index: u32) [*:0]const u
  extern "c" fn _dyld_get_image_vmaddr_slide(image_index: u32) usiz
  extern "c" fn _dyld_image_count() u3
  extern "c" fn _host_page_size(task: mach_port_t, size: *vm_size_t) kern_return_
  extern "c" fn clock_get_time(clock_serv: clock_serv_t, cur_time: *mach_timespec_t) kern_return_
  extern "c" fn dladdr(addr: *const anyopaque, info: *dl_info) c_in
  extern "c" fn dyld_image_path_containing_address(address: *const anyopaque) ?[*:0]const u
  extern "c" fn fcopyfile(from: fd_t, to: fd_t, state: ?copyfile_state_t, flags: COPYFILE) c_in
  extern "c" fn kevent6
  extern "c" fn mach_absolute_time() u6
  extern "c" fn mach_continuous_time() u6
  extern "c" fn mach_host_self() mach_port_
  extern "c" fn mach_ms
  extern "c" fn mach_port_allocat
  extern "c" fn mach_port_deallocate(task: ipc_space_t, name: mach_port_name_t) kern_return_
  extern "c" fn mach_port_insert_righ
  extern "c" fn mach_timebase_info(tinfo: ?*mach_timebase_info_data) kern_return_
  extern "c" fn mach_vm_protec
  extern "c" fn mach_vm_rea
  extern "c" fn mach_vm_regio
  extern "c" fn mach_vm_region_recurs
  extern "c" fn mach_vm_writ
  extern "c" fn os_log_create(subsystem: [*]const u8, category: [*]const u8) os_log_
  extern "c" fn os_log_type_enabled(log: os_log_t, tpe: os_log_type_t) boo
  extern "c" fn os_signpost_enabled(log: os_log_t) boo
  extern "c" fn os_signpost_id_generate(log: os_log_t) os_signpost_id_
  extern "c" fn os_signpost_id_make_with_pointer(log: os_log_t, ptr: ?*anyopaque) os_signpost_id_
  extern "c" fn os_signpost_interval_begin(log: os_log_t, signpos: os_signpost_id_t, func: [*]const u8, ...) voi
  extern "c" fn os_signpost_interval_end(log: os_log_t, signpos: os_signpost_id_t, func: [*]const u8, ...) voi
  extern "c" fn os_unfair_lock_assert_not_owner(o: os_unfair_lock_t) voi
  extern "c" fn os_unfair_lock_assert_owner(o: os_unfair_lock_t) voi
  extern "c" fn os_unfair_lock_lock(o: os_unfair_lock_t) voi
  extern "c" fn os_unfair_lock_trylock(o: os_unfair_lock_t) boo
  extern "c" fn os_unfair_lock_unlock(o: os_unfair_lock_t) voi
  extern "c" fn pid_for_task(target_tport: mach_port_name_t, pid: *pid_t) kern_return_
  extern "c" fn posix_spaw
  extern "c" fn posix_spawn
  extern "c" fn posix_spawn_file_actions_addchdir_np(actions: *posix_spawn_file_actions_t, path: [*:0]const u8) c_in
  extern "c" fn posix_spawn_file_actions_addclose(actions: *posix_spawn_file_actions_t, filedes: fd_t) c_in
  extern "c" fn posix_spawn_file_actions_adddup
  extern "c" fn posix_spawn_file_actions_addfchdir_np(actions: *posix_spawn_file_actions_t, filedes: fd_t) c_in
  extern "c" fn posix_spawn_file_actions_addinherit_np(actions: *posix_spawn_file_actions_t, filedes: fd_t) c_in
  extern "c" fn posix_spawn_file_actions_addope
  extern "c" fn posix_spawn_file_actions_destroy(actions: *posix_spawn_file_actions_t) c_in
  extern "c" fn posix_spawn_file_actions_init(actions: *posix_spawn_file_actions_t) c_in
  extern "c" fn posix_spawnattr_destroy(attr: *posix_spawnattr_t) c_in
  extern "c" fn posix_spawnattr_getflags(attr: *const posix_spawnattr_t, flags: *POSIX_SPAWN) c_in
  extern "c" fn posix_spawnattr_init(attr: *posix_spawnattr_t) c_in
  extern "c" fn posix_spawnattr_setflags(attr: *posix_spawnattr_t, flags: POSIX_SPAWN) c_in
  extern "c" fn pthread_attr_get_qos_class_np(attr: *pthread_attr_t, qos_class: *qos_class_t, relative_priority: *c_int) c_in
  extern "c" fn pthread_attr_set_qos_class_np(attr: *pthread_attr_t, qos_class: qos_class_t, relative_priority: c_int) c_in
  extern "c" fn pthread_get_qos_class_np(pthread: std.c.pthread_t, qos_class: *qos_class_t, relative_priority: *c_int) c_in
  extern "c" fn pthread_set_qos_class_self_np(qos_class: qos_class_t, relative_priority: c_int) c_in
  extern "c" fn pthread_setname_np(name: [*:0]const u8) c_in
  extern "c" fn ptrace(request: PT, pid: pid_t, addr: caddr_t, data: c_int) c_in
  extern "c" fn sendfil
  extern "c" fn shm_open(name: [*:0]const u8, flag: c_int, ...) c_in
  extern "c" fn task_for_pid(target_tport: mach_port_name_t, pid: pid_t, t: *mach_port_name_t) kern_return_
  extern "c" fn task_get_exception_port
  extern "c" fn task_inf
  extern "c" fn task_resume(target_task: task_read_t) kern_return_
  extern "c" fn task_set_exception_port
  extern "c" fn task_suspend(target_task: task_read_t) kern_return_
  extern "c" fn task_thread
  extern "c" fn thread_get_stat
  extern "c" fn thread_inf
  extern "c" fn thread_resume(thread: thread_act_t) kern_return_
  extern "c" fn thread_set_stat
  extern "c" fn vm_deallocate(target_task: vm_map_t, address: vm_address_t, size: vm_size_t) kern_return_
  extern "c" fn vm_machine_attribut
  fn mach_task_self() callconv(.c) mach_port_t
}

std.c.dragonfly {
  const BADSIG = SIG.ER
  const E = enum(u16)
  const IP = struct
  const IPTOS = struct
  const IPV6 = struct
  const MS_ASYNC = 
  const MS_INVALIDATE = 
  const MS_SYNC = 
  const POSIX_MADV_DONTNEED = 
  const POSIX_MADV_NORMAL = 
  const POSIX_MADV_RANDOM = 
  const POSIX_MADV_SEQUENTIAL = 
  const POSIX_MADV_WILLNEED = 
  const cmsgcred = extern struct
  const sf_hdtr = extern struct
  const sig_t = *const fn (i32) callconv(.c) voi
  extern "c" fn lwp_gettid() c_in
  extern "c" fn ptrace(request: c_int, pid: pid_t, addr: caddr_t, data: c_int) c_in
  extern "c" fn umtx_sleep(ptr: *const volatile c_int, value: c_int, timeout: c_int) c_in
  extern "c" fn umtx_wakeup(ptr: *const volatile c_int, count: c_int) c_in
}

std.c.freebsd {
  const CAP_RIGHTS_VERSION = 
  const E = enum(u16)
  const IP = struct
  const IPTOS = struct
  const IPV6 = struct
  const KINFO_FILE_SIZE = 139
  const MFD = struct
  const Stat = extern struct
  const UMTX_ABSTIME = 0x0
  const UMTX_OP = enum(c_int)
  const _umtx_time = extern struct
  const cap_rights = extern struct
  const fflags_t = u3
  const fsblkcnt_t = u6
  const fsfilcnt_t = u6
  const kinfo_file = extern struct
  extern "c" fn _umtx_op(obj: usize, op: c_int, val: c_ulong, uaddr: usize, uaddr2: usize) c_in
  extern "c" fn copy_file_range(fd_in: fd_t, off_in: ?*off_t, fd_out: fd_t, off_out: ?*off_t, len: usize, flags: u32) isiz
  extern "c" fn kinfo_getfile(pid: pid_t, cntp: *c_int) ?[*]kinfo_fil
  extern "c" fn ptrace(request: c_int, pid: pid_t, addr: caddr_t, data: c_int) c_in
  extern "c" fn sendfil
}

std.c.haiku {
  const DirEnt = extern struct
  const E = enum(i32)
  const IP = struct
  const IPTOS = struct
  const IPV6 = struct
  const area_id = i3
  const area_info = extern struct
  const directory_which = enum(i32)
  const image_info = extern struct
  const port_id = i3
  const sem_id = i3
  const status_t = i3
  const system_info = extern struct
  const team_id = i3
  const team_info = extern struct
  const thread_id = i3
  extern "root" fn _errnop() *i3
  extern "root" fn _get_next_area_info(team: i32, cookie: *i64, area_info: *area_info, size: usize) i3
  extern "root" fn _get_next_image_info(team: i32, cookie: *i32, image_info: *image_info, size: usize) i3
  extern "root" fn _get_team_info(team: i32, team_info: *team_info, size: usize) i3
  extern "root" fn _kern_get_current_team() team_i
  extern "root" fn _kern_open_dir(fd: fd_t, path: [*:0]const u8) fd_
  extern "root" fn _kern_read_dir(fd: fd_t, buffer: [*]u8, bufferSize: usize, maxCount: u32) isiz
  extern "root" fn _kern_read_stat(fd: fd_t, path: [*:0]const u8, traverseLink: bool, stat: *std.c.Stat, statSize: usize) status_
  extern "root" fn _kern_rewind_dir(fd: fd_t) status_
  extern "root" fn find_directory(which: directory_which, volume: i32, createIt: bool, path_ptr: [*]u8, length: i32) u6
  extern "root" fn find_thread(thread_name: ?*anyopaque) i3
  extern "root" fn get_system_info(system_info: *system_info) usiz
}

std.c.illumos {
  const AF_SUN = struct
  const AT_SUN = struct
  const FILE_EVENT = struct
  const GETCONTEXT = 
  const GETUSTACK = 
  const IP = struct
  const IPTOS = struct
  const IPV6 = struct
  const PORT_ALERT = struct
  const PORT_SOURCE = struct
  const POSIX_FADV = struct
  const SETCONTEXT = 
  const SETUSTACK = 
  const SFD = struct
  const SIOCGLIFINDEX = IOWR('i', 133, lifreq
  const ctid_t = id_
  const file_obj = extern struct
  const id_t = i3
  const lif_ifinfo_req = extern struct
  const lif_nd_req = extern struct
  const lifreq = extern struct
  const major_t = u3
  const minor_t = u3
  const poolid_t = id_
  const port_notify = extern struct
  const priority = enum(c_int)
  const procfs = struct
  const projid_t = id_
  const signalfd_siginfo = extern struct
  const taskid_t = id_
  const zoneid_t = id_
  extern "c" fn pthread_setname_np(thread: pthread_t, name: [*:0]const u8, arg: ?*anyopaque) c_in
  extern "c" fn sysconf(sc: c_int) i6
  fn IO(io_type: u8, nr: u8) i32
  fn IOR(io_type: u8, nr: u8, comptime IOT: type) i32
  fn IOW(io_type: u8, nr: u8, comptime IOT: type) i32
  fn IOWR(io_type: u8, nr: u8, comptime IOT: type) i32
}

std.c.netbsd {
  const E = enum(u16)
  const IP = struct
  const IPTOS = struct
  const IPV6 = struct
  const TCIFLUSH = 
  const TCIOFF = 
  const TCIOFLUSH = 
  const TCION = 
  const TCOFLUSH = 
  const TCOOFF = 
  const TCOON = 
  const _ksiginfo = extern struct
  const lwpid_t = i3
  extern "c" fn ___lwp_park6
  extern "c" fn _lwp_self() lwpid_
  extern "c" fn _lwp_unpark(lwp: lwpid_t, hint: ?*const anyopaque) c_in
  extern "c" fn _lwp_unpark_all(targets: [*]const lwpid_t, ntargets: usize, hint: ?*const anyopaque) c_in
  extern "c" fn pthread_setname_np(thread: pthread_t, name: [*:0]const u8, arg: ?*anyopaque) c_in
  extern "c" fn ptrace(request: c_int, pid: pid_t, addr: ?*anyopaque, data: c_int) c_in
}

std.c.openbsd {
  const AUTH = struct
  const BI = struct
  const E = enum(u16)
  const FUTEX = struct
  const HW = struct
  const IP = struct
  const IPTOS = struct
  const IPV6 = struct
  const MAX_PAGE_SHIFT = switch (builtin.cpu.arch)
  const PTHREAD_STACK_MIN = switch (builtin.cpu.arch)
  const TCFLUSH = enum(u32)
  const TCIO = enum(u32)
  const auth_item_t = enum(c_int)
  const auth_session_t = opaque {
  const login_cap_t = extern struct
  const pthread_spinlock_t = extern struct
  extern "c" fn auth_approval(as: ?*auth_session_t, ?*login_cap_t, name: ?[*:0]const u8, type: ?[*:0]const u8) c_in
  extern "c" fn auth_call(as: *auth_session_t, path: [*:0]const u8, ...) c_in
  extern "c" fn auth_cat(file: [*:0]const u8) c_in
  extern "c" fn auth_challenge(as: *auth_session_t) [*:0]const u
  extern "c" fn auth_check_change(as: *auth_session_t) i6
  extern "c" fn auth_check_expire(as: *auth_session_t) i6
  extern "c" fn auth_checknologin(lc: *login_cap_t) voi
  extern "c" fn auth_clean(as: *auth_session_t) voi
  extern "c" fn auth_close(as: *auth_session_t) c_in
  extern "c" fn auth_clrenv(as: *auth_session_t) voi
  extern "c" fn auth_clroption(as: *auth_session_t, option: [*:0]const u8) voi
  extern "c" fn auth_clroptions(as: *auth_session_t) voi
  extern "c" fn auth_getitem(as: *auth_session_t, item: auth_item_t) ?[*:0]const u
  extern "c" fn auth_getpwd(as: *auth_session_t) ?*passw
  extern "c" fn auth_getstate(as: *auth_session_t) c_in
  extern "c" fn auth_getvalue(as: *auth_session_t, what: [*:0]const u8) ?[*:0]const u
  extern "c" fn auth_mkvalue(value: [*:0]const u8) ?[*:0]const u
  extern "c" fn auth_open() ?*auth_session_
  extern "c" fn auth_setdata(as: *auth_session_t, ptr: *anyopaque, len: usize) c_in
  extern "c" fn auth_setenv(as: *auth_session_t) voi
  extern "c" fn auth_setitem(as: *auth_session_t, item: auth_item_t, value: [*:0]const u8) c_in
  extern "c" fn auth_setoption(as: *auth_session_t, n: [*:0]const u8, v: [*:0]const u8) c_in
  extern "c" fn auth_setpwd(as: *auth_session_t, pwd: *passwd) c_in
  extern "c" fn auth_setstate(as: *auth_session_t, s: c_int) voi
  extern "c" fn auth_userchallenge(name: [*:0]const u8, style: ?[*:0]const u8, arg_type: ?[*:0]const u8, chappengep: *?[*:0]const u8) ?*auth_session_
  extern "c" fn auth_usercheck(name: [*:0]const u8, style: ?[*:0]const u8, arg_type: ?[*:0]const u8, password: ?[*:0]const u8) ?*auth_session_
  extern "c" fn auth_userokay(name: [*:0]const u8, style: ?[*:0]const u8, arg_type: ?[*:0]const u8, password: ?[*:0]const u8) c_in
  extern "c" fn auth_userresponse(as: *auth_session_t, response: [*:0]const u8, more: c_int) c_in
  extern "c" fn auth_verify(as: ?*auth_session_t, style: ?[*:0]const u8, name: ?[*:0]const u8, ...) ?*auth_session_
  extern "c" fn bcrypt(pass: [*:0]const u8, salt: [*:0]const u8) ?[*:0]const u
  extern "c" fn bcrypt_checkpass(pass: [*:0]const u8, goodhash: [*:0]const u8) c_in
  extern "c" fn bcrypt_gensalt(log_rounds: u8) [*:0]const u
  extern "c" fn bcrypt_newhash(pass: [*:0]const u8, log_rounds: c_int, hash: [*]u8, hashlen: usize) c_in
  extern "c" fn futex(uaddr: ?*const volatile u32, op: c_int, val: c_int, timeout: ?*const timespec, uaddr2: ?*const volatile u32) c_in
  extern "c" fn getpwnam_shadow(name: [*:0]const u8) ?*passw
  extern "c" fn getpwuid_shadow(uid: uid_t) ?*passw
  extern "c" fn getthrid() pid_
  extern "c" fn login_close(lc: *login_cap_t) voi
  extern "c" fn login_getcapbool(lc: *login_cap_t, cap: [*:0]const u8, def: c_int) c_in
  extern "c" fn login_getcapnum(lc: *login_cap_t, cap: [*:0]const u8, def: i64, err: i64) i6
  extern "c" fn login_getcapsize(lc: *login_cap_t, cap: [*:0]const u8, def: i64, err: i64) i6
  extern "c" fn login_getcapstr(lc: *login_cap_t, cap: [*:0]const u8, def: [*:0]const u8, err: [*:0]const u8) [*:0]const u
  extern "c" fn login_getcaptime(lc: *login_cap_t, cap: [*:0]const u8, def: i64, err: i64) i6
  extern "c" fn login_getclass(class: ?[*:0]const u8) ?*login_cap_
  extern "c" fn login_getstyle(lc: *login_cap_t, style: ?[*:0]const u8, atype: ?[*:0]const u8) ?[*:0]const u
  extern "c" fn pledge(promises: ?[*:0]const u8, execpromises: ?[*:0]const u8) c_in
  extern "c" fn ptrace(request: c_int, pid: pid_t, addr: caddr_t, data: c_int) c_in
  extern "c" fn pw_dup(pw: *const passwd) ?*passw
  extern "c" fn setclasscontext(class: [*:0]const u8, flags: c_uint) c_in
  extern "c" fn setpassent(stayopen: c_int) c_in
  extern "c" fn setusercontext(lc: *login_cap_t, pwd: *passwd, uid: uid_t, flags: c_uint) c_in
  extern "c" fn uid_from_user(name: [*:0]const u8, uid: *uid_t) c_in
  extern "c" fn unveil(path: ?[*:0]const u8, permissions: ?[*:0]const u8) c_in
  extern "c" fn user_from_uid(uid: uid_t, noname: c_int) ?[*:0]const u
}

std.c.serenity {
  const FUTEX = struct
  const IP = struct
  const IPTOS = struct
  const IPV6 = struct
  const PERF_EVENT = packed struct(c_int)
  extern "c" fn anon_create(size: usize, options: O) c_in
  extern "c" fn disown(pid: pid_t) c_in
  extern "c" fn futex(userspace_address: *u32, futex_op: c_int, value: u32, timeout: *const timespec, userspace_address2: *u32, value3: u32) c_in
  extern "c" fn futex_wait(userspace_address: *u32, value: u32, abstime: *const timespec, clockid: clockid_t, process_shared: c_int) c_in
  extern "c" fn futex_wake(userspace_address: *u32, count: u32, process_shared: c_int) c_in
  extern "c" fn get_stack_bounds(user_stack_base: *usize, user_stack_size: *usize) c_in
  extern "c" fn getkeymap(name_buffer: [*]u8, name_buffer_size: usize, map: [*]u32, shift_map: [*]u32, alt_map: [*]u32, altgr_map: [*]u32, shift_altgr_map: [*]u32) c_in
  extern "c" fn perf_event(type: PERF_EVENT, arg1: usize, arg2: usize) c_in
  extern "c" fn perf_register_string(string: [*]const u8, string_length: usize) c_in
  extern "c" fn profiling_disable(pid: pid_t) c_in
  extern "c" fn profiling_enable(pid: pid_t, event_mask: PERF_EVENT) c_in
  extern "c" fn profiling_free_buffer(pid: pid_t) c_in
  extern "c" fn purge(mode: c_int) c_in
  extern "c" fn serenity_open(path: [*]const u8, path_length: usize, options: c_int, ...) c_in
  extern "c" fn serenity_readlink(path: [*]const u8, path_length: usize, buffer: [*]u8, buffer_size: usize) c_in
  extern "c" fn setkeymap(name: [*]const u8, map: [*]const u32, shift_map: [*]const u32, alt_map: [*]const u32, altgr_map: [*]const u32, shift_altgr_map: [*]const u32) c_in
}

std.c {
  const @"close$NOCANCEL" = darwin.@"close$NOCANCEL
  const AF = if (builtin.abi.isAndroid()) struct
  const AF_SUN = illumos.AF_SU
  const AI = if (builtin.abi.isAndroid()) packed struct(u32)
  const ARCH = switch (native_os)
  const AT = switch (native_os)
  const AT_SUN = illumos.AT_SU
  const AUTH = openbsd.AUT
  const BI = openbsd.B
  const CALENDAR_CLOCK = darwin.CALENDAR_CLOC
  const CAP_RIGHTS_VERSION = freebsd.CAP_RIGHTS_VERSIO
  const CLOCK = clockid_
  const COPYFILE = darwin.COPYFIL
  const CPUFAMILY = darwin.CPUFAMIL
  const CPU_COUNT = switch (native_os)
  const CSIZE = switch (native_os)
  const CTL = switch (native_os)
  const DB_RECORDTYPE = darwin.DB_RECORDTYP
  const DIR = opaque {
  const DT = switch (native_os)
  const DirEnt = haiku.DirEn
  const E = switch (native_os)
  const EAI = if (builtin.abi.isAndroid()) enum(c_int)
  const EV = switch (native_os)
  const EVFILT = switch (native_os)
  const EXC = darwin.EX
  const EXCEPTION = darwin.EXCEPTIO
  const Elf_Symndx = switch (native_os)
  const F = switch (native_os)
  const FD_CLOEXEC = switch (native_os)
  const FILE = opaque {
  const FILE_EVENT = illumos.FILE_EVEN
  const FUTEX = switch (native_os)
  const F_OK = switch (native_os)
  const Flock = switch (native_os)
  const GETCONTEXT = illumos.GETCONTEX
  const GETUSTACK = illumos.GETUSTAC
  const HOST_NAME_MAX = switch (native_os)
  const HW = openbsd.H
  const IFNAMESIZE = switch (native_os)
  const IOCPARM_MASK = switch (native_os)
  const IOV_MAX = switch (native_os)
  const IP = switch (native_os)
  const IPPROTO = switch (native_os)
  const IPTOS = switch (native_os)
  const IPV6 = switch (native_os)
  const KERN = switch (native_os)
  const KEVENT = darwin.KEVEN
  const KINFO_FILE_SIZE = freebsd.KINFO_FILE_SIZ
  const Kevent = switch (native_os)
  const LC = enum(c_int)
  const LOCK = std.posix.LOC
  const MACH = darwin.MAC
  const MACH_MSG_TYPE = darwin.MACH_MSG_TYP
  const MACH_PORT_RIGHT = darwin.MACH_PORT_RIGH
  const MACH_TASK_BASIC_INFO = darwin.MACH_TASK_BASIC_INF
  const MACH_TASK_BASIC_INFO_COUNT = darwin.MACH_TASK_BASIC_INFO_COUN
  const MADV = switch (native_os)
  const MAP = switch (native_os)
  const MAP_FAILED: *anyopaque = @ptrFromInt(maxInt(usize)
  const MATTR = darwin.MATT
  const MAXNAMLEN = switch (native_os)
  const MCL = switch (native_os)
  const MFD = switch (native_os)
  const MINSIGSTKSZ = switch (native_os)
  const MLOCK = switch (native_os)
  const MREMAP = switch (native_os)
  const MSF = switch (native_os)
  const MSG = switch (native_os)
  const NAME_MAX = switch (native_os)
  const NCCS = switch (native_os)
  const NI = switch (native_os)
  const NOTE = switch (native_os)
  const NSIG = switch (native_os)
  const NSVersionOfRunTimeLibrary = darwin.NSVersionOfRunTimeLibrar
  const O = switch (native_os)
  const OPEN_MAX = darwin.OPEN_MA
  const OS = darwin.O
  const PATH_MAX = switch (native_os)
  const PERF_EVENT = serenity.PERF_EVEN
  const PF = if (builtin.abi.isAndroid()) struct
  const POLL = switch (native_os)
  const PORT_ALERT = illumos.PORT_ALER
  const PORT_SOURCE = illumos.PORT_SOURC
  const POSIX_FADV = illumos.POSIX_FAD
  const POSIX_SPAWN = darwin.POSIX_SPAW
  const PR = switch (native_os)
  const PROT = switch (native_os)
  const PT = darwin.P
  const PTHREAD_COND_INITIALIZER: pthread_cond_t = .{
  const PTHREAD_MUTEX_INITIALIZER: pthread_mutex_t = .{
  const PTHREAD_STACK_MIN = openbsd.PTHREAD_STACK_MI
  const RLIM = switch (native_os)
  const RTLD = switch (native_os)
  const R_OK = switch (native_os)
  const S = switch (native_os)
  const SA = switch (native_os)
  const SC = switch (native_os)
  const SCM = switch (native_os)
  const SEEK = switch (native_os)
  const SETCONTEXT = illumos.SETCONTEX
  const SETUSTACK = illumos.GETUSTAC
  const SFD = illumos.SF
  const SHUT = switch (native_os)
  const SIG = switch (native_os)
  const SIGSTKSZ = switch (native_os)
  const SIOCGIFINDEX = switch (native_os)
  const SO = switch (native_os)
  const SOCK = switch (native_os)
  const SOL = switch (native_os)
  const SOMAXCONN = switch (native_os)
  const SS = switch (native_os)
  const STDERR_FILENO = switch (native_os)
  const STDIN_FILENO = switch (native_os)
  const STDOUT_FILENO = switch (native_os)
  const SYS = switch (native_os)
  const SYSPROTO_CONTROL = darwin.SYSPROTO_CONTRO
  const SYSPROTO_EVENT = darwin.SYSPROTO_EVEN
  const Sigaction = switch (native_os)
  const Stat = switch (native_os)
  const T = switch (native_os)
  const TASK = darwin.TAS
  const TASK_NULL = darwin.TASK_NUL
  const TASK_VM_INFO = darwin.TASK_VM_INF
  const TASK_VM_INFO_COUNT = darwin.TASK_VM_INFO_COUN
  const TCFLUSH = openbsd.TCFLUS
  const TCIO = openbsd.TCI
  const TCP = switch (native_os)
  const TCSA = std.posix.TCS
  const TFD = switch (native_os)
  const THREAD = darwin.THREA
  const THREAD_BASIC_INFO = darwin.THREAD_BASIC_INF
  const THREAD_BASIC_INFO_COUNT = darwin.THREAD_BASIC_INFO_COUN
  const THREAD_IDENTIFIER_INFO_COUNT = darwin.THREAD_IDENTIFIER_INFO_COUN
  const THREAD_NULL = darwin.THREAD_NUL
  const THREAD_STATE_NONE = darwin.THREAD_STATE_NON
  const TIMER = switch (native_os)
  const TIMERFD_CLOCK = timerfd_clockid_
  const UL = darwin.U
  const UMTX_ABSTIME = freebsd.UMTX_ABSTIM
  const UMTX_OP = freebsd.UMTX_O
  const UTIME = switch (native_os)
  const V = switch (native_os)
  const VDSO = switch (native_os)
  const VM = darwin.V
  const W = switch (native_os)
  const W_OK = switch (native_os)
  const X_OK = switch (native_os)
  const _NSGetExecutablePath = darwin._NSGetExecutablePat
  const _SC = if (builtin.abi.isAndroid()) enum(c_int)
  const __getdirentries64 = darwin.__getdirentries6
  const __ulock_wait = darwin.__ulock_wai
  const __ulock_wait2 = darwin.__ulock_wait
  const __ulock_wake = darwin.__ulock_wak
  const _dyld_get_image_header = darwin._dyld_get_image_heade
  const _dyld_get_image_header_containing_address = darwin._dyld_get_image_header_containing_addres
  const _dyld_get_image_name = darwin._dyld_get_image_nam
  const _dyld_get_image_vmaddr_slide = darwin._dyld_get_image_vmaddr_slid
  const _dyld_image_count = darwin._dyld_image_coun
  const _errno = switch (native_os)
  const _get_next_area_info = haiku._get_next_area_inf
  const _get_next_image_info = haiku._get_next_image_inf
  const _get_team_info = haiku._get_team_inf
  const _host_page_size = darwin._host_page_siz
  const _kern_get_current_team = haiku._kern_get_current_tea
  const _kern_open_dir = haiku._kern_open_di
  const _kern_read_dir = haiku._kern_read_di
  const _kern_read_stat = haiku._kern_read_sta
  const _kern_rewind_dir = haiku._kern_rewind_di
  const _ksiginfo = netbsd._ksiginf
  const _lwp_park = netbsd.___lwp_park6
  const _lwp_self = netbsd._lwp_sel
  const _lwp_unpark = netbsd._lwp_unpar
  const _lwp_unpark_all = netbsd._lwp_unpark_al
  const _msize = switch (native_os)
  const _umtx_op = freebsd._umtx_o
  const _umtx_time = freebsd._umtx_tim
  const accept_filter_arg = switch (native_os)
  const addrinfo = if (builtin.abi.isAndroid()) extern struct
  const anon_create = serenity.anon_creat
  const arc4random_buf = switch (native_os)
  const area_id = haiku.area_i
  const area_info = haiku.area_inf
  const auth_approval = openbsd.auth_approva
  const auth_call = openbsd.auth_cal
  const auth_cat = openbsd.auth_ca
  const auth_challenge = openbsd.auth_challeng
  const auth_check_change = openbsd.auth_check_chang
  const auth_check_expire = openbsd.auth_check_expir
  const auth_checknologin = openbsd.auth_checknologi
  const auth_clean = openbsd.auth_clea
  const auth_close = openbsd.auth_clos
  const auth_clrenv = openbsd.auth_clren
  const auth_clroption = openbsd.auth_clroptio
  const auth_clroptions = openbsd.auth_clroption
  const auth_getitem = openbsd.auth_getite
  const auth_getpwd = openbsd.auth_getpw
  const auth_getstate = openbsd.auth_getstat
  const auth_getvalue = openbsd.auth_getvalu
  const auth_item_t = openbsd.auth_item_
  const auth_mkvalue = openbsd.auth_mkvalu
  const auth_open = openbsd.auth_ope
  const auth_session_t = openbsd.auth_session_
  const auth_setdata = openbsd.auth_setdat
  const auth_setenv = openbsd.auth_seten
  const auth_setitem = openbsd.auth_setite
  const auth_setoption = openbsd.auth_setoptio
  const auth_setpwd = openbsd.auth_setpw
  const auth_setstate = openbsd.auth_setstat
  const auth_userchallenge = openbsd.auth_userchalleng
  const auth_usercheck = openbsd.auth_userchec
  const auth_userokay = openbsd.auth_useroka
  const auth_userresponse = openbsd.auth_userrespons
  const auth_verify = openbsd.auth_verif
  const bcrypt = openbsd.bcryp
  const bcrypt_checkpass = openbsd.bcrypt_checkpas
  const bcrypt_gensalt = openbsd.bcrypt_gensal
  const bcrypt_newhash = openbsd.bcrypt_newhas
  const blkcnt_t = switch (native_os)
  const blksize_t = switch (native_os)
  const boolean_t = darwin.boolean_
  const caddr_t = ?[*]u
  const cap_rights = freebsd.cap_right
  const cc_t = u
  const clock_get_time = darwin.clock_get_tim
  const clock_getres = switch (native_os)
  const clock_gettime = switch (native_os)
  const clock_nanosleep = switch (native_os)
  const clock_res_t = darwin.clock_res_
  const clock_serv_t = darwin.clock_serv_
  const clock_t = switch (native_os)
  const clockid_t = switch (native_os)
  const close = switch (native_os)
  const cmsghdr = switch (native_os)
  const copy_file_range = switch (native_os)
  const cpu_set_t = switch (native_os)
  const ctid_t = illumos.ctid_
  const dev_t = switch (native_os)
  const directory_which = haiku.directory_whic
  const dirent = switch (native_os)
  const dirent64 = switch (native_os)
  const disown = serenity.disow
  const dispatch = darwin.dispatc
  const div_t = extern struct
  const dl_info = if (native_os.isDarwin()) darwin.dl_info else {
  const dl_iterate_phdr_callback = *const fn (info: *dl_phdr_info, size: usize, data: ?*anyopaque) callconv(.c) c_in
  const dl_phdr_info = switch (native_os)
  const dladdr = if (native_os.isDarwin()) darwin.dladdr else {
  const dyld_image_path_containing_address = darwin.dyld_image_path_containing_addres
  const epoll_event = switch (native_os)
  const exception_behavior_array_t = darwin.exception_behavior_array_
  const exception_behavior_t = darwin.exception_behavior_
  const exception_data_t = darwin.exception_data_
  const exception_data_type_t = darwin.exception_data_type_
  const exception_flavor_array_t = darwin.exception_flavor_array_
  const exception_handler_array_t = darwin.exception_handler_array_
  const exception_handler_t = darwin.exception_handler_
  const exception_mask_array_t = darwin.exception_mask_array_
  const exception_mask_t = darwin.exception_mask_
  const exception_port_array_t = darwin.exception_port_array_
  const exception_port_t = darwin.exception_port_
  const exception_type_t = darwin.exception_type_
  const fcopyfile = darwin.fcopyfil
  const fd_t = switch (native_os)
  const fflags_t = freebsd.fflags_
  const file_obj = illumos.file_ob
  const find_directory = haiku.find_director
  const find_thread = haiku.find_threa
  const flock = switch (native_os)
  const fork = switch (native_os)
  const fsblkcnt_t = freebsd.fsblkcnt_
  const fsfilcnt_t = freebsd.fsfilcnt_
  const fstat = switch (native_os)
  const fstatat = switch (native_os)
  const futex = switch (native_os)
  const futex_wait = serenity.futex_wai
  const futex_wake = serenity.futex_wak
  const get_stack_bounds = serenity.get_stack_bound
  const get_system_info = haiku.get_system_inf
  const getdents = switch (native_os)
  const getdirentries = switch (native_os)
  const getentropy = switch (native_os)
  const getkeymap = serenity.getkeyma
  const getpwnam_shadow = openbsd.getpwnam_shado
  const getpwuid_shadow = openbsd.getpwuid_shado
  const getrandom = switch (native_os)
  const getrusage = switch (native_os)
  const getthrid = openbsd.getthri
  const gettimeofday = switch (native_os)
  const gid_t = switch (native_os)
  const group = switch (native_os)
  const host_t = darwin.host_
  const id_t = illumos.id_
  const ifreq = switch (native_os)
  const image_info = haiku.image_inf
  const imaxdiv_t = extern struct
  const in6_pktinfo = switch (native_os)
  const in_pktinfo = switch (native_os)
  const in_port_t = u1
  const ino_t = switch (native_os)
  const integer_t = darwin.integer_
  const intmax_t = i6
  const ioctl = switch (native_os)
  const iovec = std.posix.iove
  const iovec_const = std.posix.iovec_cons
  const ipc_space_port_t = darwin.ipc_space_port_
  const ipc_space_t = darwin.ipc_space_
  const itimerspec = switch (native_os)
  const kern_return_t = darwin.kern_return_
  const kevent64 = darwin.kevent6
  const kevent64_s = darwin.kevent64_
  const kinfo_file = freebsd.kinfo_fil
  const kinfo_getfile = freebsd.kinfo_getfil
  const ldiv_t = extern struct
  const lif_ifinfo_req = illumos.lif_ifinfo_re
  const lif_nd_req = illumos.lif_nd_re
  const lifreq = illumos.lifre
  const linger = switch (native_os)
  const lldiv_t = extern struct
  const login_cap_t = openbsd.login_cap_
  const login_close = openbsd.login_clos
  const login_getcapbool = openbsd.login_getcapboo
  const login_getcapnum = openbsd.login_getcapnu
  const login_getcapsize = openbsd.login_getcapsiz
  const login_getcapstr = openbsd.login_getcapst
  const login_getcaptime = openbsd.login_getcaptim
  const login_getclass = openbsd.login_getclas
  const login_getstyle = openbsd.login_getstyl
  const lwp_gettid = dragonfly.lwp_getti
  const lwpid_t = netbsd.lwpid_
  const mach_absolute_time = darwin.mach_absolute_tim
  const mach_continuous_time = darwin.mach_continuous_tim
  const mach_exception_data_t = darwin.mach_exception_data_
  const mach_exception_data_type_t = darwin.mach_exception_data_type_
  const mach_hdr = darwin.mach_hd
  const mach_host_self = darwin.mach_host_sel
  const mach_msg = darwin.mach_ms
  const mach_msg_bits_t = darwin.mach_msg_bits_
  const mach_msg_header_t = darwin.mach_msg_header_
  const mach_msg_id_t = darwin.mach_msg_id_
  const mach_msg_option_t = darwin.mach_msg_option_
  const mach_msg_return_t = darwin.mach_msg_return_
  const mach_msg_size_t = darwin.mach_msg_size_
  const mach_msg_timeout_t = darwin.mach_msg_timeout_
  const mach_msg_type_name_t = darwin.mach_msg_type_name_
  const mach_msg_type_number_t = darwin.mach_msg_type_number_
  const mach_port_allocate = darwin.mach_port_allocat
  const mach_port_array_t = darwin.mach_port_array_
  const mach_port_deallocate = darwin.mach_port_deallocat
  const mach_port_insert_right = darwin.mach_port_insert_righ
  const mach_port_name_t = darwin.mach_port_name_
  const mach_port_right_t = darwin.mach_port_right_
  const mach_port_t = darwin.mach_port_
  const mach_task_basic_info = darwin.mach_task_basic_inf
  const mach_task_self = darwin.mach_task_sel
  const mach_timebase_info = darwin.mach_timebase_inf
  const mach_timebase_info_data = darwin.mach_timebase_info_dat
  const mach_timespec_t = darwin.mach_timespec_
  const mach_vm_address_t = darwin.mach_vm_address_
  const mach_vm_protect = darwin.mach_vm_protec
  const mach_vm_read = darwin.mach_vm_rea
  const mach_vm_region = darwin.mach_vm_regio
  const mach_vm_region_recurse = darwin.mach_vm_region_recurs
  const mach_vm_size_t = darwin.mach_vm_size_
  const mach_vm_write = darwin.mach_vm_writ
  const major_t = illumos.major_
  const malloc_size = switch (native_os)
  const malloc_usable_size = switch (native_os)
  const max_align_t = if (native_abi == .msvc or native_abi == .itaniu
  const memory_object_offset_t = darwin.memory_object_offset_
  const minor_t = illumos.minor_
  const mlock = switch (native_os)
  const mlock2 = switch (native_os)
  const mlockall = switch (native_os)
  const mmsghdr = switch (native_os)
  const mode_t = switch (native_os)
  const msghdr = switch (native_os)
  const msghdr_const = switch (native_os)
  const msync = switch (native_os)
  const munlock = switch (native_os)
  const munlockall = switch (native_os)
  const nanosleep = switch (native_os)
  const natural_t = darwin.natural_
  const nfds_t = switch (native_os)
  const nlink_t = switch (native_os)
  const off_t = switch (native_os)
  const os_log_create = darwin.os_log_creat
  const os_log_t = darwin.os_log_
  const os_log_type_enabled = darwin.os_log_type_enable
  const os_log_type_t = darwin.os_log_type_
  const os_signpost_enabled = darwin.os_signpost_enable
  const os_signpost_id_generate = darwin.os_signpost_id_generat
  const os_signpost_id_make_with_pointer = darwin.os_signpost_id_make_with_pointe
  const os_signpost_id_t = darwin.os_signpost_id_
  const os_signpost_interval_begin = darwin.os_signpost_interval_begi
  const os_signpost_interval_end = darwin.os_signpost_interval_en
  const os_unfair_lock = darwin.os_unfair_loc
  const os_unfair_lock_assert_not_owner = darwin.os_unfair_lock_assert_not_owne
  const os_unfair_lock_assert_owner = darwin.os_unfair_lock_assert_owne
  const os_unfair_lock_lock = darwin.os_unfair_lock_loc
  const os_unfair_lock_t = darwin.os_unfair_lock_
  const os_unfair_lock_trylock = darwin.os_unfair_lock_tryloc
  const os_unfair_lock_unlock = darwin.os_unfair_lock_unloc
  const padded_pthread_spin_t = switch (native_os)
  const passwd = switch (native_os)
  const perf_event = serenity.perf_even
  const perf_event_attr = switch (native_os)
  const perf_register_string = serenity.perf_register_strin
  const pid_for_task = darwin.pid_for_tas
  const pid_t = switch (native_os)
  const pipe2 = switch (native_os)
  const pledge = openbsd.pledg
  const policy_t = darwin.policy_
  const pollfd = switch (native_os)
  const poolid_t = illumos.poolid_
  const port_event = switch (native_os)
  const port_id = haiku.port_i
  const port_notify = illumos.port_notif
  const port_t = switch (native_os)
  const posix_memalign = switch (native_os)
  const posix_spawn = darwin.posix_spaw
  const posix_spawn_file_actions_addchdir_np = darwin.posix_spawn_file_actions_addchdir_n
  const posix_spawn_file_actions_addclose = darwin.posix_spawn_file_actions_addclos
  const posix_spawn_file_actions_adddup2 = darwin.posix_spawn_file_actions_adddup
  const posix_spawn_file_actions_addfchdir_np = darwin.posix_spawn_file_actions_addfchdir_n
  const posix_spawn_file_actions_addinherit_np = darwin.posix_spawn_file_actions_addinherit_n
  const posix_spawn_file_actions_addopen = darwin.posix_spawn_file_actions_addope
  const posix_spawn_file_actions_destroy = darwin.posix_spawn_file_actions_destro
  const posix_spawn_file_actions_init = darwin.posix_spawn_file_actions_ini
  const posix_spawn_file_actions_t = darwin.posix_spawn_file_actions_
  const posix_spawnattr_destroy = darwin.posix_spawnattr_destro
  const posix_spawnattr_getflags = darwin.posix_spawnattr_getflag
  const posix_spawnattr_init = darwin.posix_spawnattr_ini
  const posix_spawnattr_setflags = darwin.posix_spawnattr_setflag
  const posix_spawnattr_t = darwin.posix_spawnattr_
  const posix_spawnp = darwin.posix_spawn
  const priority = illumos.priorit
  const procfs = illumos.procf
  const profiling_disable = serenity.profiling_disabl
  const profiling_enable = serenity.profiling_enabl
  const profiling_free_buffer = serenity.profiling_free_buffe
  const projid_t = illumos.projid_
  const pthread_attr_get_qos_class_np = darwin.pthread_attr_get_qos_class_n
  const pthread_attr_set_qos_class_np = darwin.pthread_attr_set_qos_class_n
  const pthread_attr_t = switch (native_os)
  const pthread_cancelstate = switch (native_os)
  const pthread_cond_t = switch (native_os)
  const pthread_get_qos_class_np = darwin.pthread_get_qos_class_n
  const pthread_key_t = switch (native_os)
  const pthread_mutex_t = switch (native_os)
  const pthread_rwlock_t = switch (native_os)
  const pthread_set_qos_class_self_np = darwin.pthread_set_qos_class_self_n
  const pthread_setname_np = switch (native_os)
  const pthread_spin_t = switch (native_os)
  const pthread_spinlock_t = openbsd.pthread_spinlock_
  const pthread_t = switch (native_os)
  const pthread_threadid_np = switch (native_os)
  const ptrace = switch (native_os)
  const purge = serenity.purg
  const pw_dup = openbsd.pw_du
  const qos_class_t = darwin.qos_class_
  const readdir = switch (native_os)
  const realpath = switch (native_os)
  const recvmsg = switch (native_os)
  const rlim_t = switch (native_os)
  const rlimit = switch (native_os)
  const rlimit_resource = switch (native_os)
  const rusage = switch (native_os)
  const sa_family_t = switch (native_os)
  const sched_yield = switch (native_os)
  const sem_id = haiku.sem_i
  const sem_t = switch (native_os)
  const sendfile = switch (native_os)
  const serenity_open = serenity.serenity_ope
  const serenity_readlink = serenity.serenity_readlin
  const setclasscontext = openbsd.setclasscontex
  const setkeymap = serenity.setkeyma
  const setpassent = openbsd.setpassen
  const setusercontext = openbsd.setusercontex
  const sf_hdtr = switch (native_os)
  const shm_open = switch (native_os)
  const sig_atomic_t = switch (native_os)
  const sigaction = switch (native_os)
  const sigaddset = private.sigaddse
  const sigaltstack = switch (native_os)
  const sigdelset = private.sigdelse
  const sigemptyset = switch (native_os)
  const sigfillset = switch (native_os)
  const siginfo_t = switch (native_os)
  const sigismember = private.sigismembe
  const signalfd_siginfo = illumos.signalfd_siginf
  const sigprocmask = switch (native_os)
  const sigrtmax = switch (native_os)
  const sigrtmin = switch (native_os)
  const sigset_t = switch (native_os)
  const sigval = switch (native_os)
  const sigval_t = switch (native_os)
  const sockaddr = switch (native_os)
  const socket = switch (native_os)
  const socketpair = switch (native_os)
  const socklen_t = switch (native_os)
  const speed_t = switch (native_os)
  const stack_t = switch (native_os)
  const stat = switch (native_os)
  const status_t = haiku.status_
  const suseconds_t = switch (native_os)
  const sysconf = switch (native_os)
  const system_info = haiku.system_inf
  const task_flavor_t = darwin.task_flavor_
  const task_for_pid = darwin.task_for_pi
  const task_get_exception_ports = darwin.task_get_exception_port
  const task_info = darwin.task_inf
  const task_info_t = darwin.task_info_
  const task_name_t = darwin.task_name_
  const task_policy_flavor_t = darwin.task_policy_flavor_
  const task_policy_t = darwin.task_policy_
  const task_read_t = darwin.task_read_
  const task_resume = darwin.task_resum
  const task_set_exception_ports = darwin.task_set_exception_port
  const task_suspend = darwin.task_suspen
  const task_t = darwin.task_
  const task_threads = darwin.task_thread
  const task_vm_info_data_t = darwin.task_vm_info_data_
  const taskid_t = illumos.taskid_
  const tc_cflag_t = switch (native_os)
  const tc_iflag_t = switch (native_os)
  const tc_lflag_t = switch (native_os)
  const tc_oflag_t = switch (native_os)
  const team_id = haiku.team_i
  const team_info = haiku.team_inf
  const termios = switch (native_os)
  const thread_act_t = darwin.thread_act_
  const thread_basic_info = darwin.thread_basic_inf
  const thread_flavor_t = darwin.thread_flavor_
  const thread_get_state = darwin.thread_get_stat
  const thread_id = haiku.thread_i
  const thread_identifier_info = darwin.thread_identifier_inf
  const thread_info = darwin.thread_inf
  const thread_info_t = darwin.thread_info_
  const thread_port_t = darwin.thread_port_
  const thread_resume = darwin.thread_resum
  const thread_set_state = darwin.thread_set_stat
  const thread_state_flavor_t = darwin.thread_state_flavor_
  const thread_state_t = darwin.thread_state_
  const thread_t = darwin.thread_
  const time_t = switch (native_os)
  const time_value_t = darwin.time_value_
  const timerfd_clockid_t = switch (native_os)
  const timespec = switch (native_os)
  const timeval = switch (native_os)
  const timezone = switch (native_os)
  const uid_from_user = openbsd.uid_from_use
  const uid_t = switch (native_os)
  const uintmax_t = u6
  const umtx_sleep = dragonfly.umtx_slee
  const umtx_wakeup = dragonfly.umtx_wakeu
  const unveil = openbsd.unvei
  const user_desc = switch (native_os)
  const user_from_uid = openbsd.user_from_ui
  const utsname = switch (native_os)
  const vm32_object_id_t = darwin.vm32_object_id_
  const vm_address_t = darwin.vm_address_
  const vm_behavior_t = darwin.vm_behavior_
  const vm_deallocate = darwin.vm_deallocat
  const vm_inherit_t = darwin.vm_inherit_
  const vm_machine_attribute = darwin.vm_machine_attribut
  const vm_machine_attribute_t = darwin.vm_machine_attribute_
  const vm_machine_attribute_val_t = darwin.vm_machine_attribute_val_
  const vm_map_read_t = darwin.vm_map_read_
  const vm_map_t = darwin.vm_map_
  const vm_object_id_t = darwin.vm_object_id_
  const vm_offset_t = darwin.vm_offset_
  const vm_prot_t = darwin.vm_prot_
  const vm_region_basic_info_64 = darwin.vm_region_basic_info_6
  const vm_region_extended_info = darwin.vm_region_extended_inf
  const vm_region_flavor_t = darwin.vm_region_flavor_
  const vm_region_info_t = darwin.vm_region_info_
  const vm_region_recurse_info_t = darwin.vm_region_recurse_info_
  const vm_region_submap_info_64 = darwin.vm_region_submap_info_6
  const vm_region_submap_short_info_64 = darwin.vm_region_submap_short_info_6
  const vm_region_top_info = darwin.vm_region_top_inf
  const vm_size_t = darwin.vm_size_
  const wait4 = switch (native_os)
  const wchar_t = switch (builtin.target.os.tag)
  const whence_t = if (native_os == .wasi) std.os.wasi.whence_t else c_in
  const winsize = std.posix.winsiz
  const wint_t = switch (builtin.target.os.tag)
  const zoneid_t = illumos.zoneid_
  extern "c" fn _Exit(code: c_int) noretur
  extern "c" fn _exit(code: c_int) noretur
  extern "c" fn abort() noretur
  extern "c" fn accept(sockfd: fd_t, noalias addr: ?*sockaddr, noalias addrlen: ?*socklen_t) c_in
  extern "c" fn accept4(sockfd: fd_t, noalias addr: ?*sockaddr, noalias addrlen: ?*socklen_t, flags: c_uint) c_in
  extern "c" fn access(path: [*:0]const u8, mode: c_uint) c_in
  extern "c" fn alarm(seconds: c_uint) c_uin
  extern "c" fn bind(socket: fd_t, address: ?*const sockaddr, address_len: socklen_t) c_in
  extern "c" fn calloc(usize, usize) ?*anyopaqu
  extern "c" fn chdir(path: [*:0]const u8) c_in
  extern "c" fn chmod(path: [*:0]const u8, mode: mode_t) c_in
  extern "c" fn closedir(dp: *DIR) c_in
  extern "c" fn closelog() voi
  extern "c" fn connect(sockfd: fd_t, sock_addr: *const sockaddr, addrlen: socklen_t) c_in
  extern "c" fn dl_iterate_phdr(callback: dl_iterate_phdr_callback, data: ?*anyopaque) c_in
  extern "c" fn dlclose(handle: *anyopaque) c_in
  extern "c" fn dlerror() ?[*:0]u
  extern "c" fn dlopen(path: ?[*:0]const u8, mode: RTLD) ?*anyopaqu
  extern "c" fn dlsym(handle: ?*anyopaque, symbol: [*:0]const u8) ?*anyopaqu
  extern "c" fn dn_expan
  extern "c" fn dup(fd: fd_t) c_in
  extern "c" fn dup2(old_fd: fd_t, new_fd: fd_t) c_in
  extern "c" fn dup3(old: c_int, new: c_int, flags: c_uint) c_in
  extern "c" fn endgrent() voi
  extern "c" fn endpwent() voi
  extern "c" fn epoll_create1(flags: c_uint) c_in
  extern "c" fn epoll_ctl(epfd: fd_t, op: c_uint, fd: fd_t, event: ?*epoll_event) c_in
  extern "c" fn epoll_pwai
  extern "c" fn epoll_wait(epfd: fd_t, events: [*]epoll_event, maxevents: c_uint, timeout: c_int) c_in
  extern "c" fn eventfd(initval: c_uint, flags: c_uint) c_in
  extern "c" fn execve(path: [*:0]const u8, argv: [*:null]const ?[*:0]const u8, envp: [*:null]const ?[*:0]const u8) c_in
  extern "c" fn exit(code: c_int) noretur
  extern "c" fn faccessat(dirfd: fd_t, path: [*:0]const u8, mode: c_uint, flags: c_uint) c_in
  extern "c" fn fallocate(fd: fd_t, mode: c_int, offset: off_t, len: off_t) c_in
  extern "c" fn fallocate64(fd: fd_t, mode: c_int, offset: off_t, len: off_t) c_in
  extern "c" fn fchdir(fd: fd_t) c_in
  extern "c" fn fchmod(fd: fd_t, mode: mode_t) c_in
  extern "c" fn fchmodat(fd: fd_t, path: [*:0]const u8, mode: mode_t, flags: c_uint) c_in
  extern "c" fn fchown(fd: fd_t, owner: uid_t, group: gid_t) c_in
  extern "c" fn fchownat(fd: fd_t, path: [*:0]const u8, owner: uid_t, group: gid_t, flags: c_uint) c_in
  extern "c" fn fclose(stream: *FILE) c_in
  extern "c" fn fcntl(fd: fd_t, cmd: c_int, ...) c_in
  extern "c" fn fdatasync(fd: c_int) c_in
  extern "c" fn fdopendir(fd: c_int) ?*DI
  extern "c" fn fmemopen(noalias buf: ?*anyopaque, size: usize, noalias mode: [*:0]const u8) ?*FIL
  extern "c" fn fopen(noalias filename: [*:0]const u8, noalias modes: [*:0]const u8) ?*FIL
  extern "c" fn fopen64(noalias filename: [*:0]const u8, noalias modes: [*:0]const u8) ?*FIL
  extern "c" fn fread(noalias ptr: [*]u8, size_of_type: usize, item_count: usize, noalias stream: *FILE) usiz
  extern "c" fn free(?*anyopaque) voi
  extern "c" fn freeaddrinfo(res: *addrinfo) voi
  extern "c" fn fsync(fd: c_int) c_in
  extern "c" fn ftruncate(fd: c_int, length: off_t) c_in
  extern "c" fn ftruncate64(fd: c_int, length: off_t) c_in
  extern "c" fn futimens(fd: fd_t, times: ?*const [2]timespec) c_in
  extern "c" fn futimes(fd: fd_t, times: ?*[2]timeval) c_in
  extern "c" fn fwrite(noalias ptr: [*]const u8, size_of_type: usize, item_count: usize, noalias stream: *FILE) usiz
  extern "c" fn gai_strerror(errcode: EAI) [*:0]const u
  extern "c" fn getaddrinf
  extern "c" fn getauxval(__type: c_ulong) c_ulon
  extern "c" fn getcwd(buf: [*]u8, size: usize) ?[*]u
  extern "c" fn getegid() gid_
  extern "c" fn getenv(name: [*:0]const u8) ?[*:0]u
  extern "c" fn geteuid() uid_
  extern "c" fn getgid() gid_
  extern "c" fn getgrent() ?*grou
  extern "c" fn getgrgid(gid: gid_t) ?*grou
  extern "c" fn getgrgid_r(gid: gid_t, grp: *group, buf: [*]u8, buflen: usize, result: *?*group) c_in
  extern "c" fn getgrnam(name: [*:0]const u8) ?*passw
  extern "c" fn getgrnam_r(name: [*:0]const u8, grp: *group, buf: [*]u8, buflen: usize, result: *?*group) c_in
  extern "c" fn gethostname(name: [*]u8, len: usize) c_in
  extern "c" fn getnameinf
  extern "c" fn getpeername(sockfd: fd_t, noalias addr: *sockaddr, noalias addrlen: *socklen_t) c_in
  extern "c" fn getpid() pid_
  extern "c" fn getppid() pid_
  extern "c" fn getpwent() ?*passw
  extern "c" fn getpwnam(name: [*:0]const u8) ?*passw
  extern "c" fn getpwnam_r(name: [*:0]const u8, pwd: *passwd, buf: [*]u8, buflen: usize, result: *?*passwd) c_in
  extern "c" fn getpwuid(uid: uid_t) ?*passw
  extern "c" fn getpwuid_r(uid: uid_t, pwd: *passwd, buf: [*]u8, buflen: usize, result: *?*passwd) c_in
  extern "c" fn getresgid(rgid: *gid_t, egid: *gid_t, sgid: *gid_t) c_in
  extern "c" fn getresuid(ruid: *uid_t, euid: *uid_t, suid: *uid_t) c_in
  extern "c" fn getrlimit(resource: rlimit_resource, rlim: *rlimit) c_in
  extern "c" fn getrlimit64(resource: rlimit_resource, rlim: *rlimit) c_in
  extern "c" fn getsockname(sockfd: fd_t, noalias addr: *sockaddr, noalias addrlen: *socklen_t) c_in
  extern "c" fn getsockopt(sockfd: fd_t, level: i32, optname: u32, noalias optval: ?*anyopaque, noalias optlen: *socklen_t) c_in
  extern "c" fn getuid() uid_
  extern "c" fn if_nametoindex([*:0]const u8) c_in
  extern "c" fn inotify_add_watch(fd: fd_t, pathname: [*:0]const u8, mask: u32) c_in
  extern "c" fn inotify_init1(flags: c_uint) c_in
  extern "c" fn inotify_rm_watch(fd: fd_t, wd: c_int) c_in
  extern "c" fn isatty(fd: fd_t) c_in
  extern "c" fn keven
  extern "c" fn kill(pid: pid_t, sig: SIG) c_in
  extern "c" fn kqueue() c_in
  extern "c" fn link(oldpath: [*:0]const u8, newpath: [*:0]const u8) c_in
  extern "c" fn linkat(oldfd: fd_t, oldpath: [*:0]const u8, newfd: fd_t, newpath: [*:0]const u8, flags: c_uint) c_in
  extern "c" fn listen(sockfd: fd_t, backlog: c_uint) c_in
  extern "c" fn lseek(fd: fd_t, offset: off_t, whence: whence_t) off_
  extern "c" fn lseek64(fd: fd_t, offset: i64, whence: c_int) i6
  extern "c" fn madvis
  extern "c" fn malloc(usize) ?*anyopaqu
  extern "c" fn memfd_create(name: [*:0]const u8, flags: c_uint) c_in
  extern "c" fn mincor
  extern "c" fn mkdir(path: [*:0]const u8, mode: mode_t) c_in
  extern "c" fn mkdirat(dirfd: fd_t, path: [*:0]const u8, mode: mode_t) c_in
  extern "c" fn mmap(addr: ?*align(page_size) anyopaque, len: usize, prot: PROT, flags: MAP, fd: fd_t, offset: off_t) *anyopaqu
  extern "c" fn mmap64(addr: ?*align(page_size) anyopaque, len: usize, prot: PROT, flags: MAP, fd: fd_t, offset: i64) *anyopaqu
  extern "c" fn mprotect(addr: *align(page_size) anyopaque, len: usize, prot: PROT) c_in
  extern "c" fn mremap(addr: ?*align(page_size) const anyopaque, old_len: usize, new_len: usize, flags: MREMAP, ...) *anyopaqu
  extern "c" fn munmap(addr: *align(page_size) const anyopaque, len: usize) c_in
  extern "c" fn open(path: [*:0]const u8, oflag: O, ...) c_in
  extern "c" fn open64(path: [*:0]const u8, oflag: O, ...) c_in
  extern "c" fn openat(fd: c_int, path: [*:0]const u8, oflag: O, ...) c_in
  extern "c" fn openat64(fd: c_int, path: [*:0]const u8, oflag: O, ...) c_in
  extern "c" fn opendir(pathname: [*:0]const u8) ?*DI
  extern "c" fn openlog(ident: [*:0]const u8, logopt: c_int, facility: c_int) voi
  extern "c" fn pipe(fds: *[2]fd_t) c_in
  extern "c" fn poll(fds: [*]pollfd, nfds: nfds_t, timeout: c_int) c_in
  extern "c" fn port_alert(port: port_t, flags: u32, events: u32, user_var: ?*anyopaque) c_in
  extern "c" fn port_associat
  extern "c" fn port_create() port_
  extern "c" fn port_dissociate(port: port_t, source: u32, object: usize) c_in
  extern "c" fn port_get
  extern "c" fn port_get(port: port_t, event: *port_event, timeout: ?*timespec) c_in
  extern "c" fn port_send
  extern "c" fn port_send(port: port_t, events: u32, user_var: ?*anyopaque) c_in
  extern "c" fn ppoll(fds: [*]pollfd, nfds: nfds_t, timeout: ?*const timespec, sigmask: ?*const sigset_t) c_in
  extern "c" fn prctl(option: c_int, ...) c_in
  extern "c" fn pread(fd: fd_t, buf: [*]u8, nbyte: usize, offset: off_t) isiz
  extern "c" fn pread64(fd: fd_t, buf: [*]u8, nbyte: usize, offset: i64) isiz
  extern "c" fn preadv(fd: c_int, iov: [*]const iovec, iovcnt: c_uint, offset: off_t) isiz
  extern "c" fn preadv64(fd: c_int, iov: [*]const iovec, iovcnt: c_uint, offset: i64) isiz
  extern "c" fn printf(format: [*:0]const u8, ...) c_in
  extern "c" fn prlimit(pid: pid_t, resource: rlimit_resource, new_limit: *const rlimit, old_limit: *rlimit) c_in
  extern "c" fn pthread_atfor
  extern "c" fn pthread_attr_destroy(attr: *pthread_attr_t) 
  extern "c" fn pthread_attr_init(attr: *pthread_attr_t) 
  extern "c" fn pthread_attr_setguardsize(attr: *pthread_attr_t, guardsize: usize) 
  extern "c" fn pthread_attr_setstack(attr: *pthread_attr_t, stackaddr: *anyopaque, stacksize: usize) 
  extern "c" fn pthread_attr_setstacksize(attr: *pthread_attr_t, stacksize: usize) 
  extern "c" fn pthread_cancel(pthread_t) 
  extern "c" fn pthread_cond_broadcast(cond: *pthread_cond_t) 
  extern "c" fn pthread_cond_destroy(cond: *pthread_cond_t) 
  extern "c" fn pthread_cond_signal(cond: *pthread_cond_t) 
  extern "c" fn pthread_cond_timedwait(noalias cond: *pthread_cond_t, noalias mutex: *pthread_mutex_t, noalias abstime: *const timespec) 
  extern "c" fn pthread_cond_wait(noalias cond: *pthread_cond_t, noalias mutex: *pthread_mutex_t) 
  extern "c" fn pthread_creat
  extern "c" fn pthread_detach(thread: pthread_t) 
  extern "c" fn pthread_exit(ptr: ?*anyopaque) noretur
  extern "c" fn pthread_get_name_np(thread: pthread_t, name: [*:0]u8, len: usize) voi
  extern "c" fn pthread_getname_np(thread: pthread_t, name: [*:0]u8, len: usize) c_in
  extern "c" fn pthread_getspecific(key: pthread_key_t) ?*anyopaqu
  extern "c" fn pthread_getthreadid_np() c_in
  extern "c" fn pthread_join(thread: pthread_t, arg_return: ?*?*anyopaque) 
  extern "c" fn pthread_key_creat
  extern "c" fn pthread_key_delete(key: pthread_key_t) 
  extern "c" fn pthread_kill(pthread_t, signal: SIG) c_in
  extern "c" fn pthread_mutex_destroy(mutex: *pthread_mutex_t) 
  extern "c" fn pthread_mutex_lock(mutex: *pthread_mutex_t) 
  extern "c" fn pthread_mutex_trylock(mutex: *pthread_mutex_t) 
  extern "c" fn pthread_mutex_unlock(mutex: *pthread_mutex_t) 
  extern "c" fn pthread_rwlock_destroy(rwl: *pthread_rwlock_t) callconv(.c) 
  extern "c" fn pthread_rwlock_rdlock(rwl: *pthread_rwlock_t) callconv(.c) 
  extern "c" fn pthread_rwlock_tryrdlock(rwl: *pthread_rwlock_t) callconv(.c) 
  extern "c" fn pthread_rwlock_trywrlock(rwl: *pthread_rwlock_t) callconv(.c) 
  extern "c" fn pthread_rwlock_unlock(rwl: *pthread_rwlock_t) callconv(.c) 
  extern "c" fn pthread_rwlock_wrlock(rwl: *pthread_rwlock_t) callconv(.c) 
  extern "c" fn pthread_self() pthread_
  extern "c" fn pthread_set_name_np(thread: pthread_t, name: [*:0]const u8) voi
  extern "c" fn pthread_setcancelstate(pthread_cancelstate, ?*pthread_cancelstate) 
  extern "c" fn pthread_setspecific(key: pthread_key_t, value: ?*anyopaque) c_in
  extern "c" fn pthread_sigmask(how: c_int, set: *const sigset_t, oldset: *sigset_t) c_in
  extern "c" fn pwrite(fd: fd_t, buf: [*]const u8, nbyte: usize, offset: off_t) isiz
  extern "c" fn pwrite64(fd: fd_t, buf: [*]const u8, nbyte: usize, offset: i64) isiz
  extern "c" fn pwritev(fd: c_int, iov: [*]const iovec_const, iovcnt: c_uint, offset: off_t) isiz
  extern "c" fn pwritev64(fd: c_int, iov: [*]const iovec_const, iovcnt: c_uint, offset: i64) isiz
  extern "c" fn raise(sig: SIG) c_in
  extern "c" fn read(fd: fd_t, buf: [*]u8, nbyte: usize) isiz
  extern "c" fn readlink(noalias path: [*:0]const u8, noalias buf: [*]u8, bufsize: usize) isiz
  extern "c" fn readlinkat(dirfd: fd_t, noalias path: [*:0]const u8, noalias buf: [*]u8, bufsize: usize) isiz
  extern "c" fn readv(fd: c_int, iov: [*]const iovec, iovcnt: c_uint) isiz
  extern "c" fn realloc(?*anyopaque, usize) ?*anyopaqu
  extern "c" fn rec
  extern "c" fn recvfro
  extern "c" fn rename(old: [*:0]const u8, new: [*:0]const u8) c_in
  extern "c" fn renameat(olddirfd: fd_t, old: [*:0]const u8, newdirfd: fd_t, new: [*:0]const u8) c_in
  extern "c" fn rewinddir(dp: *DIR) voi
  extern "c" fn rmdir(path: [*:0]const u8) c_in
  extern "c" fn sched_getaffinity(pid: c_int, size: usize, set: *cpu_set_t) c_in
  extern "c" fn seekdir(dp: *DIR, loc: c_long) voi
  extern "c" fn sem_close(sem: *sem_t) c_in
  extern "c" fn sem_destroy(sem: *sem_t) c_in
  extern "c" fn sem_getvalue(sem: *sem_t, sval: *c_int) c_in
  extern "c" fn sem_init(sem: *sem_t, pshared: c_int, value: c_uint) c_in
  extern "c" fn sem_open(name: [*:0]const u8, flag: c_int, mode: mode_t, value: c_uint) *sem_
  extern "c" fn sem_post(sem: *sem_t) c_in
  extern "c" fn sem_timedwait(sem: *sem_t, abs_timeout: *const timespec) c_in
  extern "c" fn sem_trywait(sem: *sem_t) c_in
  extern "c" fn sem_wait(sem: *sem_t) c_in
  extern "c" fn send(sockfd: fd_t, buf: *const anyopaque, len: usize, flags: u32) isiz
  extern "c" fn sendfile64(out_fd: fd_t, in_fd: fd_t, offset: ?*i64, count: usize) isiz
  extern "c" fn sendmmsg(sockfd: fd_t, msgvec: [*]mmsghdr, n: c_uint, flags: u32) c_in
  extern "c" fn sendmsg(sockfd: fd_t, msg: *const msghdr_const, flags: u32) isiz
  extern "c" fn sendt
  extern "c" fn setegid(egid: gid_t) c_in
  extern "c" fn seteuid(euid: uid_t) c_in
  extern "c" fn setgid(gid: gid_t) c_in
  extern "c" fn setgrent() voi
  extern "c" fn setlocale(category: LC, locale: ?[*:0]const u8) ?[*:0]const u
  extern "c" fn setlogmask(maskpri: c_int) c_in
  extern "c" fn setpgid(pid: pid_t, pgid: pid_t) c_in
  extern "c" fn setpwent() voi
  extern "c" fn setregid(rgid: gid_t, egid: gid_t) c_in
  extern "c" fn setresgid(rgid: gid_t, egid: gid_t, sgid: gid_t) c_in
  extern "c" fn setresuid(ruid: uid_t, euid: uid_t, suid: uid_t) c_in
  extern "c" fn setreuid(ruid: uid_t, euid: uid_t) c_in
  extern "c" fn setrlimit(resource: rlimit_resource, rlim: *const rlimit) c_in
  extern "c" fn setrlimit64(resource: rlimit_resource, rlim: *const rlimit) c_in
  extern "c" fn setsid() pid_
  extern "c" fn setsockopt(sockfd: fd_t, level: i32, optname: u32, optval: ?*const anyopaque, optlen: socklen_t) c_in
  extern "c" fn setuid(uid: uid_t) c_in
  extern "c" fn shm_unlink(name: [*:0]const u8) c_in
  extern "c" fn shutdown(socket: fd_t, how: c_int) c_in
  extern "c" fn signalfd(fd: fd_t, mask: *const sigset_t, flags: u32) c_in
  extern "c" fn sigwait(set: ?*sigset_t, sig: ?*c_int) c_in
  extern "c" fn statx(dirfd: fd_t, path: [*:0]const u8, flags: u32, mask: linux.STATX, buf: *linux.Statx) c_in
  extern "c" fn symlink(existing: [*:0]const u8, new: [*:0]const u8) c_in
  extern "c" fn symlinkat(oldpath: [*:0]const u8, newdirfd: fd_t, newpath: [*:0]const u8) c_in
  extern "c" fn sync() voi
  extern "c" fn syncfs(fd: c_int) c_in
  extern "c" fn sysctl(name: [*]const c_int, namelen: c_uint, oldp: ?*anyopaque, oldlenp: ?*usize, newp: ?*anyopaque, newlen: usize) c_in
  extern "c" fn sysctlbyname(name: [*:0]const u8, oldp: ?*anyopaque, oldlenp: ?*usize, newp: ?*anyopaque, newlen: usize) c_in
  extern "c" fn sysctlnametomib(name: [*:0]const u8, mibp: ?*c_int, sizep: ?*usize) c_in
  extern "c" fn syslog(priority: c_int, message: [*:0]const u8, ...) voi
  extern "c" fn tcgetattr(fd: fd_t, termios_p: *termios) c_in
  extern "c" fn tcsetattr(fd: fd_t, optional_action: TCSA, termios_p: *const termios) c_in
  extern "c" fn telldir(dp: *DIR) c_lon
  extern "c" fn timerfd_create(clockid: timerfd_clockid_t, flags: c_int) c_in
  extern "c" fn timerfd_gettime(fd: c_int, curr_value: *itimerspec) c_in
  extern "c" fn timerfd_settim
  extern "c" fn umask(mode: mode_t) mode_
  extern "c" fn uname(buf: *utsname) c_in
  extern "c" fn unlink(path: [*:0]const u8) c_in
  extern "c" fn unlinkat(dirfd: fd_t, path: [*:0]const u8, flags: c_uint) c_in
  extern "c" fn utimensat(dirfd: fd_t, pathname: [*:0]const u8, times: ?*const [2]timespec, flags: u32) c_in
  extern "c" fn utimes(path: [*:0]const u8, times: ?*[2]timeval) c_in
  extern "c" fn waitpid(pid: pid_t, status: ?*c_int, options: c_int) pid_
  extern "c" fn write(fd: fd_t, buf: [*]const u8, nbyte: usize) isiz
  extern "c" fn writev(fd: c_int, iov: [*]const iovec_const, iovcnt: c_uint) isiz
  extern "c" var environ: [*:null]?[*:0]u
  extern var _mh_execute_header: mach_hd
  fn errno(rc: anytype) E
  inline fn versionCheck(comptime version: std.SemanticVersion) bool
}

std.coff {
  const BaseRelocation = packed struct(u16)
  const BaseRelocationDirectoryEntry = extern struct
  const BaseRelocationType = enum(u4)
  const BaseType = enum(u8)
  const Coff = struct
  const ComdatSelection = enum(u8)
  const ComplexType = enum(u8)
  const DebugDirectoryEntry = extern struct
  const DebugInfoDefinition = struct
  const DebugType = enum(u32)
  const DllFlags = packed struct(u16)
  const Error = erro
  const FileDefinition = struct
  const FunctionDefinition = struct
  const Header = extern struct
  const IMAGE = struct
  const IMAGE_NT_OPTIONAL_HDR32_MAGIC = @intFromEnum(OptionalHeader.Magic.PE32
  const IMAGE_NT_OPTIONAL_HDR64_MAGIC = @intFromEnum(OptionalHeader.Magic.@"PE32+"
  const IMAGE_NUMBEROF_DIRECTORY_ENTRIES = 1
  const ImageDataDirectory = extern struct
  const ImportDirectoryEntry = extern struct
  const ImportHeader = extern struct
  const ImportHintNameEntry = extern struct
  const ImportLookupEntry32 = struct
  const ImportLookupEntry64 = struct
  const ImportNameType = enum(u3)
  const ImportType = enum(u2)
  const OptionalHeader = extern struct
  const Relocation = extern struct
  const SectionDefinition = struct
  const SectionHeader = extern struct
  const SectionNumber = enum(u16)
  const StorageClass = enum(u8)
  const Strtab = struct
  const Subsystem = enum(u16)
  const SymType = packed struct(u16)
  const Symbol = struct
  const Symtab = struct
  const WeakExternalDefinition = struct
  const WeakExternalFlag = enum(u32)
}

std.compress.flate.Compress {
  const Huffman = struct
  const Options = struct
  const Raw = struct
  const rebase_min_preserve = flate.history_le
  const rebase_reserved_capacity = (token.max_length + 1) + seq_byte
  fn finish(c: *Compress) Writer.Error!void
  fn init(output: *Writer, buffer: []u8, container: flate.Container, opts: Options) Writer.Error!Compress
}

std.compress.flate.Decompress {
  const CodegenDecoder = HuffmanDecoder(19, 7, 7
  const DistanceDecoder = HuffmanDecoder(30, 15, 9
  const Error = Container.Error || erro
  const LiteralDecoder = HuffmanDecoder(286, 15, 9
  const Symbol = packed struct(u16)
  fn init(input: *Reader, container: Container, buffer: []u8) Decompress
}

std.compress.flate.token {
  const DistCode = if (builtin.mode != .ReleaseSmall) LookupDistCode else ShortDistCod
  const LenCode = if (builtin.mode != .ReleaseSmall) LookupLenCode else ShortLenCod
  const codegen_order: [19]u8 = 
  const fixed_dist_bits = fixed_dist[1
  const fixed_dist_codes = fixed_dist[0
  const fixed_lit_bits = fixed_lit[1
  const fixed_lit_codes = fixed_lit[0
  const max_distance = std.compress.flate.history_le
  const max_length = 25
  const min_distance = 
  const min_length = 
}

std.compress.flate {
  const Compress = @import("flate/Compress.zig"
  const Container = enum
  const Decompress = @import("flate/Decompress.zig"
  const history_len = 3276
  const max_window_len = history_len * 
}

std.compress.lzma {
  const Decode = struct
  const Decompress = struct
  const RangeDecoder = struct
}

std.compress.lzma2 {
  const AccumBuffer = struct
  const Decode = struct
}

std.compress.xz.Decompress {
  const Check = enum(u4)
  const Error = erro
  const InitError = erro
  const StreamFlags = packed struct(u16)
  fn deinit(d: *Decompress) void
  fn init(input: *Reader, gpa: Allocator, buffer: []u8) !Decompress
  fn takeBuffer(d: *Decompress) []u8
}

std.compress.xz {
  const Decompress = @import("xz/Decompress.zig"
}

std.compress.zstd.Decompress {
  const Error = erro
  const Frame = struct
  const LiteralsSection = struct
  const Options = struct
  const SequencesSection = struct
  const Table = union(enum)
  fn init(input: *Reader, buffer: []u8, options: Options) Decompress
}

std.compress.zstd {
  const Decompress = @import("zstd/Decompress.zig"
  const block_size_max = 1 << 1
  const default_accuracy_log = struct
  const default_window_len = 8 * 1024 * 102
  const literals_length_code_table = [36]struct { u32, u5 
  const literals_length_default_distribution = [36]i1
  const match_length_code_table = [53]struct { u32, u5 
  const match_lengths_default_distribution = [53]i1
  const offset_codes_default_distribution = [29]i1
  const start_repeated_offset_1 = 
  const start_repeated_offset_2 = 
  const start_repeated_offset_3 = 
  const table_accuracy_log_max = struct
  const table_size_max = struct
  const table_symbol_count_max = struct
}

std.compress {
  const flate = @import("compress/flate.zig"
  const lzma = @import("compress/lzma.zig"
  const lzma2 = @import("compress/lzma2.zig"
  const xz = @import("compress/xz.zig"
  const zstd = @import("compress/zstd.zig"
}

std.crypto.25519.curve25519 {
  const Curve25519 = struct
}

std.crypto.25519.ed25519 {
  const Ed25519 = struct
}

std.crypto.25519.edwards25519 {
  const Edwards25519 = struct
}

std.crypto.25519.field {
  const Fe = struct
}

std.crypto.25519.ristretto255 {
  const Ristretto255 = struct
}

std.crypto.25519.scalar {
  const CompressedScalar = [32]u
  const Scalar = struct
  const field_order: u256 = 723700557733226221397318656304299424085711635937990760600195093828545425098
  const zero = [_]u8{0} ** 3
  fn add(a: CompressedScalar, b: CompressedScalar) CompressedScalar
  fn clamp(s: *CompressedScalar) void
  fn mul(a: CompressedScalar, b: CompressedScalar) CompressedScalar
  fn mul8(s: CompressedScalar) CompressedScalar
  fn mulAdd(a: CompressedScalar, b: CompressedScalar, c: CompressedScalar) CompressedScalar
  fn neg(s: CompressedScalar) CompressedScalar
  fn random(io: std.Io) CompressedScalar
  fn reduce(s: CompressedScalar) CompressedScalar
  fn reduce64(s: [64]u8) CompressedScalar
  fn rejectNonCanonical(s: CompressedScalar) NonCanonicalError!void
  fn sub(a: CompressedScalar, b: CompressedScalar) CompressedScalar
}

std.crypto.25519.x25519 {
  const X25519 = struct
}

std.crypto.aegis {
  const Aegis128L = Aegis128XGeneric(1, 128
  const Aegis128LMac = AegisMac(Aegis128L_256
  const Aegis128LMac_128 = AegisMac(Aegis128L
  const Aegis128L_256 = Aegis128XGeneric(1, 256
  const Aegis128X2 = Aegis128XGeneric(2, 128
  const Aegis128X2Mac = AegisMac(Aegis128X2_256
  const Aegis128X2Mac_128 = AegisMac(Aegis128X2
  const Aegis128X2_256 = Aegis128XGeneric(2, 256
  const Aegis128X4 = Aegis128XGeneric(4, 128
  const Aegis128X4Mac = AegisMac(Aegis128X4_256
  const Aegis128X4Mac_128 = AegisMac(Aegis128X4
  const Aegis128X4_256 = Aegis128XGeneric(4, 256
  const Aegis256 = Aegis256XGeneric(1, 128
  const Aegis256Mac = AegisMac(Aegis256_256
  const Aegis256Mac_128 = AegisMac(Aegis256
  const Aegis256X2 = Aegis256XGeneric(2, 128
  const Aegis256X2Mac = AegisMac(Aegis256X2_256
  const Aegis256X2Mac_128 = AegisMac(Aegis256X2
  const Aegis256X2_256 = Aegis256XGeneric(2, 256
  const Aegis256X4 = Aegis256XGeneric(4, 128
  const Aegis256X4Mac = AegisMac(Aegis256X4_256
  const Aegis256X4Mac_128 = AegisMac(Aegis256X4
  const Aegis256X4_256 = Aegis256XGeneric(4, 256
  const Aegis256_256 = Aegis256XGeneric(1, 256
}

std.crypto.aes.aesni {
  const Aes128 = struct
  const Aes256 = struct
  const Block = struct
  fn AesDecryptCtx(comptime Aes: type) type
  fn AesEncryptCtx(comptime Aes: type) type
  fn BlockVec(comptime blocks_count: comptime_int) type
}

std.crypto.aes.armcrypto {
  const Aes128 = struct
  const Aes256 = struct
  const Block = struct
  fn AesDecryptCtx(comptime Aes: type) type
  fn AesEncryptCtx(comptime Aes: type) type
  fn BlockVec(comptime blocks_count: comptime_int) type
}

std.crypto.aes.soft {
  const Aes128 = struct
  const Aes256 = struct
  const Block = struct
  fn AesDecryptCtx(comptime Aes: type) type
  fn AesEncryptCtx(comptime Aes: type) type
  fn BlockVec(comptime blocks_count: comptime_int) type
}

std.crypto.aes {
  const Aes128 = impl.Aes12
  const Aes256 = impl.Aes25
  const AesDecryptCtx = impl.AesDecryptCt
  const AesEncryptCtx = impl.AesEncryptCt
  const Block = impl.Bloc
  const BlockVec = impl.BlockVe
  const has_hardware_support
}

std.crypto.aes_ccm {
  const Aes128Ccm0 = AesCcm(crypto.core.aes.Aes128, 0, 13
  const Aes128Ccm16 = AesCcm(crypto.core.aes.Aes128, 16, 13
  const Aes128Ccm8 = AesCcm(crypto.core.aes.Aes128, 8, 13
  const Aes256Ccm0 = AesCcm(crypto.core.aes.Aes256, 0, 13
  const Aes256Ccm16 = AesCcm(crypto.core.aes.Aes256, 16, 13
  const Aes256Ccm8 = AesCcm(crypto.core.aes.Aes256, 8, 13
}

std.crypto.aes_gcm {
  const Aes128Gcm = AesGcm(crypto.core.aes.Aes128
  const Aes256Gcm = AesGcm(crypto.core.aes.Aes256
}

std.crypto.aes_gcm_siv {
  const Aes128GcmSiv = AesGcmSiv(crypto.core.aes.Aes128
  const Aes256GcmSiv = AesGcmSiv(crypto.core.aes.Aes256
}

std.crypto.aes_ocb {
  const Aes128Ocb = AesOcb(aes.Aes128
  const Aes256Ocb = AesOcb(aes.Aes256
}

std.crypto.aes_siv {
  const Aes128Siv = AesSiv(crypto.core.aes.Aes128
  const Aes256Siv = AesSiv(crypto.core.aes.Aes256
}

std.crypto.argon2 {
  const HashOptions = struct
  const Mode = enum
  const Params = struct
  const VerifyOptions = struct
  fn kdf(allocator: mem.Allocator, derived_key: []u8, password: []const u8, salt: []const u8, params: Params, mode: Mode, io: Io) KdfError!void
  fn strHash(password: []const u8, options: HashOptions, out: []u8, io: Io) Error![]const u8
  fn strVerify(str: []const u8, password: []const u8, options: VerifyOptions, io: Io) Error!void
}

std.crypto.ascon {
  const AsconAead128 = struct
  const AsconCxof128 = struct
  const AsconHash256 = struct
  const AsconXof128 = struct
  fn State(comptime endian: std.builtin.Endian) type
}

std.crypto.bcrypt {
  const HashOptions = struct
  const Params = struct
  const State = struct
  const VerifyOptions = struct
  const hash_length: usize = 6
  const salt_length: usize = 1
  fn bcrypt(password: []const u8, salt: *const [salt_length]u8, params: Params) [dk_length]u8
  fn opensshKdf(pass: []const u8, salt: []const u8, key: []u8, rounds: u32) !void
  fn pbkdf(pass: []const u8, salt: []const u8, key: []u8, rounds: u32) !void
  fn strHash(password: []const u8, options: HashOptions, out: []u8, io: std.Io) Error![]const u8
  fn strHashWithSalt(password: []const u8, options: HashOptions, out: []u8, salt: [salt_length]u8) Error![]const u8
  fn strVerify(str: []const u8, password: []const u8, options: VerifyOptions) Error!void
}

std.crypto.benchmark {
  fn benchTime(io: Io) i96
  fn benchmarkAead(comptime Aead: anytype, comptime bytes: comptime_int, io: Io) !u64
  fn benchmarkAes(comptime Aes: anytype, comptime count: comptime_int, io: Io) !u64
  fn benchmarkAes8(comptime Aes: anytype, comptime count: comptime_int, io: Io) !u64
  fn benchmarkBatchSignatureVerification(comptime Signature: anytype, comptime signatures_count: comptime_int, io: std.Io) !u64
  fn benchmarkHash(comptime Hash: anytype, comptime bytes: comptime_int, io: Io) !u64
  fn benchmarkHashParallel(comptime Hash: anytype, comptime bytes: comptime_int, allocator: mem.Allocator, io: std.Io) !u64
  fn benchmarkKem(comptime Kem: anytype, comptime kems_count: comptime_int, io: std.Io) !u64
  fn benchmarkKemDecaps(comptime Kem: anytype, comptime kems_count: comptime_int, io: std.Io) !u64
  fn benchmarkKemKeyGen(comptime Kem: anytype, comptime kems_count: comptime_int, io: std.Io) !u64
  fn benchmarkKeyExchange(comptime DhKeyExchange: anytype, comptime exchange_count: comptime_int, io: Io) !u64
  fn benchmarkMac(comptime Mac: anytype, comptime bytes: comptime_int, io: Io) !u64
  fn benchmarkSignature(comptime Signature: anytype, comptime signatures_count: comptime_int, io: std.Io) !u64
  fn benchmarkSignatureVerification(comptime Signature: anytype, comptime signatures_count: comptime_int, io: std.Io) !u64
  fn main(init: std.process.Init) !void
}

std.crypto.blake2 {
  const Blake2b128 = Blake2b(128
  const Blake2b160 = Blake2b(160
  const Blake2b256 = Blake2b(256
  const Blake2b384 = Blake2b(384
  const Blake2b512 = Blake2b(512
  const Blake2s128 = Blake2s(128
  const Blake2s160 = Blake2s(160
  const Blake2s224 = Blake2s(224
  const Blake2s256 = Blake2s(256
  fn Blake2b(comptime out_bits: usize) type
  fn Blake2s(comptime out_bits: usize) type
}

std.crypto.blake3 {
  const Blake3 = struct
}

std.crypto.cbc_mac {
  const CbcMacAes128 = CbcMac(crypto.core.aes.Aes128
  fn CbcMac(comptime BlockCipher: type) type
}

std.crypto.Certificate.Bundle.macos {
  const RescanMacError = Allocator.Error || Io.File.OpenError || Io.File.Reader.Error || Io.File.SeekError || Bundle.ParseCertError || error{EndOfStream
  fn rescanMac(cb: *Bundle, gpa: Allocator, io: Io, now: Io.Timestamp) RescanMacError!void
}

std.crypto.Certificate.Bundle {
  const AddCertsFromDirError = AddCertsFromFilePathErro
  const AddCertsFromDirPathError = Io.File.OpenError || AddCertsFromDirErro
  const AddCertsFromFileError = Allocator.Error 
  const AddCertsFromFilePathError = Io.File.OpenError || AddCertsFromFileErro
  const ParseCertError = Allocator.Error || Certificate.ParseErro
  const RescanError = RescanLinuxError || RescanMacError || RescanWithPathError || RescanWindowsErro
  const VerifyError = Certificate.Parsed.VerifyError || erro
  const empty: Bundle = .{ .map = .empty, .bytes = .empty 
  fn addCertsFromDir(cb: *Bundle, gpa: Allocator, io: Io, now: Io.Timestamp, iterable_dir: Io.Dir) AddCertsFromDirError!void
  fn addCertsFromDirPath(cb: *Bundle, gpa: Allocator, io: Io, dir: Io.Dir, sub_dir_path: []const u8) AddCertsFromDirPathError!void
  fn addCertsFromDirPathAbsolute(cb: *Bundle, gpa: Allocator, io: Io, now: Io.Timestamp, abs_dir_path: []const u8) AddCertsFromDirPathError!void
  fn addCertsFromFile(cb: *Bundle, gpa: Allocator, file_reader: *Io.File.Reader, now_sec: i64) AddCertsFromFileError!void
  fn addCertsFromFilePath(cb: *Bundle, gpa: Allocator, io: Io, now: Io.Timestamp, dir: Io.Dir, sub_file_path: []const u8) AddCertsFromFilePathError!void
  fn addCertsFromFilePathAbsolute(cb: *Bundle, gpa: Allocator, io: Io, now: Io.Timestamp, abs_file_path: []const u8) AddCertsFromFilePathError!void
  fn deinit(cb: *Bundle, gpa: Allocator) void
  fn find(cb: Bundle, subject_name: []const u8) ?u32
  fn parseCert(cb: *Bundle, gpa: Allocator, decoded_start: u32, now_sec: i64) ParseCertError!void
  fn rescan(cb: *Bundle, gpa: Allocator, io: Io, now: Io.Timestamp) RescanError!void
  fn verify(cb: Bundle, subject: Certificate.Parsed, now_sec: i64) VerifyError!void
}

std.crypto.Certificate.Chain {
  const VerifyError = erro
  const empty: Chain = .{ .store = null, .primary = null 
  fn addCert(chain: *Chain, cert: []const u8) std.Io.UnexpectedError!void
  fn deinit(chain: *Chain) void
  fn verify(chain: *const Chain, now: std.Io.Timestamp) VerifyError!void
}

std.crypto.Certificate {
  const Algorithm = enum
  const AlgorithmCategory = enum
  const Attribute = enum
  const Bundle = @import("Certificate/Bundle.zig"
  const Chain = switch (builtin.os.tag)
  const ExtensionId = enum
  const GeneralNameTag = enum(u5)
  const NamedCurve = enum
  const ParseBitStringError = error{ CertificateFieldHasWrongDataType, CertificateHasInvalidBitString 
  const ParseEnumError = error{ CertificateFieldHasWrongDataType, CertificateHasUnrecognizedObjectId 
  const ParseError = der.Element.ParseError || ParseVersionError || ParseTimeError || ParseEnumError || ParseBitStringErro
  const ParseTimeError = error{ CertificateTimeInvalid, CertificateFieldHasWrongDataType 
  const ParseVersionError = error{ UnsupportedCertificateVersion, CertificateFieldHasInvalidLength 
  const Parsed = struct
  const Version = enum { v1, v2, v3 
  const der = struct
  const rsa = struct
  fn contents(cert: Certificate, elem: der.Element) []const u8
  fn parse(cert: Certificate) ParseError!Parsed
  fn parseAlgorithm(bytes: []const u8, element: der.Element) ParseEnumError!Algorithm
  fn parseAlgorithmCategory(bytes: []const u8, element: der.Element) ParseEnumError!AlgorithmCategory
  fn parseAttribute(bytes: []const u8, element: der.Element) ParseEnumError!Attribute
  fn parseBitString(cert: Certificate, elem: der.Element) !der.Element.Slice
  fn parseExtensionId(bytes: []const u8, element: der.Element) ParseEnumError!ExtensionId
  fn parseNamedCurve(bytes: []const u8, element: der.Element) ParseEnumError!NamedCurve
  fn parseTime(cert: Certificate, elem: der.Element) ParseTimeError!u64
  fn parseTimeDigits(text: *const [2]u8, min: u8, max: u8) !u8
  fn parseVersion(bytes: []const u8, version_elem: der.Element) ParseVersionError!Version
  fn parseYear4(text: *const [4]u8) !u16
  fn verify(subject: Certificate, issuer: Certificate, now_sec: i64) !void
}

std.crypto.chacha20 {
  const ChaCha12IETF = ChaChaIETF(12
  const ChaCha12Poly1305 = ChaChaPoly1305(12
  const ChaCha12With64BitNonce = ChaChaWith64BitNonce(12
  const ChaCha20IETF = ChaChaIETF(20
  const ChaCha20Poly1305 = ChaChaPoly1305(20
  const ChaCha20With64BitNonce = ChaChaWith64BitNonce(20
  const ChaCha8IETF = ChaChaIETF(8
  const ChaCha8Poly1305 = ChaChaPoly1305(8
  const ChaCha8With64BitNonce = ChaChaWith64BitNonce(8
  const XChaCha12IETF = XChaChaIETF(12
  const XChaCha12Poly1305 = XChaChaPoly1305(12
  const XChaCha20IETF = XChaChaIETF(20
  const XChaCha20Poly1305 = XChaChaPoly1305(20
  const XChaCha8IETF = XChaChaIETF(8
  const XChaCha8Poly1305 = XChaChaPoly1305(8
}

std.crypto.cmac {
  const CmacAes128 = Cmac(crypto.core.aes.Aes128
  fn Cmac(comptime BlockCipher: type) type
}

std.crypto.codecs.asn1.der.ArrayListReverse {
  fn clearAndFree(self: *ArrayListReverse) void
  fn deinit(self: *ArrayListReverse) void
  fn ensureCapacity(self: *ArrayListReverse, new_capacity: usize) Error!void
  fn init(allocator: Allocator) ArrayListReverse
  fn prependSlice(self: *ArrayListReverse, data: []const u8) Error!void
  fn toOwnedSlice(self: *ArrayListReverse) Error![]u8
}

std.crypto.codecs.asn1.der.Decoder {
  fn any(self: *Decoder, comptime T: type) !T
  fn element(self: *Decoder, expected: ExpectedTag) (error{ EndOfStream, UnexpectedElement } || Element.DecodeError)!Element
  fn sequence(self: *Decoder) !Element
  fn view(self: Decoder, elem: Element) []const u8
}

std.crypto.codecs.asn1.der.Encoder {
  fn any(self: *Encoder, val: anytype) !void
  fn deinit(self: *Encoder) void
  fn init(allocator: std.mem.Allocator) Encoder
  fn length(self: *Encoder, len: usize) !void
  fn tag(self: *Encoder, tag_: Tag) !void
  fn tagBytes(self: *Encoder, tag_: Tag, bytes: []const u8) !void
  fn writer(self: *Encoder) ArrayListReverse.Writer
}

std.crypto.codecs.asn1.der {
  const Decoder = @import("der/Decoder.zig"
  const Encoder = @import("der/Encoder.zig"
  fn decode(comptime T: type, encoded: []const u8) !T
  fn encode(allocator: std.mem.Allocator, value: anytype) ![]u8
}

std.crypto.codecs.asn1.Oid {
  const InitError = std.fmt.ParseIntError || error{MissingPrefix} || std.Io.Writer.Erro
  const asn1_tag = asn1.Tag.init(.oid, false, .universal
  fn StaticMap(comptime Enum: type) type
  fn decodeDer(decoder: *der.Decoder) !Oid
  fn encodeDer(self: Oid, encoder: *der.Encoder) !void
  fn fromDot(dot_notation: []const u8, out: []u8) InitError!Oid
  fn fromDotComptime(comptime dot_notation: []const u8) Oid
  fn toDot(self: Oid, writer: anytype) @TypeOf(writer).Error!void
}

std.crypto.codecs.asn1 {
  const Any = struct
  const BitString = struct
  const Element = struct
  const ExpectedTag = struct
  const FieldTag = struct
  const Index = u3
  const Oid = @import("./asn1/Oid.zig"
  const Tag = struct
  const der = @import("./asn1/der.zig"
  fn Opaque(comptime tag: Tag) type
}

std.crypto.codecs.base64_hex_ct {
  const Error = erro
  const base64 = struct
  const hex = struct
}

std.crypto.codecs {
  const asn1 = @import("codecs/asn1.zig"
  const base64 = @import("codecs/base64_hex_ct.zig").base6
  const hex = @import("codecs/base64_hex_ct.zig").he
}

std.crypto.ecdsa {
  const EcdsaP256Sha256 = Ecdsa(crypto.ecc.P256, crypto.hash.sha2.Sha256
  const EcdsaP256Sha3_256 = Ecdsa(crypto.ecc.P256, crypto.hash.sha3.Sha3_256
  const EcdsaP384Sha384 = Ecdsa(crypto.ecc.P384, crypto.hash.sha2.Sha384
  const EcdsaP384Sha3_384 = Ecdsa(crypto.ecc.P384, crypto.hash.sha3.Sha3_384
  const EcdsaSecp256k1Sha256 = Ecdsa(crypto.ecc.Secp256k1, crypto.hash.sha2.Sha256
  const EcdsaSecp256k1Sha256oSha256 = Ecdsa(crypto.ecc.Secp256k1, crypto.hash.composition.Sha256oSha256
  fn Ecdsa(comptime Curve: type, comptime Hash: type) type
}

std.crypto.errors {
  const AuthenticationError = error{AuthenticationFailed
  const ContextTooLongError = error{ContextTooLong
  const EncodingError = error{InvalidEncoding
  const Error = AuthenticationError || OutputTooLongError || IdentityElementError || EncodingError || SignatureVerificationError || KeyMismatchError || NonCanonicalError || NotSquareError || PasswordVerificationError || WeakParametersError || WeakPublicKeyError || UnexpectedSubgroupError || ContextTooLongErro
  const IdentityElementError = error{IdentityElement
  const KeyMismatchError = error{KeyMismatch
  const NonCanonicalError = error{NonCanonical
  const NotSquareError = error{NotSquare
  const OutputTooLongError = error{OutputTooLong
  const PasswordVerificationError = error{PasswordVerificationFailed
  const SignatureVerificationError = error{SignatureVerificationFailed
  const UnexpectedSubgroupError = error{UnexpectedSubgroup
  const WeakParametersError = error{WeakParameters
  const WeakPublicKeyError = error{WeakPublicKey
}

std.crypto.ff {
  const Error = OverflowError || InvalidModulusError || NullExponentError || FieldElementError || RepresentationErro
  const FieldElementError = error{NonCanonical
  const InvalidModulusError = error{ EvenModulus, ModulusTooSmall 
  const NullExponentError = error{NullExponent
  const OverflowError = error{Overflow
  const RepresentationError = error{UnexpectedRepresentation
  fn Modulus(comptime max_bits: comptime_int) type
  fn Uint(comptime max_bits: comptime_int) type
}

std.crypto.ghash_polyval {
  const Ghash = Hash(.big, true
  const Polyval = Hash(.little, false
}

std.crypto.hash_composition {
  const Sha256oSha256 = Composition(sha2.Sha256, sha2.Sha256
  const Sha384oSha384 = Composition(sha2.Sha384, sha2.Sha384
  const Sha512oSha512 = Composition(sha2.Sha512, sha2.Sha512
  fn Composition(comptime H1: type, comptime H2: type) type
}

std.crypto.hkdf {
  const HkdfSha256 = Hkdf(hmac.sha2.HmacSha256
  const HkdfSha512 = Hkdf(hmac.sha2.HmacSha512
  fn Hkdf(comptime Hmac: type) type
}

std.crypto.hmac {
  const HmacMd5 = Hmac(crypto.hash.Md5
  const HmacSha1 = Hmac(crypto.hash.Sha1
  const sha2 = struct
  fn Hmac(comptime Hash: type) type
}

std.crypto.hybrid_kem {
  const MlKem1024P384 = HybridKem(
  const MlKem768P256 = HybridKem(
  const MlKem768X25519 = HybridKem(
  const Params = struct
  fn HybridKem(comptime params: Params) type
}

std.crypto.isap {
  const IsapA128A = struct
}

std.crypto.kangarootwelve {
  const KT128 = KTHash(KT128Variant, turboShake128MultiSliceToBuffer
  const KT256 = KTHash(KT256Variant, turboShake256MultiSliceToBuffer
}

std.crypto.keccak_p {
  fn KeccakF(comptime f: u11) type
  fn State(comptime f: u11, comptime capacity: u11, comptime rounds: u5) type
}

std.crypto.md5 {
  const Md5 = struct
}

std.crypto.ml_dsa {
  const MLDSA44 = MLDSAImpl(
  const MLDSA65 = MLDSAImpl(
  const MLDSA87 = MLDSAImpl(
}

std.crypto.ml_kem {
  const d00 = struct
  const nist = struct
}

std.crypto.modes {
  fn ctr(comptime BlockCipher: anytype, block_cipher: BlockCipher, dst: []u8, src: []const u8, iv: [BlockCipher.block_length]u8, endian: std.builtin.Endian) void
  fn ctrSlice(comptime BlockCipher: anytype, block_cipher: BlockCipher, dst: []u8, src: []const u8, iv: [BlockCipher.block_length]u8, endian: std.builtin.Endian, comptime counter_offset: usize, comptime counter_size: usize) void
}

std.crypto.pbkdf2 {
  fn pbkdf2(dk: []u8, password: []const u8, salt: []const u8, rounds: u32, comptime Prf: type) (WeakParametersError || OutputTooLongError)!void
}

std.crypto.pcurves.common {
  const FieldParams = struct
  fn Field(comptime params: FieldParams) type
}

std.crypto.pcurves.p256.field {
  const Fe = Field(
}

std.crypto.pcurves.p256.p256_64 {
  const MontgomeryDomainFieldElement = [4]u6
  const NonMontgomeryDomainFieldElement = [4]u6
  fn add(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn divstep(out1: *u64, out2: *[5]u64, out3: *[5]u64, out4: *[4]u64, out5: *[4]u64, arg1: u64, arg2: [5]u64, arg3: [5]u64, arg4: [4]u64, arg5: [4]u64) void
  fn divstepPrecomp(out1: *[4]u64) void
  fn fromBytes(out1: *[4]u64, arg1: [32]u8) void
  fn fromMontgomery(out1: *NonMontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn msat(out1: *[5]u64) void
  fn mul(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn nonzero(out1: *u64, arg1: [4]u64) void
  fn opp(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn selectznz(out1: *[4]u64, arg1: u1, arg2: [4]u64, arg3: [4]u64) void
  fn setOne(out1: *MontgomeryDomainFieldElement) void
  fn square(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn sub(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn toBytes(out1: *[32]u8, arg1: [4]u64) void
  fn toMontgomery(out1: *MontgomeryDomainFieldElement, arg1: NonMontgomeryDomainFieldElement) void
}

std.crypto.pcurves.p256.p256_scalar_64 {
  const MontgomeryDomainFieldElement = [4]u6
  const NonMontgomeryDomainFieldElement = [4]u6
  fn add(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn divstep(out1: *u64, out2: *[5]u64, out3: *[5]u64, out4: *[4]u64, out5: *[4]u64, arg1: u64, arg2: [5]u64, arg3: [5]u64, arg4: [4]u64, arg5: [4]u64) void
  fn divstepPrecomp(out1: *[4]u64) void
  fn fromBytes(out1: *[4]u64, arg1: [32]u8) void
  fn fromMontgomery(out1: *NonMontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn msat(out1: *[5]u64) void
  fn mul(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn nonzero(out1: *u64, arg1: [4]u64) void
  fn opp(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn selectznz(out1: *[4]u64, arg1: u1, arg2: [4]u64, arg3: [4]u64) void
  fn setOne(out1: *MontgomeryDomainFieldElement) void
  fn square(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn sub(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn toBytes(out1: *[32]u8, arg1: [4]u64) void
  fn toMontgomery(out1: *MontgomeryDomainFieldElement, arg1: NonMontgomeryDomainFieldElement) void
}

std.crypto.pcurves.p256.scalar {
  const CompressedScalar = [encoded_length]u
  const Scalar = struct
  const encoded_length = 3
  const field_order = Fe.field_orde
  fn add(a: CompressedScalar, b: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn mul(a: CompressedScalar, b: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn mulAdd(a: CompressedScalar, b: CompressedScalar, c: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn neg(s: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn random(io: std.Io, endian: std.builtin.Endian) CompressedScalar
  fn reduce48(s: [48]u8, endian: std.builtin.Endian) CompressedScalar
  fn reduce64(s: [64]u8, endian: std.builtin.Endian) CompressedScalar
  fn rejectNonCanonical(s: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!void
  fn sub(a: CompressedScalar, b: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
}

std.crypto.pcurves.p256 {
  const AffineCoordinates = struct
  const P256 = struct
}

std.crypto.pcurves.p384.field {
  const Fe = Field(
}

std.crypto.pcurves.p384.p384_64 {
  const MontgomeryDomainFieldElement = [6]u6
  const NonMontgomeryDomainFieldElement = [6]u6
  fn add(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn divstep(out1: *u64, out2: *[7]u64, out3: *[7]u64, out4: *[6]u64, out5: *[6]u64, arg1: u64, arg2: [7]u64, arg3: [7]u64, arg4: [6]u64, arg5: [6]u64) void
  fn divstepPrecomp(out1: *[6]u64) void
  fn fromBytes(out1: *[6]u64, arg1: [48]u8) void
  fn fromMontgomery(out1: *NonMontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn msat(out1: *[7]u64) void
  fn mul(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn nonzero(out1: *u64, arg1: [6]u64) void
  fn opp(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn selectznz(out1: *[6]u64, arg1: u1, arg2: [6]u64, arg3: [6]u64) void
  fn setOne(out1: *MontgomeryDomainFieldElement) void
  fn square(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn sub(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn toBytes(out1: *[48]u8, arg1: [6]u64) void
  fn toMontgomery(out1: *MontgomeryDomainFieldElement, arg1: NonMontgomeryDomainFieldElement) void
}

std.crypto.pcurves.p384.p384_scalar_64 {
  const MontgomeryDomainFieldElement = [6]u6
  const NonMontgomeryDomainFieldElement = [6]u6
  fn add(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn divstep(out1: *u64, out2: *[7]u64, out3: *[7]u64, out4: *[6]u64, out5: *[6]u64, arg1: u64, arg2: [7]u64, arg3: [7]u64, arg4: [6]u64, arg5: [6]u64) void
  fn divstepPrecomp(out1: *[6]u64) void
  fn fromBytes(out1: *[6]u64, arg1: [48]u8) void
  fn fromMontgomery(out1: *NonMontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn msat(out1: *[7]u64) void
  fn mul(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn nonzero(out1: *u64, arg1: [6]u64) void
  fn opp(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn selectznz(out1: *[6]u64, arg1: u1, arg2: [6]u64, arg3: [6]u64) void
  fn setOne(out1: *MontgomeryDomainFieldElement) void
  fn square(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn sub(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn toBytes(out1: *[48]u8, arg1: [6]u64) void
  fn toMontgomery(out1: *MontgomeryDomainFieldElement, arg1: NonMontgomeryDomainFieldElement) void
}

std.crypto.pcurves.p384.scalar {
  const CompressedScalar = [encoded_length]u
  const Scalar = struct
  const encoded_length = 4
  const field_order = Fe.field_orde
  fn add(a: CompressedScalar, b: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn mul(a: CompressedScalar, b: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn mulAdd(a: CompressedScalar, b: CompressedScalar, c: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn neg(s: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn random(io: std.Io, endian: std.builtin.Endian) CompressedScalar
  fn reduce64(s: [64]u8, endian: std.builtin.Endian) CompressedScalar
  fn rejectNonCanonical(s: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!void
  fn sub(a: CompressedScalar, b: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
}

std.crypto.pcurves.p384 {
  const AffineCoordinates = struct
  const P384 = struct
}

std.crypto.pcurves.secp256k1.field {
  const Fe = Field(
}

std.crypto.pcurves.secp256k1.scalar {
  const CompressedScalar = [encoded_length]u
  const Scalar = struct
  const encoded_length = 3
  const field_order = Fe.field_orde
  fn add(a: CompressedScalar, b: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn mul(a: CompressedScalar, b: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn mulAdd(a: CompressedScalar, b: CompressedScalar, c: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn neg(s: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
  fn random(io: std.Io, endian: std.builtin.Endian) CompressedScalar
  fn reduce48(s: [48]u8, endian: std.builtin.Endian) CompressedScalar
  fn reduce64(s: [64]u8, endian: std.builtin.Endian) CompressedScalar
  fn rejectNonCanonical(s: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!void
  fn sub(a: CompressedScalar, b: CompressedScalar, endian: std.builtin.Endian) NonCanonicalError!CompressedScalar
}

std.crypto.pcurves.secp256k1.secp256k1_64 {
  const MontgomeryDomainFieldElement = [4]u6
  const NonMontgomeryDomainFieldElement = [4]u6
  fn add(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn divstep(out1: *u64, out2: *[5]u64, out3: *[5]u64, out4: *[4]u64, out5: *[4]u64, arg1: u64, arg2: [5]u64, arg3: [5]u64, arg4: [4]u64, arg5: [4]u64) void
  fn divstepPrecomp(out1: *[4]u64) void
  fn fromBytes(out1: *[4]u64, arg1: [32]u8) void
  fn fromMontgomery(out1: *NonMontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn msat(out1: *[5]u64) void
  fn mul(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn nonzero(out1: *u64, arg1: [4]u64) void
  fn opp(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn selectznz(out1: *[4]u64, arg1: u1, arg2: [4]u64, arg3: [4]u64) void
  fn setOne(out1: *MontgomeryDomainFieldElement) void
  fn square(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn sub(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn toBytes(out1: *[32]u8, arg1: [4]u64) void
  fn toMontgomery(out1: *MontgomeryDomainFieldElement, arg1: NonMontgomeryDomainFieldElement) void
}

std.crypto.pcurves.secp256k1.secp256k1_scalar_64 {
  const MontgomeryDomainFieldElement = [4]u6
  const NonMontgomeryDomainFieldElement = [4]u6
  fn add(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn divstep(out1: *u64, out2: *[5]u64, out3: *[5]u64, out4: *[4]u64, out5: *[4]u64, arg1: u64, arg2: [5]u64, arg3: [5]u64, arg4: [4]u64, arg5: [4]u64) void
  fn divstepPrecomp(out1: *[4]u64) void
  fn fromBytes(out1: *[4]u64, arg1: [32]u8) void
  fn fromMontgomery(out1: *NonMontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn msat(out1: *[5]u64) void
  fn mul(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn nonzero(out1: *u64, arg1: [4]u64) void
  fn opp(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn selectznz(out1: *[4]u64, arg1: u1, arg2: [4]u64, arg3: [4]u64) void
  fn setOne(out1: *MontgomeryDomainFieldElement) void
  fn square(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement) void
  fn sub(out1: *MontgomeryDomainFieldElement, arg1: MontgomeryDomainFieldElement, arg2: MontgomeryDomainFieldElement) void
  fn toBytes(out1: *[32]u8, arg1: [4]u64) void
  fn toMontgomery(out1: *MontgomeryDomainFieldElement, arg1: NonMontgomeryDomainFieldElement) void
}

std.crypto.pcurves.secp256k1 {
  const AffineCoordinates = struct
  const Secp256k1 = struct
}

std.crypto.phc_encoding {
  const Error = std.crypto.errors.EncodingError || error{NoSpaceLeft
  fn BinValue(comptime max_len: usize) type
  fn calcSize(params: anytype) usize
  fn deserialize(comptime HashResult: type, str: []const u8) Error!HashResult
  fn serialize(params: anytype, str: []u8) Error![]const u8
}

std.crypto.poly1305 {
  const Poly1305 = struct
}

std.crypto.salsa20 {
  const Box = struct
  const Salsa20 = Salsa(20
  const SealedBox = struct
  const SecretBox = struct
  const XSalsa20 = XSalsa(20
  const XSalsa20Poly1305 = struct
  fn Salsa(comptime rounds: comptime_int) type
  fn XSalsa(comptime rounds: comptime_int) type
}

std.crypto.scrypt {
  const HashOptions = struct
  const Params = struct
  const VerifyOptions = struct
  const default_salt_len = 3
  fn kdf(allocator: mem.Allocator, derived_key: []u8, password: []const u8, salt: []const u8, params: Params) KdfError!void
  fn strHash(password: []const u8, options: HashOptions, out: []u8, io: std.Io) Error![]const u8
  fn strHashWithSalt(password: []const u8, options: HashOptions, out: []u8, salt: *const [default_salt_len]u8) Error![]const u8
  fn strVerify(str: []const u8, password: []const u8, options: VerifyOptions) Error!void
}

std.crypto.Sha1 {
  const Options = struct {
  const block_length = 6
  const digest_length = 2
  fn final(d: *Sha1, out: *[digest_length]u8) void
  fn finalResult(d: *Sha1) [digest_length]u8
  fn hash(b: []const u8, out: *[digest_length]u8, options: Options) void
  fn init(options: Options) Sha1
  fn peek(d: Sha1) [digest_length]u8
  fn update(d: *Sha1, b: []const u8) void
}

std.crypto.sha2 {
  const Sha224 = Sha2x32(iv224, 224
  const Sha256 = Sha2x32(iv256, 256
  const Sha256T192 = Sha2x32(iv256, 192
  const Sha384 = Sha2x64(iv384, 384
  const Sha512 = Sha2x64(iv512, 512
  const Sha512T224 = Sha2x64(iv512, 224
  const Sha512T256 = Sha2x64(iv512, 256
  const Sha512_224 = Sha2x64(truncatedSha512Iv(224), 224
  const Sha512_256 = Sha2x64(truncatedSha512Iv(256), 256
}

std.crypto.sha3 {
  const CShake128 = CShake(128, null
  const CShake256 = CShake(256, null
  const KMac128 = KMac(128
  const KMac256 = KMac(256
  const KT128 = kangarootwelve.KT12
  const KT256 = kangarootwelve.KT25
  const Keccak256 = Keccak(1600, 256, 0x01, 24
  const Keccak512 = Keccak(1600, 512, 0x01, 24
  const NistLengthEncoding = enum
  const Sha3_224 = Keccak(1600, 224, 0x06, 24
  const Sha3_256 = Keccak(1600, 256, 0x06, 24
  const Sha3_384 = Keccak(1600, 384, 0x06, 24
  const Sha3_512 = Keccak(1600, 512, 0x06, 24
  const Shake128 = Shake(128
  const Shake256 = Shake(256
  const TupleHash128 = TupleHash(128
  const TupleHash256 = TupleHash(256
  fn CShake(comptime security_level: u11, comptime fname: ?[]const u8) type
  fn KMac(comptime security_level: u11) type
  fn Keccak(comptime f: u11, comptime output_bits: u11, comptime default_delim: u8, comptime rounds: u5) type
  fn Shake(comptime security_level: u11) type
  fn TupleHash(comptime security_level: u11) type
  fn TurboShake(comptime security_level: u11, comptime delim: ?u7) type
  fn TurboShake128(delim: ?u7) type
  fn TurboShake256(comptime delim: ?u7) type
}

std.crypto.siphash {
  fn SipHash128(comptime c_rounds: usize, comptime d_rounds: usize) type
  fn SipHash64(comptime c_rounds: usize, comptime d_rounds: usize) type
}

std.crypto.timing_safe {
  fn add(comptime T: type, a: []const T, b: []const T, result: []T, endian: Endian) bool
  fn classify(ptr: anytype) void
  fn compare(comptime T: type, a: []const T, b: []const T, endian: Endian) Order
  fn declassify(ptr: anytype) void
  fn eql(comptime T: type, a: T, b: T) bool
  fn sub(comptime T: type, a: []const T, b: []const T, result: []T, endian: Endian) bool
}

std.crypto.tls.Client {
  const InitError = erro
  const Options = struct
  const ReadError = erro
  const SslKeyLog = struct
  const min_buffer_len = tls.max_ciphertext_record_le
  fn end(c: *Client) Writer.Error!void
  fn eof(c: Client) bool
  fn init(input: *Reader, output: *Writer, options: Options) InitError!Client
}

std.crypto.tls {
  const Alert = struct
  const ApplicationCipher = union(enum)
  const CertificateType = enum(u8)
  const ChangeCipherSpecType = enum(u8)
  const CipherSuite = enum(u16)
  const Client = @import("tls/Client.zig"
  const CompressionMethod = enum(u8)
  const ContentType = enum(u8)
  const Decoder = struct
  const ExtensionType = enum(u16)
  const HandshakeCipher = union(enum)
  const HandshakeType = enum(u8)
  const KeyUpdateRequest = enum(u8)
  const NamedGroup = enum(u16)
  const ProtocolVersion = enum(u16)
  const PskKeyExchangeMode = enum(u8)
  const SignatureScheme = enum(u16)
  const close_notify_alert = [_]u
  const hello_retry_request_sequence = [32]u
  const max_ciphertext_inner_record_len = 1 << 1
  const max_ciphertext_len = max_ciphertext_inner_record_len + 25
  const max_ciphertext_record_len = max_ciphertext_len + record_header_le
  const record_header_len = 
  fn ApplicationCipherT(comptime AeadType: type, comptime HashType: type, comptime explicit_iv_length: comptime_int) type
  fn HandshakeCipherT(comptime AeadType: type, comptime HashType: type, comptime explicit_iv_length: comptime_int) type
  fn array(comptime Len: type, comptime Elem: type, elems: anytype) [@divExact(@bitSizeOf(Len), 8) + @divExact(@bitSizeOf(Elem), 8) * elems.len]u8
  fn emptyHash(comptime Hash: type) [Hash.digest_length]u8
  fn extension(et: ExtensionType, bytes: anytype) [2 + 2 + bytes.len]u8
  fn hkdfExpandLabel(comptime Hkdf: type, key: [Hkdf.prk_length]u8, label: []const u8, context: []const u8, comptime len: usize) [len]u8
  fn hmac(comptime Hmac: type, message: []const u8, key: [Hmac.key_length]u8) [Hmac.mac_length]u8
  fn hmacExpandLabel(comptime Hmac: type, secret: []const u8, label_then_seed: []const []const u8, comptime len: usize) [len]u8
  fn int(comptime Int: type, val: Int) [@divExact(@bitSizeOf(Int), 8)]u8
}

std.crypto {
  const Certificate = @import("crypto/Certificate.zig"
  const SideChannelsMitigations = enum
  const aead = struct
  const auth = struct
  const codecs = @import("crypto/codecs.zig"
  const core = struct
  const default_side_channels_mitigations = .mediu
  const dh = struct
  const ecc = struct
  const errors = @import("crypto/errors.zig"
  const ff = @import("crypto/ff.zig"
  const hash = struct
  const kdf = struct
  const kem = struct
  const nacl = struct
  const onetimeauth = struct
  const pwhash = struct
  const sign = struct
  const stream = struct
  const timing_safe = @import("crypto/timing_safe.zig"
  const tls = @import("crypto/tls.zig"
  fn secureZero(comptime T: type, s: []volatile T) void
}

std.debug.Coverage {
  const File = extern struct
  const ResolveAddressesDwarfError = Dwarf.ScanError || Io.Cancelabl
  const SourceLocation = extern struct
  const String = enum(u32)
  const init: Coverage = 
  fn addStringAssumeCapacity(cov: *Coverage, s: []const u8) String
  fn deinit(cov: *Coverage, gpa: Allocator) void
  fn fileAt(cov: *Coverage, index: File.Index) *File
  fn resolveAddressesDwarf(cov: *Coverage, gpa: Allocator, io: Io, endian: std.builtin.Endian, sorted_pc_addrs: []const u64, output: []SourceLocation, d: *Dwarf) ResolveAddressesDwarfError!void
  fn stringAt(cov: *Coverage, index: String) [:0]const u8
}

std.debug.cpu_context {
  const DwarfRegisterError = erro
  const Native = if (@hasDecl(root, "debug") and @hasDecl(root.debug, "CpuContext"
  fn fromPosixSignalContext(ctx_ptr: ?*const anyopaque) ?Native
  fn fromWindowsContext(ctx: *const std.os.windows.CONTEXT) Native
}

std.debug.Dwarf.expression {
  const Context = struct
  const Error = erro
  const Options = struct
  fn Builder(comptime options: Options) type
  fn StackMachine(comptime options: Options) type
}

std.debug.Dwarf.SelfUnwinder {
  const CacheEntry = struct
  fn computeRules(unwinder: *SelfUnwinder, gpa: Allocator, unwind: *const Dwarf.Unwind, load_offset: usize, explicit_fde_offset: ?usize) !CacheEntry
  fn deinit(unwinder: *SelfUnwinder) void
  fn getFp(unwinder: *const SelfUnwinder) usize
  fn init(cpu_context: *const std.debug.cpu_context.Native) SelfUnwinder
  fn next(unwinder: *SelfUnwinder, gpa: Allocator, cache_entry: *const CacheEntry) std.debug.SelfInfoError!usize
  fn regNative(ctx: *std.debug.cpu_context.Native, num: u16) erro
}

std.debug.Dwarf.Unwind.VirtualMachine {
  const CfaRule = union(enum)
  const Column = struct
  const Instruction = union(enum)
  const RegisterRule = union(enum)
  const Row = struct
  fn deinit(self: *VirtualMachine, gpa: Allocator) void
  fn populateCieLastRow(gpa: Allocator, cie: *Unwind.CommonInformationEntry, addr_size_bytes: u8, endian: std.builtin.Endian) !void
  fn reset(self: *VirtualMachine) void
  fn rowColumns(self: *const VirtualMachine, row: *const Row) []Column
  fn runTo(vm: *VirtualMachine, gpa: Allocator, pc: u64, cie: *const Unwind.CommonInformationEntry, fde: *const Unwind.FrameDescriptionEntry, addr_size_bytes: u8, endian: std.builtin.Endian) !Row
}

std.debug.Dwarf.Unwind {
  const CommonInformationEntry = struct
  const EhFrameHeader = struct
  const FrameDescriptionEntry = struct
  const Section = enum { debug_frame, eh_frame 
  const VirtualMachine = @import("Unwind/VirtualMachine.zig"
  fn deinit(unwind: *Unwind, gpa: Allocator) void
  fn getFde(unwind: *const Unwind, fde_offset: u64, endian: Endian) !struct { *const CommonInformationEntry, FrameDescriptionEntry }
  fn initEhFrameHdr(header: EhFrameHeader, section_vaddr: u64, section_bytes_ptr: [*]const u8) Unwind
  fn initSection(section: Section, section_vaddr: u64, section_bytes: []const u8) Unwind
  fn lookupPc(unwind: *const Unwind, pc: u64, addr_size_bytes: u8, endian: Endian) !?u64
  fn prepare(unwind: *Unwind, gpa: Allocator, addr_size_bytes: u8, endian: Endian, need_lookup: bool, is_macho: bool) !void
}

std.debug.Dwarf {
  const Abbrev = struct
  const CompileUnit = struct
  const Die = struct
  const FormValue = union(enum)
  const OpenError = ScanErro
  const Range = struct
  const ScanError = erro
  const Section = struct
  const SectionArray = [num_sections]?Sectio
  const SelfUnwinder = @import("Dwarf/SelfUnwinder.zig"
  const Unwind = @import("Dwarf/Unwind.zig"
  const expression = @import("Dwarf/expression.zig"
  fn bad() error{InvalidDebugInfo}
  fn compactUnwindToDwarfRegNumber(unwind_reg_number: u3) !u16
  fn deinit(di: *Dwarf, gpa: Allocator) void
  fn findCompileUnit(di: *const Dwarf, endian: Endian, target_address: u64) !*CompileUnit
  fn fpRegNum(arch: std.Target.Cpu.Arch) u16
  fn getLineNumberInfo(d: *Dwarf, gpa: Allocator, text_arena: Allocator, endian: Endian, compile_unit: *CompileUnit, target_address: u64) !std.debug.SourceLocation
  fn getSymbolName(di: *const Dwarf, address: u64) ?[]const u8
  fn getSymbols(di: *Dwarf, symbol_allocator: Allocator, text_arena: Allocator, endian: Endian, address: u64, resolve_inline_callers: bool, symbols: *std.ArrayList(std.debug.Symbol)) std.debug.SelfInfoError!void
  fn invalidDebugInfoDetected() void
  fn ipRegNum(arch: std.Target.Cpu.Arch) ?u16
  fn missing() error{MissingDebugInfo}
  fn open(d: *Dwarf, gpa: Allocator, endian: Endian) OpenError!void
  fn populateRanges(d: *Dwarf, gpa: Allocator, endian: Endian) ScanError!void
  fn populateSrcLocCache(d: *Dwarf, gpa: Allocator, endian: Endian, cu: *CompileUnit) ScanError!void
  fn readUnitHeader(r: *Reader, endian: Endian) ScanError!UnitHeader
  fn section(di: Dwarf, dwarf_section: Section.Id) ?[]const u8
  fn spRegNum(arch: std.Target.Cpu.Arch) u16
  fn supportsUnwinding(target: *const std.Target) bool
}

std.debug.ElfFile {
  const DebugInfoSearchPaths = struct
  const LoadError = erro
  const SymtabSection = struct
  const UnwindSection = struct
  fn deinit(ef: *ElfFile, gpa: Allocator) void
  fn load(gpa: Allocator, io: Io, elf_file: Io.File, opt_build_id: ?[]const u8, di_search_paths: *const DebugInfoSearchPaths) LoadError!ElfFile
  fn searchSymtab(ef: *ElfFile, gpa: Allocator, vaddr: u64) erro
}

std.debug.Info {
  const LoadError = erro
  const ResolveAddressesError = Coverage.ResolveAddressesDwarfError || error{UnsupportedDebugInfo
  fn deinit(info: *Info, gpa: Allocator) void
  fn load(gpa: Allocator, io: Io, path: Path, coverage: *Coverage, format: std.Target.ObjectFormat, arch: std.Target.Cpu.Arch) LoadError!Info
  fn resolveAddresses(info: *Info, gpa: Allocator, io: Io, sorted_pc_addrs: []const u64, output: []SourceLocation) ResolveAddressesError!void
}

std.debug.MachOFile {
  const Error = erro
  fn deinit(mf: *MachOFile, gpa: Allocator) void
  fn getDwarfForAddress(mf: *MachOFile, gpa: Allocator, io: Io, vaddr: u64) !struct { *Dwarf, u64 }
  fn load(gpa: Allocator, io: Io, path: []const u8, arch: std.Target.Cpu.Arch) Error!MachOFile
  fn lookupSymbolName(mf: *MachOFile, vaddr: u64) error{MissingDebugInfo}![]const u8
}

std.debug.no_panic {
  fn call(_: []const u8, _: ?usize) noreturn
  fn castToNull() noreturn
  fn copyLenMismatch() noreturn
  fn corruptSwitch() noreturn
  fn divideByZero() noreturn
  fn exactDivisionRemainder() noreturn
  fn forLenMismatch() noreturn
  fn inactiveUnionField(_: anytype, _: anytype) noreturn
  fn incorrectAlignment() noreturn
  fn integerOutOfBounds() noreturn
  fn integerOverflow() noreturn
  fn integerPartOutOfBounds() noreturn
  fn invalidEnumValue() noreturn
  fn invalidErrorCode() noreturn
  fn memcpyAlias() noreturn
  fn noreturnReturned() noreturn
  fn outOfBounds(_: usize, _: usize) noreturn
  fn reachedUnreachable() noreturn
  fn sentinelMismatch(_: anytype, _: anytype) noreturn
  fn shiftRhsTooBig() noreturn
  fn shlOverflow() noreturn
  fn shrOverflow() noreturn
  fn sliceCastLenRemainder(_: usize) noreturn
  fn startGreaterThanEnd(_: usize, _: usize) noreturn
  fn unwrapError(_: anyerror) noreturn
  fn unwrapNull() noreturn
}

std.debug.Pdb {
  const BinaryAnnotation = union(enum)
  const InlineSiteSymIterator = struct
  const InlineeSourceLine = struct
  const Module = struct
  fn deinit(self: *Pdb) void
  fn findInlineeName(self: *const Pdb, inlinee: u32) ?[]const u8
  fn getBinaryAnnotations(self: *Pdb, module: *Module, site: *align(1) const pdb.InlineSiteSym) BinaryAnnotation.Iterator
  fn getFileName(self: *Pdb, gpa: Allocator, mod: *Module, file_id: u32) ![]const u8
  fn getInlineSiteSourceLocation(self: *Pdb, gpa: Allocator, mod: *Module, site: *align(1) const pdb.InlineSiteSym, inlinee_src_line: *align(1) const pdb.InlineeSourceLine, offset_in_func: usize) !?std.debug.SourceLocation
  fn getInlineeSourceLines(self: *Pdb, mod: *Module, inlinee: u32) []const InlineeSourceLine
  fn getInlinees(self: *Pdb, module: *Module, proc_sym: *align(1) const pdb.ProcSym) InlineSiteSymIterator
  fn getLineNumberInfo(self: *Pdb, gpa: Allocator, module: *Module, address: u64) !std.debug.SourceLocation
  fn getModule(self: *Pdb, index: usize) !?*Module
  fn getProcSym(self: *Pdb, module: *Module, address: u64) ?*align(1) pdb.ProcSym
  fn getStream(self: *Pdb, stream: pdb.StreamType) ?*MsfStream
  fn getStreamById(self: *Pdb, id: u32) ?*MsfStream
  fn getSymbolName(self: *Pdb, proc_sym: *align(1) const pdb.ProcSym) []const u8
  fn init(gpa: Allocator, file_reader: *File.Reader) !Pdb
  fn parseDbiStream(self: *Pdb) !void
  fn parseInfoStream(self: *Pdb) !void
  fn parseIpiStream(self: *Pdb) !void
}

std.debug.SelfInfo.Elf {
  const UnwindContext = Dwarf.SelfUnwinde
  const can_unwind: bool = s:
  const init: SelfInfo = 
  fn deinit(si: *SelfInfo, io: Io) void
  fn getModuleName(si: *SelfInfo, io: Io, address: usize) Error![]const u8
  fn getModuleSlide(si: *SelfInfo, io: Io, address: usize) Error!usize
  fn getSymbols(si: *SelfInfo, io: Io, symbol_allocator: Allocator, text_arena: Allocator, address: usize, resolve_inline_callers: bool, symbols: *std.ArrayList(std.debug.Symbol)) Error!void
  fn unwindFrame(si: *SelfInfo, io: Io, context: *UnwindContext) Error!usize
}

std.debug.SelfInfo.MachO {
  const UnwindContext = std.debug.Dwarf.SelfUnwinde
  const can_unwind: bool = tru
  const init: SelfInfo = 
  fn deinit(si: *SelfInfo, io: Io) void
  fn getModuleName(si: *SelfInfo, io: Io, address: usize) Error![]const u8
  fn getModuleSlide(si: *SelfInfo, io: Io, address: usize) Error!usize
  fn getSymbols(si: *SelfInfo, io: Io, symbol_allocator: Allocator, text_arena: Allocator, address: usize, resolve_inline_callers: bool, symbols: *std.ArrayList(std.debug.Symbol)) Error!void
  fn unwindFrame(si: *SelfInfo, io: Io, context: *UnwindContext) Error!usize
}

std.debug.SelfInfo.Windows {
  const UnwindContext = struct
  const can_unwind: bool = switch (builtin.cpu.arch)
  const init: SelfInfo = 
  fn deinit(si: *SelfInfo, io: Io) void
  fn getModuleName(si: *SelfInfo, io: Io, address: usize) Error![]const u8
  fn getModuleSlide(si: *SelfInfo, io: Io, address: usize) Error!usize
  fn getSymbols(si: *SelfInfo, io: Io, symbol_allocator: Allocator, text_arena: Allocator, address: usize, resolve_inline_callers: bool, symbols: *std.ArrayList(std.debug.Symbol)) Error!void
  fn unwindFrame(si: *SelfInfo, io: Io, context: *UnwindContext) Error!usize
}

std.debug.simple_panic {
  fn call(msg: []const u8, ra: ?usize) noreturn
  fn castToNull() noreturn
  fn copyLenMismatch() noreturn
  fn corruptSwitch() noreturn
  fn divideByZero() noreturn
  fn exactDivisionRemainder() noreturn
  fn forLenMismatch() noreturn
  fn inactiveUnionField(active: anytype, accessed: @TypeOf(active)) noreturn
  fn incorrectAlignment() noreturn
  fn integerOutOfBounds() noreturn
  fn integerOverflow() noreturn
  fn integerPartOutOfBounds() noreturn
  fn invalidEnumValue() noreturn
  fn invalidErrorCode() noreturn
  fn memcpyAlias() noreturn
  fn noreturnReturned() noreturn
  fn outOfBounds(index: usize, len: usize) noreturn
  fn reachedUnreachable() noreturn
  fn sentinelMismatch(expected: anytype, found: @TypeOf(expected)) noreturn
  fn shiftRhsTooBig() noreturn
  fn shlOverflow() noreturn
  fn shrOverflow() noreturn
  fn sliceCastLenRemainder(src_len: usize) noreturn
  fn startGreaterThanEnd(start: usize, end: usize) noreturn
  fn unwrapError(err: anyerror) noreturn
  fn unwrapNull() noreturn
}

std.debug {
  const Coverage = @import("debug/Coverage.zig"
  const CpuContextPtr = if (cpu_context.Native == noreturn) noreturn else *const cpu_context.Nativ
  const Dwarf = @import("debug/Dwarf.zig"
  const ElfFile = @import("debug/ElfFile.zig"
  const FormatStackTrace = struct
  const Info = @import("debug/Info.zig"
  const MachOFile = @import("debug/MachOFile.zig"
  const Pdb = @import("debug/Pdb.zig"
  const SafetyLock = struct
  const SelfInfo = if (@hasDecl(root, "debug") and @hasDecl(root.debug, "SelfInfo"
  const SelfInfoError = erro
  const SkippedAddresses = enum(usize)
  const SourceLocation = struct
  const StackTrace = struct
  const StackUnwindOptions = struct
  const Symbol = struct
  const Trace = ConfigurableTrace(2, 4, builtin.mode == .Debug
  const cpu_context = @import("debug/cpu_context.zig"
  const default_enable_segfault_handler = runtime_safety and have_segfault_handling_suppor
  const have_segfault_handling_support = switch (native_os)
  const no_panic = @import("debug/no_panic.zig"
  const runtime_safety = switch (builtin.mode)
  const simple_panic = @import("debug/simple_panic.zig"
  const sys_can_stack_trace = switch (builtin.cpu.arch)
  fn ConfigurableTrace(comptime size: usize, comptime stack_frame_count: usize, comptime is_enabled: bool) type
  fn FullPanic(comptime panicFn: fn ([]const u8, ?usize) noreturn) type
  fn assert(ok: bool) void
  fn assertAligned(ptr: anytype, comptime alignment: std.mem.Alignment) void
  fn assertReadable(slice: []const volatile u8) void
  fn attachSegfaultHandler() void
  fn defaultHandleSegfault(addr: ?usize, name: []const u8, opt_ctx: ?CpuContextPtr) noreturn
  fn defaultPanic(msg: []const u8, first_trace_addr: ?usize) noreturn
  fn dumpCurrentStackTrace(options: StackUnwindOptions) void
  fn dumpErrorReturnTrace(et: *const std.builtin.StackTrace) void
  fn dumpHex(bytes: []const u8) void
  fn dumpHexFallible(t: Io.Terminal, bytes: []const u8) !void
  fn dumpStackPointerAddr(prefix: []const u8) void
  fn dumpStackTrace(st: *const StackTrace) void
  fn getDebugInfoAllocator() Allocator
  fn lockStderr(buffer: []u8) Io.LockedStderr
  fn maybeEnableSegfaultHandler() void
  fn panic(comptime format: []const u8, args: anytype) noreturn
  fn panicExtra(ret_addr: ?usize, comptime format: []const u8, args: anytype) noreturn
  fn print(comptime fmt: []const u8, args: anytype) void
  fn unlockStderr() void
  fn updateSegfaultHandler(act: ?*const posix.Sigaction) void
  fn writeErrorReturnTrace(et: *const std.builtin.StackTrace, t: Io.Terminal) Writer.Error!void
  fn writeStackTrace(st: *const StackTrace, t: Io.Terminal) Writer.Error!void
  inline fn getSelfDebugInfo() !*SelfInfo
  inline fn inValgrind() bool
  inline fn stripInstructionPtrAuthCode(ptr: usize) usize
  noinline fn captureCurrentStackTrace(options: StackUnwindOptions, addr_buf: []usize) StackTrace
  noinline fn writeCurrentStackTrace(options: StackUnwindOptions, t: Io.Terminal) Writer.Error!void
}

std.deque {
  fn Deque(comptime T: type) type
}

std.DoublyLinkedList {
  const Node = struct
  fn append(list: *DoublyLinkedList, new_node: *Node) void
  fn concatByMoving(list1: *DoublyLinkedList, list2: *DoublyLinkedList) void
  fn insertAfter(list: *DoublyLinkedList, existing_node: *Node, new_node: *Node) void
  fn insertBefore(list: *DoublyLinkedList, existing_node: *Node, new_node: *Node) void
  fn len(list: DoublyLinkedList) usize
  fn pop(list: *DoublyLinkedList) ?*Node
  fn popFirst(list: *DoublyLinkedList) ?*Node
  fn prepend(list: *DoublyLinkedList, new_node: *Node) void
  fn remove(list: *DoublyLinkedList, node: *Node) void
}

std.dwarf.AT {
  const @"inline" = 0x2
  const @"noreturn" = 0x8
  const @"type" = 0x4
  const GNAT_descriptive_type = 0x230
  const GNU_addr_base = 0x213
  const GNU_all_call_sites = 0x211
  const GNU_all_source_call_sites = 0x211
  const GNU_all_tail_call_sites = 0x211
  const GNU_call_site_data_value = 0x211
  const GNU_call_site_target = 0x211
  const GNU_call_site_target_clobbered = 0x211
  const GNU_call_site_value = 0x211
  const GNU_dwo_id = 0x213
  const GNU_dwo_name = 0x213
  const GNU_exclusive_locks_required = 0x210
  const GNU_guarded = 0x210
  const GNU_guarded_by = 0x210
  const GNU_locks_excluded = 0x210
  const GNU_macros = 0x211
  const GNU_odr_signature = 0x210
  const GNU_pt_guarded = 0x210
  const GNU_pt_guarded_by = 0x210
  const GNU_pubnames = 0x213
  const GNU_pubtypes = 0x213
  const GNU_ranges_base = 0x213
  const GNU_shared_locks_required = 0x210
  const GNU_tail_call = 0x211
  const GNU_template_name = 0x211
  const GNU_vector = 0x210
  const HP_actuals_stmt_list = 0x201
  const HP_all_variables_modifiable = 0x201
  const HP_block_index = 0x200
  const HP_cold_region_high_pc = 0x201
  const HP_cold_region_low_pc = 0x201
  const HP_default_location = 0x202
  const HP_definition_points = 0x202
  const HP_epilogue = 0x2008; // Same as AT.MIPS_strid
  const HP_is_result_param = 0x202
  const HP_linkage_name = 0x201
  const HP_opt_flags = 0x201
  const HP_opt_level = 0x201
  const HP_pass_by_reference = 0x201
  const HP_proc_per_section = 0x201
  const HP_prof_flags = 0x201b; // In comp unit of procs_info for -
  const HP_prof_version_id = 0x201
  const HP_prologue = 0x2005; // Same as AT.MIPS_loop_unrol
  const HP_raw_data_ptr = 0x201
  const HP_unit_name = 0x201
  const HP_unit_size = 0x202
  const HP_unmodifiable = 0x2001; // Same as AT.MIPS_fd
  const HP_widened_byte_size = 0x202
  const MIPS_abstract_name = 0x200
  const MIPS_clone_origin = 0x200
  const MIPS_epilog_begin = 0x200
  const MIPS_fde = 0x200
  const MIPS_has_inlines = 0x200
  const MIPS_linkage_name = 0x200
  const MIPS_loop_begin = 0x200
  const MIPS_loop_unroll_factor = 0x200
  const MIPS_software_pipeline_depth = 0x200
  const MIPS_stride = 0x200
  const MIPS_tail_loop_begin = 0x200
  const PGI_lbase = 0x3a0
  const PGI_lstride = 0x3a0
  const PGI_soffset = 0x3a0
  const VMS_rtnbeg_pd_address = 0x220
  const ZIG_comptime_value = 0x2cd
  const ZIG_decl_line_relative = 0x2cd
  const ZIG_padding = 0x2cc
  const ZIG_parent = 0x2cc
  const ZIG_relative_decl = 0x2cd
  const ZIG_sentinel = 0x2ce
  const abstract_origin = 0x3
  const accessibility = 0x3
  const addr_base = 0x7
  const address_class = 0x3
  const alignment = 0x8
  const allocated = 0x4
  const artificial = 0x3
  const associated = 0x4
  const base_types = 0x3
  const binary_scale = 0x5
  const bit_offset = 0x0
  const bit_size = 0x0
  const bit_stride = 0x2
  const body_begin = 0x210
  const body_end = 0x210
  const byte_size = 0x0
  const byte_stride = 0x5
  const call_all_calls = 0x7
  const call_all_source_calls = 0x7
  const call_all_tail_calls = 0x7
  const call_column = 0x5
  const call_data_location = 0x8
  const call_data_value = 0x8
  const call_file = 0x5
  const call_line = 0x5
  const call_origin = 0x7
  const call_parameter = 0x8
  const call_pc = 0x8
  const call_return_pc = 0x7
  const call_tail_call = 0x8
  const call_target = 0x8
  const call_target_clobbered = 0x8
  const call_value = 0x7
  const calling_convention = 0x3
  const common_reference = 0x1
  const comp_dir = 0x1
  const const_expr = 0x6
  const const_value = 0x1
  const containing_type = 0x1
  const count = 0x3
  const data_bit_offset = 0x6
  const data_location = 0x5
  const data_member_location = 0x3
  const decimal_scale = 0x5
  const decimal_sign = 0x5
  const decl_column = 0x3
  const decl_file = 0x3
  const decl_line = 0x3
  const declaration = 0x3
  const default_value = 0x1
  const defaulted = 0x8
  const deleted = 0x8
  const description = 0x5
  const digit_count = 0x5
  const discr = 0x1
  const discr_list = 0x3
  const discr_value = 0x1
  const dwo_name = 0x7
  const element_list = 0x0
  const elemental = 0x6
  const encoding = 0x3
  const endianity = 0x6
  const entry_pc = 0x5
  const enum_class = 0x6
  const explicit = 0x6
  const export_symbols = 0x8
  const extension = 0x5
  const external = 0x3
  const frame_base = 0x4
  const friend = 0x4
  const hi_user = 0x3fff; // Implementation-defined range en
  const high_pc = 0x1
  const identifier_case = 0x4
  const import = 0x1
  const is_optional = 0x2
  const language = 0x1
  const linkage_name = 0x6
  const lo_user = 0x2000; // Implementation-defined range star
  const location = 0x0
  const loclists_base = 0x8
  const low_pc = 0x1
  const lower_bound = 0x2
  const mac_info = 0x210
  const macro_info = 0x4
  const macros = 0x7
  const main_subprogram = 0x6
  const member = 0x1
  const mutable = 0x6
  const name = 0x0
  const namelist_items = 0x4
  const object_pointer = 0x6
  const ordering = 0x0
  const picture_string = 0x6
  const priority = 0x4
  const producer = 0x2
  const prototyped = 0x2
  const pure = 0x6
  const ranges = 0x5
  const rank = 0x7
  const recursive = 0x6
  const reference = 0x7
  const return_addr = 0x2
  const rnglists_base = 0x7
  const rvalue_reference = 0x7
  const segment = 0x4
  const sf_names = 0x210
  const sibling = 0x0
  const signature = 0x6
  const small = 0x5
  const specification = 0x4
  const src_coords = 0x210
  const src_info = 0x210
  const start_scope = 0x2
  const static_link = 0x4
  const stmt_list = 0x1
  const str_offsets_base = 0x7
  const string_length = 0x1
  const string_length_bit_size = 0x6
  const string_length_byte_size = 0x7
  const subscr_data = 0x0
  const threads_scaled = 0x6
  const trampoline = 0x5
  const upc_threads_scaled = 0x321
  const upper_bound = 0x2
  const use_GNAT_descriptive_type = 0x230
  const use_UTF8 = 0x5
  const use_location = 0x4
  const variable_parameter = 0x4
  const virtuality = 0x4
  const visibility = 0x1
  const vtable_elem_location = 0x4
}

std.dwarf.ATE {
  const @"void" = 0x
  const ASCII = 0x1
  const HP_VAX_complex_float = 0x8f; // F or G floating comple
  const HP_VAX_complex_float_d = 0x90; // D floating comple
  const HP_VAX_float = 0x88; // F or G floatin
  const HP_VAX_float_d = 0x89; // D floatin
  const HP_complex_float128 = 0x83; // Complex fp (128 bit
  const HP_complex_float80 = 0x81; // Complex floating-point (80 bit
  const HP_edited = 0x8c; // Cobo
  const HP_float128 = 0x82; // Floating-point (128 bit
  const HP_float80 = 0x80; // Floating-point (80 bit
  const HP_floathpintel = 0x84; // Floating-point (82 bit IA64
  const HP_imaginary_float128 = 0x8
  const HP_imaginary_float80 = 0x8
  const HP_packed_decimal = 0x8a; // Cobo
  const HP_signed_fixed = 0x8d; // Cobo
  const HP_unsigned_fixed = 0x8e; // Cobo
  const HP_zoned_decimal = 0x8b; // Cobo
  const UCS = 0x1
  const UTF = 0x1
  const address = 0x
  const boolean = 0x
  const complex_float = 0x
  const decimal_float = 0x
  const edited = 0x
  const float = 0x
  const hi_user = 0xf
  const imaginary_float = 0x
  const lo_user = 0x8
  const numeric_string = 0x
  const packed_decimal = 0x
  const signed = 0x
  const signed_char = 0x
  const signed_fixed = 0x
  const unsigned = 0x
  const unsigned_char = 0x
  const unsigned_fixed = 0x
}

std.dwarf.EH {
  const PE = packed struct(u8)
}

std.dwarf.FORM {
  const GNU_addr_index = 0x1f0
  const GNU_ref_alt = 0x1f2
  const GNU_str_index = 0x1f0
  const GNU_strp_alt = 0x1f2
  const addr = 0x0
  const addrx = 0x1
  const addrx1 = 0x2
  const addrx2 = 0x2
  const addrx3 = 0x2
  const addrx4 = 0x2
  const block = 0x0
  const block1 = 0x0
  const block2 = 0x0
  const block4 = 0x0
  const data1 = 0x0
  const data16 = 0x1
  const data2 = 0x0
  const data4 = 0x0
  const data8 = 0x0
  const exprloc = 0x1
  const flag = 0x0
  const flag_present = 0x1
  const implicit_const = 0x2
  const indirect = 0x1
  const line_strp = 0x1
  const loclistx = 0x2
  const ref1 = 0x1
  const ref2 = 0x1
  const ref4 = 0x1
  const ref8 = 0x1
  const ref_addr = 0x1
  const ref_sig8 = 0x2
  const ref_sup4 = 0x1
  const ref_sup8 = 0x2
  const ref_udata = 0x1
  const rnglistx = 0x2
  const sdata = 0x0
  const sec_offset = 0x1
  const string = 0x0
  const strp = 0x0
  const strp_sup = 0x1
  const strx = 0x1
  const strx1 = 0x2
  const strx2 = 0x2
  const strx3 = 0x2
  const strx4 = 0x2
  const udata = 0x0
}

std.dwarf.LANG {
  const Ada2005 = 0x002
  const Ada2012 = 0x002
  const Ada83 = 0x000
  const Ada95 = 0x000
  const Assembly = 0x003
  const BLISS = 0x002
  const C = 0x000
  const C11 = 0x001
  const C17 = 0x002
  const C89 = 0x000
  const C99 = 0x000
  const CPP_for_OpenCL = 0x003
  const C_plus_plus = 0x000
  const C_plus_plus_03 = 0x001
  const C_plus_plus_11 = 0x001
  const C_plus_plus_14 = 0x002
  const C_plus_plus_17 = 0x002
  const C_plus_plus_20 = 0x002
  const C_plus_plus_23 = 0x003
  const C_sharp = 0x003
  const Cobol74 = 0x000
  const Cobol85 = 0x000
  const Crystal = 0x002
  const D = 0x001
  const Dylan = 0x002
  const Fortran03 = 0x002
  const Fortran08 = 0x002
  const Fortran18 = 0x002
  const Fortran77 = 0x000
  const Fortran90 = 0x000
  const Fortran95 = 0x000
  const GLSL = 0x003
  const GLSL_ES = 0x003
  const Go = 0x001
  const HIP = 0x003
  const HLSL = 0x003
  const HP_Assembler = 0x800
  const HP_Basic91 = 0x800
  const HP_Bliss = 0x800
  const HP_IMacro = 0x800
  const HP_Pascal91 = 0x800
  const Haskell = 0x001
  const Hylo = 0x004
  const Java = 0x000
  const Julia = 0x001
  const Kotlin = 0x002
  const Mips_Assembler = 0x800
  const Modula2 = 0x000
  const Modula3 = 0x001
  const Mojo = 0x003
  const Move = 0x004
  const OCaml = 0x001
  const ObjC = 0x001
  const ObjC_plus_plus = 0x001
  const Odin = 0x003
  const OpenCL = 0x001
  const OpenCL_CPP = 0x003
  const PLI = 0x000
  const Pascal83 = 0x000
  const Python = 0x001
  const RenderScript = 0x002
  const Ruby = 0x004
  const Rust = 0x001
  const SYCL = 0x003
  const Swift = 0x001
  const UPC = 0x001
  const Upc = 0x876
  const Zig = 0x002
  const hi_user = 0xfff
  const lo_user = 0x800
}

std.dwarf.OP {
  const @"and" = 0x1
  const @"or" = 0x2
  const GNU_addr_index = 0xf
  const GNU_const_index = 0xf
  const GNU_const_type = 0xf
  const GNU_convert = 0xf
  const GNU_deref_type = 0xf
  const GNU_encoded_addr = 0xf
  const GNU_entry_value = 0xf
  const GNU_implicit_pointer = 0xf
  const GNU_parameter_ref = 0xf
  const GNU_push_tls_address = 0xe
  const GNU_regval_type = 0xf
  const GNU_reinterpret = 0xf
  const GNU_uninit = 0xf
  const HP_fltconst4 = 0xe
  const HP_fltconst8 = 0xe
  const HP_is_value = 0xe
  const HP_mod_range = 0xe
  const HP_tls = 0xe
  const HP_unknown = 0xe0; // Ouch, the same as GNU_push_tls_addres
  const HP_unmod_range = 0xe
  const PGI_omp_thread_num = 0xf
  const WASM_global = 0x0
  const WASM_global_u32 = 0x0
  const WASM_local = 0x0
  const WASM_location = 0xe
  const WASM_operand_stack = 0x0
  const abs = 0x1
  const addr = 0x0
  const addrx = 0xa
  const bit_piece = 0x9
  const bra = 0x2
  const breg0 = 0x7
  const breg1 = 0x7
  const breg10 = 0x7
  const breg11 = 0x7
  const breg12 = 0x7
  const breg13 = 0x7
  const breg14 = 0x7
  const breg15 = 0x7
  const breg16 = 0x8
  const breg17 = 0x8
  const breg18 = 0x8
  const breg19 = 0x8
  const breg2 = 0x7
  const breg20 = 0x8
  const breg21 = 0x8
  const breg22 = 0x8
  const breg23 = 0x8
  const breg24 = 0x8
  const breg25 = 0x8
  const breg26 = 0x8
  const breg27 = 0x8
  const breg28 = 0x8
  const breg29 = 0x8
  const breg3 = 0x7
  const breg30 = 0x8
  const breg31 = 0x8
  const breg4 = 0x7
  const breg5 = 0x7
  const breg6 = 0x7
  const breg7 = 0x7
  const breg8 = 0x7
  const breg9 = 0x7
  const bregx = 0x9
  const call2 = 0x9
  const call4 = 0x9
  const call_frame_cfa = 0x9
  const call_ref = 0x9
  const const1s = 0x0
  const const1u = 0x0
  const const2s = 0x0
  const const2u = 0x0
  const const4s = 0x0
  const const4u = 0x0
  const const8s = 0x0
  const const8u = 0x0
  const const_type = 0xa
  const consts = 0x1
  const constu = 0x1
  const constx = 0xa
  const convert = 0xa
  const deref = 0x0
  const deref_size = 0x9
  const deref_type = 0xa
  const div = 0x1
  const drop = 0x1
  const dup = 0x1
  const entry_value = 0xa
  const eq = 0x2
  const fbreg = 0x9
  const form_tls_address = 0x9
  const ge = 0x2
  const gt = 0x2
  const hi_user = 0xff; // Implementation-defined range en
  const implicit_pointer = 0xa
  const implicit_value = 0x9
  const le = 0x2
  const lit0 = 0x3
  const lit1 = 0x3
  const lit10 = 0x3
  const lit11 = 0x3
  const lit12 = 0x3
  const lit13 = 0x3
  const lit14 = 0x3
  const lit15 = 0x3
  const lit16 = 0x4
  const lit17 = 0x4
  const lit18 = 0x4
  const lit19 = 0x4
  const lit2 = 0x3
  const lit20 = 0x4
  const lit21 = 0x4
  const lit22 = 0x4
  const lit23 = 0x4
  const lit24 = 0x4
  const lit25 = 0x4
  const lit26 = 0x4
  const lit27 = 0x4
  const lit28 = 0x4
  const lit29 = 0x4
  const lit3 = 0x3
  const lit30 = 0x4
  const lit31 = 0x4
  const lit4 = 0x3
  const lit5 = 0x3
  const lit6 = 0x3
  const lit7 = 0x3
  const lit8 = 0x3
  const lit9 = 0x3
  const lo_user = 0xe0; // Implementation-defined range star
  const lt = 0x2
  const minus = 0x1
  const mod = 0x1
  const mul = 0x1
  const ne = 0x2
  const neg = 0x1
  const nop = 0x9
  const not = 0x2
  const over = 0x1
  const pick = 0x1
  const piece = 0x9
  const plus = 0x2
  const plus_uconst = 0x2
  const push_object_address = 0x9
  const reg0 = 0x5
  const reg1 = 0x5
  const reg10 = 0x5
  const reg11 = 0x5
  const reg12 = 0x5
  const reg13 = 0x5
  const reg14 = 0x5
  const reg15 = 0x5
  const reg16 = 0x6
  const reg17 = 0x6
  const reg18 = 0x6
  const reg19 = 0x6
  const reg2 = 0x5
  const reg20 = 0x6
  const reg21 = 0x6
  const reg22 = 0x6
  const reg23 = 0x6
  const reg24 = 0x6
  const reg25 = 0x6
  const reg26 = 0x6
  const reg27 = 0x6
  const reg28 = 0x6
  const reg29 = 0x6
  const reg3 = 0x5
  const reg30 = 0x6
  const reg31 = 0x6
  const reg4 = 0x5
  const reg5 = 0x5
  const reg6 = 0x5
  const reg7 = 0x5
  const reg8 = 0x5
  const reg9 = 0x5
  const regval_type = 0xa
  const regx = 0x9
  const reinterpret = 0xa
  const rot = 0x1
  const shl = 0x2
  const shr = 0x2
  const shra = 0x2
  const skip = 0x2
  const stack_value = 0x9
  const swap = 0x1
  const xderef = 0x1
  const xderef_size = 0x9
  const xderef_type = 0xa
  const xor = 0x2
}

std.dwarf.TAG {
  const GNU_BINCL = 0x410
  const GNU_EINCL = 0x410
  const GNU_call_site = 0x410
  const GNU_call_site_parameter = 0x410
  const GNU_formal_parameter_pack = 0x410
  const GNU_template_parameter_pack = 0x410
  const GNU_template_template_param = 0x410
  const HP_Bliss_field = 0x409
  const HP_Bliss_field_set = 0x409
  const HP_array_descriptor = 0x409
  const MIPS_loop = 0x408
  const PGI_interface_block = 0xA02
  const PGI_kanji_type = 0xA00
  const ZIG_comptime_value = 0xfdb
  const ZIG_padding = 0xfdb
  const access_declaration = 0x2
  const array_type = 0x0
  const atomic_type = 0x4
  const base_type = 0x2
  const call_site = 0x4
  const call_site_parameter = 0x4
  const catch_block = 0x2
  const class_template = 0x4103; //For C+
  const class_type = 0x0
  const coarray_type = 0x4
  const common_block = 0x1
  const common_inclusion = 0x1
  const compile_unit = 0x1
  const condition = 0x3
  const const_type = 0x2
  const constant = 0x2
  const dwarf_procedure = 0x3
  const dynamic_type = 0x4
  const entry_point = 0x0
  const enumeration_type = 0x0
  const enumerator = 0x2
  const file_type = 0x2
  const formal_parameter = 0x0
  const format_label = 0x4101; // For FORTRAN 77 and Fortran 9
  const friend = 0x2
  const function_template = 0x4102; // For C+
  const generic_subrange = 0x4
  const hi_user = 0xfff
  const immutable_type = 0x4
  const imported_declaration = 0x0
  const imported_module = 0x3
  const imported_unit = 0x3
  const inheritance = 0x1
  const inlined_subroutine = 0x1
  const interface_type = 0x3
  const label = 0x0
  const lexical_block = 0x0
  const lo_user = 0x408
  const member = 0x0
  const module = 0x1
  const namelist = 0x2
  const namelist_item = 0x2
  const namespace = 0x3
  const packed_type = 0x2
  const padding = 0x0
  const partial_unit = 0x3
  const pointer_type = 0x0
  const ptr_to_member_type = 0x1
  const reference_type = 0x1
  const restrict_type = 0x3
  const rvalue_reference_type = 0x4
  const set_type = 0x2
  const shared_type = 0x4
  const skeleton_unit = 0x4
  const string_type = 0x1
  const structure_type = 0x1
  const subprogram = 0x2
  const subrange_type = 0x2
  const subroutine = 0x1
  const subroutine_type = 0x1
  const template_alias = 0x4
  const template_type_param = 0x2
  const template_value_param = 0x3
  const thrown_type = 0x3
  const try_block = 0x3
  const type_unit = 0x4
  const typedef = 0x1
  const union_type = 0x1
  const unspecified_parameters = 0x1
  const unspecified_type = 0x3
  const upc_relaxed_type = 0x876
  const upc_shared_type = 0x876
  const upc_strict_type = 0x876
  const variable = 0x3
  const variant = 0x1
  const variant_part = 0x3
  const volatile_type = 0x3
  const with_stmt = 0x2
}

std.dwarf {
  const ACCESS = struct
  const AT = @import("dwarf/AT.zig"
  const ATE = @import("dwarf/ATE.zig"
  const CC = enum(u8)
  const CFA = struct
  const CHILDREN = struct
  const EH = @import("dwarf/EH.zig"
  const FORM = @import("dwarf/FORM.zig"
  const Format = enum { @"32", @"64" 
  const LANG = @import("dwarf/LANG.zig"
  const LLE = struct
  const LNCT = struct
  const LNE = struct
  const LNS = struct
  const OP = @import("dwarf/OP.zig"
  const RLE = struct
  const TAG = @import("dwarf/TAG.zig"
  const UT = struct
}

std.dynamic_library {
  const DlDynLib = struct
  const DynLib = struct
  const ElfDynLib = struct
  fn get_DYNAMIC() ?[*]const elf.Dyn
  fn linkmap_iterator() error{InvalidExe}!LinkMap.Iterator
}

std.elf {
  const ARFMAG = "`\n
  const ARMAG = "!<arch>\n
  const ARMAG_THIN = "!<thin>\n
  const AT_BASE = 
  const AT_BASE_PLATFORM = 2
  const AT_CLKTCK = 1
  const AT_DCACHEBSIZE = 1
  const AT_EGID = 1
  const AT_ENTRY = 
  const AT_EUID = 1
  const AT_EXECFD = 
  const AT_EXECFN = 3
  const AT_FLAGS = 
  const AT_FPUCW = 1
  const AT_GID = 1
  const AT_HWCAP = 1
  const AT_HWCAP2 = 2
  const AT_ICACHEBSIZE = 2
  const AT_IGNORE = 
  const AT_IGNOREPPC = 2
  const AT_L1D_CACHEGEOMETRY = 4
  const AT_L1D_CACHESHAPE = 3
  const AT_L1D_CACHESIZE = 4
  const AT_L1I_CACHEGEOMETRY = 4
  const AT_L1I_CACHESHAPE = 3
  const AT_L1I_CACHESIZE = 4
  const AT_L2_CACHEGEOMETRY = 4
  const AT_L2_CACHESHAPE = 3
  const AT_L2_CACHESIZE = 4
  const AT_L3_CACHEGEOMETRY = 4
  const AT_L3_CACHESHAPE = 3
  const AT_L3_CACHESIZE = 4
  const AT_MINSIGSTKSZ = 5
  const AT_NOTELF = 1
  const AT_NULL = 
  const AT_PAGESZ = 
  const AT_PHDR = 
  const AT_PHENT = 
  const AT_PHNUM = 
  const AT_PLATFORM = 1
  const AT_RANDOM = 2
  const AT_SECURE = 2
  const AT_SYSINFO = 3
  const AT_SYSINFO_EHDR = 3
  const AT_UCACHEBSIZE = 2
  const AT_UID = 1
  const Addr = ElfN.Add
  const Auxv = switch (@sizeOf(usize))
  const CLASS = enum(u8)
  const COMPRESS = enum(u32)
  const Chdr = switch (@sizeOf(usize))
  const DATA = enum(u8)
  const DF_1_CONFALT = 0x0000200
  const DF_1_DIRECT = 0x0000010
  const DF_1_DISPRELDNE = 0x0000800
  const DF_1_DISPRELPND = 0x0001000
  const DF_1_EDITED = 0x0020000
  const DF_1_ENDFILTEE = 0x0000400
  const DF_1_GLOBAL = 0x0000000
  const DF_1_GLOBAUDIT = 0x0100000
  const DF_1_GROUP = 0x0000000
  const DF_1_IGNMULDEF = 0x0004000
  const DF_1_INITFIRST = 0x0000002
  const DF_1_INTERPOSE = 0x0000040
  const DF_1_LOADFLTR = 0x0000001
  const DF_1_NODEFLIB = 0x0000080
  const DF_1_NODELETE = 0x0000000
  const DF_1_NODIRECT = 0x0002000
  const DF_1_NODUMP = 0x0000100
  const DF_1_NOHDR = 0x0010000
  const DF_1_NOKSYMS = 0x0008000
  const DF_1_NOOPEN = 0x0000004
  const DF_1_NORELOC = 0x0040000
  const DF_1_NOW = 0x0000000
  const DF_1_ORIGIN = 0x0000008
  const DF_1_PIE = 0x0800000
  const DF_1_SINGLETON = 0x0200000
  const DF_1_STUB = 0x0400000
  const DF_1_SYMINTPOSE = 0x0080000
  const DF_1_TRANS = 0x0000020
  const DF_BIND_NOW = 0x0000000
  const DF_ORIGIN = 0x0000000
  const DF_STATIC_TLS = 0x0000001
  const DF_SYMBOLIC = 0x0000000
  const DF_TEXTREL = 0x0000000
  const DT_ADDRNUM = 1
  const DT_ADDRRNGHI = 0x6ffffef
  const DT_ADDRRNGLO = 0x6ffffe0
  const DT_ALPHA_NUM = 
  const DT_ALPHA_PLTRO = (DT_LOPROC + 0
  const DT_AUDIT = 0x6ffffef
  const DT_AUXILIARY = 0x7ffffff
  const DT_BIND_NOW = 2
  const DT_CHECKSUM = 0x6ffffdf
  const DT_CONFIG = 0x6ffffef
  const DT_DEBUG = 2
  const DT_DEPAUDIT = 0x6ffffef
  const DT_ENCODING = 3
  const DT_EXTRANUM = 
  const DT_FEATURE_1 = 0x6ffffdf
  const DT_FILTER = 0x7ffffff
  const DT_FINI = 1
  const DT_FINI_ARRAY = 2
  const DT_FINI_ARRAYSZ = 2
  const DT_FLAGS = 3
  const DT_FLAGS_1 = 0x6ffffff
  const DT_GNU_CONFLICT = 0x6ffffef
  const DT_GNU_CONFLICTSZ = 0x6ffffdf
  const DT_GNU_HASH = 0x6ffffef
  const DT_GNU_LIBLIST = 0x6ffffef
  const DT_GNU_LIBLISTSZ = 0x6ffffdf
  const DT_GNU_PRELINKED = 0x6ffffdf
  const DT_HASH = 
  const DT_HIOS = 0x6ffff00
  const DT_HIPROC = 0x7ffffff
  const DT_IA_64_NUM = 
  const DT_IA_64_PLT_RESERVE = (DT_LOPROC + 0
  const DT_INIT = 1
  const DT_INIT_ARRAY = 2
  const DT_INIT_ARRAYSZ = 2
  const DT_JMPREL = 2
  const DT_LOOS = 0x6000000
  const DT_LOPROC = 0x7000000
  const DT_MIPS_AUX_DYNAMIC = 0x7000003
  const DT_MIPS_BASE_ADDRESS = 0x7000000
  const DT_MIPS_COMPACT_SIZE = 0x7000002
  const DT_MIPS_CONFLICT = 0x7000000
  const DT_MIPS_CONFLICTNO = 0x7000000
  const DT_MIPS_CXX_FLAGS = 0x7000002
  const DT_MIPS_DELTA_CLASS = 0x7000001
  const DT_MIPS_DELTA_CLASSSYM = 0x7000002
  const DT_MIPS_DELTA_CLASSSYM_NO = 0x7000002
  const DT_MIPS_DELTA_CLASS_NO = 0x7000001
  const DT_MIPS_DELTA_INSTANCE = 0x7000001
  const DT_MIPS_DELTA_INSTANCE_NO = 0x7000001
  const DT_MIPS_DELTA_RELOC = 0x7000001
  const DT_MIPS_DELTA_RELOC_NO = 0x7000001
  const DT_MIPS_DELTA_SYM = 0x7000001
  const DT_MIPS_DELTA_SYM_NO = 0x7000001
  const DT_MIPS_DYNSTR_ALIGN = 0x7000002
  const DT_MIPS_FLAGS = 0x7000000
  const DT_MIPS_GOTSYM = 0x7000001
  const DT_MIPS_GP_VALUE = 0x7000003
  const DT_MIPS_HIDDEN_GOTIDX = 0x7000002
  const DT_MIPS_HIPAGENO = 0x7000001
  const DT_MIPS_ICHECKSUM = 0x7000000
  const DT_MIPS_INTERFACE = 0x7000002
  const DT_MIPS_INTERFACE_SIZE = 0x7000002
  const DT_MIPS_IVERSION = 0x7000000
  const DT_MIPS_LIBLIST = 0x7000000
  const DT_MIPS_LIBLISTNO = 0x7000001
  const DT_MIPS_LOCALPAGE_GOTIDX = 0x7000002
  const DT_MIPS_LOCAL_GOTIDX = 0x7000002
  const DT_MIPS_LOCAL_GOTNO = 0x7000000
  const DT_MIPS_MSYM = 0x7000000
  const DT_MIPS_NUM = 0x3
  const DT_MIPS_OPTIONS = 0x7000002
  const DT_MIPS_PERF_SUFFIX = 0x7000002
  const DT_MIPS_PIXIE_INIT = 0x7000002
  const DT_MIPS_PLTGOT = 0x7000003
  const DT_MIPS_PROTECTED_GOTIDX = 0x7000002
  const DT_MIPS_RLD_MAP = 0x7000001
  const DT_MIPS_RLD_MAP_REL = 0x7000003
  const DT_MIPS_RLD_TEXT_RESOLVE_ADDR = 0x7000002
  const DT_MIPS_RLD_VERSION = 0x7000000
  const DT_MIPS_RWPLT = 0x7000003
  const DT_MIPS_SYMBOL_LIB = 0x7000002
  const DT_MIPS_SYMTABNO = 0x7000001
  const DT_MIPS_TIME_STAMP = 0x7000000
  const DT_MIPS_UNREFEXTNO = 0x7000001
  const DT_MOVEENT = 0x6ffffdf
  const DT_MOVESZ = 0x6ffffdf
  const DT_MOVETAB = 0x6ffffef
  const DT_NEEDED = 
  const DT_NIOS2_GP = 0x7000000
  const DT_NULL = 
  const DT_NUM = 3
  const DT_PLTGOT = 
  const DT_PLTPAD = 0x6ffffef
  const DT_PLTPADSZ = 0x6ffffdf
  const DT_PLTREL = 2
  const DT_PLTRELSZ = 
  const DT_POSFLAG_1 = 0x6ffffdf
  const DT_PPC64_GLINK = (DT_LOPROC + 0
  const DT_PPC64_NUM = 
  const DT_PPC64_OPD = (DT_LOPROC + 1
  const DT_PPC64_OPDSZ = (DT_LOPROC + 2
  const DT_PPC64_OPT = (DT_LOPROC + 3
  const DT_PPC_GOT = (DT_LOPROC + 0
  const DT_PPC_NUM = 
  const DT_PPC_OPT = (DT_LOPROC + 1
  const DT_PREINIT_ARRAY = 3
  const DT_PREINIT_ARRAYSZ = 3
  const DT_PROCNUM = DT_MIPS_NU
  const DT_REL = 1
  const DT_RELA = 
  const DT_RELACOUNT = 0x6ffffff
  const DT_RELAENT = 
  const DT_RELASZ = 
  const DT_RELCOUNT = 0x6ffffff
  const DT_RELENT = 1
  const DT_RELR = 3
  const DT_RELRENT = 3
  const DT_RELRSZ = 3
  const DT_RELSZ = 1
  const DT_RPATH = 1
  const DT_RUNPATH = 2
  const DT_SONAME = 1
  const DT_SPARC_NUM = 
  const DT_SPARC_REGISTER = 0x7000000
  const DT_STRSZ = 1
  const DT_STRTAB = 
  const DT_SYMBOLIC = 1
  const DT_SYMENT = 1
  const DT_SYMINENT = 0x6ffffdf
  const DT_SYMINFO = 0x6ffffef
  const DT_SYMINSZ = 0x6ffffdf
  const DT_SYMTAB = 
  const DT_SYMTAB_SHNDX = 3
  const DT_TEXTREL = 2
  const DT_TLSDESC_GOT = 0x6ffffef
  const DT_TLSDESC_PLT = 0x6ffffef
  const DT_VALNUM = 1
  const DT_VALRNGHI = 0x6ffffdf
  const DT_VALRNGLO = 0x6ffffd0
  const DT_VERDEF = 0x6ffffff
  const DT_VERDEFNUM = 0x6ffffff
  const DT_VERNEED = 0x6ffffff
  const DT_VERNEEDNUM = 0x6ffffff
  const DT_VERSIONTAGNUM = 1
  const DT_VERSYM = 0x6ffffff
  const Dyn = switch (@sizeOf(usize))
  const DynamicSectionBufferIterator = struct
  const DynamicSectionIterator = struct
  const EI = struct
  const EI_ABIVERSION = EI.ABIVERSIO
  const EI_CLASS = EI.CLAS
  const EI_DATA = EI.DAT
  const EI_NIDENT = EI.NIDEN
  const EI_OSABI = EI.OSAB
  const EI_PAD = EI.PA
  const EI_VERSION = EI.VERSIO
  const ELFCLASS32 = @intFromEnum(CLASS.@"32"
  const ELFCLASS64 = @intFromEnum(CLASS.@"64"
  const ELFCLASSNONE = @intFromEnum(CLASS.NONE
  const ELFCLASSNUM = CLASS.NU
  const ELFDATA2LSB = @intFromEnum(DATA.@"2LSB"
  const ELFDATA2MSB = @intFromEnum(DATA.@"2MSB"
  const ELFDATANONE = @intFromEnum(DATA.NONE
  const ELFDATANUM = DATA.NU
  const EM = enum(u16)
  const ET = enum(u16)
  const Ehdr = switch (@sizeOf(usize))
  const Elf32 = struct
  const Elf32_Addr = u3
  const Elf32_Chdr = extern struct
  const Elf32_Conflict = Elf32_Add
  const Elf32_Dyn = extern struct
  const Elf32_Ehdr = extern struct
  const Elf32_Lib = extern struct
  const Elf32_Move = extern struct
  const Elf32_Nhdr = extern struct
  const Elf32_Off = u3
  const Elf32_Phdr = extern struct
  const Elf32_RegInfo = extern struct
  const Elf32_Rel = extern struct
  const Elf32_Rela = extern struct
  const Elf32_Relr = Wor
  const Elf32_Section = u1
  const Elf32_Shdr = extern struct
  const Elf32_Sxword = Sxwor
  const Elf32_Sym = extern struct
  const Elf32_Syminfo = extern struct
  const Elf32_Verneed = extern struct
  const Elf32_Xword = Xwor
  const Elf32_auxv_t = extern struct
  const Elf32_gptab = extern union
  const Elf64 = struct
  const Elf64_Addr = u6
  const Elf64_Chdr = extern struct
  const Elf64_Dyn = extern struct
  const Elf64_Ehdr = extern struct
  const Elf64_Lib = extern struct
  const Elf64_Move = extern struct
  const Elf64_Nhdr = extern struct
  const Elf64_Off = u6
  const Elf64_Phdr = extern struct
  const Elf64_Rel = extern struct
  const Elf64_Rela = extern struct
  const Elf64_Relr = Elf64_Xwor
  const Elf64_Section = u1
  const Elf64_Shdr = extern struct
  const Elf64_Sxword = i6
  const Elf64_Sym = extern struct
  const Elf64_Syminfo = extern struct
  const Elf64_Verneed = extern struct
  const Elf64_Xword = Xwor
  const Elf64_auxv_t = extern struct
  const ElfN = switch (@sizeOf(usize))
  const Elf_MIPS_ABIFlags_v0 = extern struct
  const Elf_Options = extern struct
  const Elf_Options_Hw = extern struct
  const GRP_COMDAT = 
  const Half = u1
  const Header = struct
  const MAGIC = "\x7fELF
  const NT_GNU_BUILD_ID = 
  const OSABI = enum(u8)
  const PF = packed struct(Word)
  const PF_MASKOS = 0x0ff0000
  const PF_MASKPROC = 0xf000000
  const PF_R = 
  const PF_W = 
  const PF_X = 
  const PN_XNUM = 0xfff
  const PT = enum(Word)
  const PT_DYNAMIC = @intFromEnum(std.elf.PT.DYNAMIC
  const PT_GNU_EH_FRAME = @intFromEnum(std.elf.PT.GNU_EH_FRAME
  const PT_GNU_RELRO = @intFromEnum(std.elf.PT.GNU_RELRO
  const PT_GNU_STACK = @intFromEnum(std.elf.PT.GNU_STACK
  const PT_HIOS = @intFromEnum(std.elf.PT.HIOS
  const PT_HIPROC = @intFromEnum(std.elf.PT.HIPROC
  const PT_HISUNW = @intFromEnum(std.elf.PT.HISUNW
  const PT_INTERP = @intFromEnum(std.elf.PT.INTERP
  const PT_LOAD = @intFromEnum(std.elf.PT.LOAD
  const PT_LOOS = @intFromEnum(std.elf.PT.LOOS
  const PT_LOPROC = @intFromEnum(std.elf.PT.LOPROC
  const PT_LOSUNW = @intFromEnum(std.elf.PT.LOSUNW
  const PT_NOTE = @intFromEnum(std.elf.PT.NOTE
  const PT_NULL = @intFromEnum(std.elf.PT.NULL
  const PT_NUM = PT.NU
  const PT_PHDR = @intFromEnum(std.elf.PT.PHDR
  const PT_SHLIB = @intFromEnum(std.elf.PT.SHLIB
  const PT_SUNWBSS = @intFromEnum(std.elf.PT.SUNWBSS
  const PT_SUNWSTACK = @intFromEnum(std.elf.PT.SUNWSTACK
  const PT_TLS = @intFromEnum(std.elf.PT.TLS
  const Phdr = switch (@sizeOf(usize))
  const ProgramHeaderBufferIterator = struct
  const ProgramHeaderIterator = struct
  const R_AARCH64 = enum(u32)
  const R_PPC64 = enum(u32)
  const R_RISCV = enum(u32)
  const R_X86_64 = enum(u32)
  const Rel = switch (@sizeOf(usize))
  const Rela = switch (@sizeOf(usize))
  const Relr = switch (@sizeOf(usize))
  const SHF = packed struct(Word)
  const SHF_ALLOC = 0x
  const SHF_ARM_PURECODE = 0x200000
  const SHF_COMPRESSED = 0x80
  const SHF_EXCLUDE = 0x8000000
  const SHF_EXECINSTR = 0x
  const SHF_GNU_RETAIN = 0x20000
  const SHF_GROUP = 0x20
  const SHF_HEX_GPREL = 0x1000000
  const SHF_INFO_LINK = 0x4
  const SHF_LINK_ORDER = 0x8
  const SHF_MASKOS = 0x0ff0000
  const SHF_MASKPROC = 0xf000000
  const SHF_MERGE = 0x1
  const SHF_MIPS_ADDR = 0x4000000
  const SHF_MIPS_GPREL = 0x1000000
  const SHF_MIPS_LOCAL = 0x0400000
  const SHF_MIPS_MERGE = 0x2000000
  const SHF_MIPS_NAMES = 0x0200000
  const SHF_MIPS_NODUPES = 0x0100000
  const SHF_MIPS_NOSTRIP = 0x0800000
  const SHF_MIPS_STRING = 0x8000000
  const SHF_OS_NONCONFORMING = 0x10
  const SHF_STRINGS = 0x2
  const SHF_TLS = 0x40
  const SHF_WRITE = 0x
  const SHF_X86_64_LARGE = 0x1000000
  const SHN_ABS = 0xfff
  const SHN_COMMON = 0xfff
  const SHN_HIPROC = 0xff1
  const SHN_HIRESERVE = 0xfff
  const SHN_LIVEPATCH = 0xff2
  const SHN_LOPROC = 0xff0
  const SHN_LORESERVE = 0xff0
  const SHN_UNDEF = 
  const SHT = enum(Word)
  const SHT_DYNAMIC = @intFromEnum(std.elf.SHT.DYNAMIC
  const SHT_DYNSYM = @intFromEnum(std.elf.SHT.DYNSYM
  const SHT_FINI_ARRAY = @intFromEnum(std.elf.SHT.FINI_ARRAY
  const SHT_GNU_HASH = @intFromEnum(std.elf.SHT.GNU_HASH
  const SHT_GNU_VERDEF = @intFromEnum(std.elf.SHT.GNU_VERDEF
  const SHT_GNU_VERNEED = @intFromEnum(std.elf.SHT.GNU_VERNEED
  const SHT_GNU_VERSYM = @intFromEnum(std.elf.SHT.GNU_VERSYM
  const SHT_GROUP = @intFromEnum(std.elf.SHT.GROUP
  const SHT_HASH = @intFromEnum(std.elf.SHT.HASH
  const SHT_HIOS = @intFromEnum(std.elf.SHT.HIOS
  const SHT_HIPROC = @intFromEnum(std.elf.SHT.HIPROC
  const SHT_HIUSER = @intFromEnum(std.elf.SHT.HIUSER
  const SHT_INIT_ARRAY = @intFromEnum(std.elf.SHT.INIT_ARRAY
  const SHT_LLVM_ADDRSIG = @intFromEnum(std.elf.SHT.LLVM_ADDRSIG
  const SHT_LOOS = @intFromEnum(std.elf.SHT.LOOS
  const SHT_LOPROC = @intFromEnum(std.elf.SHT.LOPROC
  const SHT_LOUSER = @intFromEnum(std.elf.SHT.LOUSER
  const SHT_NOBITS = @intFromEnum(std.elf.SHT.NOBITS
  const SHT_NOTE = @intFromEnum(std.elf.SHT.NOTE
  const SHT_NULL = @intFromEnum(std.elf.SHT.NULL
  const SHT_NUM = SHT.NU
  const SHT_PREINIT_ARRAY = @intFromEnum(std.elf.SHT.PREINIT_ARRAY
  const SHT_PROGBITS = @intFromEnum(std.elf.SHT.PROGBITS
  const SHT_REL = @intFromEnum(std.elf.SHT.REL
  const SHT_RELA = @intFromEnum(std.elf.SHT.RELA
  const SHT_RELR = @intFromEnum(std.elf.SHT.RELR
  const SHT_SHLIB = @intFromEnum(std.elf.SHT.SHLIB
  const SHT_STRTAB = @intFromEnum(std.elf.SHT.STRTAB
  const SHT_SYMTAB = @intFromEnum(std.elf.SHT.SYMTAB
  const SHT_SYMTAB_SHNDX = @intFromEnum(std.elf.SHT.SYMTAB_SHNDX
  const SHT_X86_64_UNWIND = @intFromEnum(std.elf.SHT.X86_64_UNWIND
  const STB = enum(u4)
  const STB_GLOBAL = @intFromEnum(STB.GLOBAL
  const STB_GNU_UNIQUE = @intFromEnum(STB.GNU_UNIQUE
  const STB_HIOS = @intFromEnum(STB.HIOS
  const STB_HIPROC = @intFromEnum(STB.HIPROC
  const STB_LOCAL = @intFromEnum(STB.LOCAL
  const STB_LOOS = @intFromEnum(STB.LOOS
  const STB_LOPROC = @intFromEnum(STB.LOPROC
  const STB_MIPS_SPLIT_COMMON = @intFromEnum(STB.MIBS_SPLIT_COMMON
  const STB_NUM = STB.NU
  const STB_WEAK = @intFromEnum(STB.WEAK
  const STRNAME = genSpecialMemberName("//"
  const STT = enum(u4)
  const STT_ARM_16BIT = @intFromEnum(STT.ARM_16BIT
  const STT_ARM_TFUNC = @intFromEnum(STT.ARM_TFUNC
  const STT_COMMON = @intFromEnum(STT.COMMON
  const STT_FILE = @intFromEnum(STT.FILE
  const STT_FUNC = @intFromEnum(STT.FUNC
  const STT_GNU_IFUNC = @intFromEnum(STT.GNU_IFUNC
  const STT_HIOS = @intFromEnum(STT.HIOS
  const STT_HIPROC = @intFromEnum(STT.HIPROC
  const STT_HP_OPAQUE = @intFromEnum(STT.HP_OPAQUE
  const STT_HP_STUB = @intFromEnum(STT.HP_STUB
  const STT_LOOS = @intFromEnum(STT.LOOS
  const STT_LOPROC = @intFromEnum(STT.LOPROC
  const STT_NOTYPE = @intFromEnum(STT.NOTYPE
  const STT_NUM = STT.NU
  const STT_OBJECT = @intFromEnum(STT.OBJECT
  const STT_PARISC_MILLICODE = @intFromEnum(STT.PARISC_MILLICODE
  const STT_SECTION = @intFromEnum(STT.SECTION
  const STT_SPARC_REGISTER = @intFromEnum(STT.SPARC_REGISTER
  const STT_TLS = @intFromEnum(STT.TLS
  const STV = enum(u3)
  const SYM64NAME = genSpecialMemberName("/SYM64/"
  const SYMDEFNAME = genSpecialMemberName("__.SYMDEF"
  const SYMDEFSORTEDNAME = genSpecialMemberName("__.SYMDEF SORTED"
  const SYMNAME = genSpecialMemberName("/"
  const Section = u1
  const SectionHeaderBufferIterator = struct
  const SectionHeaderIterator = struct
  const Shdr = switch (@sizeOf(usize))
  const Sword = i3
  const Sxword = i6
  const Sym = switch (@sizeOf(usize))
  const VER_FLG_BASE = 
  const VER_FLG_WEAK = 
  const VER_NDX = enum(u16)
  const Verdaux = extern struct
  const Verdef = extern struct
  const Vernaux = extern struct
  const Versym = packed struct(u16)
  const Word = u3
  const XCORE_SHF_CP_SECTION = 0x2000000
  const XCORE_SHF_DP_SECTION = 0x1000000
  const Xword = u6
  const ar_hdr = extern struct
  const gnu_hash = struct
  fn takeDynamicSection(reader: *Io.Reader, is_64: bool, endian: Endian) !Elf64_Dyn
  fn takeProgramHeader(reader: *Io.Reader, is_64: bool, endian: Endian) !Elf64_Phdr
  fn takeSectionHeader(reader: *Io.Reader, is_64: bool, endian: Endian) !Elf64_Shdr
}

std.enums {
  fn BoundedEnumMultiset(comptime E: type, comptime CountSize: type) type
  fn EnumArray(comptime E: type, comptime V: type) type
  fn EnumFieldStruct(comptime E: type, comptime Data: type, comptime field_default: ?Data) type
  fn EnumIndexer(comptime E: type) type
  fn EnumMap(comptime E: type, comptime V: type) type
  fn EnumMultiset(comptime E: type) type
  fn EnumSet(comptime E: type) type
  fn directEnumArray(comptime E: type, comptime Data: type, comptime max_unused_slots: comptime_int, init_values: EnumFieldStruct(E, Data, null)) [directEnumArrayLen(E, max_unused_slots)]Data
  fn directEnumArrayDefault(comptime E: type, comptime Data: type, comptime default: ?Data, comptime max_unused_slots: comptime_int, init_values: EnumFieldStruct(E, Data, default)) [directEnumArrayLen(E, max_unused_slots)]Data
  fn directEnumArrayLen(comptime E: type, comptime max_unused_slots: comptime_int) comptime_int
  fn fromInt(comptime E: type, integer: anytype) ?E
  fn tagName(comptime E: type, e: E) ?[:0]const u8
  inline fn values(comptime E: type) []const E
  inline fn valuesFromFields(comptime E: type, comptime fields: []const EnumField) []const E
}

std.fmt.float {
  const Backend128_Tables = struct
  const Backend64_TablesFull = struct
  const Backend64_TablesSmall = struct
  const Error = erro
  const Mode = enum
  const Options = struct
  const min_buffer_size = 5
  fn FloatDecimal(comptime T: type) type
  fn binaryToDecimal(comptime T: type, bits: T, mantissa_bits: std.math.Log2Int(T), exponent_bits: u5, explicit_leading_bit: bool, comptime tables: anytype) FloatDecimal(T)
  fn bufferSize(comptime mode: Mode, comptime T: type) comptime_int
  fn formatDecimal(comptime T: type, buf: []u8, f_: FloatDecimal(T), precision: ?usize) Error![]const u8
  fn formatScientific(comptime T: type, buf: []u8, f_: FloatDecimal(T), precision: ?usize) Error![]const u8
  fn render(buf: []u8, value: anytype, options: Options) Error![]const u8
}

std.fmt.parse_float.common {
  fn BiasedFp(comptime T: type) type
  fn Number(comptime T: type) type
  fn floatFromUnsigned(comptime T: type, comptime MantissaT: type, v: MantissaT) T
  fn isDigit(c: u8, comptime base: u8) bool
  fn isEightDigits(v: u64) bool
  fn mantissaType(comptime T: type) type
}

std.fmt.parse_float.convert_eisel_lemire {
  fn convertEiselLemire(comptime T: type, q: i64, w_: u64) ?BiasedFp(f64)
}

std.fmt.parse_float.convert_fast {
  fn convertFast(comptime T: type, n: Number(T)) ?T
}

std.fmt.parse_float.convert_hex {
  fn convertHex(comptime T: type, n_: Number(T)) T
}

std.fmt.parse_float.convert_slow {
  fn convertSlow(comptime T: type, s: []const u8) BiasedFp(T)
  fn getShift(n: usize) usize
}

std.fmt.parse_float.decimal {
  fn Decimal(comptime T: type) type
}

std.fmt.parse_float.FloatInfo {
  fn from(comptime T: type) Self
}

std.fmt.parse_float.FloatStream {
  fn advance(self: *FloatStream, n: usize) void
  fn atUnchecked(self: *FloatStream, i: usize) u8
  fn first(self: FloatStream) ?u8
  fn firstIs(self: FloatStream, comptime cs: []const u8) bool
  fn firstIsDigit(self: FloatStream, comptime base: u8) bool
  fn firstIsLower(self: FloatStream, comptime cs: []const u8) bool
  fn firstUnchecked(self: FloatStream) u8
  fn hasLen(self: FloatStream, n: usize) bool
  fn init(s: []const u8) FloatStream
  fn isEmpty(self: FloatStream) bool
  fn len(self: FloatStream) usize
  fn offsetTrue(self: FloatStream) usize
  fn readU64(self: FloatStream) ?u64
  fn readU64Unchecked(self: FloatStream) u64
  fn reset(self: *FloatStream) void
  fn scanDigit(self: *FloatStream, comptime base: u8) ?u8
  fn skipChars(self: *FloatStream, comptime cs: []const u8) void
}

std.fmt.parse_float.parse {
  fn parseInfOrNan(comptime T: type, s: []const u8, negative: bool) ?T
  fn parseNumber(comptime T: type, s: []const u8, negative: bool) ?Number(T)
  fn validUnderscores(s: []const u8, comptime base: u8) bool
}

std.fmt.parse_float {
  const ParseFloatError = erro
  fn parseFloat(comptime T: type, s: []const u8) ParseFloatError!T
}

std.fmt {
  const Alignment = enum
  const ArgSetType = u3
  const ArgState = struct
  const BufPrintError = erro
  const Case = enum { lower, upper 
  const Number = struct
  const Options = struct
  const ParseFloatError = @import("fmt/parse_float.zig").ParseFloatErro
  const ParseIntError = erro
  const Parser = struct
  const Placeholder = struct
  const Specifier = union(enum)
  const default_max_depth = 
  const float = @import("fmt/float.zig"
  const hex_charset = "0123456789abcdef
  const parseFloat = @import("fmt/parse_float.zig").parseFloa
  fn Alt(comptime Data: type, comptime formatFn: fn (data: Data, writer: *Writer) Writer.Error!void) type
  fn allocPrint(gpa: Allocator, comptime fmt: []const u8, args: anytype) Allocator.Error![]u8
  fn allocPrintSentinel(gpa: Allocator, comptime fmt: []const u8, args: anytype, comptime sentinel: u8) Allocator.Error![:sentinel]u8
  fn alt(context: anytype, comptime func_name: @EnumLiteral()) Alt(@TypeOf(context), @field(@TypeOf(context), @tagName(func_name)))
  fn bufPrint(buf: []u8, comptime fmt: []const u8, args: anytype) BufPrintError![]u8
  fn bufPrintSentinel(buf: []u8, comptime fmt: []const u8, args: anytype, comptime sentinel: u8) BufPrintError![:sentinel]u8
  fn bufPrintZ(buf: []u8, comptime fmt: []const u8, args: anytype) BufPrintError![:0]u8
  fn bytesToHex(input: anytype, case: Case) [input.len * 2]u8
  fn charToDigit(c: u8, base: u8) (error{InvalidCharacter}!u8)
  fn count(comptime fmt: []const u8, args: anytype) usize
  fn digitToChar(digit: u8, case: Case) u8
  fn digits2(value: u8) [2]u8
  fn hex(x: anytype) [@sizeOf(@TypeOf(x)) * 2]u8
  fn hexToBytes(out: []u8, input: []const u8) ![]u8
  fn parseInt(comptime T: type, buf: []const u8, base: u8) ParseIntError!T
  fn parseIntSizeSuffix(buf: []const u8, digit_base: u8) ParseIntError!usize
  fn parseIntWithGenericCharacter(comptime Result: type, comptime Character: type, buf: []const Character, base: u8) ParseIntError!Result
  fn parseUnsigned(comptime T: type, buf: []const u8, base: u8) ParseIntError!T
  fn printInt(buffer: []u8, value: anytype, base: u8, case: Case, options: Options) usize
  inline fn comptimePrint(comptime fmt: []const u8, args: anytype) *const [count(fmt, args):0]u8
}

std.fs.path {
  const NativeComponentIterator = ComponentIterator(switch (native_os)
  const PathType = enum
  const Win32PathType = enum
  const WindowsPath = struct
  const delimiter = if (native_os == .windows) delimiter_windows else delimiter_posi
  const delimiter_posix: u8 = ':
  const delimiter_windows: u8 = ';
  const fmtAsUtf8Lossy = std.unicode.fmtUtf
  const fmtWtf16LeAsUtf8Lossy = std.unicode.fmtUtf16L
  const sep = switch (native_os)
  const sep_posix: u8 = '/
  const sep_str = switch (native_os)
  const sep_str_posix = "/
  const sep_str_windows = "\\
  const sep_windows: u8 = '\\
  fn ComponentIterator(comptime path_type: PathType, comptime T: type) type
  fn WindowsPath2(comptime T: type) type
  fn basename(path: []const u8) []const u8
  fn basenamePosix(path: []const u8) []const u8
  fn basenameWindows(path: []const u8) []const u8
  fn componentIterator(path: []const u8) NativeComponentIterator
  fn dirname(path: []const u8) ?[]const u8
  fn dirnamePosix(path: []const u8) ?[]const u8
  fn dirnameWindows(path: []const u8) ?[]const u8
  fn diskDesignator(path: []const u8) []const u8
  fn diskDesignatorWindows(path: []const u8) []const u8
  fn extension(path: []const u8) []const u8
  fn fmtJoin(paths: []const []const u8) std.fmt.Alt([]const []const u8, formatJoin)
  fn getWin32PathType(comptime T: type, path: []const T) Win32PathType
  fn isAbsolute(path: []const u8) bool
  fn isAbsolutePosix(path: []const u8) bool
  fn isAbsolutePosixZ(path_c: [*:0]const u8) bool
  fn isAbsoluteWindows(path: []const u8) bool
  fn isAbsoluteWindowsW(path_w: [*:0]const u16) bool
  fn isAbsoluteWindowsWtf16(path: []const u16) bool
  fn isAbsoluteWindowsZ(path_c: [*:0]const u8) bool
  fn isAbsoluteZ(path_c: [*:0]const u8) bool
  fn isSep(byte: u8) bool
  fn join(allocator: Allocator, paths: []const []const u8) ![]u8
  fn joinZ(allocator: Allocator, paths: []const []const u8) ![:0]u8
  fn parsePath(path: []const u8) switch (native_os)
  fn parsePathPosix(path: []const u8) PosixPath
  fn parsePathWindows(comptime T: type, path: []const T) WindowsPath2(T)
  fn relative(gpa: Allocator, cwd: []const u8, environ_map: ?*const std.process.Environ.Map, from: []const u8, to: []const u8) Allocator.Error![]u8
  fn relativePosix(allocator: Allocator, cwd: []const u8, from: []const u8, to: []const u8) Allocator.Error![]u8
  fn relativeWindows(gpa: Allocator, cwd: []const u8, environ_map: ?*const std.process.Environ.Map, from: []const u8, to: []const u8) Allocator.Error![]u8
  fn resolve(allocator: Allocator, paths: []const []const u8) Allocator.Error![]u8
  fn resolvePosix(allocator: Allocator, paths: []const []const u8) Allocator.Error![]u8
  fn resolveWindows(allocator: Allocator, paths: []const []const u8) Allocator.Error![]u8
  fn stem(path: []const u8) []const u8
  fn windowsParsePath(path: []const u8) WindowsPath
}

std.fs {
  const base64_alphabet = std.base64.url_safe_alphabet_char
  const base64_decoder = std.base64.url_safe.Decode
  const base64_encoder = std.base64.url_safe.Encode
  const max_name_bytes = std.Io.Dir.max_name_byte
  const max_path_bytes = std.Io.Dir.max_path_byte
  const path = @import("fs/path.zig"
}

std.gpu {
  const ExecutionMode = union(Tag)
  const point_size_in = @extern(*addrspace(.input) f32, .{ .name = "point_size" }
  const point_size_out = @extern(*addrspace(.output) f32, .{ .name = "point_size" }
  const position_in = @extern(*addrspace(.input) @Vector(4, f32), .{ .name = "position" }
  const position_out = @extern(*addrspace(.output) @Vector(4, f32), .{ .name = "position" }
  extern const frag_coord: @Vector(4, f32) addrspace(.input
  extern const global_invocation_id: @Vector(3, u32) addrspace(.input
  extern const instance_index: u32 addrspace(.input
  extern const invocation_id: u32 addrspace(.input
  extern const local_invocation_id: @Vector(3, u32) addrspace(.input
  extern const num_workgroups: @Vector(3, u32) addrspace(.input
  extern const point_coord: @Vector(2, f32) addrspace(.input
  extern const vertex_index: u32 addrspace(.input
  extern const workgroup_id: @Vector(3, u32) addrspace(.input
  extern const workgroup_size: @Vector(3, u32) addrspace(.input
  extern var frag_depth: f32 addrspace(.output
  fn executionMode(comptime entry_point: anytype, comptime mode: ExecutionMode) void
}

std.hash.Adler32 {
  fn hash(input: []const u8) u32
  fn permute(state: u32, input: []const u8) u32
  fn update(a: *Adler32, input: []const u8) void
}

std.hash.auto_hash {
  const HashStrategy = enum
  fn autoHash(hasher: anytype, key: anytype) void
  fn hash(hasher: anytype, key: anytype, comptime strat: HashStrategy) void
  fn hashArray(hasher: anytype, key: anytype, comptime strat: HashStrategy) void
  fn hashPointer(hasher: anytype, key: anytype, comptime strat: HashStrategy) void
}

std.hash.benchmark {
  fn benchTime(io: Io) i96
  fn benchmarkHash(comptime H: anytype, bytes: usize, allocator: std.mem.Allocator, io: Io) !Result
  fn benchmarkHashSmallApi(comptime H: anytype, key_size: usize, bytes: usize, allocator: std.mem.Allocator, io: Io) !Result
  fn benchmarkHashSmallKeys(comptime H: anytype, key_size: usize, bytes: usize, allocator: std.mem.Allocator, io: Io) !Result
  fn benchmarkHashSmallKeysArray(comptime H: anytype, comptime key_size: usize, bytes: usize, allocator: std.mem.Allocator, io: Io) !Result
  fn benchmarkHashSmallKeysArrayPtr(comptime H: anytype, comptime key_size: usize, bytes: usize, allocator: std.mem.Allocator, io: Io) !Result
  fn main(init: std.process.Init) !void
}

std.hash.cityhash {
  const CityHash32 = struct
  const CityHash64 = struct
}

std.hash.crc.impl {
  fn Algorithm(comptime W: type) type
  fn Crc(comptime W: type, comptime algorithm: Algorithm(W)) type
}

std.hash.crc {
  const Crc = impl.Cr
  const Crc10Atm = Crc(u10, 
  const Crc10Cdma2000 = Crc(u10, 
  const Crc10Gsm = Crc(u10, 
  const Crc11Flexray = Crc(u11, 
  const Crc11Umts = Crc(u11, 
  const Crc12Cdma2000 = Crc(u12, 
  const Crc12Dect = Crc(u12, 
  const Crc12Gsm = Crc(u12, 
  const Crc12Umts = Crc(u12, 
  const Crc13Bbc = Crc(u13, 
  const Crc14Darc = Crc(u14, 
  const Crc14Gsm = Crc(u14, 
  const Crc15Can = Crc(u15, 
  const Crc15Mpt1327 = Crc(u15, 
  const Crc16Arc = Crc(u16, 
  const Crc16Cdma2000 = Crc(u16, 
  const Crc16Cms = Crc(u16, 
  const Crc16Dds110 = Crc(u16, 
  const Crc16DectR = Crc(u16, 
  const Crc16DectX = Crc(u16, 
  const Crc16Dnp = Crc(u16, 
  const Crc16En13757 = Crc(u16, 
  const Crc16Genibus = Crc(u16, 
  const Crc16Gsm = Crc(u16, 
  const Crc16Ibm3740 = Crc(u16, 
  const Crc16IbmSdlc = Crc(u16, 
  const Crc16IsoIec144433A = Crc(u16, 
  const Crc16Kermit = Crc(u16, 
  const Crc16Lj1200 = Crc(u16, 
  const Crc16M17 = Crc(u16, 
  const Crc16MaximDow = Crc(u16, 
  const Crc16Mcrf4xx = Crc(u16, 
  const Crc16Modbus = Crc(u16, 
  const Crc16Nrsc5 = Crc(u16, 
  const Crc16OpensafetyA = Crc(u16, 
  const Crc16OpensafetyB = Crc(u16, 
  const Crc16Profibus = Crc(u16, 
  const Crc16Riello = Crc(u16, 
  const Crc16SpiFujitsu = Crc(u16, 
  const Crc16T10Dif = Crc(u16, 
  const Crc16Teledisk = Crc(u16, 
  const Crc16Tms37157 = Crc(u16, 
  const Crc16Umts = Crc(u16, 
  const Crc16Usb = Crc(u16, 
  const Crc16Xmodem = Crc(u16, 
  const Crc17CanFd = Crc(u17, 
  const Crc21CanFd = Crc(u21, 
  const Crc24Ble = Crc(u24, 
  const Crc24FlexrayA = Crc(u24, 
  const Crc24FlexrayB = Crc(u24, 
  const Crc24Interlaken = Crc(u24, 
  const Crc24LteA = Crc(u24, 
  const Crc24LteB = Crc(u24, 
  const Crc24Openpgp = Crc(u24, 
  const Crc24Os9 = Crc(u24, 
  const Crc30Cdma = Crc(u30, 
  const Crc31Philips = Crc(u31, 
  const Crc32 = Crc32IsoHdl
  const Crc32Aixm = Crc(u32, 
  const Crc32Autosar = Crc(u32, 
  const Crc32Base91D = Crc(u32, 
  const Crc32Bzip2 = Crc(u32, 
  const Crc32CdRomEdc = Crc(u32, 
  const Crc32Cksum = Crc(u32, 
  const Crc32Iscsi = Crc(u32, 
  const Crc32IsoHdlc = Crc(u32, 
  const Crc32Jamcrc = Crc(u32, 
  const Crc32Koopman = Crc(u32, 
  const Crc32Mef = Crc(u32, 
  const Crc32Mpeg2 = Crc(u32, 
  const Crc32SmallWithPoly = impl.Crc32SmallWithPol
  const Crc32WithPoly = impl.Crc32WithPol
  const Crc32Xfer = Crc(u32, 
  const Crc3Gsm = Crc(u3, 
  const Crc3Rohc = Crc(u3, 
  const Crc40Gsm = Crc(u40, 
  const Crc4G704 = Crc(u4, 
  const Crc4Interlaken = Crc(u4, 
  const Crc5EpcC1g2 = Crc(u5, 
  const Crc5G704 = Crc(u5, 
  const Crc5Usb = Crc(u5, 
  const Crc64Ecma182 = Crc(u64, 
  const Crc64GoIso = Crc(u64, 
  const Crc64Ms = Crc(u64, 
  const Crc64Redis = Crc(u64, 
  const Crc64We = Crc(u64, 
  const Crc64Xz = Crc(u64, 
  const Crc6Cdma2000A = Crc(u6, 
  const Crc6Cdma2000B = Crc(u6, 
  const Crc6Darc = Crc(u6, 
  const Crc6G704 = Crc(u6, 
  const Crc6Gsm = Crc(u6, 
  const Crc7Mmc = Crc(u7, 
  const Crc7Rohc = Crc(u7, 
  const Crc7Umts = Crc(u7, 
  const Crc82Darc = Crc(u82, 
  const Crc8Autosar = Crc(u8, 
  const Crc8Bluetooth = Crc(u8, 
  const Crc8Cdma2000 = Crc(u8, 
  const Crc8Darc = Crc(u8, 
  const Crc8DvbS2 = Crc(u8, 
  const Crc8GsmA = Crc(u8, 
  const Crc8GsmB = Crc(u8, 
  const Crc8Hitag = Crc(u8, 
  const Crc8I4321 = Crc(u8, 
  const Crc8ICode = Crc(u8, 
  const Crc8Lte = Crc(u8, 
  const Crc8MaximDow = Crc(u8, 
  const Crc8MifareMad = Crc(u8, 
  const Crc8Nrsc5 = Crc(u8, 
  const Crc8Opensafety = Crc(u8, 
  const Crc8Rohc = Crc(u8, 
  const Crc8SaeJ1850 = Crc(u8, 
  const Crc8Smbus = Crc(u8, 
  const Crc8Tech3250 = Crc(u8, 
  const Crc8Wcdma = Crc(u8, 
  const Polynomial = impl.Polynomia
}

std.hash.fnv {
  const Fnv1a_128 = Fnv1a(u128, 0x1000000000000000000013b, 0x6c62272e07bb014262b821756295c58d
  const Fnv1a_32 = Fnv1a(u32, 0x01000193, 0x811c9dc5
  const Fnv1a_64 = Fnv1a(u64, 0x100000001b3, 0xcbf29ce484222325
}

std.hash.murmur {
  const Murmur2_32 = struct
  const Murmur2_64 = struct
  const Murmur3_32 = struct
}

std.hash.verify {
  fn iterativeApi(comptime Hash: anytype) !void
  fn smhasher(comptime hash_fn: anytype) u32
}

std.hash.wyhash {
  const Wyhash = struct
}

std.hash.xxhash {
  const XxHash3 = struct
  const XxHash32 = struct
  const XxHash64 = struct
}

std.hash {
  const Adler32 = @import("hash/Adler32.zig"
  const CityHash32 = cityhash.CityHash3
  const CityHash64 = cityhash.CityHash6
  const Crc32 = crc.Crc3
  const Fnv1a_128 = fnv.Fnv1a_12
  const Fnv1a_32 = fnv.Fnv1a_3
  const Fnv1a_64 = fnv.Fnv1a_6
  const Murmur2_32 = murmur.Murmur2_3
  const Murmur2_64 = murmur.Murmur2_6
  const Murmur3_32 = murmur.Murmur3_3
  const SipHash128 = siphash.SipHash12
  const SipHash64 = siphash.SipHash6
  const Strategy = auto_hash.HashStrateg
  const Wyhash = wyhash.Wyhas
  const XxHash3 = xxhash.XxHash
  const XxHash32 = xxhash.XxHash3
  const XxHash64 = xxhash.XxHash6
  const autoHash = auto_hash.autoHas
  const autoHashStrat = auto_hash.has
  const cityhash = @import("hash/cityhash.zig"
  const crc = @import("hash/crc.zig"
  const murmur = @import("hash/murmur.zig"
  fn int(input: anytype) @TypeOf(input)
}

std.hash_map {
  const StringContext = struct
  const StringIndexAdapter = struct
  const StringIndexContext = struct
  const default_max_load_percentage = 8
  fn AutoContext(comptime K: type) type
  fn AutoHashMap(comptime K: type, comptime V: type) type
  fn AutoHashMapUnmanaged(comptime K: type, comptime V: type) type
  fn HashMap(comptime K: type, comptime V: type, comptime Context: type, comptime max_load_percentage: u64) type
  fn HashMapUnmanaged(comptime K: type, comptime V: type, comptime Context: type, comptime max_load_percentage: u64) type
  fn StringHashMap(comptime V: type) type
  fn StringHashMapUnmanaged(comptime V: type) type
  fn eqlString(a: []const u8, b: []const u8) bool
  fn getAutoEqlFn(comptime K: type, comptime Context: type) (fn (Context, K, K) bool)
  fn getAutoHashFn(comptime K: type, comptime Context: type) (fn (Context, K) u64)
  fn hashString(s: []const u8) u64
}

std.heap.ArenaAllocator {
  const ResetMode = union(enum)
  const State = struct
  fn allocator(arena: *ArenaAllocator) Allocator
  fn deinit(arena: ArenaAllocator) void
  fn init(child_allocator: Allocator) ArenaAllocator
  fn queryCapacity(arena: ArenaAllocator) usize
  fn reset(arena: *ArenaAllocator, mode: ResetMode) bool
}

std.heap.BrkAllocator {
  const Error = Allocator.Erro
  const vtable: Allocator.VTable = 
}

std.heap.debug_allocator {
  const Config = struct
  fn DebugAllocator(comptime config: Config) type
}

std.heap.FixedBufferAllocator {
  fn alloc(ctx: *anyopaque, n: usize, alignment: mem.Alignment, ra: usize) ?[*]u8
  fn allocator(self: *FixedBufferAllocator) Allocator
  fn free(ctx: *anyopaque, buf: []u8, alignment: mem.Alignment, return_address: usize) void
  fn init(buffer: []u8) FixedBufferAllocator
  fn isLastAllocation(self: *FixedBufferAllocator, buf: []u8) bool
  fn ownsPtr(self: *FixedBufferAllocator, ptr: [*]u8) bool
  fn ownsSlice(self: *FixedBufferAllocator, slice: []u8) bool
  fn remap(context: *anyopaque, memory: []u8, alignment: mem.Alignment, new_len: usize, return_address: usize) ?[*]u8
  fn reset(self: *FixedBufferAllocator) void
  fn resize(ctx: *anyopaque, buf: []u8, alignment: mem.Alignment, new_size: usize, return_address: usize) bool
  fn threadSafeAllocator(self: *FixedBufferAllocator) Allocator
}

std.heap.memory_pool {
  const Options = struct
  fn Aligned(comptime Item: type, comptime alignment: Alignment) type
  fn AlignedManaged(comptime Item: type, comptime alignment: Alignment) type
  fn Extra(comptime Item: type, comptime pool_options: Options) type
  fn ExtraManaged(comptime Item: type, comptime pool_options: Options) type
  fn Managed(comptime Item: type) type
}

std.heap.PageAllocator {
  const vtable: Allocator.VTable = 
  fn map(n: usize, alignment: Alignment) ?[*]u8
  fn realloc(uncasted_memory: []u8, alignment: Alignment, new_len: usize, may_move: bool) ?[*]u8
  fn unmap(memory: []align(page_size_min) u8) void
}

std.heap.SmpAllocator {
  const vtable: Allocator.VTable = 
}

std.heap {
  const ArenaAllocator = @import("heap/ArenaAllocator.zig"
  const BrkAllocator = @import("heap/BrkAllocator.zig"
  const Check = enum { ok, leak 
  const DebugAllocator = @import("heap/debug_allocator.zig").DebugAllocato
  const DebugAllocatorConfig = @import("heap/debug_allocator.zig").Confi
  const FixedBufferAllocator = @import("heap/FixedBufferAllocator.zig"
  const MemoryPoolAligned = memory_pool.Aligne
  const MemoryPoolExtra = memory_pool.Extr
  const MemoryPoolOptions = memory_pool.Option
  const PageAllocator = @import("heap/PageAllocator.zig"
  const SmpAllocator = @import("heap/SmpAllocator.zig"
  const WasmAllocator = if (builtin.single_threaded) BrkAllocator else @compileError("unimplemented"
  const brk_allocator: Allocator = 
  const c_allocator: Allocator = 
  const memory_pool = @import("heap/memory_pool.zig"
  const page_allocator: Allocator = if (@hasDecl(root, "os") a
  const page_size_max: usize = std.options.page_size_max orelse (page_size_max_default orelse if (builtin.os.tag == .freestanding or builtin.os.tag == .othe
  const page_size_min: usize = std.options.page_size_min orelse (page_size_min_default orelse @compileError(@tagName(builtin.cpu.arch) ++ "-" ++ @tagName(builtin.os.tag) ++ " has unknown page_size_min; populate std.options.page_size_min")
  const smp_allocator: Allocator = 
  const wasm_allocator: Allocator = 
  fn MemoryPool(comptime Item: type) type
  fn StackFallbackAllocator(comptime size: usize) type
  fn defaultQueryPageSize() usize
  fn stackFallback(comptime size: usize, fallback_allocator: Allocator) StackFallbackAllocator(size)
  fn testAllocator(base_allocator: mem.Allocator) !void
  fn testAllocatorAligned(base_allocator: mem.Allocator) !void
  fn testAllocatorAlignedShrink(base_allocator: mem.Allocator) !void
  fn testAllocatorLargeAlignment(base_allocator: mem.Allocator) !void
  inline fn pageSize() usize
}

std.http.ChunkParser {
  const State = enum
  const init: ChunkParser = 
  fn feed(p: *ChunkParser, bytes: []const u8) usize
}

std.http.Client {
  const ConnectError = ConnectTcpError || RequestErro
  const ConnectTcpError = erro
  const ConnectTcpOptions = struct
  const ConnectUnixError = Allocator.Error || std.posix.SocketError || error{NameTooLong} || std.posix.ConnectErro
  const Connection = struct
  const ConnectionPool = struct
  const FetchError = Uri.ParseError || RequestError || Request.ReceiveHeadError || erro
  const FetchOptions = struct
  const FetchResult = struct
  const Protocol = enum
  const Proxy = struct
  const Request = struct
  const RequestError = ConnectTcpError || erro
  const RequestOptions = struct
  const Response = struct
  const basic_authorization = struct
  const disable_tls = std.options.http_disable_tl
  fn connect(client: *Client, host: HostName, port: u16, protocol: Protocol) ConnectError!*Connection
  fn connectProxied(client: *Client, proxy: *Proxy, proxied_host: HostName, proxied_port: u16) !*Connection
  fn connectTcp(client: *Client, host: HostName, port: u16, protocol: Protocol) ConnectTcpError!*Connection
  fn connectTcpOptions(client: *Client, options: ConnectTcpOptions) ConnectTcpError!*Connection
  fn connectUnix(client: *Client, path: []const u8) ConnectUnixError!*Connection
  fn deinit(client: *Client) void
  fn fetch(client: *Client, options: FetchOptions) FetchError!FetchResult
  fn initDefaultProxies(client: *Client, arena: Allocator, environ_map: *const std.process.Environ.Map) !void
  fn request(client: *Client, method: http.Method, uri: Uri, options: RequestOptions) RequestError!Request
}

std.http.HeaderIterator {
  fn init(bytes: []const u8) HeaderIterator
  fn next(it: *HeaderIterator) ?std.http.Header
}

std.http.HeadParser {
  const State = enum
  fn feed(p: *HeadParser, bytes: []const u8) usize
}

std.http.Server {
  const ReceiveHeadError = http.Reader.HeadError || erro
  const Request = struct
  const WebSocket = struct
  fn init(in: *Reader, out: *Writer) Server
  fn receiveHead(s: *Server) ReceiveHeadError!Request
}

std.http {
  const BodyWriter = struct
  const ChunkParser = @import("http/ChunkParser.zig"
  const Client = @import("http/Client.zig"
  const Connection = enum
  const ContentEncoding = enum
  const Decompress = union(enum)
  const HeadParser = @import("http/HeadParser.zig"
  const Header = struct
  const HeaderIterator = @import("http/HeaderIterator.zig"
  const Method = enum
  const Reader = struct
  const Server = @import("http/Server.zig"
  const Status = enum(u10)
  const TransferEncoding = enum
  const Version = enum
}

std.Io.Dir {
  const AccessError = erro
  const AccessOptions = packed struct
  const CopyFileError = File.OpenError || File.StatError 
  const CopyFileOptions = struct
  const CreateDirError = erro
  const CreateDirPathError = CreateDirError || StatFileErro
  const CreateDirPathOpenError = CreateDirError || OpenError || StatFileErro
  const CreateDirPathOpenOptions = struct
  const CreateFileAtomicError = erro
  const CreateFileAtomicOptions = struct
  const CreateFileOptions = struct
  const CreatePathStatus = enum { existed, created 
  const DeleteDirError = erro
  const DeleteFileError = erro
  const DeleteTreeError = erro
  const Entry = struct
  const Handle = std.posix.fd_
  const HardLinkError = File.HardLinkErro
  const HardLinkOptions = File.HardLinkOption
  const Iterator = struct
  const OpenError = erro
  const OpenFileOptions = struct
  const OpenOptions = struct
  const PathNameError = erro
  const Permissions = File.Permission
  const PrevStatus = enum
  const ReadFileAllocError = File.OpenError || File.Reader.Error || Allocator.Error || erro
  const ReadFileError = File.OpenError || File.Reader.Erro
  const ReadLinkError = erro
  const Reader = struct
  const RealPathError = File.RealPathErro
  const RealPathFileAllocError = RealPathFileError || Allocator.Erro
  const RealPathFileError = RealPathError || PathNameErro
  const RenameError = erro
  const RenamePreserveError = erro
  const SelectiveWalker = struct
  const SetFileOwnerError = PathNameError || SetOwnerErro
  const SetFileOwnerOptions = struct
  const SetFilePermissionsError = PathNameError || SetPermissionsError || erro
  const SetFilePermissionsOptions = struct
  const SetOwnerError = File.SetOwnerErro
  const SetPermissionsError = File.SetPermissionsErro
  const SetTimestampsError = File.SetTimestampsError || PathNameErro
  const SetTimestampsNowOptions = struct
  const SetTimestampsOptions = struct
  const Stat = File.Sta
  const StatError = File.StatErro
  const StatFileError = File.OpenError || File.StatErro
  const StatFileOptions = struct
  const SymLinkError = erro
  const SymLinkFlags = struct
  const UpdateFileError = File.OpenErro
  const Walker = struct
  const WriteFileError = File.Writer.Error || File.OpenErro
  const WriteFileOptions = struct
  const max_name_bytes = switch (native_os)
  const max_path_bytes = switch (native_os)
  const path = std.fs.pat
  fn access(dir: Dir, io: Io, sub_path: []const u8, options: AccessOptions) AccessError!void
  fn accessAbsolute(io: Io, absolute_path: []const u8, options: AccessOptions) AccessError!void
  fn close(dir: Dir, io: Io) void
  fn closeMany(io: Io, dirs: []const Dir) void
  fn copyFile(source_dir: Dir, source_path: []const u8, dest_dir: Dir, dest_path: []const u8, io: Io, options: CopyFileOptions) CopyFileError!void
  fn copyFileAbsolute(source_path: []const u8, dest_path: []const u8, io: Io, options: CopyFileOptions) !void
  fn createDir(dir: Dir, io: Io, sub_path: []const u8, permissions: Permissions) CreateDirError!void
  fn createDirAbsolute(io: Io, absolute_path: []const u8, permissions: Permissions) CreateDirError!void
  fn createDirPath(dir: Dir, io: Io, sub_path: []const u8) CreateDirPathError!void
  fn createDirPathOpen(dir: Dir, io: Io, sub_path: []const u8, options: CreateDirPathOpenOptions) CreateDirPathOpenError!Dir
  fn createDirPathStatus(dir: Dir, io: Io, sub_path: []const u8, permissions: Permissions) CreateDirPathError!CreatePathStatus
  fn createFile(dir: Dir, io: Io, sub_path: []const u8, flags: CreateFileOptions) File.OpenError!File
  fn createFileAbsolute(io: Io, absolute_path: []const u8, flags: CreateFileOptions) File.OpenError!File
  fn createFileAtomic(dir: Dir, io: Io, sub_path: []const u8, options: CreateFileAtomicOptions) CreateFileAtomicError!File.Atomic
  fn cwd() Dir
  fn deleteDir(dir: Dir, io: Io, sub_path: []const u8) DeleteDirError!void
  fn deleteDirAbsolute(io: Io, absolute_path: []const u8) DeleteDirError!void
  fn deleteFile(dir: Dir, io: Io, sub_path: []const u8) DeleteFileError!void
  fn deleteFileAbsolute(io: Io, absolute_path: []const u8) DeleteFileError!void
  fn deleteTree(dir: Dir, io: Io, sub_path: []const u8) DeleteTreeError!void
  fn deleteTreeMinStackSize(dir: Dir, io: Io, sub_path: []const u8) DeleteTreeError!void
  fn hardLink(old_dir: Dir, old_sub_path: []const u8, new_dir: Dir, new_sub_path: []const u8, io: Io, options: HardLinkOptions) HardLinkError!void
  fn iterate(dir: Dir) Iterator
  fn iterateAssumeFirstIteration(dir: Dir) Iterator
  fn openDir(dir: Dir, io: Io, sub_path: []const u8, options: OpenOptions) OpenError!Dir
  fn openDirAbsolute(io: Io, absolute_path: []const u8, options: OpenOptions) OpenError!Dir
  fn openFile(dir: Dir, io: Io, sub_path: []const u8, options: OpenFileOptions) File.OpenError!File
  fn openFileAbsolute(io: Io, absolute_path: []const u8, options: OpenFileOptions) File.OpenError!File
  fn readFile(dir: Dir, io: Io, file_path: []const u8, buffer: []u8) ReadFileError![]u8
  fn readFileAlloc(dir: Dir, io: Io, sub_path: []const u8, gpa: Allocator, limit: Io.Limit) ReadFileAllocError![]u8
  fn readFileAllocOptions(dir: Dir, io: Io, sub_path: []const u8, gpa: Allocator, limit: Io.Limit, comptime alignment: std.mem.Alignment, comptime sentinel: ?u8) ReadFileAllocError!(if (sentinel) |s| [:s]align(alignment.toByteUnits()) u8 else []align(alignment.toByteUnits()) u8)
  fn readLink(dir: Dir, io: Io, sub_path: []const u8, buffer: []u8) ReadLinkError!usize
  fn readLinkAbsolute(io: Io, absolute_path: []const u8, buffer: []u8) ReadLinkError!usize
  fn realPath(dir: Dir, io: Io, out_buffer: []u8) RealPathError!usize
  fn realPathFile(dir: Dir, io: Io, sub_path: []const u8, out_buffer: []u8) RealPathFileError!usize
  fn realPathFileAbsolute(io: Io, absolute_path: []const u8, out_buffer: []u8) RealPathFileError!usize
  fn realPathFileAbsoluteAlloc(io: Io, absolute_path: []const u8, allocator: Allocator) RealPathFileAllocError![:0]u8
  fn realPathFileAlloc(dir: Dir, io: Io, sub_path: []const u8, allocator: Allocator) RealPathFileAllocError![:0]u8
  fn rename(old_dir: Dir, old_sub_path: []const u8, new_dir: Dir, new_sub_path: []const u8, io: Io) RenameError!void
  fn renameAbsolute(old_path: []const u8, new_path: []const u8, io: Io) RenameError!void
  fn renamePreserve(old_dir: Dir, old_sub_path: []const u8, new_dir: Dir, new_sub_path: []const u8, io: Io) RenamePreserveError!void
  fn setFileOwner(dir: Dir, io: Io, sub_path: []const u8, owner: ?File.Uid, group: ?File.Gid, options: SetFileOwnerOptions) SetOwnerError!void
  fn setFilePermissions(dir: Dir, io: Io, sub_path: []const u8, new_permissions: File.Permissions, options: SetFilePermissionsOptions) SetFilePermissionsError!void
  fn setOwner(dir: Dir, io: Io, owner: ?File.Uid, group: ?File.Gid) SetOwnerError!void
  fn setPermissions(dir: Dir, io: Io, new_permissions: File.Permissions) SetPermissionsError!void
  fn setTimestamps(dir: Dir, io: Io, sub_path: []const u8, options: SetTimestampsOptions) SetTimestampsError!void
  fn setTimestampsNow(dir: Dir, io: Io, sub_path: []const u8, options: SetTimestampsNowOptions) SetTimestampsError!void
  fn stat(dir: Dir, io: Io) StatError!Stat
  fn statFile(dir: Dir, io: Io, sub_path: []const u8, options: StatFileOptions) StatFileError!Stat
  fn symLink(dir: Dir, io: Io, target_path: []const u8, sym_link_path: []const u8, flags: SymLinkFlags) SymLinkError!void
  fn symLinkAbsolute(io: Io, target_path: []const u8, sym_link_path: []const u8, flags: SymLinkFlags) SymLinkError!void
  fn symLinkAtomic(dir: Dir, io: Io, target_path: []const u8, sym_link_path: []const u8, flags: SymLinkFlags) !void
  fn updateFile(source_dir: Dir, io: Io, source_path: []const u8, dest_dir: Dir, dest_path: []const u8, options: CopyFileOptions) !PrevStatus
  fn walk(dir: Dir, allocator: Allocator) Allocator.Error!Walker
  fn walkSelectively(dir: Dir, allocator: Allocator) !SelectiveWalker
  fn writeFile(dir: Dir, io: Io, options: WriteFileOptions) WriteFileError!void
}

std.Io.Dispatch {
  const InitOptions = struct
  fn allocator(ev: *Evented) std.mem.Allocator
  fn deinit(ev: *Evented) void
  fn init(ev: *Evented, backing_allocator: Allocator, options: InitOptions) !void
  fn io(ev: *Evented) Io
}

std.Io.fiber {
  const Context = switch (builtin.cpu.arch)
  const Switch = extern struct { old: *Context, new: *Context 
  const supported = switch (builtin.cpu.arch)
  inline fn contextSwitch(s: *const Switch) *const Switch
}

std.Io.File.Atomic {
  const InitError = File.OpenErro
  const LinkError = File.HardLinkError || Dir.RenamePreserveErro
  const ReplaceError = Dir.RenameErro
  fn deinit(af: *Atomic, io: Io) void
  fn link(af: *Atomic, io: Io) LinkError!void
  fn replace(af: *Atomic, io: Io) ReplaceError!void
}

std.Io.File.MemoryMap {
  const CreateError = erro
  const CreateOptions = struct
  const Section = if (is_windows) std.os.windows.HANDLE else voi
  const SetLengthError = erro
  fn create(io: Io, file: File, options: CreateOptions) CreateError!MemoryMap
  fn destroy(mm: *MemoryMap, io: Io) void
  fn read(mm: *MemoryMap, io: Io) File.ReadPositionalError!void
  fn setLength(mm: *MemoryMap, io: Io, new_len: usize) SetLengthError!void
  fn write(mm: *MemoryMap, io: Io) File.WritePositionalError!void
}

std.Io.File.MultiReader {
  const Context = struct
  const Error = UnendingError || error{EndOfStream
  const FillError = Io.Batch.AwaitConcurrentError || erro
  const Streams = extern struct
  const UnendingError = Allocator.Error || File.Reader.Error || Io.ConcurrentErro
  fn Buffer(comptime n: usize) type
  fn checkAnyError(mr: *const MultiReader) UnendingError!void
  fn deinit(mr: *MultiReader) void
  fn fileReader(mr: *MultiReader, index: usize) *File.Reader
  fn fill(mr: *MultiReader, unused_capacity: usize, timeout: Io.Timeout) FillError!void
  fn fillRemaining(mr: *MultiReader, timeout: Io.Timeout) Io.Batch.AwaitConcurrentError!void
  fn init(mr: *MultiReader, gpa: Allocator, io: Io, streams: *Streams, files: []const File) void
  fn reader(mr: *MultiReader, index: usize) *Io.Reader
  fn toOwnedSlice(mr: *MultiReader, index: usize) Allocator.Error![]u8
}

std.Io.File.Reader {
  const Error = Io.Operation.FileReadStreaming.UnendingError || Io.Cancelabl
  const Mode = enum
  const SeekError = File.SeekError || erro
  const SizeError = File.StatError || erro
  fn atEnd(r: *Reader) bool
  fn getSize(r: *Reader) SizeError!u64
  fn init(file: File, io: Io, buffer: []u8) Reader
  fn initInterface(buffer: []u8) Io.Reader
  fn initSize(file: File, io: Io, buffer: []u8, size: ?u64) Reader
  fn initStreaming(file: File, io: Io, buffer: []u8) Reader
  fn logicalPos(r: *const Reader) u64
  fn seekBy(r: *Reader, offset: i64) SeekError!void
  fn seekTo(r: *Reader, offset: u64) SeekError!void
  fn streamMode(r: *Reader, w: *Io.Writer, limit: Io.Limit, mode: Mode) Io.Reader.StreamError!usize
}

std.Io.File.Writer {
  const EndError = File.SetLengthError || Io.Writer.Erro
  const Error = Io.Operation.FileWriteStreaming.Error || Io.Cancelabl
  const Mode = File.Reader.Mod
  const SeekError = Io.File.SeekErro
  const WriteFileError = Error || erro
  fn drain(io_w: *Io.Writer, data: []const []const u8, splat: usize) Io.Writer.Error!usize
  fn end(w: *Writer) EndError!void
  fn flush(w: *Writer) Error!void
  fn init(file: File, io: Io, buffer: []u8) Writer
  fn initDetect(file: File, io: Io, buffer: []u8) Io.Cancelable!Writer
  fn initInterface(buffer: []u8) Io.Writer
  fn initStreaming(file: File, io: Io, buffer: []u8) Writer
  fn logicalPos(w: *const Writer) u64
  fn moveToReader(w: *Writer) File.Reader
  fn seekTo(w: *Writer, offset: u64) (SeekError || Io.Writer.Error)!void
  fn seekToUnbuffered(w: *Writer, offset: u64) SeekError!void
  fn sendFile(io_w: *Io.Writer, file_reader: *Io.File.Reader, limit: Io.Limit) Io.Writer.FileError!usize
}

std.Io.File {
  const Atomic = @import("File/Atomic.zig"
  const BlockSize = u3
  const CreateFlags = Dir.CreateFileOption
  const DowngradeLockError = Io.Cancelable || Io.UnexpectedErro
  const EnableAnsiEscapeCodesError = erro
  const Flags = struct
  const Gid = std.posix.gid_
  const Handle = std.posix.fd_
  const HardLinkError = erro
  const HardLinkOptions = struct
  const INode = std.posix.ino_
  const Kind = enum
  const LengthError = StatErro
  const Lock = enum
  const LockError = erro
  const MemoryMap = @import("File/MemoryMap.zig"
  const MultiReader = @import("File/MultiReader.zig"
  const NLink = std.posix.nlink_
  const OpenError = erro
  const OpenFlags = Dir.OpenFileOption
  const OpenMode = Dir.OpenFileOptions.Mod
  const Permissions = std.Options.FilePermissions orelse if (is_windows) enum(std.os.windows.DWORD)
  const ReadPositionalError = erro
  const ReadStreamingError = error{EndOfStream} || Reader.Erro
  const Reader = @import("File/Reader.zig"
  const RealPathError = erro
  const SeekError = erro
  const SetLengthError = erro
  const SetOwnerError = erro
  const SetPermissionsError = erro
  const SetTimestamp = union(enum)
  const SetTimestampsError = erro
  const SetTimestampsOptions = struct
  const Stat = struct
  const StatError = erro
  const SyncError = erro
  const Uid = std.posix.uid_
  const WriteFilePositionalError = Writer.WriteFileError || error{Unseekable
  const WritePositionalError = erro
  const Writer = @import("File/Writer.zig"
  fn close(file: File, io: Io) void
  fn closeMany(io: Io, files: []const File) void
  fn createMemoryMap(file: File, io: Io, options: MemoryMap.CreateOptions) MemoryMap.CreateError!MemoryMap
  fn downgradeLock(file: File, io: Io) LockError!void
  fn enableAnsiEscapeCodes(file: File, io: Io) EnableAnsiEscapeCodesError!void
  fn hardLink(file: File, io: Io, new_dir: Dir, new_sub_path: []const u8, options: HardLinkOptions) HardLinkError!void
  fn isTty(file: File, io: Io) Io.Cancelable!bool
  fn length(file: File, io: Io) LengthError!u64
  fn lock(file: File, io: Io, l: Lock) LockError!void
  fn readPositional(file: File, io: Io, buffer: []const []u8, offset: u64) ReadPositionalError!usize
  fn readPositionalAll(file: File, io: Io, buffer: []u8, offset: u64) ReadPositionalError!usize
  fn readStreaming(file: File, io: Io, buffer: []const []u8) ReadStreamingError!usize
  fn reader(file: File, io: Io, buffer: []u8) Reader
  fn readerStreaming(file: File, io: Io, buffer: []u8) Reader
  fn realPath(file: File, io: Io, out_buffer: []u8) RealPathError!usize
  fn setLength(file: File, io: Io, new_length: u64) SetLengthError!void
  fn setOwner(file: File, io: Io, owner: ?Uid, group: ?Gid) SetOwnerError!void
  fn setPermissions(file: File, io: Io, new_permissions: Permissions) SetPermissionsError!void
  fn setTimestamps(file: File, io: Io, options: SetTimestampsOptions) SetTimestampsError!void
  fn setTimestampsNow(file: File, io: Io) SetTimestampsError!void
  fn stat(file: File, io: Io) StatError!Stat
  fn stderr() File
  fn stdin() File
  fn stdout() File
  fn supportsAnsiEscapeCodes(file: File, io: Io) Io.Cancelable!bool
  fn sync(file: File, io: Io) SyncError!void
  fn tryLock(file: File, io: Io, l: Lock) LockError!bool
  fn unlock(file: File, io: Io) void
  fn writePositional(file: File, io: Io, buffer: []const []const u8, offset: u64) WritePositionalError!usize
  fn writePositionalAll(file: File, io: Io, bytes: []const u8, offset: u64) WritePositionalError!void
  fn writeStreaming(file: File, io: Io, header: []const u8, data: []const []const u8, splat: usize) Writer.Error!usize
  fn writeStreamingAll(file: File, io: Io, bytes: []const u8) Writer.Error!void
  fn writer(file: File, io: Io, buffer: []u8) Writer
  fn writerStreaming(file: File, io: Io, buffer: []u8) Writer
}

std.Io.Kqueue {
  const CreateFileDescriptorError = erro
  const InitError = Allocator.Error || CreateFileDescriptorErro
  const InitOptions = struct
  const KEventError = erro
  fn createFileDescriptor() CreateFileDescriptorError!posix.fd_t
  fn deinit(k: *Kqueue) void
  fn init(k: *Kqueue, gpa: Allocator, options: InitOptions) !void
  fn io(k: *Kqueue) Io
  fn kevent(kq: i32, changelist: []const posix.Kevent, eventlist: []posix.Kevent, timeout: ?*const posix.timespec) KEventError!usize
}

std.Io.net.HostName {
  const ConnectError = LookupError || IpAddress.ConnectErro
  const DnsRecord = enum(u8)
  const DnsResponse = struct
  const ExpandError = error{InvalidDnsPacket} || ValidateErro
  const LookupError = erro
  const LookupOptions = struct
  const LookupResult = union(enum)
  const ResolvConf = struct
  const ValidateError = erro
  const max_len = 25
  fn connect(host_name: HostName, io: Io, port: u16, options: IpAddress.ConnectOptions) ConnectError!Stream
  fn connectMany(host_name: HostName, io: Io, port: u16, results: *Io.Queue(IpAddress.ConnectError!Stream), options: IpAddress.ConnectOptions) LookupError!void
  fn eql(a: HostName, b: HostName) bool
  fn expand(noalias packet: []const u8, start_i: usize, noalias dest_buffer: []u8) ExpandError!struct { usize, HostName }
  fn init(bytes: []const u8) ValidateError!HostName
  fn lookup(host_name: HostName, io: Io, resolved: *Io.Queue(LookupResult), options: LookupOptions) LookupError!void
  fn sameParentDomain(parent_host: HostName, child_host: HostName) bool
  fn validate(bytes: []const u8) ValidateError!void
}

std.Io.net {
  const HostName = @import("net/HostName.zig"
  const IncomingMessage = struct
  const Interface = struct
  const Ip4Address = struct
  const Ip6Address = struct
  const IpAddress = union(enum)
  const OutgoingMessage = struct
  const Protocol = enum(u32)
  const ReceiveFlags = packed struct(u8)
  const SendFlags = packed struct(u8)
  const Server = struct
  const ShutdownError = erro
  const ShutdownHow = enum { recv, send, both 
  const Socket = struct
  const Stream = struct
  const UnixAddress = struct
  const default_kernel_backlog = 12
  const has_unix_sockets = switch (native_os)
}

std.Io.Reader.Limited {
  fn init(reader: *Reader, limit: Limit, buffer: []u8) Limited
}

std.Io.Reader {
  const AppendExactError = Allocator.Error || Erro
  const DelimiterError = erro
  const DiscardDelimiterLimitError = erro
  const Error = erro
  const Limited = @import("Reader/Limited.zig"
  const LimitedAllocError = Allocator.Error || ShortError || error{StreamTooLong
  const ReadAllocError = Error || Allocator.Erro
  const RebaseError = Erro
  const ShortError = erro
  const StreamDelimiterLimitError = erro
  const StreamError = erro
  const StreamRemainingError = erro
  const TakeEnumError = Error || error{InvalidEnumTag
  const TakeLeb128Error = Error || error{Overflow
  const UnlimitedAllocError = Allocator.Error || ShortErro
  const VTable = struct
  const ending: *Reader = @constCast(&ending_instance
  const ending_instance: Reader = .fixed(&.{}
  const failing: Reader = 
  fn Hashed(comptime Hasher: type) type
  fn allocRemaining(r: *Reader, gpa: Allocator, limit: Limit) LimitedAllocError![]u8
  fn allocRemainingAlignedSentinel(r: *Reader, gpa: Allocator, limit: Limit, comptime alignment: std.mem.Alignment, comptime sentinel: ?u8) LimitedAllocError!(if (sentinel) |s| [:s]align(alignment.toByteUnits()) u8 else []align(alignment.toByteUnits()) u8)
  fn appendExact(r: *Reader, gpa: Allocator, list: *ArrayList(u8), n: usize) AppendExactError!void
  fn appendRemaining(r: *Reader, gpa: Allocator, list: *ArrayList(u8), limit: Limit) LimitedAllocError!void
  fn appendRemainingAligned(r: *Reader, gpa: Allocator, comptime alignment: std.mem.Alignment, list: *std.array_list.Aligned(u8, alignment), limit: Limit) LimitedAllocError!void
  fn appendRemainingUnlimited(r: *Reader, gpa: Allocator, list: *ArrayList(u8)) UnlimitedAllocError!void
  fn buffered(r: *Reader) []u8
  fn bufferedLen(r: *const Reader) usize
  fn defaultDiscard(r: *Reader, limit: Limit) Error!usize
  fn defaultReadVec(r: *Reader, data: [][]u8) Error!usize
  fn defaultRebase(r: *Reader, capacity: usize) Error!void
  fn discard(r: *Reader, limit: Limit) Error!usize
  fn discardAll(r: *Reader, n: usize) Error!void
  fn discardAll64(r: *Reader, n: u64) Error!void
  fn discardDelimiterExclusive(r: *Reader, delimiter: u8) ShortError!usize
  fn discardDelimiterInclusive(r: *Reader, delimiter: u8) Error!usize
  fn discardDelimiterLimit(r: *Reader, delimiter: u8, limit: Limit) DiscardDelimiterLimitError!usize
  fn discardRemaining(r: *Reader) ShortError!usize
  fn discardShort(r: *Reader, n: usize) ShortError!usize
  fn fill(r: *Reader, n: usize) Error!void
  fn fillMore(r: *Reader) Error!void
  fn fixed(buffer: []const u8) Reader
  fn hashed(r: *Reader, hasher: anytype, buffer: []u8) Hashed(@TypeOf(hasher))
  fn limited(r: *Reader, limit: Limit, buffer: []u8) Limited
  fn peek(r: *Reader, n: usize) Error![]u8
  fn peekArray(r: *Reader, comptime n: usize) Error!*[n]u8
  fn peekByte(r: *Reader) Error!u8
  fn peekDelimiterExclusive(r: *Reader, delimiter: u8) DelimiterError![]u8
  fn peekDelimiterInclusive(r: *Reader, delimiter: u8) DelimiterError![]u8
  fn peekGreedy(r: *Reader, n: usize) Error![]u8
  fn peekSentinel(r: *Reader, comptime sentinel: u8) DelimiterError![:sentinel]u8
  fn peekStructPointer(r: *Reader, comptime T: type) Error!*align(1) T
  fn readAlloc(r: *Reader, allocator: Allocator, len: usize) ReadAllocError![]u8
  fn readSliceAll(r: *Reader, buffer: []u8) Error!void
  fn readSliceShort(r: *Reader, buffer: []u8) ShortError!usize
  fn readVec(r: *Reader, data: [][]u8) Error!usize
  fn readVecAll(r: *Reader, data: [][]u8) Error!void
  fn rebase(r: *Reader, capacity: usize) Error!void
  fn stream(r: *Reader, w: *Writer, limit: Limit) StreamError!usize
  fn streamDelimiter(r: *Reader, w: *Writer, delimiter: u8) StreamError!usize
  fn streamDelimiterEnding(r: *Reader, w: *Writer, delimiter: u8) StreamRemainingError!usize
  fn streamDelimiterLimit(r: *Reader, w: *Writer, delimiter: u8, limit: Limit) StreamDelimiterLimitError!usize
  fn streamExact(r: *Reader, w: *Writer, n: usize) StreamError!void
  fn streamExact64(r: *Reader, w: *Writer, n: u64) StreamError!void
  fn streamExactPreserve(r: *Reader, w: *Writer, preserve_len: usize, n: usize) StreamError!void
  fn streamRemaining(r: *Reader, w: *Writer) StreamRemainingError!usize
  fn take(r: *Reader, n: usize) Error![]u8
  fn takeArray(r: *Reader, comptime n: usize) Error!*[n]u8
  fn takeByte(r: *Reader) Error!u8
  fn takeByteSigned(r: *Reader) Error!i8
  fn takeDelimiter(r: *Reader, delimiter: u8) error{ ReadFailed, StreamTooLong }!?[]u8
  fn takeDelimiterExclusive(r: *Reader, delimiter: u8) DelimiterError![]u8
  fn takeDelimiterInclusive(r: *Reader, delimiter: u8) DelimiterError![]u8
  fn takeEnum(r: *Reader, comptime Enum: type, endian: std.builtin.Endian) TakeEnumError!Enum
  fn takeEnumNonexhaustive(r: *Reader, comptime Enum: type, endian: std.builtin.Endian) Error!Enum
  fn takeLeb128(r: *Reader, comptime T: type) TakeLeb128Error!T
  fn takeSentinel(r: *Reader, comptime sentinel: u8) DelimiterError![:sentinel]u8
  fn takeStructPointer(r: *Reader, comptime T: type) Error!*align(1) T
  fn takeVarInt(r: *Reader, comptime Int: type, endian: std.builtin.Endian, n: usize) Error!Int
  fn toss(r: *Reader, n: usize) void
  fn tossBuffered(r: *Reader) void
  fn writableVector(r: *Reader, buffer: [][]u8, data: []const []u8) Error!struct { usize, usize }
  fn writableVectorPosix(r: *Reader, buffer: []std.posix.iovec, data: []const []u8) Error!struct { usize, usize }
  fn writableVectorWsa(r: *Reader, buffer: []std.os.windows.AFD.WSABUF(.@"var"), data: []const []u8) Error!struct { usize, usize }
  inline fn peekInt(r: *Reader, comptime T: type, endian: std.builtin.Endian) Error!T
  inline fn peekStruct(r: *Reader, comptime T: type, endian: std.builtin.Endian) Error!T
  inline fn readSliceEndia
  inline fn readSliceEndianAllo
  inline fn takeInt(r: *Reader, comptime T: type, endian: std.builtin.Endian) Error!T
  inline fn takeStruct(r: *Reader, comptime T: type, endian: std.builtin.Endian) Error!T
}

std.Io.RwLock {
  const init: RwLock = 
  fn lock(rl: *RwLock, io: Io) Io.Cancelable!void
  fn lockShared(rl: *RwLock, io: Io) Io.Cancelable!void
  fn lockSharedUncancelable(rl: *RwLock, io: Io) void
  fn lockUncancelable(rl: *RwLock, io: Io) void
  fn tryLock(rl: *RwLock, io: Io) bool
  fn tryLockShared(rl: *RwLock, io: Io) bool
  fn unlock(rl: *RwLock, io: Io) void
  fn unlockShared(rl: *RwLock, io: Io) void
}

std.Io.Semaphore {
  fn post(s: *Semaphore, io: Io) void
  fn wait(s: *Semaphore, io: Io) Io.Cancelable!void
  fn waitUncancelable(s: *Semaphore, io: Io) void
}

std.Io.Terminal {
  const Color = enum
  const Mode = union(enum)
  const SetColorError = Io.Cancelable || Io.UnexpectedError || Io.Writer.Erro
  fn setColor(t: Terminal, color: Color) SetColorError!void
}

std.Io.Threaded {
  const Argv0 = switch (native_os)
  const ChdirError = erro
  const CreatePipeOptions = struct
  const Csprng = struct
  const DupError = erro
  const Environ = struct
  const FchdirError = erro
  const GetFinalPathNameByHandleError = erro
  const GetFinalPathNameByHandleFormat = struct
  const InitOptions = struct
  const NullFile = switch (native_os)
  const Pid = if (native_os == .linux) enum(posix.pid_t)
  const PipeError = erro
  const PipeFile = switch (native_os)
  const PosixAddress = extern union
  const QueryObjectNameError = erro
  const RandomFile = switch (native_os)
  const UseCopyFileRange = if (have_copy_file_range) enum
  const UseFchmodat2 = if (have_fchmodat2 and !have_fchmodat_flags) enum
  const UseFcopyfile = if (have_fcopyfile) enum
  const UseSendfile = if (have_sendfile) enum
  const WindowsPathSpace = struct
  const Wtf8ToPrefixedFileWError = Wtf16ToPrefixedFileWErro
  const apc_align = @max(default_fn_align, 2
  const default_PATH = "/usr/local/bin:/bin/:/usr/bin
  const global_single_threaded: *Threaded = &global_single_threaded_instanc
  const init_single_threaded: Threaded = init:
  const linux_statx_check: std.os.linux.STATX = 
  const linux_statx_request: std.os.linux.STATX = 
  const max_iovecs_len = 
  const socket_flags_unsupported = is_darwin or native_os == .haik
  const splat_buffer_size = 6
  fn GetFinalPathNameByHandle(hFile: windows.HANDLE, fmt: GetFinalPathNameByHandleFormat, out_buffer: []u16) GetFinalPathNameByHandleError![]u16
  fn QueryObjectName(handle: windows.HANDLE, out_buffer: []u16) QueryObjectNameError![]u16
  fn addressFromPosix(posix_address: *const PosixAddress) IpAddress
  fn addressToPosix(a: *const IpAddress, storage: *PosixAddress) posix.socklen_t
  fn chdir(dir_path: []const u8) ChdirError!void
  fn clockToPosix(clock: Io.Clock) posix.clockid_t
  fn closeFd(fd: posix.fd_t) void
  fn deinit(t: *Threaded) void
  fn dirOpenDirWindows(dir: Dir, sub_path_w: []const u16, options: Dir.OpenOptions) Dir.OpenError!Dir
  fn dirOpenFileWtf16(dir_handle: ?windows.HANDLE, sub_path_w: []const u16, flags: Dir.OpenFileOptions) File.OpenError!File
  fn dup2(old_fd: posix.fd_t, new_fd: posix.fd_t) DupError!void
  fn environString(t: *Threaded, comptime name: []const u8) ?[:0]const u8
  fn errnoBug(err: posix.E) Io.UnexpectedError
  fn fallbackSeed(aslr_addr: ?*anyopaque, seed: *[Csprng.seed_len]u8) void
  fn fchdir(fd: posix.fd_t) FchdirError!void
  fn init(gpa: Allocator, options: InitOptions) Threaded
  fn io(t: *Threaded) Io
  fn mutexLock(m: *Io.Mutex) void
  fn mutexUnlock(m: *Io.Mutex) void
  fn nanosecondsFromPosix(timespec: *const posix.timespec) i96
  fn pathToPosix(file_path: []const u8, buffer: *[posix.PATH_MAX]u8) Dir.PathNameError![:0]u8
  fn pipe2(flags: posix.O) PipeError![2]posix.fd_t
  fn posixAddressFamily(a: *const IpAddress) posix.sa_family_t
  fn posixExecvPath(path: [*:0]const u8, child_argv: [*:null]const ?[*:0]const u8, env_block: process.Environ.PosixBlock) process.ReplaceError
  fn posixSocketModeProtocol(family: posix.sa_family_t, mode: net.Socket.Mode, protocol: ?net.Protocol) !struct { u32, u32 }
  fn recoverableOsBugDetected() void
  fn setAsyncLimit(t: *Threaded, new_limit: Io.Limit) void
  fn setTimestampToPosix(set_ts: File.SetTimestamp) posix.timespec
  fn sliceToPrefixedFileW(dir: ?windows.HANDLE, path: []const u8, options: Wtf16ToPrefixedFileWOptions) Wtf8ToPrefixedFileWError!WindowsPathSpace
  fn statFromLinux(stx: *const std.os.linux.Statx) Io.UnexpectedError!File.Stat
  fn statFromPosix(st: *const posix.Stat) File.Stat
  fn statusToTerm(status: u32) process.Child.Term
  fn statxKind(stx_mode: u16) File.Kind
  fn timestampFromPosix(timespec: *const posix.timespec) Io.Timestamp
  fn wToPrefixedFileW(dir: ?windows.HANDLE, path: [:0]const u16, options: Wtf16ToPrefixedFileWOptions) Wtf16ToPrefixedFileWError!WindowsPathSpace
  fn waitForApcOrAlert() void
  fn windowsCreatePipe(t: *Threaded, options: CreatePipeOptions) ![2]windows.HANDLE
}

std.Io.Uring {
  const DupError = erro
  const InitOptions = struct
  const PipeError = erro
  fn allocator(ev: *Evented) std.mem.Allocator
  fn deinit(ev: *Evented) void
  fn dup2(sync: *CancelRegion.Sync, old_fd: fd_t, new_fd: fd_t) DupError!void
  fn execvPath(sync: *CancelRegion.Sync, path: [*:0]const u8, child_argv: [*:null]const ?[*:0]const u8, env_block: process.Environ.PosixBlock) process.ReplaceError
  fn init(ev: *Evented, backing_allocator: Allocator, options: InitOptions) !void
  fn io(ev: *Evented) Io
  fn pipe2(flags: linux.O) PipeError![2]fd_t
}

std.Io.Writer {
  const Allocating = struct
  const ByteSizeUnits = enum
  const Discarding = struct
  const Error = erro
  const FileAllError = erro
  const FileError = erro
  const FileReadingError = erro
  const VTable = struct
  const failing: Writer = 
  fn Hashed(comptime Hasher: type) type
  fn Hashing(comptime Hasher: type) type
  fn advance(w: *Writer, n: usize) void
  fn alignBuffer(w: *Writer, buffer: []const u8, width: usize, alignment: std.fmt.Alignment, fill: u8) Error!void
  fn alignBufferOptions(w: *Writer, buffer: []const u8, options: std.fmt.Options) Error!void
  fn buffered(w: *const Writer) []u8
  fn consume(w: *Writer, n: usize) usize
  fn consumeAll(w: *Writer) usize
  fn countSendFileLowerBound(n: usize, file_reader: *File.Reader, limit: Limit) ?usize
  fn countSplat(data: []const []const u8, splat: usize) usize
  fn defaultFlush(w: *Writer) Error!void
  fn defaultRebase(w: *Writer, preserve: usize, minimum_len: usize) Error!void
  fn ensureUnusedCapacity(w: *Writer, n: usize) Error!void
  fn failingDrain(w: *Writer, data: []const []const u8, splat: usize) Error!usize
  fn failingRebase(w: *Writer, preserve: usize, capacity: usize) Error!void
  fn failingSendFile(w: *Writer, file_reader: *File.Reader, limit: Limit) FileError!usize
  fn fixed(buffer: []u8) Writer
  fn fixedDrain(w: *Writer, data: []const []const u8, splat: usize) Error!usize
  fn flush(w: *Writer) Error!void
  fn fromArrayList(array_list: *ArrayList(u8)) Writer
  fn hashed(w: *Writer, hasher: anytype, buffer: []u8) Hashed(@TypeOf(hasher))
  fn invalidFmtError(comptime fmt: []const u8, value: anytype) noreturn
  fn noopFlush(w: *Writer) Error!void
  fn print(w: *Writer, comptime fmt: []const u8, args: anytype) Error!void
  fn printAddress(w: *Writer, value: anytype) Error!void
  fn printArray(w: *Writer, comptime fmt: []const u8, options: std.fmt.Options, ptr_to_array: anytype, max_depth: usize) Error!void
  fn printAscii(w: *Writer, bytes: []const u8, options: std.fmt.Options) Error!void
  fn printAsciiChar(w: *Writer, c: u8, options: std.fmt.Options) Error!void
  fn printBase64(w: *Writer, bytes: []const u8) Error!void
  fn printByteSize(w: *Writer, value: u64, comptime units: ByteSizeUnits, options: std.fmt.Options) Error!void
  fn printFloat(w: *Writer, value: anytype, options: std.fmt.Number) Error!void
  fn printFloatHex(w: *Writer, value: anytype, case: std.fmt.Case, opt_precision: ?usize) Error!void
  fn printFloatHexOptions(w: *Writer, value: anytype, options: std.fmt.Number) Error!void
  fn printHex(w: *Writer, bytes: []const u8, case: std.fmt.Case) Error!void
  fn printIntAny(w: *Writer, value: anytype, base: u8, case: std.fmt.Case, options: std.fmt.Options) Error!void
  fn printUnicodeCodepoint(w: *Writer, c: u21) Error!void
  fn printValue(w: *Writer, comptime fmt: []const u8, options: std.fmt.Options, value: anytype, max_depth: usize) Error!void
  fn printVector(w: *Writer, comptime fmt: []const u8, options: std.fmt.Options, value: anytype, max_depth: usize) Error!void
  fn rebase(w: *Writer, preserve: usize, unused_capacity_len: usize) Error!void
  fn sendFile(w: *Writer, file_reader: *File.Reader, limit: Limit) FileError!usize
  fn sendFileAll(w: *Writer, file_reader: *File.Reader, limit: Limit) FileAllError!usize
  fn sendFileHeader(w: *Writer, header: []const u8, file_reader: *File.Reader, limit: Limit) FileError!usize
  fn sendFileReading(w: *Writer, file_reader: *File.Reader, limit: Limit) FileReadingError!usize
  fn sendFileReadingAll(w: *Writer, file_reader: *File.Reader, limit: Limit) FileAllError!usize
  fn splatByte(w: *Writer, byte: u8, n: usize) Error!usize
  fn splatByteAll(w: *Writer, byte: u8, n: usize) Error!void
  fn splatBytePreserve(w: *Writer, preserve: usize, byte: u8, n: usize) Error!void
  fn splatBytes(w: *Writer, bytes: []const u8, n: usize) Error!usize
  fn splatBytesAll(w: *Writer, bytes: []const u8, splat: usize) Error!void
  fn toArrayList(w: *Writer) ArrayList(u8)
  fn undo(w: *Writer, n: usize) void
  fn unimplementedSendFile(w: *Writer, file_reader: *File.Reader, limit: Limit) FileError!usize
  fn unreachableDrain(w: *Writer, data: []const []const u8, splat: usize) Error!usize
  fn unreachableRebase(w: *Writer, preserve: usize, capacity: usize) Error!void
  fn unusedCapacityLen(w: *const Writer) usize
  fn unusedCapacitySlice(w: *const Writer) []u8
  fn writableArray(w: *Writer, comptime len: usize) Error!*[len]u8
  fn writableSlice(w: *Writer, len: usize) Error![]u8
  fn writableSliceGreedy(w: *Writer, minimum_len: usize) Error![]u8
  fn writableSliceGreedyPreserve(w: *Writer, preserve: usize, minimum_len: usize) Error![]u8
  fn writableSlicePreserve(w: *Writer, preserve: usize, len: usize) Error![]u8
  fn write(w: *Writer, bytes: []const u8) Error!usize
  fn writeAll(w: *Writer, bytes: []const u8) Error!void
  fn writeByte(w: *Writer, byte: u8) Error!void
  fn writeBytePreserve(w: *Writer, preserve: usize, byte: u8) Error!void
  fn writeLeb128(w: *Writer, value: anytype) Error!void
  fn writeSleb128(w: *Writer, value: anytype) Error!void
  fn writeSliceSwap(w: *Writer, Elem: type, slice: []const Elem) Error!void
  fn writeSplat(w: *Writer, data: []const []const u8, splat: usize) Error!usize
  fn writeSplatAll(w: *Writer, data: [][]const u8, splat: usize) Error!void
  fn writeSplatHeader(w: *Writer, header: []const u8, data: []const []const u8, splat: usize) Error!usize
  fn writeSplatHeaderLimit(w: *Writer, header: []const u8, data: []const []const u8, splat: usize, limit: Limit) Error!usize
  fn writeUleb128(w: *Writer, value: anytype) Error!void
  fn writeVec(w: *Writer, data: []const []const u8) Error!usize
  fn writeVecAll(w: *Writer, data: [][]const u8) Error!void
  inline fn printIn
  inline fn writeInt(w: *Writer, comptime T: type, value: T, endian: std.builtin.Endian) Error!void
  inline fn writeSliceEndia
  inline fn writeStruct(w: *Writer, value: anytype, endian: std.builtin.Endian) Error!void
}

std.Io {
  const AnyFuture = opaque {
  const Batch = struct
  const CancelProtection = enum(u1)
  const Cancelable = erro
  const Clock = enum
  const ConcurrentError = erro
  const Condition = struct
  const Dir = @import("Io/Dir.zig"
  const Dispatch = @import("Io/Dispatch.zig"
  const Duration = struct
  const Event = enum(u32)
  const Evented = if (fiber.supported) switch (builtin.os.tag)
  const File = @import("Io/File.zig"
  const Group = struct
  const Kqueue = @import("Io/Kqueue.zig"
  const Limit = enum(usize)
  const LockedStderr = struct
  const Mutex = extern struct
  const OperateTimeoutError = Cancelable || Timeout.Error || ConcurrentErro
  const Operation = union(enum)
  const QueueClosedError = error{Closed
  const RandomSecureError = error{EntropyUnavailable} || Cancelabl
  const Reader = @import("Io/Reader.zig"
  const RwLock = @import("Io/RwLock.zig"
  const Semaphore = @import("Io/Semaphore.zig"
  const Terminal = @import("Io/Terminal.zig"
  const Threaded = @import("Io/Threaded.zig"
  const Timeout = union(enum)
  const Timestamp = struct
  const TypeErasedQueue = struct
  const UnexpectedError = erro
  const Uring = @import("Io/Uring.zig"
  const VTable = struct
  const Writer = @import("Io/Writer.zig"
  const failing: std.Io = 
  const fiber = @import("Io/fiber.zig"
  const net = @import("Io/net.zig"
  fn Future(Result: type) type
  fn Queue(Elem: type) type
  fn Select(comptime U: type) type
  fn async(io: Io, function: anytype, args: std.meta.ArgsTuple(@TypeOf(function))) Future(@typeInfo(@TypeOf(function)).@"fn".return_type.?)
  fn checkCancel(io: Io) Cancelable!void
  fn concurrent(io: Io, function: anytype, args: std.meta.ArgsTuple(@TypeOf(function))) ConcurrentError!Future(@typeInfo(@TypeOf(function)).@"fn".return_type.?)
  fn failingClockResolution(userdata: ?*anyopaque, clock: Clock) Clock.ResolutionError!Duration
  fn failingConcurrent(userdata: ?*anyopaque, result_len: usize, result_alignment: std.mem.Alignment, context: []const u8, context_alignment: std.mem.Alignment, start: *const fn (context: *const anyopaque, result: *anyopaque) void) ConcurrentError!*AnyFuture
  fn failingDirAccess(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, options: Dir.AccessOptions) Dir.AccessError!void
  fn failingDirCreateDir(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, permissions: Dir.Permissions) Dir.CreateDirError!void
  fn failingDirCreateDirPath(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, permissions: Dir.Permissions) Dir.CreateDirPathError!Dir.CreatePathStatus
  fn failingDirCreateDirPathOpen(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, permissions: Dir.Permissions, options: Dir.OpenOptions) Dir.CreateDirPathOpenError!Dir
  fn failingDirCreateFile(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, options: File.CreateFlags) File.OpenError!File
  fn failingDirCreateFileAtomic(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, options: Dir.CreateFileAtomicOptions) Dir.CreateFileAtomicError!File.Atomic
  fn failingDirDeleteDir(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8) Dir.DeleteDirError!void
  fn failingDirDeleteFile(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8) Dir.DeleteFileError!void
  fn failingDirHardLink(userdata: ?*anyopaque, old_dir: Dir, old_sub_path: []const u8, new_dir: Dir, new_sub_path: []const u8, options: Dir.HardLinkOptions) Dir.HardLinkError!void
  fn failingDirOpenDir(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, options: Dir.OpenOptions) Dir.OpenError!Dir
  fn failingDirOpenFile(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, flags: File.OpenFlags) File.OpenError!File
  fn failingDirReadLink(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, buffer: []u8) Dir.ReadLinkError!usize
  fn failingDirRealPath(userdata: ?*anyopaque, dir: Dir, out_buffer: []u8) Dir.RealPathError!usize
  fn failingDirRealPathFile(userdata: ?*anyopaque, dir: Dir, path_name: []const u8, out_buffer: []u8) Dir.RealPathFileError!usize
  fn failingDirRename(userdata: ?*anyopaque, old_dir: Dir, old_sub_path: []const u8, new_dir: Dir, new_sub_path: []const u8) Dir.RenameError!void
  fn failingDirRenamePreserve(userdata: ?*anyopaque, old_dir: Dir, old_sub_path: []const u8, new_dir: Dir, new_sub_path: []const u8) Dir.RenamePreserveError!void
  fn failingDirSetFileOwner(userdata: ?*anyopaque, dir: std.Io.Dir, sub_path: []const u8, owner: ?File.Uid, group: ?File.Gid, options: Dir.SetFileOwnerOptions) Dir.SetFileOwnerError!void
  fn failingDirSetFilePermissions(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, permissions: File.Permissions, options: Dir.SetFilePermissionsOptions) Dir.SetFilePermissionsError!void
  fn failingDirSetOwner(userdata: ?*anyopaque, dir: Dir, owner: ?File.Uid, group: ?File.Gid) Dir.SetOwnerError!void
  fn failingDirSetPermissions(userdata: ?*anyopaque, dir: Dir, permissions: Dir.Permissions) Dir.SetPermissionsError!void
  fn failingDirStat(userdata: ?*anyopaque, dir: Dir) Dir.StatError!Dir.Stat
  fn failingDirStatFile(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, options: Dir.StatFileOptions) Dir.StatFileError!File.Stat
  fn failingDirSymLink(userdata: ?*anyopaque, dir: Dir, target_path: []const u8, sym_link_path: []const u8, flags: Dir.SymLinkFlags) Dir.SymLinkError!void
  fn failingFileDowngradeLock(userdata: ?*anyopaque, file: File) File.DowngradeLockError!void
  fn failingFileHardLink(userdata: ?*anyopaque, file: File, new_dir: Dir, new_sub_path: []const u8, options: File.HardLinkOptions) File.HardLinkError!void
  fn failingFileLength(userdata: ?*anyopaque, file: File) File.LengthError!u64
  fn failingFileLock(userdata: ?*anyopaque, file: File, lock: File.Lock) File.LockError!void
  fn failingFileMemoryMapCreate(userdata: ?*anyopaque, file: File, options: File.MemoryMap.CreateOptions) File.MemoryMap.CreateError!File.MemoryMap
  fn failingFileReadPositional(userdata: ?*anyopaque, file: File, data: []const []u8, offset: u64) File.ReadPositionalError!usize
  fn failingFileRealPath(userdata: ?*anyopaque, file: File, out_buffer: []u8) File.RealPathError!usize
  fn failingFileSeekBy(userdata: ?*anyopaque, file: File, relative_offset: i64) File.SeekError!void
  fn failingFileSeekTo(userdata: ?*anyopaque, file: File, absolute_offset: u64) File.SeekError!void
  fn failingFileSetLength(userdata: ?*anyopaque, file: File, length: u64) File.SetLengthError!void
  fn failingFileSetOwner(userdata: ?*anyopaque, file: File, owner: ?File.Uid, group: ?File.Gid) File.SetOwnerError!void
  fn failingFileSetPermissions(userdata: ?*anyopaque, file: File, permissions: File.Permissions) File.SetPermissionsError!void
  fn failingFileStat(userdata: ?*anyopaque, file: File) File.StatError!File.Stat
  fn failingFileSync(userdata: ?*anyopaque, file: File) File.SyncError!void
  fn failingFileTryLock(userdata: ?*anyopaque, file: File, lock: File.Lock) File.LockError!bool
  fn failingFileWritePositional(userdata: ?*anyopaque, file: File, header: []const u8, data: []const []const u8, splat: usize, offset: u64) File.WritePositionalError!usize
  fn failingGroupConcurrent(userdata: ?*anyopaque, group: *Group, context: []const u8, context_alignment: std.mem.Alignment, start: *const fn (context: *const anyopaque) void) ConcurrentError!void
  fn failingNetAccept(userdata: ?*anyopaque, listen_fd: net.Socket.Handle, options: net.Server.AcceptOptions) net.Server.AcceptError!net.Socket
  fn failingNetBindIp(userdata: ?*anyopaque, address: *const net.IpAddress, options: net.IpAddress.BindOptions) net.IpAddress.BindError!net.Socket
  fn failingNetConnectIp(userdata: ?*anyopaque, address: *const net.IpAddress, options: net.IpAddress.ConnectOptions) net.IpAddress.ConnectError!net.Socket
  fn failingNetConnectUnix(userdata: ?*anyopaque, address: *const net.UnixAddress) net.UnixAddress.ConnectError!net.Socket.Handle
  fn failingNetInterfaceNameResolve(userdata: ?*anyopaque, name: *const net.Interface.Name) net.Interface.Name.ResolveError!net.Interface
  fn failingNetListenIp(userdata: ?*anyopaque, address: *const net.IpAddress, options: net.IpAddress.ListenOptions) net.IpAddress.ListenError!net.Socket
  fn failingNetListenUnix(userdata: ?*anyopaque, address: *const net.UnixAddress, options: net.UnixAddress.ListenOptions) net.UnixAddress.ListenError!net.Socket.Handle
  fn failingNetLookup(userdata: ?*anyopaque, host_name: net.HostName, resolved: *Queue(net.HostName.LookupResult), options: net.HostName.LookupOptions) net.HostName.LookupError!void
  fn failingNetRead(userdata: ?*anyopaque, src: net.Socket.Handle, data: [][]u8) net.Stream.Reader.Error!usize
  fn failingNetSend(userdata: ?*anyopaque, handle: net.Socket.Handle, messages: []net.OutgoingMessage, flags: net.SendFlags) struct { ?net.Socket.SendError, usize }
  fn failingNetShutdown(userdata: ?*anyopaque, handle: net.Socket.Handle, how: net.ShutdownHow) net.ShutdownError!void
  fn failingNetSocketCreatePair(userdata: ?*anyopaque, options: net.Socket.CreatePairOptions) net.Socket.CreatePairError![2]net.Socket
  fn failingNetWrite(userdata: ?*anyopaque, dest: net.Socket.Handle, header: []const u8, data: []const []const u8, splat: usize) net.Stream.Writer.Error!usize
  fn failingNetWriteFile(userdata: ?*anyopaque, handle: net.Socket.Handle, header: []const u8, file_reader: *Io.File.Reader, limit: Io.Limit) net.Stream.Writer.WriteFileError!usize
  fn failingOperate(userdata: ?*anyopaque, operation: Operation) Cancelable!Operation.Result
  fn failingProcessCurrentPath(userdata: ?*anyopaque, buffer: []u8) std.process.CurrentPathError!usize
  fn failingProcessExecutableOpen(userdata: ?*anyopaque, flags: File.OpenFlags) std.process.OpenExecutableError!File
  fn failingProcessExecutablePath(userdata: ?*anyopaque, buffer: []u8) std.process.ExecutablePathError!usize
  fn failingProcessReplace(userdata: ?*anyopaque, options: std.process.ReplaceOptions) std.process.ReplaceError
  fn failingProcessReplacePath(userdata: ?*anyopaque, dir: Dir, options: std.process.ReplaceOptions) std.process.ReplaceError
  fn failingProcessSetCurrentDir(userdata: ?*anyopaque, dir: Dir) std.process.SetCurrentDirError!void
  fn failingProcessSetCurrentPath(userdata: ?*anyopaque, path: []const u8) std.process.SetCurrentPathError!void
  fn failingProcessSpawn(userdata: ?*anyopaque, options: std.process.SpawnOptions) std.process.SpawnError!std.process.Child
  fn failingProcessSpawnPath(userdata: ?*anyopaque, dir: Dir, options: std.process.SpawnOptions) std.process.SpawnError!std.process.Child
  fn failingProgressParentFile(userdata: ?*anyopaque) std.Progress.ParentFileError!File
  fn failingRandomSecure(userdata: ?*anyopaque, buffer: []u8) RandomSecureError!void
  fn futexWait(io: Io, comptime T: type, ptr: *align(@alignOf(u32)) const T, expected: T) Cancelable!void
  fn futexWaitTimeout(io: Io, comptime T: type, ptr: *align(@alignOf(u32)) const T, expected: T, timeout: Timeout) Cancelable!void
  fn futexWaitUncancelable(io: Io, comptime T: type, ptr: *align(@alignOf(u32)) const T, expected: T) void
  fn futexWake(io: Io, comptime T: type, ptr: *align(@alignOf(u32)) const T, max_waiters: u32) void
  fn lockStderr(io: Io, buffer: []u8, terminal_mode: ?Terminal.Mode) Cancelable!LockedStderr
  fn noAsync(userdata: ?*anyopaque, result: []u8, result_alignment: std.mem.Alignment, context: []const u8, context_alignment: std.mem.Alignment, start: *const fn (context: *const anyopaque, result: *anyopaque) void) ?*AnyFuture
  fn noCrashHandler(userdata: ?*anyopaque) void
  fn noDirRead(userdata: ?*anyopaque, dir_reader: *Dir.Reader, buffer: []Dir.Entry) Dir.Reader.Error!usize
  fn noDirSetTimestamps(userdata: ?*anyopaque, dir: Dir, sub_path: []const u8, options: Dir.SetTimestampsOptions) Dir.SetTimestampsError!void
  fn noFileSetTimestamps(userdata: ?*anyopaque, file: File, options: File.SetTimestampsOptions) File.SetTimestampsError!void
  fn noFileWriteFilePositional(userdata: ?*anyopaque, file: File, header: []const u8, file_reader: *Io.File.Reader, limit: Io.Limit, offset: u64) File.WriteFilePositionalError!usize
  fn noFileWriteFileStreaming(userdata: ?*anyopaque, file: File, header: []const u8, file_reader: *Io.File.Reader, limit: Io.Limit) File.Writer.WriteFileError!usize
  fn noFutexWait(userdata: ?*anyopaque, ptr: *const u32, expected: u32, timeout: Timeout) Cancelable!void
  fn noFutexWaitUncancelable(userdata: ?*anyopaque, ptr: *const u32, expected: u32) void
  fn noFutexWake(userdata: ?*anyopaque, ptr: *const u32, max_waiters: u32) void
  fn noGroupAsync(userdata: ?*anyopaque, group: *Group, context: []const u8, context_alignment: std.mem.Alignment, start: *const fn (context: *const anyopaque) void) void
  fn noNow(userdata: ?*anyopaque, clock: Clock) Timestamp
  fn noRandom(userdata: ?*anyopaque, buffer: []u8) void
  fn noSleep(userdata: ?*anyopaque, clock: Timeout) Cancelable!void
  fn noTryLockStderr(userdata: ?*anyopaque, terminal_mode: ?Terminal.Mode) Cancelable!?LockedStderr
  fn operate(io: Io, operation: Operation) Cancelable!Operation.Result
  fn operateTimeout(io: Io, operation: Operation, timeout: Timeout) OperateTimeoutError!Operation.Result
  fn random(io: Io, buffer: []u8) void
  fn randomSecure(io: Io, buffer: []u8) RandomSecureError!void
  fn recancel(io: Io) void
  fn sleep(io: Io, duration: Duration, clock: Clock) Cancelable!void
  fn swapCancelProtection(io: Io, new: CancelProtection) CancelProtection
  fn tryLockStderr(io: Io, buffer: []u8, terminal_mode: ?Terminal.Mode) Cancelable!?LockedStderr
  fn unlockStderr(io: Io) void
  fn unreachableAwait(userdata: ?*anyopaque, any_future: *AnyFuture, result: []u8, result_alignment: std.mem.Alignment) void
  fn unreachableBatchAwaitAsync(userdata: ?*anyopaque, b: *Batch) Cancelable!void
  fn unreachableBatchAwaitConcurrent(userdata: ?*anyopaque, b: *Batch, timeout: Timeout) Batch.AwaitConcurrentError!void
  fn unreachableBatchCancel(userdata: ?*anyopaque, b: *Batch) void
  fn unreachableCancel(userdata: ?*anyopaque, any_future: *AnyFuture, result: []u8, result_alignment: std.mem.Alignment) void
  fn unreachableCheckCancel(userdata: ?*anyopaque) Cancelable!void
  fn unreachableChildKill(userdata: ?*anyopaque, child: *std.process.Child) void
  fn unreachableChildWait(userdata: ?*anyopaque, child: *std.process.Child) std.process.Child.WaitError!std.process.Child.Term
  fn unreachableDirClose(userdata: ?*anyopaque, dirs: []const Dir) void
  fn unreachableFileClose(userdata: ?*anyopaque, files: []const File) void
  fn unreachableFileEnableAnsiEscapeCodes(userdata: ?*anyopaque, file: File) File.EnableAnsiEscapeCodesError!void
  fn unreachableFileIsTty(userdata: ?*anyopaque, file: File) Cancelable!bool
  fn unreachableFileMemoryMapDestroy(userdata: ?*anyopaque, mm: *File.MemoryMap) void
  fn unreachableFileMemoryMapRead(userdata: ?*anyopaque, mm: *File.MemoryMap) File.ReadPositionalError!void
  fn unreachableFileMemoryMapSetLength(userdata: ?*anyopaque, mm: *File.MemoryMap, new_len: usize) File.MemoryMap.SetLengthError!void
  fn unreachableFileMemoryMapWrite(userdata: ?*anyopaque, mm: *File.MemoryMap) File.WritePositionalError!void
  fn unreachableFileSupportsAnsiEscapeCodes(userdata: ?*anyopaque, file: File) Cancelable!bool
  fn unreachableFileUnlock(userdata: ?*anyopaque, file: File) void
  fn unreachableGroupAwait(userdata: ?*anyopaque, group: *Group, token: *anyopaque) Cancelable!void
  fn unreachableGroupCancel(userdata: ?*anyopaque, group: *Group, token: *anyopaque) void
  fn unreachableLockStderr(userdata: ?*anyopaque, terminal_mode: ?Terminal.Mode) Cancelable!LockedStderr
  fn unreachableNetClose(userdata: ?*anyopaque, handle: []const net.Socket.Handle) void
  fn unreachableNetInterfaceName(userdata: ?*anyopaque, interface: net.Interface) net.Interface.NameError!net.Interface.Name
  fn unreachableRecancel(userdata: ?*anyopaque) void
  fn unreachableSwapCancelProtection(userdata: ?*anyopaque, new: CancelProtection) CancelProtection
  fn unreachableUnlockStderr(userdata: ?*anyopaque) void
}

std.json.dynamic {
  const Array = std.array_list.Managed(Value
  const ObjectMap = StringArrayHashMap(Value
  const Value = union(enum)
}

std.json.hashmap {
  fn ArrayHashMap(comptime T: type) type
}

std.json.Scanner {
  const AllocError = Error || Allocator.Error || error{ValueTooLong
  const AllocIntoArrayListError = AllocError || error{BufferUnderrun
  const AllocWhen = enum { alloc_if_needed, alloc_always 
  const Diagnostics = struct
  const Error = error{ SyntaxError, UnexpectedEndOfInput 
  const NextError = Error || Allocator.Error || error{BufferUnderrun
  const PeekError = Error || error{BufferUnderrun
  const Reader = struct
  const SkipError = Error || Allocator.Erro
  const Token = union(enum)
  const TokenType = enum
  const default_buffer_size = 0x100
  const default_max_value_len = 4 * 1024 * 102
  fn allocNextIntoArrayList(self: *@This(), value_list: *std.array_list.Managed(u8), when: AllocWhen) AllocIntoArrayListError!?[]const u8
  fn allocNextIntoArrayListMax(self: *@This(), value_list: *std.array_list.Managed(u8), when: AllocWhen, max_value_len: usize) AllocIntoArrayListError!?[]const u8
  fn deinit(self: *@This()) void
  fn enableDiagnostics(self: *@This(), diagnostics: *Diagnostics) void
  fn endInput(self: *@This()) void
  fn ensureTotalStackCapacity(self: *@This(), height: usize) Allocator.Error!void
  fn feedInput(self: *@This(), input: []const u8) void
  fn initCompleteInput(allocator: Allocator, complete_input: []const u8) @This()
  fn initStreaming(allocator: Allocator) @This()
  fn isNumberFormattedLikeAnInteger(value: []const u8) bool
  fn next(self: *@This()) NextError!Token
  fn nextAlloc(self: *@This(), allocator: Allocator, when: AllocWhen) AllocError!Token
  fn nextAllocMax(self: *@This(), allocator: Allocator, when: AllocWhen, max_value_len: usize) AllocError!Token
  fn peekNextTokenType(self: *@This()) PeekError!TokenType
  fn skipUntilStackHeight(self: *@This(), terminal_stack_height: usize) NextError!void
  fn skipValue(self: *@This()) SkipError!void
  fn stackHeight(self: *const @This()) usize
  fn validate(allocator: Allocator, s: []const u8) Allocator.Error!bool
}

std.json.static {
  const ParseFromValueError = std.fmt.ParseIntError || std.fmt.ParseFloatError || Allocator.Error || erro
  const ParseOptions = struct
  fn ParseError(comptime Source: type) type
  fn Parsed(comptime T: type) type
  fn innerParse(comptime T: type, allocator: Allocator, source: anytype, options: ParseOptions) ParseError(@TypeOf(source.*))!T
  fn innerParseFromValue(comptime T: type, allocator: Allocator, source: Value, options: ParseOptions) ParseFromValueError!T
  fn parseFromSlice(comptime T: type, allocator: Allocator, s: []const u8, options: ParseOptions) ParseError(Scanner)!Parsed(T)
  fn parseFromSliceLeaky(comptime T: type, allocator: Allocator, s: []const u8, options: ParseOptions) ParseError(Scanner)!T
  fn parseFromTokenSource(comptime T: type, allocator: Allocator, scanner_or_reader: anytype, options: ParseOptions) ParseError(@TypeOf(scanner_or_reader.*))!Parsed(T)
  fn parseFromTokenSourceLeaky(comptime T: type, allocator: Allocator, scanner_or_reader: anytype, options: ParseOptions) ParseError(@TypeOf(scanner_or_reader.*))!T
  fn parseFromValue(comptime T: type, allocator: Allocator, source: Value, options: ParseOptions) ParseFromValueError!Parsed(T)
  fn parseFromValueLeaky(comptime T: type, allocator: Allocator, source: Value, options: ParseOptions) ParseFromValueError!T
}

std.json.Stringify {
  const Error = Writer.Erro
  const Options = struct
  fn beginArray(self: *Stringify) Error!void
  fn beginObject(self: *Stringify) Error!void
  fn beginObjectFieldRaw(self: *Stringify) !void
  fn beginWriteRaw(self: *Stringify) !void
  fn encodeJsonString(string: []const u8, options: Options, writer: *Writer) Error!void
  fn encodeJsonStringChars(chars: []const u8, options: Options, writer: *Writer) Error!void
  fn endArray(self: *Stringify) Error!void
  fn endObject(self: *Stringify) Error!void
  fn endObjectFieldRaw(self: *Stringify) void
  fn endWriteRaw(self: *Stringify) void
  fn objectField(self: *Stringify, key: []const u8) Error!void
  fn objectFieldRaw(self: *Stringify, quoted_key: []const u8) Error!void
  fn print(self: *Stringify, comptime fmt: []const u8, args: anytype) Error!void
  fn value(v: anytype, options: Options, writer: *Writer) Error!void
  fn valueAlloc(gpa: Allocator, v: anytype, options: Options) error{OutOfMemory}![]u8
  fn write(self: *Stringify, v: anytype) Error!void
}

std.json {
  const AllocWhen = Scanner.AllocWhe
  const Array = @import("json/dynamic.zig").Arra
  const ArrayHashMap = @import("json/hashmap.zig").ArrayHashMa
  const Diagnostics = Scanner.Diagnostic
  const Error = Scanner.Erro
  const ObjectMap = @import("json/dynamic.zig").ObjectMa
  const ParseError = @import("json/static.zig").ParseErro
  const ParseFromValueError = @import("json/static.zig").ParseFromValueErro
  const ParseOptions = @import("json/static.zig").ParseOption
  const Parsed = @import("json/static.zig").Parse
  const Reader = Scanner.Reade
  const Scanner = @import("json/Scanner.zig"
  const Stringify = @import("json/Stringify.zig"
  const Token = Scanner.Toke
  const TokenType = Scanner.TokenTyp
  const Value = @import("json/dynamic.zig").Valu
  const default_buffer_size = Scanner.default_buffer_siz
  const default_max_value_len = Scanner.default_max_value_le
  const innerParse = @import("json/static.zig").innerPars
  const innerParseFromValue = @import("json/static.zig").innerParseFromValu
  const isNumberFormattedLikeAnInteger = Scanner.isNumberFormattedLikeAnIntege
  const parseFromSlice = @import("json/static.zig").parseFromSlic
  const parseFromSliceLeaky = @import("json/static.zig").parseFromSliceLeak
  const parseFromTokenSource = @import("json/static.zig").parseFromTokenSourc
  const parseFromTokenSourceLeaky = @import("json/static.zig").parseFromTokenSourceLeak
  const parseFromValue = @import("json/static.zig").parseFromValu
  const parseFromValueLeaky = @import("json/static.zig").parseFromValueLeak
  const validate = Scanner.validat
  fn Formatter(comptime T: type) type
  fn fmt(value: anytype, options: Stringify.Options) Formatter(@TypeOf(value))
}

std.leb128 {
  fn writeSignedFixed(comptime l: usize, ptr: *[l]u8, int: std.meta.Int(.signed, l * 7)) void
  fn writeUnsignedExtended(slice: []u8, arg: anytype) void
  fn writeUnsignedFixed(comptime l: usize, ptr: *[l]u8, int: std.meta.Int(.unsigned, l * 7)) void
}

std.log {
  const Level = enum
  const ScopeLevel = struct
  const debug = default.debu
  const default = scoped(default_log_scope
  const default_level: Level = switch (builtin.mode)
  const default_log_scope = .defaul
  const err = default.er
  const info = default.inf
  const terminalMode = std.Options.logTerminalMod
  const warn = default.war
  fn defaultLog(comptime level: Level, comptime scope: @EnumLiteral(), comptime format: []const u8, args: anytype) void
  fn defaultLogFileTerminal(comptime level: Level, comptime scope: @EnumLiteral(), comptime format: []const u8, args: anytype, t: std.Io.Terminal) std.Io.Writer.Error!void
  fn defaultTerminalMode() std.Io.Terminal.Mode
  fn logEnabled(comptime level: Level, comptime scope: @EnumLiteral()) bool
  fn scoped(comptime scope: @EnumLiteral()) type
}

std.macho {
  const BIND_IMMEDIATE_MASK: u8 = 0x0
  const BIND_OPCODE_ADD_ADDR_ULEB: u8 = 0x8
  const BIND_OPCODE_DONE: u8 = 0x0
  const BIND_OPCODE_DO_BIND: u8 = 0x9
  const BIND_OPCODE_DO_BIND_ADD_ADDR_IMM_SCALED: u8 = 0xb
  const BIND_OPCODE_DO_BIND_ADD_ADDR_ULEB: u8 = 0xa
  const BIND_OPCODE_DO_BIND_ULEB_TIMES_SKIPPING_ULEB: u8 = 0xc
  const BIND_OPCODE_MASK: u8 = 0xf
  const BIND_OPCODE_SET_ADDEND_SLEB: u8 = 0x6
  const BIND_OPCODE_SET_DYLIB_ORDINAL_IMM: u8 = 0x1
  const BIND_OPCODE_SET_DYLIB_ORDINAL_ULEB: u8 = 0x2
  const BIND_OPCODE_SET_DYLIB_SPECIAL_IMM: u8 = 0x3
  const BIND_OPCODE_SET_SEGMENT_AND_OFFSET_ULEB: u8 = 0x7
  const BIND_OPCODE_SET_SYMBOL_TRAILING_FLAGS_IMM: u8 = 0x4
  const BIND_OPCODE_SET_TYPE_IMM: u8 = 0x5
  const BIND_SPECIAL_DYLIB_FLAT_LOOKUP: i8 = -
  const BIND_SPECIAL_DYLIB_MAIN_EXECUTABLE: i8 = -
  const BIND_SPECIAL_DYLIB_SELF: i8 = 
  const BIND_SYMBOL_FLAGS_NON_WEAK_DEFINITION: u8 = 0x
  const BIND_SYMBOL_FLAGS_WEAK_IMPORT: u8 = 0x
  const BIND_TYPE_POINTER: u8 = 
  const BIND_TYPE_TEXT_ABSOLUTE32: u8 = 
  const BIND_TYPE_TEXT_PCREL32: u8 = 
  const BlobIndex = extern struct
  const CPU_SUBTYPE_ARM_ALL: cpu_subtype_t = 0x
  const CPU_SUBTYPE_X86_64_ALL: cpu_subtype_t = 0x
  const CPU_TYPE_ARM64: cpu_type_t = 0x0100000
  const CPU_TYPE_X86_64: cpu_type_t = 0x0100000
  const CSMAGIC_BLOBWRAPPER: u32 = 0xfade0b0
  const CSMAGIC_CODEDIRECTORY: u32 = 0xfade0c0
  const CSMAGIC_DETACHED_SIGNATURE: u32 = 0xfade0cc
  const CSMAGIC_EMBEDDED_DER_ENTITLEMENTS: u32 = 0xfade717
  const CSMAGIC_EMBEDDED_ENTITLEMENTS: u32 = 0xfade717
  const CSMAGIC_EMBEDDED_SIGNATURE: u32 = 0xfade0cc
  const CSMAGIC_EMBEDDED_SIGNATURE_OLD: u32 = 0xfade0b0
  const CSMAGIC_REQUIREMENT: u32 = 0xfade0c0
  const CSMAGIC_REQUIREMENTS: u32 = 0xfade0c0
  const CSSLOT_ALTERNATE_CODEDIRECTORIES: u32 = 0x100
  const CSSLOT_ALTERNATE_CODEDIRECTORY_LIMIT: u32 = CSSLOT_ALTERNATE_CODEDIRECTORIES + CSSLOT_ALTERNATE_CODEDIRECTORY_MA
  const CSSLOT_ALTERNATE_CODEDIRECTORY_MAX: u32 = 
  const CSSLOT_APPLICATION: u32 = 
  const CSSLOT_CODEDIRECTORY: u32 = 
  const CSSLOT_DER_ENTITLEMENTS: u32 = 
  const CSSLOT_ENTITLEMENTS: u32 = 
  const CSSLOT_IDENTIFICATIONSLOT: u32 = 0x1000
  const CSSLOT_INFOSLOT: u32 = 
  const CSSLOT_REQUIREMENTS: u32 = 
  const CSSLOT_RESOURCEDIR: u32 = 
  const CSSLOT_SIGNATURESLOT: u32 = 0x1000
  const CSSLOT_TICKETSLOT: u32 = 0x1000
  const CSTYPE_INDEX_ENTITLEMENTS: u32 = 0x0000000
  const CSTYPE_INDEX_REQUIREMENTS: u32 = 0x0000000
  const CS_ADHOC: u32 = 0x
  const CS_CDHASH_LEN: u32 = 2
  const CS_EXECSEG_MAIN_BINARY: u32 = 0x
  const CS_HASHTYPE_SHA1: u8 = 
  const CS_HASHTYPE_SHA256: u8 = 
  const CS_HASHTYPE_SHA256_TRUNCATED: u8 = 
  const CS_HASHTYPE_SHA384: u8 = 
  const CS_HASH_MAX_SIZE: u32 = 4
  const CS_LINKER_SIGNED: u32 = 0x2000
  const CS_SHA1_LEN: u32 = 2
  const CS_SHA256_LEN: u32 = 3
  const CS_SHA256_TRUNCATED_LEN: u32 = 2
  const CS_SIGNER_TYPE_LEGACYVPN: u32 = 
  const CS_SIGNER_TYPE_MAC_APP_STORE: u32 = 
  const CS_SIGNER_TYPE_UNKNOWN: u32 = 
  const CS_SUPPORTSCODELIMIT64: u32 = 0x2030
  const CS_SUPPORTSEXECSEG: u32 = 0x2040
  const CS_SUPPORTSSCATTER: u32 = 0x2010
  const CS_SUPPORTSTEAMID: u32 = 0x2020
  const CodeDirectory = extern struct
  const CompactUnwindEncoding = packed struct(u32)
  const EXPORT_SYMBOL_FLAGS_KIND_ABSOLUTE: u8 = 0x0
  const EXPORT_SYMBOL_FLAGS_KIND_MASK: u8 = 0x0
  const EXPORT_SYMBOL_FLAGS_KIND_REGULAR: u8 = 0x0
  const EXPORT_SYMBOL_FLAGS_KIND_THREAD_LOCAL: u8 = 0x0
  const EXPORT_SYMBOL_FLAGS_REEXPORT: u8 = 0x0
  const EXPORT_SYMBOL_FLAGS_STUB_AND_RESOLVER: u8 = 0x1
  const EXPORT_SYMBOL_FLAGS_WEAK_DEFINITION: u8 = 0x0
  const FAT_CIGAM = 0xbebafec
  const FAT_CIGAM_64 = 0xbfbafec
  const FAT_MAGIC = 0xcafebab
  const FAT_MAGIC_64 = 0xcafebab
  const GenericBlob = extern struct
  const INDIRECT_SYMBOL_ABS: u32 = 0x4000000
  const INDIRECT_SYMBOL_LOCAL: u32 = 0x8000000
  const LC = enum(u32)
  const LC_REQ_DYLD = 0x8000000
  const LoadCommandIterator = struct
  const MH_ALLMODSBOUND = 0x100
  const MH_ALLOW_STACK_EXECUTION = 0x2000
  const MH_APP_EXTENSION_SAFE = 0x0200000
  const MH_BINDATLOAD = 0x
  const MH_BINDS_TO_WEAK = 0x1000
  const MH_BUNDLE = 0x
  const MH_CANONICAL = 0x400
  const MH_CIGAM = 0xcefaedf
  const MH_CIGAM_64 = 0xcffaedf
  const MH_CORE = 0x
  const MH_DEAD_STRIPPABLE_DYLIB = 0x40000
  const MH_DSYM = 0x
  const MH_DYLDLINK = 0x
  const MH_DYLIB = 0x
  const MH_DYLIB_IN_CACHE = 0x8000000
  const MH_DYLIB_STUB = 0x
  const MH_DYLINKER = 0x
  const MH_EXECUTE = 0x
  const MH_FORCE_FLAT = 0x10
  const MH_FVMLIB = 0x
  const MH_HAS_TLV_DESCRIPTORS = 0x80000
  const MH_INCRLINK = 0x
  const MH_KEXT_BUNDLE = 0x
  const MH_LAZY_INIT = 0x4
  const MH_MAGIC = 0xfeedfac
  const MH_MAGIC_64 = 0xfeedfac
  const MH_NLIST_OUTOFSYNC_WITH_DYLDINFO = 0x0400000
  const MH_NOFIXPREBINDING = 0x40
  const MH_NOMULTIDEFS = 0x20
  const MH_NOUNDEFS = 0x
  const MH_NO_HEAP_EXECUTION = 0x100000
  const MH_NO_REEXPORTED_DYLIBS = 0x10000
  const MH_OBJECT = 0x
  const MH_PIE = 0x20000
  const MH_PREBINDABLE = 0x80
  const MH_PREBOUND = 0x1
  const MH_PRELOAD = 0x
  const MH_ROOT_SAFE = 0x4000
  const MH_SETUID_SAFE = 0x8000
  const MH_SIM_SUPPORT = 0x0800000
  const MH_SPLIT_SEGS = 0x2
  const MH_SUBSECTIONS_VIA_SYMBOLS = 0x200
  const MH_TWOLEVEL = 0x8
  const MH_WEAK_DEFINES = 0x800
  const N_ABS = 0x
  const N_AST = 0x3
  const N_BCOMM = 0xe
  const N_BINCL = 0x8
  const N_BNSYM = 0x2
  const N_DESC_DISCARDED: u16 = 0x2
  const N_ECOML = 0xe
  const N_ECOMM = 0xe
  const N_EINCL = 0xa
  const N_ENSYM = 0x4
  const N_ENTRY = 0xa
  const N_EXCL = 0xc
  const N_EXT = 0x0
  const N_FNAME = 0x2
  const N_FUN = 0x2
  const N_GSYM = 0x2
  const N_INDR = 0x
  const N_LBRAC = 0xc
  const N_LCSYM = 0x2
  const N_LENG = 0xf
  const N_LSYM = 0x8
  const N_NO_DEAD_STRIP: u16 = 0x2
  const N_OLEVEL = 0x8
  const N_OPT = 0x3
  const N_OSO = 0x6
  const N_PARAMS = 0x8
  const N_PBUD = 0x
  const N_PEXT = 0x1
  const N_PSYM = 0xa
  const N_RBRAC = 0xe
  const N_RSYM = 0x4
  const N_SECT = 0x
  const N_SLINE = 0x4
  const N_SO = 0x6
  const N_SOL = 0x8
  const N_SSYM = 0x6
  const N_STAB = 0xe
  const N_STSYM = 0x2
  const N_SYMBOL_RESOLVER: u16 = 0x10
  const N_TYPE = 0x0
  const N_UNDF = 0x
  const N_VERSION = 0x8
  const N_WEAK_DEF: u16 = 0x8
  const N_WEAK_REF: u16 = 0x4
  const PLATFORM = enum(u32)
  const PROT = struct
  const REBASE_IMMEDIATE_MASK: u8 = 0x0
  const REBASE_OPCODE_ADD_ADDR_IMM_SCALED: u8 = 0x4
  const REBASE_OPCODE_ADD_ADDR_ULEB: u8 = 0x3
  const REBASE_OPCODE_DONE: u8 = 0x0
  const REBASE_OPCODE_DO_REBASE_ADD_ADDR_ULEB: u8 = 0x7
  const REBASE_OPCODE_DO_REBASE_IMM_TIMES: u8 = 0x5
  const REBASE_OPCODE_DO_REBASE_ULEB_TIMES: u8 = 0x6
  const REBASE_OPCODE_DO_REBASE_ULEB_TIMES_SKIPPING_ULEB: u8 = 0x8
  const REBASE_OPCODE_MASK: u8 = 0xF
  const REBASE_OPCODE_SET_SEGMENT_AND_OFFSET_ULEB: u8 = 0x2
  const REBASE_OPCODE_SET_TYPE_IMM: u8 = 0x1
  const REBASE_TYPE_POINTER: u8 = 
  const REBASE_TYPE_TEXT_ABSOLUTE32: u8 = 
  const REBASE_TYPE_TEXT_PCREL32: u8 = 
  const REFERENCED_DYNAMICALLY: u16 = 0x1
  const REFERENCE_FLAG_DEFINED: u16 = 0x
  const REFERENCE_FLAG_PRIVATE_DEFINED: u16 = 
  const REFERENCE_FLAG_PRIVATE_UNDEFINED_LAZY: u16 = 
  const REFERENCE_FLAG_PRIVATE_UNDEFINED_NON_LAZY: u16 = 
  const REFERENCE_FLAG_UNDEFINED_LAZY: u16 = 0x
  const REFERENCE_FLAG_UNDEFINED_NON_LAZY: u16 = 0x
  const SECTION_ATTRIBUTES = 0xffffff0
  const SECTION_TYPE = 0x000000f
  const SG_FVMLIB = 0x
  const SG_HIGHVM = 0x
  const SG_NORELOC = 0x
  const SG_PROTECTED_VERSION_1 = 0x
  const SG_READ_ONLY = 0x1
  const S_16BYTE_LITERALS = 0x
  const S_4BYTE_LITERALS = 0x
  const S_8BYTE_LITERALS = 0x
  const S_ATTR_DEBUG = 0x0200000
  const S_ATTR_EXT_RELOC = 0x20
  const S_ATTR_LIVE_SUPPORT = 0x800000
  const S_ATTR_LOC_RELOC = 0x10
  const S_ATTR_NO_DEAD_STRIP = 0x1000000
  const S_ATTR_NO_TOC = 0x4000000
  const S_ATTR_PURE_INSTRUCTIONS = 0x8000000
  const S_ATTR_SELF_MODIFYING_CODE = 0x400000
  const S_ATTR_SOME_INSTRUCTIONS = 0x40
  const S_ATTR_STRIP_STATIC_SYMS = 0x2000000
  const S_COALESCED = 0x
  const S_CSTRING_LITERALS = 0x
  const S_DTRACE_DOF = 0x
  const S_GB_ZEROFILL = 0x
  const S_INIT_FUNC_OFFSETS = 0x1
  const S_INTERPOSING = 0x
  const S_LAZY_DYLIB_SYMBOL_POINTERS = 0x1
  const S_LAZY_SYMBOL_POINTERS = 0x
  const S_LITERAL_POINTERS = 0x
  const S_MOD_INIT_FUNC_POINTERS = 0x
  const S_MOD_TERM_FUNC_POINTERS = 0x
  const S_NON_LAZY_SYMBOL_POINTERS = 0x
  const S_REGULAR = 0x
  const S_SYMBOL_STUBS = 0x
  const S_THREAD_LOCAL_INIT_FUNCTION_POINTERS = 0x1
  const S_THREAD_LOCAL_REGULAR = 0x1
  const S_THREAD_LOCAL_VARIABLES = 0x1
  const S_THREAD_LOCAL_VARIABLE_POINTERS = 0x1
  const S_THREAD_LOCAL_ZEROFILL = 0x1
  const S_ZEROFILL = 0x
  const SuperBlob = extern struct
  const TOOL = enum(u32)
  const UNWIND_ARM64_DWARF_SECTION_OFFSET: u32 = 0x00FFFFF
  const UNWIND_ARM64_FRAMELESS_STACK_SIZE_MASK: u32 = 0x00FFF00
  const UNWIND_ARM64_FRAME_D10_D11_PAIR: u32 = 0x0000020
  const UNWIND_ARM64_FRAME_D12_D13_PAIR: u32 = 0x0000040
  const UNWIND_ARM64_FRAME_D14_D15_PAIR: u32 = 0x0000080
  const UNWIND_ARM64_FRAME_D8_D9_PAIR: u32 = 0x0000010
  const UNWIND_ARM64_FRAME_X19_X20_PAIR: u32 = 0x0000000
  const UNWIND_ARM64_FRAME_X21_X22_PAIR: u32 = 0x0000000
  const UNWIND_ARM64_FRAME_X23_X24_PAIR: u32 = 0x0000000
  const UNWIND_ARM64_FRAME_X25_X26_PAIR: u32 = 0x0000000
  const UNWIND_ARM64_FRAME_X27_X28_PAIR: u32 = 0x0000001
  const UNWIND_ARM64_MODE = enum(u4)
  const UNWIND_ARM64_MODE_MASK: u32 = 0x0F00000
  const UNWIND_HAS_LSDA: u32 = 0x4000000
  const UNWIND_IS_NOT_FUNCTION_START: u32 = 0x8000000
  const UNWIND_PERSONALITY_MASK: u32 = 0x3000000
  const UNWIND_SECOND_LEVEL = enum(u32)
  const UNWIND_SECTION_VERSION = 
  const UNWIND_X86_64_DWARF_SECTION_OFFSET: u32 = 0x00FFFFF
  const UNWIND_X86_64_FRAMELESS_STACK_ADJUST: u32 = 0x0000E00
  const UNWIND_X86_64_FRAMELESS_STACK_REG_COUNT: u32 = 0x00001C0
  const UNWIND_X86_64_FRAMELESS_STACK_REG_PERMUTATION: u32 = 0x000003F
  const UNWIND_X86_64_FRAMELESS_STACK_SIZE: u32 = 0x00FF000
  const UNWIND_X86_64_MODE = enum(u4)
  const UNWIND_X86_64_MODE_MASK: u32 = 0x0F00000
  const UNWIND_X86_64_RBP_FRAME_OFFSET: u32 = 0x00FF000
  const UNWIND_X86_64_RBP_FRAME_REGISTERS: u32 = 0x00007FF
  const UNWIND_X86_64_REG = enum(u3)
  const UnwindInfoCompressedEntry = packed struct(u32)
  const build_tool_version = extern struct
  const build_version_command = extern struct
  const compact_unwind_encoding_t = u3
  const compact_unwind_entry = extern struct
  const cpu_subtype_t = c_in
  const cpu_type_t = c_in
  const data_in_code_entry = extern struct
  const dyld_info_command = extern struct
  const dylib = extern struct
  const dylib_command = extern struct
  const dylinker_command = extern struct
  const dysymtab_command = extern struct
  const entry_point_command = extern struct
  const fat_arch = extern struct
  const fat_header = extern struct
  const linkedit_data_command = extern struct
  const load_command = extern struct
  const mach_header = extern struct
  const mach_header_64 = extern struct
  const nlist = extern struct
  const nlist_64 = extern struct
  const reloc_type_arm64 = enum(u4)
  const reloc_type_x86_64 = enum(u4)
  const relocation_info = packed struct
  const rpath_command = extern struct
  const section = extern struct
  const section_64 = extern struct
  const segment_command = extern struct
  const segment_command_64 = extern struct
  const source_version_command = extern struct
  const symtab_command = extern struct
  const unwind_info_compressed_second_level_page_header = extern struct
  const unwind_info_regular_second_level_entry = extern struct
  const unwind_info_regular_second_level_page_header = extern struct
  const unwind_info_section_header = extern struct
  const unwind_info_section_header_index_entry = extern struct
  const unwind_info_section_header_lsda_index_entry = extern struct
  const uuid_command = extern struct
  const version_min_command = extern struct
  const vm_prot_t = packed struct(u32)
}

std.math.acos {
  fn acos(x: anytype) @TypeOf(x)
}

std.math.acosh {
  fn acosh(x: anytype) @TypeOf(x)
}

std.math.asin {
  fn asin(x: anytype) @TypeOf(x)
}

std.math.asinh {
  fn asinh(x: anytype) @TypeOf(x)
}

std.math.atan {
  fn atan(x: anytype) @TypeOf(x)
}

std.math.atan2 {
  fn atan2(y: anytype, x: anytype) @TypeOf(x, y)
}

std.math.atanh {
  fn atanh(x: anytype) @TypeOf(x)
}

std.math.big.int {
  const Const = struct
  const Exactness = enum { inexact, exact 
  const Managed = struct
  const Mutable = struct
  const Round = enum
  const TwosCompIntLimit = enum
  fn addMulLimbWithCarry(a: Limb, b: Limb, c: Limb, carry: *Limb) Limb
  fn calcDivLimbsBufferLen(a_len: usize, b_len: usize) usize
  fn calcLimbLen(scalar: anytype) usize
  fn calcLog10LimbsBufferLen(a_len: usize) usize
  fn calcMulLimbsBufferLen(a_len: usize, b_len: usize, aliases: usize) usize
  fn calcMulWrapLimbsBufferLen(bit_count: usize, a_len: usize, b_len: usize, aliases: usize) usize
  fn calcNonZeroTwosCompLimbCount(bit_count: usize) usize
  fn calcPowLimbsBufferLen(a_bit_count: usize, y: usize) usize
  fn calcSetStringLimbCount(base: u8, string_len: usize) usize
  fn calcSetStringLimbsBufferLen(base: u8, string_len: usize) usize
  fn calcSqrtLimbsBufferLen(a_bit_count: usize) usize
  fn calcToStringLimbsBufferLen(a_len: usize, base: u8) usize
  fn calcTwosCompLimbCount(bit_count: usize) usize
  fn llcmp(a: []const Limb, b: []const Limb) i8
}

std.math.big {
  const DoubleLimb = std.meta.Int(.unsigned, 2 * limb_info.bits
  const HalfLimb = std.meta.Int(.unsigned, limb_info.bits / 2
  const Limb = usiz
  const Log2Limb = std.math.Log2Int(Limb
  const SignedDoubleLimb = std.meta.Int(.signed, 2 * limb_info.bits
  const SignedLimb = std.meta.Int(.signed, limb_info.bits
  const int = @import("big/int.zig"
}

std.math.cbrt {
  fn cbrt(x: anytype) @TypeOf(x)
}

std.math.complex.abs {
  fn abs(z: anytype) @TypeOf(z.re, z.im)
}

std.math.complex.acos {
  fn acos(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.acosh {
  fn acosh(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.arg {
  fn arg(z: anytype) @TypeOf(z.re, z.im)
}

std.math.complex.asin {
  fn asin(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.asinh {
  fn asinh(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.atan {
  fn atan(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.atanh {
  fn atanh(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.conj {
  fn conj(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.cos {
  fn cos(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.cosh {
  fn cosh(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.exp {
  fn exp(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.ldexp {
  fn ldexp_cexp(z: anytype, expt: i32) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.log {
  fn log(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.pow {
  fn pow(z: anytype, s: anytype) Complex(@TypeOf(z.re, z.im, s.re, s.im))
}

std.math.complex.proj {
  fn proj(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.sin {
  fn sin(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.sinh {
  fn sinh(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.sqrt {
  fn sqrt(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.tan {
  fn tan(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex.tanh {
  fn tanh(z: anytype) Complex(@TypeOf(z.re, z.im))
}

std.math.complex {
  const abs = @import("complex/abs.zig").ab
  const acos = @import("complex/acos.zig").aco
  const acosh = @import("complex/acosh.zig").acos
  const arg = @import("complex/arg.zig").ar
  const asin = @import("complex/asin.zig").asi
  const asinh = @import("complex/asinh.zig").asin
  const atan = @import("complex/atan.zig").ata
  const atanh = @import("complex/atanh.zig").atan
  const conj = @import("complex/conj.zig").con
  const cos = @import("complex/cos.zig").co
  const cosh = @import("complex/cosh.zig").cos
  const exp = @import("complex/exp.zig").ex
  const log = @import("complex/log.zig").lo
  const pow = @import("complex/pow.zig").po
  const proj = @import("complex/proj.zig").pro
  const sin = @import("complex/sin.zig").si
  const sinh = @import("complex/sinh.zig").sin
  const sqrt = @import("complex/sqrt.zig").sqr
  const tan = @import("complex/tan.zig").ta
  const tanh = @import("complex/tanh.zig").tan
  fn Complex(comptime T: type) type
}

std.math.copysign {
  fn copysign(magnitude: anytype, sign: @TypeOf(magnitude)) @TypeOf(magnitude)
}

std.math.cosh {
  fn cosh(x: anytype) @TypeOf(x)
}

std.math.expm1 {
  fn expm1(x: anytype) @TypeOf(x)
}

std.math.expo2 {
  fn expo2(x: anytype) @TypeOf(x)
}

std.math.float {
  fn FloatRepr(comptime Float: type) type
  inline fn floatEps(comptime T: type) T
  inline fn floatEpsAt(comptime T: type, x: T) T
  inline fn floatExponentBits(comptime T: type) comptime_int
  inline fn floatExponentMax(comptime T: type) comptime_int
  inline fn floatExponentMin(comptime T: type) comptime_int
  inline fn floatFractionalBits(comptime T: type) comptime_int
  inline fn floatMantissaBits(comptime T: type) comptime_int
  inline fn floatMax(comptime T: type) T
  inline fn floatMin(comptime T: type) T
  inline fn floatTrueMin(comptime T: type) T
  inline fn inf(comptime Type: type) Type
  inline fn nan(comptime Type: type) Type
  inline fn snan(comptime Type: type) Type
}

std.math.frexp {
  fn Frexp(comptime T: type) type
  fn frexp(x: anytype) Frexp(@TypeOf(x))
}

std.math.gamma {
  fn gamma(comptime T: type, x: T) T
  fn lgamma(comptime T: type, x: T) T
}

std.math.gcd {
  fn gcd(a: anytype, b: anytype) @TypeOf(a, b)
}

std.math.hypot {
  fn hypot(x: anytype, y: anytype) @TypeOf(x, y)
}

std.math.ilogb {
  const fp_ilogb0 = minInt(i32
  const fp_ilogbnan = minInt(i32
  fn ilogb(x: anytype) i32
}

std.math.isfinite {
  fn isFinite(x: anytype) bool
}

std.math.isinf {
  inline fn isInf(x: anytype) bool
  inline fn isNegativeInf(x: anytype) bool
  inline fn isPositiveInf(x: anytype) bool
}

std.math.isnan {
  fn isNan(x: anytype) bool
  fn isSignalNan(x: anytype) bool
}

std.math.isnormal {
  fn isNormal(x: anytype) bool
}

std.math.iszero {
  inline fn isNegativeZero(x: anytype) bool
  inline fn isPositiveZero(x: anytype) bool
}

std.math.lcm {
  fn lcm(a: anytype, b: anytype) @TypeOf(a, b)
}

std.math.ldexp {
  fn ldexp(x: anytype, n: i32) @TypeOf(x)
}

std.math.log {
  fn log(comptime T: type, base: T, x: T) T
}

std.math.log10 {
  fn log10(x: anytype) @TypeOf(x)
  fn log10_int(x: anytype) std.math.Log2Int(@TypeOf(x))
}

std.math.log1p {
  fn log1p(x: anytype) @TypeOf(x)
}

std.math.log2 {
  fn log2(x: anytype) @TypeOf(x)
}

std.math.log_int {
  fn log_int(comptime T: type, base: T, x: T) Log2Int(T)
}

std.math.modf {
  fn Modf(comptime T: type) type
  fn modf(x: anytype) Modf(@TypeOf(x))
}

std.math.nextafter {
  fn nextAfter(comptime T: type, x: T, y: T) T
}

std.math.pow {
  fn pow(comptime T: type, x: T, y: T) T
}

std.math.powi {
  fn powi(comptime T: type, x: T, y: T) (erro
}

std.math.scalbn {
  const scalbn = @import("ldexp.zig").ldex
}

std.math.signbit {
  fn signbit(x: anytype) bool
}

std.math.sinh {
  fn sinh(x: anytype) @TypeOf(x)
}

std.math.sqrt {
  fn Sqrt(comptime T: type) type
  fn sqrt(x: anytype) Sqrt(@TypeOf(x))
}

std.math.tanh {
  fn tanh(x: anytype) @TypeOf(x)
}

std.math {
  const AlignCastError = error{UnalignedMemory
  const CompareOperator = enum
  const Complex = complex.Comple
  const F80 = struct
  const FloatRepr = float.FloatRep
  const Frexp = @import("math/frexp.zig").Frex
  const Modf = @import("math/modf.zig").Mod
  const Order = enum
  const Sign = enum(u1) { positive, negative 
  const acos = @import("math/acos.zig").aco
  const acosh = @import("math/acosh.zig").acos
  const asin = @import("math/asin.zig").asi
  const asinh = @import("math/asinh.zig").asin
  const atan = @import("math/atan.zig").ata
  const atan2 = @import("math/atan2.zig").atan
  const atanh = @import("math/atanh.zig").atan
  const big = @import("math/big.zig"
  const cbrt = @import("math/cbrt.zig").cbr
  const complex = @import("math/complex.zig"
  const copysign = @import("math/copysign.zig").copysig
  const cosh = @import("math/cosh.zig").cos
  const deg_per_rad = 57.29577951308232087679815481410517033240547246656432154916024386
  const e = 2.7182818284590452353602874713526624977572470936999
  const expm1 = @import("math/expm1.zig").expm
  const floatEps = float.floatEp
  const floatEpsAt = float.floatEpsA
  const floatExponentBits = float.floatExponentBit
  const floatExponentMax = float.floatExponentMa
  const floatExponentMin = float.floatExponentMi
  const floatFractionalBits = float.floatFractionalBit
  const floatMantissaBits = float.floatMantissaBit
  const floatMax = float.floatMa
  const floatMin = float.floatMi
  const floatTrueMin = float.floatTrueMi
  const frexp = @import("math/frexp.zig").frex
  const gamma = @import("math/gamma.zig").gamm
  const gcd = @import("math/gcd.zig").gc
  const hypot = @import("math/hypot.zig").hypo
  const ilogb = @import("math/ilogb.zig").ilog
  const inf = float.in
  const isFinite = @import("math/isfinite.zig").isFinit
  const isInf = @import("math/isinf.zig").isIn
  const isNan = @import("math/isnan.zig").isNa
  const isNegativeInf = @import("math/isinf.zig").isNegativeIn
  const isNegativeZero = @import("math/iszero.zig").isNegativeZer
  const isNormal = @import("math/isnormal.zig").isNorma
  const isPositiveInf = @import("math/isinf.zig").isPositiveIn
  const isPositiveZero = @import("math/iszero.zig").isPositiveZer
  const isSignalNan = @import("math/isnan.zig").isSignalNa
  const lcm = @import("math/lcm.zig").lc
  const ldexp = @import("math/ldexp.zig").ldex
  const lgamma = @import("math/gamma.zig").lgamm
  const ln10 = 2.30258509299404568401799145468436420
  const ln2 = 0.69314718055994530941723212145817656
  const log = @import("math/log.zig").lo
  const log10 = @import("math/log10.zig").log1
  const log10_int = @import("math/log10.zig").log10_in
  const log10e = 0.43429448190325182765112891891660508
  const log1p = @import("math/log1p.zig").log1
  const log2 = @import("math/log2.zig").log
  const log2e = 1.44269504088896340735992468100189213
  const log_int = @import("math/log_int.zig").log_in
  const modf = @import("math/modf.zig").mod
  const nan = float.na
  const nextAfter = @import("math/nextafter.zig").nextAfte
  const phi = 1.618033988749894848204586834365638117720309179805762862
  const pi = 3.1415926535897932384626433832795028841971693993751
  const pow = @import("math/pow.zig").po
  const powi = @import("math/powi.zig").pow
  const rad_per_deg = 0.017453292519943295769236907684886127134428718885417254560971914
  const scalbn = @import("math/scalbn.zig").scalb
  const signbit = @import("math/signbit.zig").signbi
  const sinh = @import("math/sinh.zig").sin
  const snan = float.sna
  const sqrt = @import("math/sqrt.zig").sqr
  const sqrt1_2 = 0.70710678118654752440084436210484903
  const sqrt2 = 1.41421356237309504880168872420969807
  const tanh = @import("math/tanh.zig").tan
  const tau = 2 * p
  const two_sqrtpi = 1.12837916709551257389615890312154517
  fn ByteAlignedInt(comptime T: type) type
  fn IntFittingRange(comptime from: comptime_int, comptime to: comptime_int) type
  fn Log2Int(comptime T: type) type
  fn Log2IntCeil(comptime T: type) type
  fn Min(comptime A: type, comptime B: type) type
  fn add(comptime T: type, a: T, b: T) (error{Overflow}!T)
  fn alignCast(comptime alignment: Alignment, ptr: anytype) AlignCastError!AlignCastResult(alignment, @TypeOf(ptr))
  fn approxEqAbs(comptime T: type, x: T, y: T, tolerance: T) bool
  fn approxEqRel(comptime T: type, x: T, y: T, tolerance: T) bool
  fn cast(comptime T: type, x: anytype) ?T
  fn ceilPowerOfTwo(comptime T: type, value: T) (error{Overflow}!T)
  fn ceilPowerOfTwoAssert(comptime T: type, value: T) T
  fn ceilPowerOfTwoPromote(comptime T: type, value: T) std.meta.Int(@typeInfo(T).int.signedness, @typeInfo(T).int.bits + 1)
  fn clamp(val: anytype, lower: anytype, upper: anytype) @TypeOf(val, lower, upper)
  fn compare(a: anytype, op: CompareOperator, b: anytype) bool
  fn comptimeMod(num: anytype, comptime denom: comptime_int) IntFittingRange(0, denom - 1)
  fn degreesToRadians(ang: anytype) if (@TypeOf(ang) == comptime_int) comptime_float else @TypeOf(ang)
  fn divCeil(comptime T: type, numerator: T, denominator: T) !T
  fn divExact(comptime T: type, numerator: T, denominator: T) !T
  fn divFloor(comptime T: type, numerator: T, denominator: T) !T
  fn divTrunc(comptime T: type, numerator: T, denominator: T) !T
  fn floorPowerOfTwo(comptime T: type, value: T) T
  fn isPowerOfTwo(int: anytype) bool
  fn lerp(a: anytype, b: anytype, t: anytype) @TypeOf(a, b, t)
  fn log2_int(comptime T: type, x: T) Log2Int(T)
  fn log2_int_ceil(comptime T: type, x: T) Log2IntCeil(T)
  fn lossyCast(comptime T: type, value: anytype) T
  fn maxInt(comptime T: type) comptime_int
  fn minInt(comptime T: type) comptime_int
  fn mod(comptime T: type, numerator: T, denominator: T) !T
  fn mul(comptime T: type, a: T, b: T) (error{Overflow}!T)
  fn mulWide(comptime T: type, a: T, b: T) std.meta.Int(@typeInfo(T).int.signedness, @typeInfo(T).int.bits * 2)
  fn negate(x: anytype) !@TypeOf(x)
  fn negateCast(x: anytype) !std.meta.Int(.signed, @bitSizeOf(@TypeOf(x)))
  fn order(a: anytype, b: anytype) Order
  fn radiansToDegrees(ang: anytype) if (@TypeOf(ang) == comptime_int) comptime_float else @TypeOf(ang)
  fn raiseDivByZero() void
  fn raiseInexact() void
  fn raiseInvalid() void
  fn raiseOverflow() void
  fn raiseUnderflow() void
  fn rem(comptime T: type, numerator: T, denominator: T) !T
  fn rotl(comptime T: type, x: T, r: anytype) T
  fn rotr(comptime T: type, x: T, r: anytype) T
  fn shl(comptime T: type, a: T, shift_amt: anytype) T
  fn shlExact(comptime T: type, a: T, shift_amt: Log2Int(T)) !T
  fn shr(comptime T: type, a: T, shift_amt: anytype) T
  fn sub(comptime T: type, a: T, b: T) (error{Overflow}!T)
  fn wrap(x: anytype, r: anytype) @TypeOf(x)
  inline fn boolMask(comptime MaskInt: type, value: bool) MaskInt
  inline fn ceil(value: anytype) @TypeOf(value)
  inline fn cos(value: anytype) @TypeOf(value)
  inline fn exp(value: anytype) @TypeOf(value)
  inline fn exp2(value: anytype) @TypeOf(value)
  inline fn floor(value: anytype) @TypeOf(value)
  inline fn round(value: anytype) @TypeOf(value)
  inline fn sign(n: anytype) SignOf(@TypeOf(n))
  inline fn sin(value: anytype) @TypeOf(value)
  inline fn tan(value: anytype) @TypeOf(value)
  inline fn trunc(value: anytype) @TypeOf(value)
}

std.mem.Allocator {
  const Error = error{OutOfMemory
  const Log2Align = math.Log2Int(usize
  const VTable = struct
  const failing: Allocator = 
  fn alignedAlloc(self: Allocator, comptime T: type, comptime alignment: ?Alignment, n: usize) Error![]align(if (alignment) |a| a.toByteUnits() else @alignOf(T)) T
  fn alloc(self: Allocator, comptime T: type, n: usize) Error![]T
  fn allocSentinel(self: Allocator, comptime Elem: type, n: usize, comptime sentinel: Elem) Error![:sentinel]Elem
  fn allocWithOptions(self: Allocator, comptime Elem: type, n: usize, comptime optional_alignment: ?Alignment, comptime optional_sentinel: ?Elem) Error!AllocWithOptionsPayload(Elem, optional_alignment, optional_sentinel)
  fn allocWithOptionsRetAddr(self: Allocator, comptime Elem: type, n: usize, comptime optional_alignment: ?Alignment, comptime optional_sentinel: ?Elem, return_address: usize) Error!AllocWithOptionsPayload(Elem, optional_alignment, optional_sentinel)
  fn create(a: Allocator, comptime T: type) Error!*T
  fn destroy(self: Allocator, ptr: anytype) void
  fn dupe(allocator: Allocator, comptime T: type, m: []const T) Error![]T
  fn dupeSentinel(allocator: Allocator, comptime T: type, m: []const T, comptime sentinel: T) Error![:sentinel]T
  fn dupeZ(allocator: Allocator, comptime T: type, m: []const T) Error![:0]T
  fn free(self: Allocator, memory: anytype) void
  fn noAlloc(self: *anyopaque, len: usize, alignment: Alignment, ret_addr: usize) ?[*]u8
  fn noFree(self: *anyopaque, memory: []u8, alignment: Alignment, ret_addr: usize) void
  fn noRemap(self: *anyopaque, memory: []u8, alignment: Alignment, new_len: usize, ret_addr: usize) ?[*]u8
  fn noResize(self: *anyopaque, memory: []u8, alignment: Alignment, new_len: usize, ret_addr: usize) bool
  fn realloc(self: Allocator, old_mem: anytype, new_n: usize) Error!@TypeOf(old_mem)
  fn reallocAdvanced(self: Allocator, old_mem: anytype, new_n: usize, return_address: usize) Error!@TypeOf(old_mem)
  fn remap(self: Allocator, allocation: anytype, new_len: usize) ?@TypeOf(allocation)
  fn resize(self: Allocator, allocation: anytype, new_len: usize) bool
  inline fn allocAdvancedWithRetAdd
  inline fn rawAlloc(a: Allocator, len: usize, alignment: Alignment, ret_addr: usize) ?[*]u8
  inline fn rawFree(a: Allocator, memory: []u8, alignment: Alignment, ret_addr: usize) void
  inline fn rawRemap(a: Allocator, memory: []u8, alignment: Alignment, new_len: usize, ret_addr: usize) ?[*]u8
  inline fn rawResize(a: Allocator, memory: []u8, alignment: Alignment, new_len: usize, ret_addr: usize) bool
}

std.mem {
  const Alignment = enum(math.Log2Int(usize))
  const Allocator = @import("mem/Allocator.zig"
  const DelimiterType = enum { sequence, any, scalar 
  const byte_size_in_bits = 
  const indexOf = fin
  const indexOfAny = findAn
  const indexOfAnyPos = findAnyPo
  const indexOfDiff = findDif
  const indexOfMax = findMa
  const indexOfMin = findMi
  const indexOfMinMax = findMinMa
  const indexOfNone = findNon
  const indexOfNonePos = findNonePo
  const indexOfPos = findPo
  const indexOfPosLinear = findPosLinea
  const indexOfScalar = findScala
  const indexOfScalarPos = findScalarPo
  const indexOfSentinel = findSentine
  const lastIndexOf = findLas
  const lastIndexOfAny = findLastAn
  const lastIndexOfLinear = findLastLinea
  const lastIndexOfNone = findLastNon
  const lastIndexOfScalar = findScalarLas
  const readPackedIntForeign = switch (native_endian)
  const readPackedIntNative = switch (native_endian)
  const writePackedIntForeign = switch (native_endian)
  const writePackedIntNative = switch (native_endian)
  fn ReverseIterator(comptime T: type) type
  fn SplitBackwardsIterator(comptime T: type, comptime delimiter_type: DelimiterType) type
  fn SplitIterator(comptime T: type, comptime delimiter_type: DelimiterType) type
  fn TokenIterator(comptime T: type, comptime delimiter_type: DelimiterType) type
  fn ValidationAllocator(comptime T: type) type
  fn WindowIterator(comptime T: type) type
  fn absorbSentinel(slice: anytype) AbsorbSentinelReturnType(@TypeOf(slice))
  fn alignBackward(comptime T: type, addr: T, alignment: T) T
  fn alignBackwardAnyAlign(comptime T: type, addr: T, alignment: T) T
  fn alignForward(comptime T: type, addr: T, alignment: T) T
  fn alignForwardAnyAlign(comptime T: type, addr: T, alignment: T) T
  fn alignForwardLog2(addr: usize, log2_alignment: u8) usize
  fn alignInBytes(bytes: []u8, comptime new_alignment: usize) ?[]align(new_alignment) u8
  fn alignInSlice(slice: anytype, comptime new_alignment: usize) ?AlignedSlice(@TypeOf(slice), new_alignment)
  fn alignPointer(ptr: anytype, align_to: usize) ?@TypeOf(ptr)
  fn alignPointerOffset(ptr: anytype, align_to: usize) ?usize
  fn allEqual(comptime T: type, slice: []const T, scalar: T) bool
  fn asBytes(ptr: anytype) AsBytesReturnType(@TypeOf(ptr))
  fn bigToNative(comptime T: type, x: T) T
  fn boundedOrderZ(comptime T: type, lhs: [*:0]const T, rhs: [*:0]const T, bound: usize) math.Order
  fn byteSwapAllElements(comptime Elem: type, slice: []Elem) void
  fn byteSwapAllFields(comptime S: type, ptr: *S) void
  fn byteSwapAllFieldsAligned(comptime S: type, comptime a: Alignment, ptr: *align(a.toByteUnits()) S) void
  fn bytesAsSlice(comptime T: type, bytes: anytype) BytesAsSliceReturnType(T, @TypeOf(bytes))
  fn bytesAsValue(comptime T: type, bytes: anytype) BytesAsValueReturnType(T, @TypeOf(bytes))
  fn bytesToValue(comptime T: type, bytes: anytype) T
  fn collapseRepeats(comptime T: type, slice: []T, elem: T) []T
  fn collapseRepeatsLen(comptime T: type, slice: []T, elem: T) usize
  fn concat(allocator: Allocator, comptime T: type, slices: []const []const T) Allocator.Error![]T
  fn concatMaybeSentinel(allocator: Allocator, comptime T: type, slices: []const []const T, comptime s: ?T) Allocator.Error![]T
  fn concatWithSentinel(allocator: Allocator, comptime T: type, slices: []const []const T, comptime s: T) Allocator.Error![:s]T
  fn containsAtLeast(comptime T: type, haystack: []const T, expected_count: usize, needle: []const T) bool
  fn containsAtLeastScalar(comptime T: type, list: []const T, minimum: usize, element: T) bool
  fn containsAtLeastScalar2(comptime T: type, list: []const T, element: T, minimum: usize) bool
  fn copyBackwards(comptime T: type, dest: []T, source: []const T) void
  fn copyForwards(comptime T: type, dest: []T, source: []const T) void
  fn count(comptime T: type, haystack: []const T, needle: []const T) usize
  fn countScalar(comptime T: type, list: []const T, element: T) usize
  fn cut(comptime T: type, haystack: []const T, needle: []const T) ?struct { []const T, []const T }
  fn cutLast(comptime T: type, haystack: []const T, needle: []const T) ?struct { []const T, []const T }
  fn cutPrefix(comptime T: type, slice: []const T, prefix: []const T) ?[]const T
  fn cutScalar(comptime T: type, haystack: []const T, needle: T) ?struct { []const T, []const T }
  fn cutScalarLast(comptime T: type, haystack: []const T, needle: T) ?struct { []const T, []const T }
  fn cutSuffix(comptime T: type, slice: []const T, suffix: []const T) ?[]const T
  fn doNotOptimizeAway(val: anytype) void
  fn endsWith(comptime T: type, haystack: []const T, needle: []const T) bool
  fn eql(comptime T: type, a: []const T, b: []const T) bool
  fn find(comptime T: type, haystack: []const T, needle: []const T) ?usize
  fn findAny(comptime T: type, slice: []const T, values: []const T) ?usize
  fn findAnyPos(comptime T: type, slice: []const T, start_index: usize, values: []const T) ?usize
  fn findDiff(comptime T: type, a: []const T, b: []const T) ?usize
  fn findLast(comptime T: type, haystack: []const T, needle: []const T) ?usize
  fn findLastAny(comptime T: type, slice: []const T, values: []const T) ?usize
  fn findLastLinear(comptime T: type, haystack: []const T, needle: []const T) ?usize
  fn findLastNone(comptime T: type, slice: []const T, values: []const T) ?usize
  fn findMax(comptime T: type, slice: []const T) usize
  fn findMin(comptime T: type, slice: []const T) usize
  fn findMinMax(comptime T: type, slice: []const T) struct { usize, usize }
  fn findNone(comptime T: type, slice: []const T, values: []const T) ?usize
  fn findNonePos(comptime T: type, slice: []const T, start_index: usize, values: []const T) ?usize
  fn findPos(comptime T: type, haystack: []const T, start_index: usize, needle: []const T) ?usize
  fn findPosLinear(comptime T: type, haystack: []const T, start_index: usize, needle: []const T) ?usize
  fn findScalar(comptime T: type, slice: []const T, value: T) ?usize
  fn findScalarLast(comptime T: type, slice: []const T, value: T) ?usize
  fn findScalarPos(comptime T: type, slice: []const T, start_index: usize, value: T) ?usize
  fn findSentinel(comptime T: type, comptime sentinel: T, p: [*:sentinel]const T) usize
  fn isAligned(addr: usize, alignment: usize) bool
  fn isAlignedAnyAlign(i: usize, alignment: usize) bool
  fn isAlignedGeneric(comptime T: type, addr: T, alignment: T) bool
  fn isAlignedLog2(addr: usize, log2_alignment: u8) bool
  fn isValidAlign(alignment: usize) bool
  fn isValidAlignGeneric(comptime T: type, alignment: T) bool
  fn join(allocator: Allocator, separator: []const u8, slices: []const []const u8) Allocator.Error![]u8
  fn joinZ(allocator: Allocator, separator: []const u8, slices: []const []const u8) Allocator.Error![:0]u8
  fn len(value: anytype) usize
  fn lessThan(comptime T: type, lhs: []const T, rhs: []const T) bool
  fn littleToNative(comptime T: type, x: T) T
  fn max(comptime T: type, slice: []const T) T
  fn min(comptime T: type, slice: []const T) T
  fn minMax(comptime T: type, slice: []const T) struct { T, T }
  fn nativeTo(comptime T: type, x: T, desired_endianness: Endian) T
  fn nativeToBig(comptime T: type, x: T) T
  fn nativeToLittle(comptime T: type, x: T) T
  fn order(comptime T: type, lhs: []const T, rhs: []const T) math.Order
  fn orderZ(comptime T: type, lhs: [*:0]const T, rhs: [*:0]const T) math.Order
  fn readPackedInt(comptime T: type, bytes: []const u8, bit_offset: usize, endian: Endian) T
  fn readVarInt(comptime ReturnType: type, bytes: []const u8, endian: Endian) ReturnType
  fn readVarPackedInt(comptime T: type, bytes: []const u8, bit_offset: usize, bit_count: usize, endian: std.builtin.Endian, signedness: std.builtin.Signedness) T
  fn replace(comptime T: type, input: []const T, needle: []const T, replacement: []const T, output: []T) usize
  fn replaceOwned(comptime T: type, allocator: Allocator, input: []const T, needle: []const T, replacement: []const T) Allocator.Error![]T
  fn replaceScalar(comptime T: type, slice: []T, match: T, replacement: T) void
  fn replacementSize(comptime T: type, input: []const T, needle: []const T, replacement: []const T) usize
  fn reverse(comptime T: type, items: []T) void
  fn reverseIterator(slice: anytype) ReverseIterator(@TypeOf(slice))
  fn rotate(comptime T: type, items: []T, amount: usize) void
  fn sliceAsBytes(slice: anytype) SliceAsBytesReturnType(@TypeOf(slice))
  fn sliceTo(ptr: anytype, comptime end: std.meta.Elem(@TypeOf(ptr))) SliceTo(@TypeOf(ptr), end)
  fn sort(comptime T: type, items: []T, context: anytype, comptime lessThanFn: fn (@TypeOf(context), lhs: T, rhs: T) bool) void
  fn sortContext(a: usize, b: usize, context: anytype) void
  fn sortUnstable(comptime T: type, items: []T, context: anytype, comptime lessThanFn: fn (@TypeOf(context), lhs: T, rhs: T) bool) void
  fn sortUnstableContext(a: usize, b: usize, context: anytype) void
  fn span(ptr: anytype) Span(@TypeOf(ptr))
  fn splitAny(comptime T: type, buffer: []const T, delimiters: []const T) SplitIterator(T, .any)
  fn splitBackwardsAny(comptime T: type, buffer: []const T, delimiters: []const T) SplitBackwardsIterator(T, .any)
  fn splitBackwardsScalar(comptime T: type, buffer: []const T, delimiter: T) SplitBackwardsIterator(T, .scalar)
  fn splitBackwardsSequence(comptime T: type, buffer: []const T, delimiter: []const T) SplitBackwardsIterator(T, .sequence)
  fn splitScalar(comptime T: type, buffer: []const T, delimiter: T) SplitIterator(T, .scalar)
  fn splitSequence(comptime T: type, buffer: []const T, delimiter: []const T) SplitIterator(T, .sequence)
  fn startsWith(comptime T: type, haystack: []const T, needle: []const T) bool
  fn swap(comptime T: type, noalias a: *T, noalias b: *T) void
  fn toBytes(value: anytype) [@sizeOf(@TypeOf(value))]u8
  fn toNative(comptime T: type, x: T, endianness_of_x: Endian) T
  fn tokenizeAny(comptime T: type, buffer: []const T, delimiters: []const T) TokenIterator(T, .any)
  fn tokenizeScalar(comptime T: type, buffer: []const T, delimiter: T) TokenIterator(T, .scalar)
  fn tokenizeSequence(comptime T: type, buffer: []const T, delimiter: []const T) TokenIterator(T, .sequence)
  fn trim(comptime T: type, slice: []const T, values_to_strip: []const T) []const T
  fn trimEnd(comptime T: type, slice: []const T, values_to_strip: []const T) []const T
  fn trimStart(comptime T: type, slice: []const T, values_to_strip: []const T) []const T
  fn validationWrap(allocator: anytype) ValidationAllocator(@TypeOf(allocator))
  fn window(comptime T: type, buffer: []const T, size: usize, advance: usize) WindowIterator(T)
  fn writePackedInt(comptime T: type, bytes: []u8, bit_offset: usize, value: T, endian: Endian) void
  fn writeVarPackedInt(bytes: []u8, bit_offset: usize, bit_count: usize, value: anytype, endian: std.builtin.Endian) void
  fn zeroInit(comptime T: type, init: anytype) T
  fn zeroes(comptime T: type) T
  inline fn readInt(comptime T: type, buffer: *const [@divExact(@typeInfo(T).int.bits, 8)]u8, endian: Endian) T
  inline fn writeInt(comptime T: type, buffer: *[@divExact(@typeInfo(T).int.bits, 8)]u8, value: T, endian: Endian) void
}

std.meta.trailer_flags {
  fn TrailerFlags(comptime Fields: type) type
}

std.meta {
  const TrailerFlags = @import("meta/trailer_flags.zig").TrailerFlag
  fn ArgsTuple(comptime Function: type) type
  fn Child(comptime T: type) type
  fn DeclEnum(comptime T: type) type
  fn Elem(comptime T: type) type
  fn FieldEnum(comptime T: type) type
  fn Float(comptime bit_count: u8) type
  fn Int(comptime signedness: std.builtin.Signedness, comptime bit_count: u16) type
  fn Sentinel(comptime T: type, comptime sentinel_val: Elem(T)) type
  fn Tag(comptime T: type) type
  fn Tuple(comptime types: []const type) type
  fn activeTag(u: anytype) Tag(@TypeOf(u))
  fn alignment(comptime T: type) comptime_int
  fn containerLayout(comptime T: type) Type.ContainerLayout
  fn declarationInfo(comptime T: type, comptime decl_name: []const u8) Type.Declaration
  fn declarations(comptime T: type) []const Type.Declaration
  fn eql(a: anytype, b: @TypeOf(a)) bool
  fn fieldIndex(comptime T: type, comptime name: []const u8) ?comptime_int
  fn fieldInfo(comptime T: type, comptime field: FieldEnum(T)) switch (@typeInfo(T))
  fn fieldNames(comptime T: type) *const [fields(T).len][:0]const u8
  fn isError(error_union: anytype) bool
  fn stringToEnum(comptime T: type, str: []const u8) ?T
  fn tags(comptime T: type) *const [fields(T).len]T
  inline fn fields(comptime T: type) switch (@typeInfo(T))
  inline fn hasFn(comptime T: type, comptime name: []const u8) bool
  inline fn hasMethod(comptime T: type, comptime name: []const u8) bool
  inline fn hasUniqueRepresentation(comptime T: type) bool
  inline fn sentinel(comptime T: type) ?Elem(T)
}

std.multi_array_list {
  fn MultiArrayList(comptime T: type) type
}

std.os.emscripten {
  const AF = linux.A
  const CLOCK = linux.CLOC
  const CPU_SETSIZE = 12
  const E = enum(u16)
  const F = struct
  const FD_CLOEXEC = 
  const FILE = c.FIL
  const F_OK = 
  const Flock = extern struct
  const IFNAMESIZE = 1
  const IOV_MAX = 102
  const IPPORT_RESERVED = 102
  const IPPROTO = linux.IPPROT
  const LOCK = struct
  const LOG = struct
  const MADV = struct
  const MSF = struct
  const MSG = struct
  const NAME_MAX = 25
  const PATH_MAX = 409
  const PF = linux.P
  const POLL = struct
  const PROMISE = struct
  const PROT = packed struct(u32)
  const RLIM = struct
  const R_OK = 
  const S = struct
  const SA = struct
  const SEEK = struct
  const SHUT = struct
  const SIG = linux.SI
  const SIOCGIFINDEX = 0x893
  const SO = struct
  const SOCK = struct
  const SOL = struct
  const STDERR_FILENO = 
  const STDIN_FILENO = 
  const STDOUT_FILENO = 
  const Sigaction = extern struct
  const Stat = extern struct
  const TCP = struct
  const TCSA = std.posix.TCS
  const TIMING = struct
  const UTIME = struct
  const W = struct
  const W_OK = 
  const X_OK = 
  const addrinfo = c.addrinf
  const blkcnt_t = i3
  const blksize_t = i3
  const clock_t = i3
  const cpu_count_t = std.meta.Int(.unsigned, std.math.log2(CPU_SETSIZE * 8)
  const cpu_set_t = [CPU_SETSIZE / @sizeOf(usize)]usiz
  const dev_t = u3
  const dl_phdr_info = extern struct
  const em_arg_callback_func = ?*const fn (?*anyopaque) callconv(.c) voi
  const em_async_wget2_data_onerror_func = ?*const fn (c_uint, ?*anyopaque, c_int, [*:0]const u8) callconv(.c) voi
  const em_async_wget2_data_onload_func = ?*const fn (c_uint, ?*anyopaque, ?*anyopaque, c_uint) callconv(.c) voi
  const em_async_wget2_data_onprogress_func = ?*const fn (c_uint, ?*anyopaque, c_int, c_int) callconv(.c) voi
  const em_async_wget2_onload_func = ?*const fn (c_uint, ?*anyopaque, [*:0]const u8) callconv(.c) voi
  const em_async_wget2_onstatus_func = ?*const fn (c_uint, ?*anyopaque, c_int) callconv(.c) voi
  const em_async_wget_onload_func = ?*const fn (?*anyopaque, ?*anyopaque, c_int) callconv(.c) voi
  const em_callback_func = ?*const fn () callconv(.c) voi
  const em_dlopen_callback = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) voi
  const em_idb_exists_func = ?*const fn (?*anyopaque, c_int) callconv(.c) voi
  const em_idb_onload_func = ?*const fn (?*anyopaque, ?*anyopaque, c_int) callconv(.c) voi
  const em_promise_callback_t = ?*const fn (?*?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) em_promise_result_
  const em_promise_result_t = enum_em_promise_result_
  const em_promise_t = ?*struct__em_promis
  const em_run_preload_plugins_data_onload_func = ?*const fn (?*anyopaque, [*:0]const u8) callconv(.c) voi
  const em_scan_func = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) voi
  const em_settled_result_t = struct_em_settled_result_
  const em_socket_callback = ?*const fn (c_int, ?*anyopaque) callconv(.c) voi
  const em_socket_error_callback = ?*const fn (c_int, c_int, [*:0]const u8, ?*anyopaque) callconv(.c) voi
  const em_str_callback_func = ?*const fn ([*:0]const u8) callconv(.c) voi
  const em_worker_callback_func = ?*const fn ([*]u8, c_int, ?*anyopaque) callconv(.c) voi
  const enum_em_promise_result_t = c_uin
  const fd_t = c.fd_
  const gid_t = u3
  const in_port_t = c.in_port_
  const ino_t = u6
  const mode_t = u3
  const msghdr = std.c.msghd
  const msghdr_const = std.c.msghd
  const nfds_t = usiz
  const nlink_t = u3
  const off_t = i6
  const pid_t = i3
  const pollfd = extern struct
  const rlim_t = u6
  const rlimit = c.rlimi
  const rlimit_resource = enum(c_int)
  const rusage = extern struct
  const sa_family_t = c.sa_family_
  const siginfo_t = extern struct
  const sigset_t = [1024 / 32]u3
  const sigval = extern union
  const sockaddr = c.sockadd
  const socklen_t = c.socklen_
  const stack_t = extern struct
  const struct__em_promise = opaque {
  const struct_em_settled_result_t = extern struct
  const time_t = c_longlon
  const timespec = extern struct
  const timeval = extern struct
  const timezone = extern struct
  const uid_t = u3
  const utsname = extern struct
  const worker_handle = c_in
  extern "c" fn _emscripten_push_main_loop_blocker(func: em_arg_callback_func, arg: ?*anyopaque, name: [*:0]const u8) voi
  extern "c" fn _emscripten_push_uncounted_main_loop_blocker(func: em_arg_callback_func, arg: ?*anyopaque, name: [*:0]const u8) voi
  extern "c" fn emscripten_async_call(func: em_arg_callback_func, arg: ?*anyopaque, millis: c_int) voi
  extern "c" fn emscripten_async_load_script(script: [*:0]const u8, onload: em_callback_func, onerror: em_callback_func) voi
  extern "c" fn emscripten_async_run_script(script: [*:0]const u8, millis: c_int) voi
  extern "c" fn emscripten_async_wget(url: [*:0]const u8, file: [*:0]const u8, onload: em_str_callback_func, onerror: em_str_callback_func) voi
  extern "c" fn emscripten_async_wget2(url: [*:0]const u8, file: [*:0]const u8, requesttype: [*:0]const u8, param: [*:0]const u8, arg: ?*anyopaque, onload: em_async_wget2_onload_func, onerror: em_async_wget2_onstatus_func, onprogress: em_async_wget2_onstatus_func) c_in
  extern "c" fn emscripten_async_wget2_abort(handle: c_int) voi
  extern "c" fn emscripten_async_wget2_data(url: [*:0]const u8, requesttype: [*:0]const u8, param: [*:0]const u8, arg: ?*anyopaque, free: c_int, onload: em_async_wget2_data_onload_func, onerror: em_async_wget2_data_onerror_func, onprogress: em_async_wget2_data_onprogress_func) c_in
  extern "c" fn emscripten_async_wget_data(url: [*:0]const u8, arg: ?*anyopaque, onload: em_async_wget_onload_func, onerror: em_arg_callback_func) voi
  extern "c" fn emscripten_call_worker(worker: worker_handle, funcname: [*:0]const u8, data: [*]u8, size: c_int, callback: em_worker_callback_func, arg: ?*anyopaque) voi
  extern "c" fn emscripten_cancel_main_loop() voi
  extern "c" fn emscripten_create_worker(url: [*:0]const u8) worker_handl
  extern "c" fn emscripten_debugger() voi
  extern "c" fn emscripten_destroy_worker(worker: worker_handle) voi
  extern "c" fn emscripten_dlopen(filename: [*:0]const u8, flags: c_int, user_data: ?*anyopaque, onsuccess: em_dlopen_callback, onerror: em_arg_callback_func) voi
  extern "c" fn emscripten_dlopen_promise(filename: [*:0]const u8, flags: c_int) em_promise_
  extern "c" fn emscripten_exit_with_live_runtime() noretur
  extern "c" fn emscripten_force_exit(status: c_int) noretur
  extern "c" fn emscripten_get_callstack(flags: c_int, out: ?[*]u8, maxbytes: c_int) c_in
  extern "c" fn emscripten_get_canvas_size(width: *c_int, height: *c_int, isFullscreen: *c_int) voi
  extern "c" fn emscripten_get_compiler_setting(name: [*:0]const u8) c_lon
  extern "c" fn emscripten_get_device_pixel_ratio() f6
  extern "c" fn emscripten_get_main_loop_timing(mode: *c_int, value: *c_int) voi
  extern "c" fn emscripten_get_now() f6
  extern "c" fn emscripten_get_preloaded_image_data(path: [*:0]const u8, w: *c_int, h: *c_int) ?[*]u
  extern "c" fn emscripten_get_preloaded_image_data_from_FILE(file: *FILE, w: *c_int, h: *c_int) ?[*]u
  extern "c" fn emscripten_get_screen_size(width: *c_int, height: *c_int) voi
  extern "c" fn emscripten_get_window_title() [*:0]u
  extern "c" fn emscripten_get_worker_queue_size(worker: worker_handle) c_in
  extern "c" fn emscripten_has_asyncify() c_in
  extern "c" fn emscripten_hide_mouse() voi
  extern "c" fn emscripten_idb_async_delete(db_name: [*:0]const u8, file_id: [*:0]const u8, arg: ?*anyopaque, ondelete: em_arg_callback_func, onerror: em_arg_callback_func) voi
  extern "c" fn emscripten_idb_async_exists(db_name: [*:0]const u8, file_id: [*:0]const u8, arg: ?*anyopaque, oncheck: em_idb_exists_func, onerror: em_arg_callback_func) voi
  extern "c" fn emscripten_idb_async_load(db_name: [*:0]const u8, file_id: [*:0]const u8, arg: ?*anyopaque, onload: em_idb_onload_func, onerror: em_arg_callback_func) voi
  extern "c" fn emscripten_idb_async_store(db_name: [*:0]const u8, file_id: [*:0]const u8, ptr: ?*anyopaque, num: c_int, arg: ?*anyopaque, onstore: em_arg_callback_func, onerror: em_arg_callback_func) voi
  extern "c" fn emscripten_idb_delete(db_name: [*:0]const u8, file_id: [*:0]const u8, perror: *c_int) voi
  extern "c" fn emscripten_idb_exists(db_name: [*:0]const u8, file_id: [*:0]const u8, pexists: *c_int, perror: *c_int) voi
  extern "c" fn emscripten_idb_free_blob(blob: c_int) voi
  extern "c" fn emscripten_idb_load(db_name: [*:0]const u8, file_id: [*:0]const u8, pbuffer: *?*anyopaque, pnum: *c_int, perror: *c_int) voi
  extern "c" fn emscripten_idb_load_blob(db_name: [*:0]const u8, file_id: [*:0]const u8, pblob: *c_int, perror: *c_int) voi
  extern "c" fn emscripten_idb_read_from_blob(blob: c_int, start: c_int, num: c_int, buffer: ?*anyopaque) voi
  extern "c" fn emscripten_idb_store(db_name: [*:0]const u8, file_id: [*:0]const u8, buffer: *anyopaque, num: c_int, perror: *c_int) voi
  extern "c" fn emscripten_idb_store_blob(db_name: [*:0]const u8, file_id: [*:0]const u8, buffer: *anyopaque, num: c_int, perror: *c_int) voi
  extern "c" fn emscripten_lazy_load_code() voi
  extern "c" fn emscripten_log(flags: c_int, format: [*:0]const u8, ...) voi
  extern "c" fn emscripten_pause_main_loop() voi
  extern "c" fn emscripten_print_double(x: f64, to: ?[*]u8, max: c_int) c_in
  extern "c" fn emscripten_promise_all(promises: [*]em_promise_t, results: ?[*]?*anyopaque, num_promises: usize) em_promise_
  extern "c" fn emscripten_promise_create() em_promise_
  extern "c" fn emscripten_promise_destroy(promise: em_promise_t) voi
  extern "c" fn emscripten_promise_resolve(promise: em_promise_t, result: em_promise_result_t, value: ?*anyopaque) voi
  extern "c" fn emscripten_promise_then(promise: em_promise_t, on_fulfilled: em_promise_callback_t, on_rejected: em_promise_callback_t, data: ?*anyopaque) em_promise_
  extern "c" fn emscripten_random() f3
  extern "c" fn emscripten_resume_main_loop() voi
  extern "c" fn emscripten_run_preload_plugins(file: [*:0]const u8, onload: em_str_callback_func, onerror: em_str_callback_func) c_in
  extern "c" fn emscripten_run_preload_plugins_data(data: [*]u8, size: c_int, suffix: [*:0]const u8, arg: ?*anyopaque, onload: em_run_preload_plugins_data_onload_func, onerror: em_arg_callback_func) voi
  extern "c" fn emscripten_run_script(script: [*:0]const u8) voi
  extern "c" fn emscripten_run_script_int(script: [*:0]const u8) c_in
  extern "c" fn emscripten_run_script_string(script: [*:0]const u8) ?[*:0]u
  extern "c" fn emscripten_scan_registers(func: em_scan_func) voi
  extern "c" fn emscripten_scan_stack(func: em_scan_func) voi
  extern "c" fn emscripten_set_canvas_size(width: c_int, height: c_int) voi
  extern "c" fn emscripten_set_main_loop(func: em_callback_func, fps: c_int, simulate_infinite_loop: c_int) voi
  extern "c" fn emscripten_set_main_loop_arg(func: em_arg_callback_func, arg: ?*anyopaque, fps: c_int, simulate_infinite_loop: c_int) voi
  extern "c" fn emscripten_set_main_loop_expected_blockers(num: c_int) voi
  extern "c" fn emscripten_set_main_loop_timing(mode: c_int, value: c_int) c_in
  extern "c" fn emscripten_set_socket_close_callback(userData: ?*anyopaque, callback: em_socket_callback) voi
  extern "c" fn emscripten_set_socket_connection_callback(userData: ?*anyopaque, callback: em_socket_callback) voi
  extern "c" fn emscripten_set_socket_error_callback(userData: ?*anyopaque, callback: em_socket_error_callback) voi
  extern "c" fn emscripten_set_socket_listen_callback(userData: ?*anyopaque, callback: em_socket_callback) voi
  extern "c" fn emscripten_set_socket_message_callback(userData: ?*anyopaque, callback: em_socket_callback) voi
  extern "c" fn emscripten_set_socket_open_callback(userData: ?*anyopaque, callback: em_socket_callback) voi
  extern "c" fn emscripten_set_window_title([*:0]const u8) voi
  extern "c" fn emscripten_sleep(ms: c_uint) voi
  extern "c" fn emscripten_throw_number(number: f64) voi
  extern "c" fn emscripten_throw_string(utf8String: [*:0]const u8) voi
  extern "c" fn emscripten_wget(url: [*:0]const u8, file: [*:0]const u8) c_in
  extern "c" fn emscripten_wget_data(url: [*:0]const u8, pbuffer: *(?*anyopaque), pnum: *c_int, perror: *c_int) voi
  extern "c" fn emscripten_worker_respond(data: [*]u8, size: c_int) voi
  extern "c" fn emscripten_worker_respond_provisionally(data: [*]u8, size: c_int) voi
  fn CPU_COUNT(set: cpu_set_t) cpu_count_t
  fn sigemptyset() sigset_t
}

std.os.linux.aarch64 {
  const VDSO = struct
  const restore = restore_r
  const time_t = i6
  fn clone() callconv(.naked) u64
  fn restore_rt() callconv(.naked) noreturn
  fn syscall0(number: SYS) u64
  fn syscall1(number: SYS, arg1: u64) u64
  fn syscall2(number: SYS, arg1: u64, arg2: u64) u64
  fn syscall3(number: SYS, arg1: u64, arg2: u64, arg3: u64) u64
  fn syscall4(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64) u64
  fn syscall5(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64) u64
  fn syscall6(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64, arg6: u64) u64
}

std.os.linux.arm {
  const HWCAP = struct
  const VDSO = struct
  const time_t = i3
  fn clone() callconv(.naked) u32
  fn restore() callconv(.naked) noreturn
  fn restore_rt() callconv(.naked) noreturn
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.bpf.btf {
  const Array = extern struct
  const DeclTag = extern struct
  const Enum = extern struct
  const Enum64 = extern struct
  const FuncLinkage = enum
  const Header = extern struct
  const IntInfo = packed struct(u32)
  const Kind = enum(u5)
  const Member = extern struct
  const Param = extern struct
  const Type = extern struct
  const Var = extern struct
  const VarLinkage = enum
  const VarSecInfo = extern struct
  const ext = @import("btf_ext.zig"
  const magic = 0xeb9
  const max_name_offset = 0xfffff
  const max_type = 0xffff
  const max_vlen = 0xfff
  const version = 
}

std.os.linux.bpf.btf_ext {
  const Header = packed struct
  const InfoSec = packed struct
}

std.os.linux.bpf.helpers {
  const bind: *align(1) const fn (ctx: *kern.BpfSockAddr, addr: *kern.SockAddr, addr_len: c_int) c_long = @ptrFromInt(64
  const bprm_opts_set: *align(1) const fn (?*kern.BinPrm, u64) c_long = @ptrFromInt(159
  const btf_find_by_name_kind: *align(1) const fn ([*c]u8, c_int, u32, c_int) c_long = @ptrFromInt(167
  const cgrp_storage_delete: *align(1) const fn (?*anyopaque, ?*kern.Cgroup) c_long = @ptrFromInt(211
  const cgrp_storage_get: *align(1) const fn (?*anyopaque, ?*kern.Cgroup, ?*anyopaque, u64) ?*anyopaque = @ptrFromInt(210
  const check_mtu: *align(1) const fn (?*anyopaque, u32, [*c]u32, i32, u64) c_long = @ptrFromInt(163
  const clone_redirect: *align(1) const fn (skb: *kern.SkBuff, ifindex: u32, flags: u64) c_long = @ptrFromInt(13
  const copy_from_user: *align(1) const fn (?*anyopaque, u32, ?*const anyopaque) c_long = @ptrFromInt(148
  const copy_from_user_task: *align(1) const fn (?*anyopaque, u32, ?*const anyopaque, ?*kern.Task, u64) c_long = @ptrFromInt(191
  const csum_diff: *align(1) const fn (from: *u32, from_size: u32, to: *u32, to_size: u32, seed: u32) i64 = @ptrFromInt(28
  const csum_level: *align(1) const fn (skb: *kern.SkBuff, level: u64) c_long = @ptrFromInt(135
  const csum_update: *align(1) const fn (skb: *kern.SkBuff, csum: u32) i64 = @ptrFromInt(40
  const current_task_under_cgroup: *align(1) const fn (map: *const kern.MapDef, index: u32) c_long = @ptrFromInt(37
  const d_path: *align(1) const fn (?*kern.Path, [*c]u8, u32) c_long = @ptrFromInt(147
  const dynptr_data: *align(1) const fn (?*kern.BpfDynPtr, u32, u32) ?*anyopaque = @ptrFromInt(203
  const dynptr_from_mem: *align(1) const fn (?*anyopaque, u32, u64, ?*kern.BpfDynPtr) c_long = @ptrFromInt(197
  const dynptr_read: *align(1) const fn (?*anyopaque, u32, ?*kern.BpfDynPtr, u32, u64) c_long = @ptrFromInt(201
  const dynptr_write: *align(1) const fn (?*kern.BpfDynPtr, u32, ?*anyopaque, u32, u64) c_long = @ptrFromInt(202
  const fib_lookup: *align(1) const fn (ctx: ?*anyopaque, params: *kern.FibLookup, plen: c_int, flags: u32) c_long = @ptrFromInt(69
  const find_vma: *align(1) const fn (?*kern.Task, u64, ?*anyopaque, ?*anyopaque, u64) c_long = @ptrFromInt(180
  const for_each_map_elem: *align(1) const fn (?*anyopaque, ?*anyopaque, ?*anyopaque, u64) c_long = @ptrFromInt(164
  const get_attach_cookie: *align(1) const fn (?*anyopaque) u64 = @ptrFromInt(174
  const get_branch_snapshot: *align(1) const fn (?*anyopaque, u32, u64) c_long = @ptrFromInt(176
  const get_cgroup_classid: *align(1) const fn (skb: *kern.SkBuff) u32 = @ptrFromInt(17
  const get_current_ancestor_cgroup_id: *align(1) const fn (ancestor_level: c_int) u64 = @ptrFromInt(123
  const get_current_cgroup_id: *align(1) const fn () u64 = @ptrFromInt(80
  const get_current_comm: *align(1) const fn (buf: ?*anyopaque, size_of_buf: u32) c_long = @ptrFromInt(16
  const get_current_pid_tgid: *align(1) const fn () u64 = @ptrFromInt(14
  const get_current_task: *align(1) const fn () u64 = @ptrFromInt(35
  const get_current_task_btf: *align(1) const fn () ?*kern.Task = @ptrFromInt(158
  const get_current_uid_gid: *align(1) const fn () u64 = @ptrFromInt(15
  const get_func_arg: *align(1) const fn (?*anyopaque, u32, [*c]u64) c_long = @ptrFromInt(183
  const get_func_arg_cnt: *align(1) const fn (?*anyopaque) c_long = @ptrFromInt(185
  const get_func_ip: *align(1) const fn (?*anyopaque) u64 = @ptrFromInt(173
  const get_func_ret: *align(1) const fn (?*anyopaque, [*c]u64) c_long = @ptrFromInt(184
  const get_hash_recalc: *align(1) const fn (skb: *kern.SkBuff) u32 = @ptrFromInt(34
  const get_listener_sock: *align(1) const fn (sk: *kern.Sock) ?*kern.Sock = @ptrFromInt(98
  const get_local_storage: *align(1) const fn (map: ?*anyopaque, flags: u64) ?*anyopaque = @ptrFromInt(81
  const get_netns_cookie: *align(1) const fn (ctx: ?*anyopaque) u64 = @ptrFromInt(122
  const get_ns_current_pid_tgid: *align(1) const fn (dev: u64, ino: u64, nsdata: *kern.PidNsInfo, size: u32) c_long = @ptrFromInt(120
  const get_numa_node_id: *align(1) const fn () c_long = @ptrFromInt(42
  const get_prandom_u32: *align(1) const fn () u32 = @ptrFromInt(7
  const get_retval: *align(1) const fn () c_int = @ptrFromInt(186
  const get_route_realm: *align(1) const fn (skb: *kern.SkBuff) u32 = @ptrFromInt(24
  const get_smp_processor_id: *align(1) const fn () u32 = @ptrFromInt(8
  const get_socket_cookie: *align(1) const fn (ctx: ?*anyopaque) u64 = @ptrFromInt(46
  const get_socket_uid: *align(1) const fn (skb: *kern.SkBuff) u32 = @ptrFromInt(47
  const get_stack: *align(1) const fn (ctx: ?*anyopaque, buf: ?*anyopaque, size: u32, flags: u64) c_long = @ptrFromInt(67
  const get_stackid: *align(1) const fn (ctx: ?*anyopaque, map: *const kern.MapDef, flags: u64) c_long = @ptrFromInt(27
  const get_task_stack: *align(1) const fn (task: ?*anyopaque, buf: ?*anyopaque, size: u32, flags: u64) c_long = @ptrFromInt(141
  const getsockopt: *align(1) const fn (bpf_socket: ?*anyopaque, level: c_int, optname: c_int, optval: ?*anyopaque, optlen: c_int) c_long = @ptrFromInt(57
  const ima_file_hash: *align(1) const fn (?*kern.File, ?*anyopaque, u32) c_long = @ptrFromInt(193
  const ima_inode_hash: *align(1) const fn (?*kern.Inode, ?*anyopaque, u32) c_long = @ptrFromInt(161
  const inode_storage_delete: *align(1) const fn (?*anyopaque, ?*anyopaque) c_int = @ptrFromInt(146
  const inode_storage_get: *align(1) const fn (?*anyopaque, ?*anyopaque, ?*anyopaque, u64) ?*anyopaque = @ptrFromInt(145
  const jiffies64: *align(1) const fn () u64 = @ptrFromInt(118
  const kallsyms_lookup_name: *align(1) const fn ([*c]const u8, c_int, c_int, [*c]u64) c_long = @ptrFromInt(179
  const kptr_xchg: *align(1) const fn (?*anyopaque, ?*anyopaque) ?*anyopaque = @ptrFromInt(194
  const ktime_get_boot_ns: *align(1) const fn () u64 = @ptrFromInt(125
  const ktime_get_coarse_ns: *align(1) const fn () u64 = @ptrFromInt(160
  const ktime_get_ns: *align(1) const fn () u64 = @ptrFromInt(5
  const ktime_get_tai_ns: *align(1) const fn () u64 = @ptrFromInt(208
  const l3_csum_replace: *align(1) const fn (skb: *kern.SkBuff, offset: u32, from: u64, to: u64, size: u64) c_long = @ptrFromInt(10
  const l4_csum_replace: *align(1) const fn (skb: *kern.SkBuff, offset: u32, from: u64, to: u64, flags: u64) c_long = @ptrFromInt(11
  const load_hdr_opt: *align(1) const fn (?*kern.BpfSockOps, ?*anyopaque, u32, u64) c_long = @ptrFromInt(142
  const loop: *align(1) const fn (u32, ?*anyopaque, ?*anyopaque, u64) c_long = @ptrFromInt(181
  const lwt_push_encap: *align(1) const fn (skb: *kern.SkBuff, typ: u32, hdr: ?*anyopaque, len: u32) c_long = @ptrFromInt(73
  const lwt_seg6_action: *align(1) const fn (skb: *kern.SkBuff, action: u32, param: ?*anyopaque, param_len: u32) c_long = @ptrFromInt(76
  const lwt_seg6_adjust_srh: *align(1) const fn (skb: *kern.SkBuff, offset: u32, delta: i32) c_long = @ptrFromInt(75
  const lwt_seg6_store_bytes: *align(1) const fn (skb: *kern.SkBuff, offset: u32, from: ?*const anyopaque, len: u32) c_long = @ptrFromInt(74
  const map_delete_elem: *align(1) const fn (map: *const kern.MapDef, key: ?*const anyopaque) c_long = @ptrFromInt(3
  const map_lookup_elem: *align(1) const fn (map: *const kern.MapDef, key: ?*const anyopaque) ?*anyopaque = @ptrFromInt(1
  const map_lookup_percpu_elem: *align(1) const fn (?*anyopaque, ?*const anyopaque, u32) ?*anyopaque = @ptrFromInt(195
  const map_peek_elem: *align(1) const fn (map: *const kern.MapDef, value: ?*anyopaque) c_long = @ptrFromInt(89
  const map_pop_elem: *align(1) const fn (map: *const kern.MapDef, value: ?*anyopaque) c_long = @ptrFromInt(88
  const map_push_elem: *align(1) const fn (map: *const kern.MapDef, value: ?*const anyopaque, flags: u64) c_long = @ptrFromInt(87
  const map_update_elem: *align(1) const fn (map: *const kern.MapDef, key: ?*const anyopaque, value: ?*const anyopaque, flags: u64) c_long = @ptrFromInt(2
  const msg_apply_bytes: *align(1) const fn (msg: *kern.SkMsgMd, bytes: u32) c_long = @ptrFromInt(61
  const msg_cork_bytes: *align(1) const fn (msg: *kern.SkMsgMd, bytes: u32) c_long = @ptrFromInt(62
  const msg_pop_data: *align(1) const fn (msg: *kern.SkMsgMd, start: u32, len: u32, flags: u64) c_long = @ptrFromInt(91
  const msg_pull_data: *align(1) const fn (msg: *kern.SkMsgMd, start: u32, end: u32, flags: u64) c_long = @ptrFromInt(63
  const msg_push_data: *align(1) const fn (msg: *kern.SkMsgMd, start: u32, len: u32, flags: u64) c_long = @ptrFromInt(90
  const msg_redirect_hash: *align(1) const fn (msg: *kern.SkMsgMd, map: *const kern.MapDef, key: ?*anyopaque, flags: u64) c_long = @ptrFromInt(71
  const msg_redirect_map: *align(1) const fn (msg: *kern.SkMsgMd, map: *const kern.MapDef, key: u32, flags: u64) c_long = @ptrFromInt(60
  const override_return: *align(1) const fn (regs: *PtRegs, rc: u64) c_long = @ptrFromInt(58
  const per_cpu_ptr: *align(1) const fn (?*const anyopaque, u32) ?*anyopaque = @ptrFromInt(153
  const perf_event_output: *align(1) const fn (ctx: ?*anyopaque, map: *const kern.MapDef, flags: u64, data: ?*anyopaque, size: u64) c_long = @ptrFromInt(25
  const perf_event_read: *align(1) const fn (map: *const kern.MapDef, flags: u64) u64 = @ptrFromInt(22
  const perf_event_read_value: *align(1) const fn (map: *const kern.MapDef, flags: u64, buf: *kern.PerfEventValue, buf_size: u32) c_long = @ptrFromInt(55
  const perf_prog_read_value: *align(1) const fn (ctx: *kern.PerfEventData, buf: *kern.PerfEventValue, buf_size: u32) c_long = @ptrFromInt(56
  const probe_read: *align(1) const fn (dst: ?*anyopaque, size: u32, unsafe_ptr: ?*const anyopaque) c_long = @ptrFromInt(4
  const probe_read_kernel: *align(1) const fn (dst: ?*anyopaque, size: u32, unsafe_ptr: ?*const anyopaque) c_long = @ptrFromInt(113
  const probe_read_kernel_str: *align(1) const fn (dst: ?*anyopaque, size: u32, unsafe_ptr: ?*const anyopaque) c_long = @ptrFromInt(115
  const probe_read_str: *align(1) const fn (dst: ?*anyopaque, size: u32, unsafe_ptr: ?*const anyopaque) c_long = @ptrFromInt(45
  const probe_read_user: *align(1) const fn (dst: ?*anyopaque, size: u32, unsafe_ptr: ?*const anyopaque) c_long = @ptrFromInt(112
  const probe_read_user_str: *align(1) const fn (dst: ?*anyopaque, size: u32, unsafe_ptr: ?*const anyopaque) c_long = @ptrFromInt(114
  const probe_write_user: *align(1) const fn (dst: ?*anyopaque, src: ?*const anyopaque, len: u32) c_long = @ptrFromInt(36
  const rc_keydown: *align(1) const fn (ctx: ?*anyopaque, protocol: u32, scancode: u64, toggle: u32) c_long = @ptrFromInt(78
  const rc_pointer_rel: *align(1) const fn (ctx: ?*anyopaque, rel_x: i32, rel_y: i32) c_long = @ptrFromInt(92
  const rc_repeat: *align(1) const fn (ctx: ?*anyopaque) c_long = @ptrFromInt(77
  const read_branch_records: *align(1) const fn (ctx: *kern.PerfEventData, buf: ?*anyopaque, size: u32, flags: u64) c_long = @ptrFromInt(119
  const redirect: *align(1) const fn (ifindex: u32, flags: u64) c_long = @ptrFromInt(23
  const redirect_map: *align(1) const fn (map: *const kern.MapDef, key: u32, flags: u64) c_long = @ptrFromInt(51
  const redirect_neigh: *align(1) const fn (u32, ?*kern.BpfRedirNeigh, c_int, u64) c_long = @ptrFromInt(152
  const redirect_peer: *align(1) const fn (u32, u64) c_long = @ptrFromInt(155
  const reserve_hdr_opt: *align(1) const fn (?*kern.BpfSockOps, u32, u64) c_long = @ptrFromInt(144
  const ringbuf_discard: *align(1) const fn (data: ?*anyopaque, flags: u64) void = @ptrFromInt(133
  const ringbuf_discard_dynptr: *align(1) const fn (?*kern.BpfDynPtr, u64) void = @ptrFromInt(200
  const ringbuf_output: *align(1) const fn (ringbuf: ?*anyopaque, data: ?*anyopaque, size: u64, flags: u64) c_long = @ptrFromInt(130
  const ringbuf_query: *align(1) const fn (ringbuf: ?*anyopaque, flags: u64) u64 = @ptrFromInt(134
  const ringbuf_reserve: *align(1) const fn (ringbuf: ?*anyopaque, size: u64, flags: u64) ?*anyopaque = @ptrFromInt(131
  const ringbuf_reserve_dynptr: *align(1) const fn (?*anyopaque, u32, u64, ?*kern.BpfDynPtr) c_long = @ptrFromInt(198
  const ringbuf_submit: *align(1) const fn (data: ?*anyopaque, flags: u64) void = @ptrFromInt(132
  const ringbuf_submit_dynptr: *align(1) const fn (?*kern.BpfDynPtr, u64) void = @ptrFromInt(199
  const send_signal: *align(1) const fn (sig: u32) c_long = @ptrFromInt(109
  const send_signal_thread: *align(1) const fn (sig: u32) c_long = @ptrFromInt(117
  const seq_printf: *align(1) const fn (m: *kern.SeqFile, fmt: ?*const u8, fmt_size: u32, data: ?*const anyopaque, data_len: u32) c_long = @ptrFromInt(126
  const seq_printf_btf: *align(1) const fn (?*kern.SeqFile, ?*kern.BTFPtr, u32, u64) c_long = @ptrFromInt(150
  const seq_write: *align(1) const fn (m: *kern.SeqFile, data: ?*const u8, len: u32) c_long = @ptrFromInt(127
  const set_hash: *align(1) const fn (skb: *kern.SkBuff, hash: u32) c_long = @ptrFromInt(48
  const set_hash_invalid: *align(1) const fn (skb: *kern.SkBuff) void = @ptrFromInt(41
  const set_retval: *align(1) const fn (c_int) c_int = @ptrFromInt(187
  const setsockopt: *align(1) const fn (bpf_socket: *kern.SockOps, level: c_int, optname: c_int, optval: ?*anyopaque, optlen: c_int) c_long = @ptrFromInt(49
  const sk_ancestor_cgroup_id: *align(1) const fn (sk: *kern.BpfSock, ancestor_level: c_long) u64 = @ptrFromInt(129
  const sk_assign: *align(1) const fn (skb: *kern.SkBuff, sk: *kern.Sock, flags: u64) c_long = @ptrFromInt(124
  const sk_cgroup_id: *align(1) const fn (sk: *kern.BpfSock) u64 = @ptrFromInt(128
  const sk_fullsock: *align(1) const fn (sk: *kern.Sock) ?*SkFullSock = @ptrFromInt(95
  const sk_lookup_tcp: *align(1) const fn (ctx: ?*anyopaque, tuple: *kern.SockTuple, tuple_size: u32, netns: u64, flags: u64) ?*kern.Sock = @ptrFromInt(84
  const sk_lookup_udp: *align(1) const fn (ctx: ?*anyopaque, tuple: *kern.SockTuple, tuple_size: u32, netns: u64, flags: u64) ?*kern.Sock = @ptrFromInt(85
  const sk_redirect_hash: *align(1) const fn (skb: *kern.SkBuff, map: *const kern.MapDef, key: ?*anyopaque, flags: u64) c_long = @ptrFromInt(72
  const sk_redirect_map: *align(1) const fn (skb: *kern.SkBuff, map: *const kern.MapDef, key: u32, flags: u64) c_long = @ptrFromInt(52
  const sk_release: *align(1) const fn (sock: *kern.Sock) c_long = @ptrFromInt(86
  const sk_select_reuseport: *align(1) const fn (reuse: *kern.SkReusePortMd, map: *const kern.MapDef, key: ?*anyopaque, flags: u64) c_long = @ptrFromInt(82
  const sk_storage_delete: *align(1) const fn (map: *const kern.MapDef, sk: *kern.Sock) c_long = @ptrFromInt(108
  const sk_storage_get: *align(1) const fn (map: *const kern.MapDef, sk: *kern.Sock, value: ?*anyopaque, flags: u64) ?*anyopaque = @ptrFromInt(107
  const skb_adjust_room: *align(1) const fn (skb: *kern.SkBuff, len_diff: i32, mode: u32, flags: u64) c_long = @ptrFromInt(50
  const skb_ancestor_cgroup_id: *align(1) const fn (skb: *kern.SkBuff, ancestor_level: c_int) u64 = @ptrFromInt(83
  const skb_cgroup_classid: *align(1) const fn (?*kern.SkBuff) u64 = @ptrFromInt(151
  const skb_cgroup_id: *align(1) const fn (skb: *kern.SkBuff) u64 = @ptrFromInt(79
  const skb_change_head: *align(1) const fn (skb: *kern.SkBuff, len: u32, flags: u64) c_long = @ptrFromInt(43
  const skb_change_proto: *align(1) const fn (skb: *kern.SkBuff, proto: u16, flags: u64) c_long = @ptrFromInt(31
  const skb_change_tail: *align(1) const fn (skb: *kern.SkBuff, len: u32, flags: u64) c_long = @ptrFromInt(38
  const skb_change_type: *align(1) const fn (skb: *kern.SkBuff, skb_type: u32) c_long = @ptrFromInt(32
  const skb_ecn_set_ce: *align(1) const fn (skb: *kern.SkBuff) c_long = @ptrFromInt(97
  const skb_get_tunnel_key: *align(1) const fn (skb: *kern.SkBuff, key: *kern.TunnelKey, size: u32, flags: u64) c_long = @ptrFromInt(20
  const skb_get_tunnel_opt: *align(1) const fn (skb: *kern.SkBuff, opt: ?*anyopaque, size: u32) c_long = @ptrFromInt(29
  const skb_get_xfrm_state: *align(1) const fn (skb: *kern.SkBuff, index: u32, xfrm_state: *kern.XfrmState, size: u32, flags: u64) c_long = @ptrFromInt(66
  const skb_load_bytes: *align(1) const fn (skb: ?*anyopaque, offset: u32, to: ?*anyopaque, len: u32) c_long = @ptrFromInt(26
  const skb_load_bytes_relative: *align(1) const fn (skb: ?*const anyopaque, offset: u32, to: ?*anyopaque, len: u32, start_header: u32) c_long = @ptrFromInt(68
  const skb_output: *align(1) const fn (ctx: ?*anyopaque, map: *const kern.MapDef, flags: u64, data: ?*anyopaque, size: u64) c_long = @ptrFromInt(111
  const skb_pull_data: *align(1) const fn (skb: *kern.SkBuff, len: u32) c_long = @ptrFromInt(39
  const skb_set_tstamp: *align(1) const fn (?*kern.SkBuff, u64, u32) c_long = @ptrFromInt(192
  const skb_set_tunnel_key: *align(1) const fn (skb: *kern.SkBuff, key: *kern.TunnelKey, size: u32, flags: u64) c_long = @ptrFromInt(21
  const skb_set_tunnel_opt: *align(1) const fn (skb: *kern.SkBuff, opt: ?*anyopaque, size: u32) c_long = @ptrFromInt(30
  const skb_store_bytes: *align(1) const fn (skb: *kern.SkBuff, offset: u32, from: ?*const anyopaque, len: u32, flags: u64) c_long = @ptrFromInt(9
  const skb_under_cgroup: *align(1) const fn (skb: *kern.SkBuff, map: ?*const anyopaque, index: u32) c_long = @ptrFromInt(33
  const skb_vlan_pop: *align(1) const fn (skb: *kern.SkBuff) c_long = @ptrFromInt(19
  const skb_vlan_push: *align(1) const fn (skb: *kern.SkBuff, vlan_proto: u16, vlan_tci: u16) c_long = @ptrFromInt(18
  const skc_lookup_tcp: *align(1) const fn (ctx: ?*anyopaque, tuple: *kern.SockTuple, tuple_size: u32, netns: u64, flags: u64) ?*kern.Sock = @ptrFromInt(99
  const skc_to_mptcp_sock: *align(1) const fn (?*anyopaque) ?*kern.MpTcpSock = @ptrFromInt(196
  const skc_to_tcp6_sock: *align(1) const fn (sk: ?*anyopaque) ?*kern.Tcp6Sock = @ptrFromInt(136
  const skc_to_tcp_request_sock: *align(1) const fn (sk: ?*anyopaque) ?*kern.TcpRequestSock = @ptrFromInt(139
  const skc_to_tcp_sock: *align(1) const fn (sk: ?*anyopaque) ?*kern.TcpSock = @ptrFromInt(137
  const skc_to_tcp_timewait_sock: *align(1) const fn (sk: ?*anyopaque) ?*kern.TcpTimewaitSock = @ptrFromInt(138
  const skc_to_udp6_sock: *align(1) const fn (sk: ?*anyopaque) ?*kern.Udp6Sock = @ptrFromInt(140
  const skc_to_unix_sock: *align(1) const fn (?*anyopaque) ?*kern.UnixSock = @ptrFromInt(178
  const snprintf: *align(1) const fn ([*c]u8, u32, [*c]const u8, [*c]u64, u32) c_long = @ptrFromInt(165
  const snprintf_btf: *align(1) const fn ([*c]u8, u32, ?*kern.BTFPtr, u32, u64) c_long = @ptrFromInt(149
  const sock_from_file: *align(1) const fn (?*kern.File) ?*kern.Socket = @ptrFromInt(162
  const sock_hash_update: *align(1) const fn (skops: *kern.SockOps, map: *const kern.MapDef, key: ?*anyopaque, flags: u64) c_long = @ptrFromInt(70
  const sock_map_update: *align(1) const fn (skops: *kern.SockOps, map: *const kern.MapDef, key: ?*anyopaque, flags: u64) c_long = @ptrFromInt(53
  const sock_ops_cb_flags_set: *align(1) const fn (bpf_sock: *kern.SockOps, argval: c_int) c_long = @ptrFromInt(59
  const spin_lock: *align(1) const fn (lock: *kern.SpinLock) c_long = @ptrFromInt(93
  const spin_unlock: *align(1) const fn (lock: *kern.SpinLock) c_long = @ptrFromInt(94
  const store_hdr_opt: *align(1) const fn (?*kern.BpfSockOps, ?*const anyopaque, u32, u64) c_long = @ptrFromInt(143
  const strncmp: *align(1) const fn ([*c]const u8, u32, [*c]const u8) c_long = @ptrFromInt(182
  const strtol: *align(1) const fn (buf: *const u8, buf_len: c_ulong, flags: u64, res: *c_long) c_long = @ptrFromInt(105
  const strtoul: *align(1) const fn (buf: *const u8, buf_len: c_ulong, flags: u64, res: *c_ulong) c_long = @ptrFromInt(106
  const sys_bpf: *align(1) const fn (u32, ?*anyopaque, u32) c_long = @ptrFromInt(166
  const sys_close: *align(1) const fn (u32) c_long = @ptrFromInt(168
  const sysctl_get_current_value: *align(1) const fn (ctx: *kern.SysCtl, buf: ?*u8, buf_len: c_ulong) c_long = @ptrFromInt(102
  const sysctl_get_name: *align(1) const fn (ctx: *kern.SysCtl, buf: ?*u8, buf_len: c_ulong, flags: u64) c_long = @ptrFromInt(101
  const sysctl_get_new_value: *align(1) const fn (ctx: *kern.SysCtl, buf: ?*u8, buf_len: c_ulong) c_long = @ptrFromInt(103
  const sysctl_set_new_value: *align(1) const fn (ctx: *kern.SysCtl, buf: ?*const u8, buf_len: c_ulong) c_long = @ptrFromInt(104
  const tail_call: *align(1) const fn (ctx: ?*anyopaque, prog_array_map: *const kern.MapDef, index: u32) c_long = @ptrFromInt(12
  const task_pt_regs: *align(1) const fn (?*kern.Task) c_long = @ptrFromInt(175
  const task_storage_delete: *align(1) const fn (?*anyopaque, ?*kern.Task) c_long = @ptrFromInt(157
  const task_storage_get: *align(1) const fn (?*anyopaque, ?*kern.Task, ?*anyopaque, u64) ?*anyopaque = @ptrFromInt(156
  const tcp_check_syncookie: *align(1) const fn (sk: *kern.Sock, iph: ?*anyopaque, iph_len: u32, th: *TcpHdr, th_len: u32) c_long = @ptrFromInt(100
  const tcp_gen_syncookie: *align(1) const fn (sk: *kern.Sock, iph: ?*anyopaque, iph_len: u32, th: *TcpHdr, th_len: u32) i64 = @ptrFromInt(110
  const tcp_raw_check_syncookie_ipv4: *align(1) const fn (?*kern.IpHdr, ?*TcpHdr) c_long = @ptrFromInt(206
  const tcp_raw_check_syncookie_ipv6: *align(1) const fn (?*kern.Ipv6Hdr, ?*TcpHdr) c_long = @ptrFromInt(207
  const tcp_raw_gen_syncookie_ipv4: *align(1) const fn (?*kern.IpHdr, ?*TcpHdr, u32) i64 = @ptrFromInt(204
  const tcp_raw_gen_syncookie_ipv6: *align(1) const fn (?*kern.Ipv6Hdr, ?*TcpHdr, u32) i64 = @ptrFromInt(205
  const tcp_send_ack: *align(1) const fn (tp: ?*anyopaque, rcv_nxt: u32) c_long = @ptrFromInt(116
  const tcp_sock: *align(1) const fn (sk: *kern.Sock) ?*kern.TcpSock = @ptrFromInt(96
  const this_cpu_ptr: *align(1) const fn (?*const anyopaque) ?*anyopaque = @ptrFromInt(154
  const timer_cancel: *align(1) const fn (?*kern.BpfTimer) c_long = @ptrFromInt(172
  const timer_init: *align(1) const fn (?*kern.BpfTimer, ?*anyopaque, u64) c_long = @ptrFromInt(169
  const timer_set_callback: *align(1) const fn (?*kern.BpfTimer, ?*anyopaque) c_long = @ptrFromInt(170
  const timer_start: *align(1) const fn (?*kern.BpfTimer, u64, u64) c_long = @ptrFromInt(171
  const trace_printk: *align(1) const fn (fmt: [*:0]const u8, fmt_size: u32, arg1: u64, arg2: u64, arg3: u64) c_long = @ptrFromInt(6
  const trace_vprintk: *align(1) const fn ([*c]const u8, u32, ?*const anyopaque, u32) c_long = @ptrFromInt(177
  const user_ringbuf_drain: *align(1) const fn (?*anyopaque, ?*anyopaque, ?*anyopaque, u64) c_long = @ptrFromInt(209
  const xdp_adjust_head: *align(1) const fn (xdp_md: *kern.XdpMd, delta: c_int) c_long = @ptrFromInt(44
  const xdp_adjust_meta: *align(1) const fn (xdp_md: *kern.XdpMd, delta: c_int) c_long = @ptrFromInt(54
  const xdp_adjust_tail: *align(1) const fn (xdp_md: *kern.XdpMd, delta: c_int) c_long = @ptrFromInt(65
  const xdp_get_buff_len: *align(1) const fn (?*kern.XdpMd) u64 = @ptrFromInt(188
  const xdp_load_bytes: *align(1) const fn (?*kern.XdpMd, u32, ?*anyopaque, u32) c_long = @ptrFromInt(189
  const xdp_output: *align(1) const fn (ctx: ?*anyopaque, map: *const kern.MapDef, flags: u64, data: ?*anyopaque, size: u64) c_long = @ptrFromInt(121
  const xdp_store_bytes: *align(1) const fn (?*kern.XdpMd, u32, ?*anyopaque, u32) c_long = @ptrFromInt(190
}

std.os.linux.bpf.kern {
  const BTFPtr = opaque {
  const BinPrm = opaque {
  const BpfDynPtr = opaque {
  const BpfRedirNeigh = opaque {
  const BpfSock = opaque {
  const BpfSockAddr = opaque {
  const BpfSockOps = opaque {
  const BpfTimer = opaque {
  const Cgroup = opaque {
  const FibLookup = opaque {
  const File = opaque {
  const Inode = opaque {
  const IpHdr = opaque {
  const Ipv6Hdr = opaque {
  const MapDef = opaque {
  const MpTcpSock = opaque {
  const Path = opaque {
  const PerfEventData = opaque {
  const PerfEventValue = opaque {
  const PidNsInfo = opaque {
  const SeqFile = opaque {
  const SkBuff = opaque {
  const SkMsgMd = opaque {
  const SkReusePortMd = opaque {
  const Sock = opaque {
  const SockAddr = opaque {
  const SockOps = opaque {
  const SockTuple = opaque {
  const Socket = opaque {
  const SpinLock = opaque {
  const SysCtl = opaque {
  const Task = opaque {
  const Tcp6Sock = opaque {
  const TcpRequestSock = opaque {
  const TcpSock = opaque {
  const TcpTimewaitSock = opaque {
  const TunnelKey = opaque {
  const Udp6Sock = opaque {
  const UnixSock = opaque {
  const XdpMd = opaque {
  const XfrmState = opaque {
  const helpers = if (in_bpf_program) @import("helpers.zig") else struct {
}

std.os.linux.bpf {
  const ABS = 0x2
  const ADD = 0x0
  const ALU = 0x0
  const ALU64 = 0x0
  const AND = 0x5
  const ANY = 
  const ARSH = 0xc
  const AttachType = enum(u32)
  const Attr = extern union
  const B = 0x1
  const BPF_F_CLONE = 0x20
  const BPF_F_MMAPABLE = 0x40
  const BPF_F_NO_COMMON_LRU = 0x
  const BPF_F_NO_PREALLOC = 0x
  const BPF_F_NUMA_NODE = 0x
  const BPF_F_RDONLY = 0x
  const BPF_F_RDONLY_PROG = 0x8
  const BPF_F_STACK_BUILD_ID = 0x2
  const BPF_F_WRONLY = 0x1
  const BPF_F_WRONLY_PROG = 0x10
  const BPF_F_ZERO_SEED = 0x4
  const BtfLoadAttr = extern struct
  const CALL = 0x8
  const Cmd = enum(usize)
  const DIV = 0x3
  const DW = 0x1
  const END = 0xd
  const EXIST = 
  const EXIT = 0x9
  const EnableStatsAttr = extern struct
  const FROM_BE = TO_B
  const FROM_LE = TO_L
  const F_ALLOW_MULTI = 0x
  const F_ALLOW_OVERRIDE = 0x
  const F_ANY_ALIGNMENT = 0x
  const F_LOCK = 
  const F_REPLACE = 0x
  const F_SLEEPABLE = 0x1
  const F_STRICT_ALIGNMENT = 0x
  const F_TEST_RND_HI32 = 0x
  const GetIdAttr = extern struct
  const H = 0x0
  const Helper = enum(i32)
  const IMM = 0x0
  const IND = 0x4
  const InfoAttr = extern struct
  const Insn = packed struct
  const IterCreateAttr = extern struct
  const JA = 0x0
  const JEQ = 0x1
  const JGE = 0x3
  const JGT = 0x2
  const JLE = 0xb
  const JLT = 0xa
  const JMP = 0x0
  const JMP32 = 0x0
  const JNE = 0x5
  const JSET = 0x4
  const JSGE = 0x7
  const JSGT = 0x6
  const JSLE = 0xd
  const JSLT = 0xc
  const K = 0x0
  const LD = 0x0
  const LDX = 0x0
  const LEN = 0x8
  const LSH = 0x6
  const LinkCreateAttr = extern struct
  const LinkUpdateAttr = extern struct
  const Log = struct
  const MAXINSNS = 409
  const MEM = 0x6
  const MISC = 0x0
  const MOD = 0x9
  const MOV = 0xb
  const MSH = 0xa
  const MUL = 0x2
  const MapBatchAttr = extern struct
  const MapCreateAttr = extern struct
  const MapElemAttr = extern struct
  const MapType = enum(u32)
  const NEG = 0x8
  const NOEXIST = 
  const OR = 0x4
  const ObjAttr = extern struct
  const PSEUDO_CALL = 
  const PSEUDO_MAP_FD = 
  const PSEUDO_MAP_VALUE = 
  const ProgAttachAttr = extern struct
  const ProgLoadAttr = extern struct
  const ProgType = enum(u32)
  const QueryAttr = extern struct
  const RET = 0x0
  const RSH = 0x7
  const RawTracepointAttr = extern struct
  const ST = 0x0
  const STX = 0x0
  const SUB = 0x1
  const TO_BE = 0x0
  const TO_LE = 0x0
  const TaskFdQueryAttr = extern struct
  const TestRunAttr = extern struct
  const W = 0x0
  const X = 0x0
  const XADD = 0xc
  const XOR = 0xa
  const btf = @import("bpf/btf.zig"
  const kern = @import("bpf/kern.zig"
  fn map_create(map_type: MapType, key_size: u32, value_size: u32, max_entries: u32) !fd_t
  fn map_delete_elem(fd: fd_t, key: []const u8) !void
  fn map_get_next_key(fd: fd_t, key: []const u8, next_key: []u8) !bool
  fn map_lookup_elem(fd: fd_t, key: []const u8, value: []u8) !void
  fn map_update_elem(fd: fd_t, key: []const u8, value: []const u8, flags: u64) !void
  fn prog_load(prog_type: ProgType, insns: []const Insn, log: ?*Log, license: []const u8, kern_version: u32, flags: u32) !fd_t
}

std.os.linux.hexagon {
  const VDSO = voi
  const time_t = i6
  fn clone() callconv(.naked) u32
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.ioctl {
  const Request = packed struct
  fn IO(io_type: u8, nr: u8) u32
  fn IOR(io_type: u8, nr: u8, comptime T: type) u32
  fn IOW(io_type: u8, nr: u8, comptime T: type) u32
  fn IOWR(io_type: u8, nr: u8, comptime T: type) u32
}

std.os.linux.IoUring {
  const BufferGroup = struct
  const CompletionQueue = struct
  const ReadBuffer = union(enum)
  const RecvBuffer = union(enum)
  const SubmissionQueue = struct
  fn accept(self: *IoUring, user_data: u64, fd: linux.fd_t, addr: ?*posix.sockaddr, addrlen: ?*posix.socklen_t, flags: u32) !*linux.io_uring_sqe
  fn accept_direct(self: *IoUring, user_data: u64, fd: linux.fd_t, addr: ?*posix.sockaddr, addrlen: ?*posix.socklen_t, flags: u32) !*linux.io_uring_sqe
  fn accept_multishot(self: *IoUring, user_data: u64, fd: linux.fd_t, addr: ?*posix.sockaddr, addrlen: ?*posix.socklen_t, flags: u32) !*linux.io_uring_sqe
  fn accept_multishot_direct(self: *IoUring, user_data: u64, fd: linux.fd_t, addr: ?*posix.sockaddr, addrlen: ?*posix.socklen_t, flags: u32) !*linux.io_uring_sqe
  fn bind(self: *IoUring, user_data: u64, fd: linux.fd_t, addr: *const posix.sockaddr, addrlen: posix.socklen_t, flags: u32) !*linux.io_uring_sqe
  fn buf_ring_add(br: *linux.io_uring_buf_ring, buffer: []u8, buffer_id: u16, mask: u16, buffer_offset: u16) void
  fn buf_ring_advance(br: *linux.io_uring_buf_ring, count: u16) void
  fn buf_ring_init(br: *linux.io_uring_buf_ring) void
  fn buf_ring_mask(entries: u16) u16
  fn cancel(self: *IoUring, user_data: u64, cancel_user_data: u64, flags: u32) !*linux.io_uring_sqe
  fn close(self: *IoUring, user_data: u64, fd: linux.fd_t) !*linux.io_uring_sqe
  fn close_direct(self: *IoUring, user_data: u64, file_index: u32) !*linux.io_uring_sqe
  fn cmd_sock(self: *IoUring, user_data: u64, cmd_op: linux.IO_URING_SOCKET_OP, fd: linux.fd_t, level: u32, // linux.SOL optname: u32, // linux.SO optval: u64, // pointer to the option value optlen: u32, // size of the option valu) !*linux.io_uring_sqe
  fn connect(self: *IoUring, user_data: u64, fd: linux.fd_t, addr: *const posix.sockaddr, addrlen: posix.socklen_t) !*linux.io_uring_sqe
  fn copy_cqe(ring: *IoUring) !linux.io_uring_cqe
  fn copy_cqes(self: *IoUring, cqes: []linux.io_uring_cqe, wait_nr: u32) !u32
  fn cq_advance(self: *IoUring, count: u32) void
  fn cq_ready(self: *IoUring) u32
  fn cq_ring_needs_flush(self: *IoUring) bool
  fn cqe_seen(self: *IoUring, cqe: *linux.io_uring_cqe) void
  fn deinit(self: *IoUring) void
  fn enter(self: *IoUring, to_submit: u32, min_complete: u32, flags: u32) !u32
  fn epoll_ctl(self: *IoUring, user_data: u64, epfd: linux.fd_t, fd: linux.fd_t, op: u32, ev: ?*linux.epoll_event) !*linux.io_uring_sqe
  fn fallocate(self: *IoUring, user_data: u64, fd: linux.fd_t, mode: i32, offset: u64, len: u64) !*linux.io_uring_sqe
  fn flush_sq(self: *IoUring) u32
  fn free_buf_ring(fd: linux.fd_t, br: *align(page_size_min) linux.io_uring_buf_ring, entries: u32, group_id: u16) void
  fn fsync(self: *IoUring, user_data: u64, fd: linux.fd_t, flags: u32) !*linux.io_uring_sqe
  fn get_probe(self: *IoUring) !linux.io_uring_probe
  fn get_sqe(self: *IoUring) !*linux.io_uring_sqe
  fn getsockopt(self: *IoUring, user_data: u64, fd: linux.fd_t, level: u32, // linux.SOL optname: u32, // linux.SO opt: []u8) !*linux.io_uring_sqe
  fn init(entries: u16, flags: u32) !IoUring
  fn init_params(entries: u16, p: *linux.io_uring_params) !IoUring
  fn link_timeout(self: *IoUring, user_data: u64, ts: *const linux.kernel_timespec, flags: u32) !*linux.io_uring_sqe
  fn linkat(self: *IoUring, user_data: u64, old_dir_fd: linux.fd_t, old_path: [*:0]const u8, new_dir_fd: linux.fd_t, new_path: [*:0]const u8, flags: u32) !*linux.io_uring_sqe
  fn listen(self: *IoUring, user_data: u64, fd: linux.fd_t, backlog: usize, flags: u32) !*linux.io_uring_sqe
  fn mkdirat(self: *IoUring, user_data: u64, dir_fd: linux.fd_t, path: [*:0]const u8, mode: posix.mode_t) !*linux.io_uring_sqe
  fn nop(self: *IoUring, user_data: u64) !*linux.io_uring_sqe
  fn openat(self: *IoUring, user_data: u64, fd: linux.fd_t, path: [*:0]const u8, flags: linux.O, mode: posix.mode_t) !*linux.io_uring_sqe
  fn openat_direct(self: *IoUring, user_data: u64, fd: linux.fd_t, path: [*:0]const u8, flags: linux.O, mode: posix.mode_t, file_index: u32) !*linux.io_uring_sqe
  fn poll_add(self: *IoUring, user_data: u64, fd: linux.fd_t, poll_mask: u32) !*linux.io_uring_sqe
  fn poll_remove(self: *IoUring, user_data: u64, target_user_data: u64) !*linux.io_uring_sqe
  fn poll_update(self: *IoUring, user_data: u64, old_user_data: u64, new_user_data: u64, poll_mask: u32, flags: u32) !*linux.io_uring_sqe
  fn provide_buffers(self: *IoUring, user_data: u64, buffers: [*]u8, buffer_size: usize, buffers_count: usize, group_id: usize, buffer_id: usize) !*linux.io_uring_sqe
  fn read(self: *IoUring, user_data: u64, fd: linux.fd_t, buffer: ReadBuffer, offset: u64) !*linux.io_uring_sqe
  fn read_fixed(self: *IoUring, user_data: u64, fd: linux.fd_t, buffer: *posix.iovec, offset: u64, buffer_index: u16) !*linux.io_uring_sqe
  fn recv(self: *IoUring, user_data: u64, fd: linux.fd_t, buffer: RecvBuffer, flags: u32) !*linux.io_uring_sqe
  fn recvmsg(self: *IoUring, user_data: u64, fd: linux.fd_t, msg: *linux.msghdr, flags: u32) !*linux.io_uring_sqe
  fn register_buffers(self: *IoUring, buffers: []const posix.iovec) !void
  fn register_eventfd(self: *IoUring, fd: linux.fd_t) !void
  fn register_eventfd_async(self: *IoUring, fd: linux.fd_t) !void
  fn register_file_alloc_range(self: *IoUring, offset: u32, len: u32) !void
  fn register_files(self: *IoUring, fds: []const linux.fd_t) !void
  fn register_files_sparse(self: *IoUring, nr_files: u32) !void
  fn register_files_update(self: *IoUring, offset: u32, fds: []const linux.fd_t) !void
  fn register_napi(self: *IoUring, napi: *linux.io_uring_napi) !void
  fn remove_buffers(self: *IoUring, user_data: u64, buffers_count: usize, group_id: usize) !*linux.io_uring_sqe
  fn renameat(self: *IoUring, user_data: u64, old_dir_fd: linux.fd_t, old_path: [*:0]const u8, new_dir_fd: linux.fd_t, new_path: [*:0]const u8, flags: u32) !*linux.io_uring_sqe
  fn send(self: *IoUring, user_data: u64, fd: linux.fd_t, buffer: []const u8, flags: u32) !*linux.io_uring_sqe
  fn send_zc(self: *IoUring, user_data: u64, fd: linux.fd_t, buffer: []const u8, send_flags: u32, zc_flags: u16) !*linux.io_uring_sqe
  fn send_zc_fixed(self: *IoUring, user_data: u64, fd: linux.fd_t, buffer: []const u8, send_flags: u32, zc_flags: u16, buf_index: u16) !*linux.io_uring_sqe
  fn sendmsg(self: *IoUring, user_data: u64, fd: linux.fd_t, msg: *const linux.msghdr_const, flags: u32) !*linux.io_uring_sqe
  fn sendmsg_zc(self: *IoUring, user_data: u64, fd: linux.fd_t, msg: *const linux.msghdr_const, flags: u32) !*linux.io_uring_sqe
  fn setsockopt(self: *IoUring, user_data: u64, fd: linux.fd_t, level: u32, // linux.SOL optname: u32, // linux.SO opt: []const u8) !*linux.io_uring_sqe
  fn setup_buf_ring(fd: linux.fd_t, entries: u16, group_id: u16, flags: linux.io_uring_buf_reg.Flags) !*align(page_size_min) linux.io_uring_buf_ring
  fn shutdown(self: *IoUring, user_data: u64, sockfd: posix.socket_t, how: u32) !*linux.io_uring_sqe
  fn socket(self: *IoUring, user_data: u64, domain: u32, socket_type: u32, protocol: u32, flags: u32) !*linux.io_uring_sqe
  fn socket_direct(self: *IoUring, user_data: u64, domain: u32, socket_type: u32, protocol: u32, flags: u32, file_index: u32) !*linux.io_uring_sqe
  fn socket_direct_alloc(self: *IoUring, user_data: u64, domain: u32, socket_type: u32, protocol: u32, flags: u32) !*linux.io_uring_sqe
  fn splice(self: *IoUring, user_data: u64, fd_in: linux.fd_t, off_in: u64, fd_out: linux.fd_t, off_out: u64, len: usize) !*linux.io_uring_sqe
  fn sq_ready(self: *IoUring) u32
  fn sq_ring_needs_enter(self: *IoUring, flags: *u32) bool
  fn statx(self: *IoUring, user_data: u64, fd: linux.fd_t, path: [:0]const u8, flags: u32, mask: linux.STATX, buf: *linux.Statx) !*linux.io_uring_sqe
  fn submit(self: *IoUring) !u32
  fn submit_and_wait(self: *IoUring, wait_nr: u32) !u32
  fn symlinkat(self: *IoUring, user_data: u64, target: [*:0]const u8, new_dir_fd: linux.fd_t, link_path: [*:0]const u8) !*linux.io_uring_sqe
  fn timeout(self: *IoUring, user_data: u64, ts: *const linux.kernel_timespec, count: u32, flags: u32) !*linux.io_uring_sqe
  fn timeout_remove(self: *IoUring, user_data: u64, timeout_user_data: u64, flags: u32) !*linux.io_uring_sqe
  fn unlinkat(self: *IoUring, user_data: u64, dir_fd: linux.fd_t, path: [*:0]const u8, flags: u32) !*linux.io_uring_sqe
  fn unregister_buffers(self: *IoUring) !void
  fn unregister_eventfd(self: *IoUring) !void
  fn unregister_files(self: *IoUring) !void
  fn unregister_napi(self: *IoUring, napi: *linux.io_uring_napi) !void
  fn waitid(self: *IoUring, user_data: u64, id_type: linux.P, id: i32, infop: *linux.siginfo_t, options: u32, flags: u32) !*linux.io_uring_sqe
  fn write(self: *IoUring, user_data: u64, fd: linux.fd_t, buffer: []const u8, offset: u64) !*linux.io_uring_sqe
  fn write_fixed(self: *IoUring, user_data: u64, fd: linux.fd_t, buffer: *posix.iovec, offset: u64, buffer_index: u16) !*linux.io_uring_sqe
  fn writev(self: *IoUring, user_data: u64, fd: linux.fd_t, iovecs: []const posix.iovec_const, offset: u64) !*linux.io_uring_sqe
}

std.os.linux.io_uring_sqe {
  const io_uring_sqe = extern struct
}

std.os.linux.loongarch32 {
  const VDSO = struct
  const time_t = i6
  fn clone() callconv(.naked) u32
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.loongarch64 {
  const VDSO = struct
  const time_t = i6
  fn clone() callconv(.naked) u64
  fn syscall0(number: SYS) u64
  fn syscall1(number: SYS, arg1: u64) u64
  fn syscall2(number: SYS, arg1: u64, arg2: u64) u64
  fn syscall3(number: SYS, arg1: u64, arg2: u64, arg3: u64) u64
  fn syscall4(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64) u64
  fn syscall5(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64) u64
  fn syscall6(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64, arg6: u64) u64
}

std.os.linux.m68k {
  const VDSO = voi
  const restore = restore_r
  const time_t = i3
  fn clone() callconv(.naked) u32
  fn restore_rt() callconv(.naked) noreturn
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.mips {
  const VDSO = struct
  const time_t = i3
  fn clone() callconv(.naked) u32
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
  fn syscall7(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32, arg7: u32) u32
  fn syscall_pipe(fd: *[2]i32) u32
}

std.os.linux.mips64 {
  const VDSO = struct
  const time_t = i3
  fn clone() callconv(.naked) u64
  fn syscall0(number: SYS) u64
  fn syscall1(number: SYS, arg1: u64) u64
  fn syscall2(number: SYS, arg1: u64, arg2: u64) u64
  fn syscall3(number: SYS, arg1: u64, arg2: u64, arg3: u64) u64
  fn syscall4(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64) u64
  fn syscall5(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64) u64
  fn syscall6(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64, arg6: u64) u64
  fn syscall_pipe(fd: *[2]i32) u64
}

std.os.linux.mipsn32 {
  const VDSO = struct
  const time_t = i3
  fn clone() callconv(.naked) u32
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
  fn syscall_pipe(fd: *[2]i32) u32
}

std.os.linux.or1k {
  const VDSO = voi
  const time_t = i3
  fn clone() callconv(.naked) u32
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.powerpc {
  const VDSO = struct
  const time_t = i3
  fn clone() callconv(.naked) u32
  fn restore() callconv(.naked) noreturn
  fn restore_rt() callconv(.naked) noreturn
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.powerpc64 {
  const VDSO = struct
  const time_t = i6
  fn clone() callconv(.naked) u64
  fn restore() callconv(.naked) noreturn
  fn restore_rt() callconv(.naked) noreturn
  fn syscall0(number: SYS) u64
  fn syscall1(number: SYS, arg1: u64) u64
  fn syscall2(number: SYS, arg1: u64, arg2: u64) u64
  fn syscall3(number: SYS, arg1: u64, arg2: u64, arg3: u64) u64
  fn syscall4(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64) u64
  fn syscall5(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64) u64
  fn syscall6(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64, arg6: u64) u64
}

std.os.linux.riscv32 {
  const VDSO = struct
  const time_t = i6
  fn clone() callconv(.naked) u32
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.riscv64 {
  const VDSO = struct
  const time_t = i6
  fn clone() callconv(.naked) u64
  fn syscall0(number: SYS) u64
  fn syscall1(number: SYS, arg1: u64) u64
  fn syscall2(number: SYS, arg1: u64, arg2: u64) u64
  fn syscall3(number: SYS, arg1: u64, arg2: u64, arg3: u64) u64
  fn syscall4(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64) u64
  fn syscall5(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64) u64
  fn syscall6(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64, arg6: u64) u64
}

std.os.linux.s390x {
  const VDSO = struct
  const time_t = i6
  fn clone() callconv(.naked) u64
  fn restore() callconv(.naked) noreturn
  fn restore_rt() callconv(.naked) noreturn
  fn syscall0(number: SYS) u64
  fn syscall1(number: SYS, arg1: u64) u64
  fn syscall2(number: SYS, arg1: u64, arg2: u64) u64
  fn syscall3(number: SYS, arg1: u64, arg2: u64, arg3: u64) u64
  fn syscall4(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64) u64
  fn syscall5(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64) u64
  fn syscall6(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64, arg6: u64) u64
}

std.os.linux.seccomp {
  const ADDFD_FLAG = struct
  const FILTER_FLAG = struct
  const GET_ACTION_AVAIL = 
  const GET_NOTIF_SIZES = 
  const IOCTL_NOTIF = struct
  const MODE = struct
  const RET = struct
  const SET_MODE_FILTER = 
  const SET_MODE_STRICT = 
  const USER_NOTIF_FLAG_CONTINUE = 1 << 
  const data = extern struct
  const notif = extern struct
  const notif_addfd = extern struct
  const notif_resp = extern struct
  const notif_sizes = extern struct
}

std.os.linux.sparc64 {
  const VDSO = struct
  const restore = restore_r
  const time_t = i6
  fn clone() callconv(.naked) u64
  fn restore_rt() callconv(.c) void
  fn syscall0(number: SYS) u64
  fn syscall1(number: SYS, arg1: u64) u64
  fn syscall2(number: SYS, arg1: u64, arg2: u64) u64
  fn syscall3(number: SYS, arg1: u64, arg2: u64, arg3: u64) u64
  fn syscall4(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64) u64
  fn syscall5(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64) u64
  fn syscall6(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64, arg6: u64) u64
  fn syscall_fork() u64
  fn syscall_pipe(fd: *[2]i32) u64
}

std.os.linux.syscalls {
  const Arc = enum(usize)
  const Arm = enum(usize)
  const Arm64 = enum(usize)
  const CSky = enum(usize)
  const Hexagon = enum(usize)
  const LoongArch32 = enum(usize)
  const LoongArch64 = enum(usize)
  const M68k = enum(usize)
  const MipsN32 = enum(usize)
  const MipsN64 = enum(usize)
  const MipsO32 = enum(usize)
  const OpenRisc = enum(usize)
  const PowerPC = enum(usize)
  const PowerPC64 = enum(usize)
  const RiscV32 = enum(usize)
  const RiscV64 = enum(usize)
  const S390x = enum(usize)
  const Sparc = enum(usize)
  const Sparc64 = enum(usize)
  const X32 = enum(usize)
  const X64 = enum(usize)
  const X86 = enum(usize)
  const Xtensa = enum(usize)
}

std.os.linux.thumb {
  const clone = @import("arm.zig").clon
  fn restore() callconv(.naked) noreturn
  fn restore_rt() callconv(.naked) noreturn
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.tls {
  fn initStatic(phdrs: []elf.Phdr) void
  fn prepareArea(area: []u8) usize
  fn setThreadPointer(addr: usize) void
  var area_desc: AreaDesc = undefine
}

std.os.linux.vdso {
  fn lookup(vername: []const u8, name: []const u8) usize
}

std.os.linux.x32 {
  const ARCH = struct
  const VDSO = struct
  const restore = restore_r
  const time_t = i3
  fn clone() callconv(.naked) u32
  fn restore_rt() callconv(.naked) noreturn
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.x86 {
  const SC = struct
  const VDSO = struct
  const time_t = i3
  const user_desc = extern struct
  fn clone() callconv(.naked) u32
  fn restore() callconv(.naked) noreturn
  fn restore_rt() callconv(.naked) noreturn
  fn socketcall(call: u32, args: [*]const u32) u32
  fn syscall0(number: SYS) u32
  fn syscall1(number: SYS, arg1: u32) u32
  fn syscall2(number: SYS, arg1: u32, arg2: u32) u32
  fn syscall3(number: SYS, arg1: u32, arg2: u32, arg3: u32) u32
  fn syscall4(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32) u32
  fn syscall5(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32) u32
  fn syscall6(number: SYS, arg1: u32, arg2: u32, arg3: u32, arg4: u32, arg5: u32, arg6: u32) u32
}

std.os.linux.x86_64 {
  const ARCH = struct
  const VDSO = struct
  const restore = restore_r
  const time_t = i6
  fn clone() callconv(.naked) u64
  fn restore_rt() callconv(.naked) noreturn
  fn syscall0(number: SYS) u64
  fn syscall1(number: SYS, arg1: u64) u64
  fn syscall2(number: SYS, arg1: u64, arg2: u64) u64
  fn syscall3(number: SYS, arg1: u64, arg2: u64, arg3: u64) u64
  fn syscall4(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64) u64
  fn syscall5(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64) u64
  fn syscall6(number: SYS, arg1: u64, arg2: u64, arg3: u64, arg4: u64, arg5: u64, arg6: u64) u64
}

std.os.linux {
  const AF = struct
  const AI = packed struct(u32)
  const ARCH = arch_bits.ARC
  const AT = struct
  const AUDIT = struct
  const BPF = @import("linux/bpf.zig"
  const BSDLY = enum(u1)
  const CAP = struct
  const CLD = enum(i32)
  const CLOCK = clockid_
  const CLONE = struct
  const CLOSE_RANGE = packed struct(u32)
  const CPU_SETSIZE = 12
  const CRDLY = enum(u2)
  const CSIGNAL = 0x000000f
  const CSIZE = enum(u2)
  const DT = struct
  const E = switch (native_arch)
  const EFD = struct
  const EPOLL = struct
  const ETH = struct
  const EXECVEAT = packed struct(u32)
  const Elf_Symndx = if (native_arch == .s390x) u64 else u3
  const F = struct
  const FALLOC = struct
  const FD_CLOEXEC = 
  const FFDLY = enum(u1)
  const FSCONFIG_CMD = enum(u32)
  const FSMOUNT = packed struct(u32)
  const FSOPEN = packed struct(u32)
  const FSPICK = packed struct(u32)
  const FUTEX2_FLAGS = packed struct(u32)
  const FUTEX2_FLAGS_REQUEUE = packed struct(u32)
  const FUTEX2_FLAGS_WAITV = packed struct(u32)
  const FUTEX2_SIZE = enum(u2)
  const FUTEX2_WAITONE_MAX = 12
  const FUTEX_COMMAND = enum(u7)
  const FUTEX_OP = packed struct(u32)
  const FUTEX_WAKE_OP = packed struct(u32)
  const FUTEX_WAKE_OP_CMD = enum(u3)
  const FUTEX_WAKE_OP_CMP = enum(u4)
  const F_OK = 
  const F_OWNER = enum(i32)
  const Flock = extern struct
  const HOST_NAME_MAX = 6
  const HUGETLB_FLAG_ENCODE_16GB = 34 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_16MB = 24 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_1GB = 30 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_1MB = 20 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_256MB = 28 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_2GB = 31 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_2MB = 21 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_32MB = 25 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_512KB = 19 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_512MB = 29 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_64KB = 16 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_8MB = 23 << HUGETLB_FLAG_ENCODE_SHIF
  const HUGETLB_FLAG_ENCODE_MASK = 0x3
  const HUGETLB_FLAG_ENCODE_SHIFT = 2
  const HWCAP = arch_bits.HWCA
  const IFA = enum(c_ushort)
  const IFF = packed struct(u16)
  const IFLA = enum(c_ushort)
  const IFNAMESIZE = 1
  const IN = struct
  const IOCTL = @import("linux/ioctl.zig"
  const IORING_ACCEPT_MULTISHOT = 1 << 
  const IORING_ASYNC_CANCEL_ALL = 1 << 
  const IORING_ASYNC_CANCEL_ANY = 1 << 
  const IORING_ASYNC_CANCEL_FD = 1 << 
  const IORING_ASYNC_CANCEL_FD_FIXED = 1 << 
  const IORING_CQE_BUFFER_SHIFT = 1
  const IORING_CQE_F_32 = 1 << 1
  const IORING_CQE_F_BUFFER = 1 << 
  const IORING_CQE_F_BUF_MORE = 1 << 
  const IORING_CQE_F_MORE = 1 << 
  const IORING_CQE_F_NOTIF = 1 << 
  const IORING_CQE_F_SKIP = 1 << 
  const IORING_CQE_F_SOCK_NONEMPTY = 1 << 
  const IORING_CQ_EVENTFD_DISABLED = 1 << 
  const IORING_ENTER_EXT_ARG = 1 << 
  const IORING_ENTER_GETEVENTS = 1 << 
  const IORING_ENTER_REGISTERED_RING = 1 << 
  const IORING_ENTER_SQ_WAIT = 1 << 
  const IORING_ENTER_SQ_WAKEUP = 1 << 
  const IORING_FEAT_CQE_SKIP = 1 << 1
  const IORING_FEAT_CUR_PERSONALITY = 1 << 
  const IORING_FEAT_EXT_ARG = 1 << 
  const IORING_FEAT_FAST_POLL = 1 << 
  const IORING_FEAT_LINKED_FILE = 1 << 1
  const IORING_FEAT_NATIVE_WORKERS = 1 << 
  const IORING_FEAT_NODROP = 1 << 
  const IORING_FEAT_POLL_32BITS = 1 << 
  const IORING_FEAT_RSRC_TAGS = 1 << 1
  const IORING_FEAT_RW_CUR_POS = 1 << 
  const IORING_FEAT_SINGLE_MMAP = 1 << 
  const IORING_FEAT_SQPOLL_NONFIXED = 1 << 
  const IORING_FEAT_SUBMIT_STABLE = 1 << 
  const IORING_FILE_INDEX_ALLOC = maxInt(u32
  const IORING_FSYNC_DATASYNC = 1 << 
  const IORING_LINK_TIMEOUT_UPDATE = 1 << 4; // Available since Linux 5.
  const IORING_MSG_RING_COMMAND = enum(u8)
  const IORING_MSG_RING_CQE_SKIP = 1 << 
  const IORING_MSG_RING_FLAGS_PASS = 1 << 
  const IORING_NOTIF_USAGE_ZC_COPIED = 1 << 3
  const IORING_OFF_CQ_RING = 0x800000
  const IORING_OFF_SQES = 0x1000000
  const IORING_OFF_SQ_RING = 
  const IORING_OP = enum(u8)
  const IORING_POLL_ADD_LEVEL = 1 << 
  const IORING_POLL_ADD_MULTI = 1 << 
  const IORING_POLL_UPDATE_EVENTS = 1 << 
  const IORING_POLL_UPDATE_USER_DATA = 1 << 
  const IORING_RECVSEND_BUNDLE = 1 << 
  const IORING_RECVSEND_FIXED_BUF = 1 << 
  const IORING_RECVSEND_POLL_FIRST = 1 << 
  const IORING_RECV_MULTISHOT = 1 << 
  const IORING_REGISTER = enum(u32)
  const IORING_REGISTER_FILES_SKIP = -
  const IORING_RESTRICTION = enum(u16)
  const IORING_RSRC_REGISTER_SPARSE = 1 << 
  const IORING_SEND_ZC_REPORT_USAGE = 1 << 
  const IORING_SETUP_ATTACH_WQ = 1 << 
  const IORING_SETUP_CLAMP = 1 << 
  const IORING_SETUP_COOP_TASKRUN = 1 << 
  const IORING_SETUP_CQE32 = 1 << 1
  const IORING_SETUP_CQSIZE = 1 << 
  const IORING_SETUP_DEFER_TASKRUN = 1 << 1
  const IORING_SETUP_IOPOLL = 1 << 
  const IORING_SETUP_NO_MMAP = 1 << 1
  const IORING_SETUP_NO_SQARRAY = 1 << 1
  const IORING_SETUP_REGISTERED_FD_ONLY = 1 << 1
  const IORING_SETUP_R_DISABLED = 1 << 
  const IORING_SETUP_SINGLE_ISSUER = 1 << 1
  const IORING_SETUP_SQE128 = 1 << 1
  const IORING_SETUP_SQPOLL = 1 << 
  const IORING_SETUP_SQ_AFF = 1 << 
  const IORING_SETUP_SUBMIT_ALL = 1 << 
  const IORING_SETUP_TASKRUN_FLAG = 1 << 
  const IORING_SPLICE_F_FD_IN_FIXED = 1 << 3
  const IORING_SQ_CQ_OVERFLOW = 1 << 
  const IORING_SQ_NEED_WAKEUP = 1 << 
  const IORING_SQ_TASKRUN = 1 << 
  const IORING_TIMEOUT_ABS = 1 << 
  const IORING_TIMEOUT_BOOTTIME = 1 << 2; // Available since Linux 5.
  const IORING_TIMEOUT_CLOCK_MASK = IORING_TIMEOUT_BOOTTIME | IORING_TIMEOUT_REALTIM
  const IORING_TIMEOUT_ETIME_SUCCESS = 1 << 5; // Available since Linux 5.
  const IORING_TIMEOUT_REALTIME = 1 << 3; // Available since Linux 5.
  const IORING_TIMEOUT_UPDATE = 1 << 1; // Available since Linux 5.
  const IORING_TIMEOUT_UPDATE_MASK = IORING_TIMEOUT_UPDATE | IORING_LINK_TIMEOUT_UPDAT
  const IORING_URING_CMD_FIXED = 1 << 
  const IOSQE_ASYNC = 1 << @intFromEnum(IOSQE_BIT.ASYNC
  const IOSQE_BIT = enum(u8)
  const IOSQE_BUFFER_SELECT = 1 << @intFromEnum(IOSQE_BIT.BUFFER_SELECT
  const IOSQE_CQE_SKIP_SUCCESS = 1 << @intFromEnum(IOSQE_BIT.CQE_SKIP_SUCCESS
  const IOSQE_FIXED_FILE = 1 << @intFromEnum(IOSQE_BIT.FIXED_FILE
  const IOSQE_IO_DRAIN = 1 << @intFromEnum(IOSQE_BIT.IO_DRAIN
  const IOSQE_IO_HARDLINK = 1 << @intFromEnum(IOSQE_BIT.IO_HARDLINK
  const IOSQE_IO_LINK = 1 << @intFromEnum(IOSQE_BIT.IO_LINK
  const IOV_MAX = 102
  const IOWQ_CATEGORIES = enum(u8)
  const IO_URING_OP_SUPPORTED = 1 << 
  const IO_URING_SOCKET_OP = enum(u32)
  const IP = struct
  const IPPORT_RESERVED = 102
  const IPPROTO = struct
  const IPTOS = struct
  const IPV6 = struct
  const ITIMER = enum(i32)
  const IoUring = @import("linux/IoUring.zig"
  const LINUX_REBOOT = struct
  const MADV = struct
  const MAP = switch (native_arch)
  const MAP_TYPE = enum(u4)
  const MAX_ADDR_LEN = 3
  const MCL = if (native_arch.isSPARC() or native_arch.isPowerPC()) packed struct(u32)
  const MFD = struct
  const MINSIGSTKSZ = switch (native_arch)
  const MLOCK = packed struct(u32)
  const MNT = struct
  const MOUNT_ATTR = packed struct(u32)
  const MOVE_MOUNT = packed struct(u32)
  const MREMAP = packed struct(u32)
  const MS = struct
  const MSF = struct
  const MSG = struct
  const NAME_MAX = 25
  const NCC = if (is_ppc) 10 else 
  const NCCS = if (is_mips) 32 else if (is_ppc) 19 else if (is_sparc) 17 else 3
  const NETLINK = struct
  const NLDLY = if (is_ppc) enum(u2)
  const NLM_F_ACK = 0x0
  const NLM_F_ACK_TLVS = 0x20
  const NLM_F_APPEND = 0x80
  const NLM_F_ATOMIC = 0x40
  const NLM_F_CAPPED = 0x10
  const NLM_F_CREATE = 0x40
  const NLM_F_DUMP = NLM_F_ROOT | NLM_F_MATC
  const NLM_F_DUMP_FILTERED = 0x2
  const NLM_F_DUMP_INTR = 0x1
  const NLM_F_ECHO = 0x0
  const NLM_F_EXCL = 0x20
  const NLM_F_MATCH = 0x20
  const NLM_F_MULTI = 0x0
  const NLM_F_NONREC = 0x10
  const NLM_F_REPLACE = 0x10
  const NLM_F_REQUEST = 0x0
  const NLM_F_ROOT = 0x10
  const NSIG = if (is_mips) 128 else 6
  const NetlinkMessageType = enum(u16)
  const O = switch (native_arch)
  const P = enum(c_uint)
  const PACKET = struct
  const PATH_MAX = 409
  const PERF = struct
  const PF = struct
  const POLL = struct
  const POSIX_FADV = switch (native_arch)
  const PR = enum(i32)
  const PROT = switch (native_arch)
  const PTRACE = struct
  const RENAME = packed struct(u32)
  const RLIM = struct
  const RWF = struct
  const R_OK = 
  const S = struct
  const SA = if (is_mips) struct
  const SC = arch_bits.S
  const SCHED = packed struct(i32)
  const SCM = struct
  const SECBIT_KEEP_CAPS = issecure_mask(SECURE_KEEP_CAPS
  const SECBIT_KEEP_CAPS_LOCKED = issecure_mask(SECURE_KEEP_CAPS_LOCKED
  const SECBIT_NOROOT = issecure_mask(SECURE_NOROOT
  const SECBIT_NOROOT_LOCKED = issecure_mask(SECURE_NOROOT_LOCKED
  const SECBIT_NO_CAP_AMBIENT_RAISE = issecure_mask(SECURE_NO_CAP_AMBIENT_RAISE
  const SECBIT_NO_CAP_AMBIENT_RAISE_LOCKED = issecure_mask(SECURE_NO_CAP_AMBIENT_RAISE_LOCKED
  const SECBIT_NO_SETUID_FIXUP = issecure_mask(SECURE_NO_SETUID_FIXUP
  const SECBIT_NO_SETUID_FIXUP_LOCKED = issecure_mask(SECURE_NO_SETUID_FIXUP_LOCKED
  const SECCOMP = @import("linux/seccomp.zig"
  const SECUREBITS_DEFAULT = 0x0000000
  const SECURE_ALL_BITS = issecure_mask(SECURE_NOROOT)
  const SECURE_ALL_LOCKS = SECURE_ALL_BITS << 
  const SECURE_KEEP_CAPS = 
  const SECURE_KEEP_CAPS_LOCKED = 
  const SECURE_NOROOT = 
  const SECURE_NOROOT_LOCKED = 
  const SECURE_NO_CAP_AMBIENT_RAISE = 
  const SECURE_NO_CAP_AMBIENT_RAISE_LOCKED = 
  const SECURE_NO_SETUID_FIXUP = 
  const SECURE_NO_SETUID_FIXUP_LOCKED = 
  const SEEK = struct
  const SER = struct
  const SFD = struct
  const SHADOW_STACK = struct
  const SHUT = struct
  const SIG = if (is_mips) enum(u32)
  const SIGSTKSZ = switch (native_arch)
  const SIOCADDDLCI = 0x898
  const SIOCADDMULTI = 0x893
  const SIOCADDRT = 0x890
  const SIOCBONDCHANGEACTIVE = 0x899
  const SIOCBONDENSLAVE = 0x899
  const SIOCBONDINFOQUERY = 0x899
  const SIOCBONDRELEASE = 0x899
  const SIOCBONDSETHWADDR = 0x899
  const SIOCBONDSLAVEINFOQUERY = 0x899
  const SIOCBRADDBR = 0x89a
  const SIOCBRADDIF = 0x89a
  const SIOCBRDELBR = 0x89a
  const SIOCBRDELIF = 0x89a
  const SIOCDARP = 0x895
  const SIOCDELDLCI = 0x898
  const SIOCDELMULTI = 0x893
  const SIOCDELRT = 0x890
  const SIOCDEVPRIVATE = 0x89F
  const SIOCDIFADDR = 0x893
  const SIOCDRARP = 0x896
  const SIOCETHTOOL = 0x894
  const SIOCGARP = 0x895
  const SIOCGHWTSTAMP = 0x89b
  const SIOCGIFADDR = 0x891
  const SIOCGIFBR = 0x894
  const SIOCGIFBRDADDR = 0x891
  const SIOCGIFCONF = 0x891
  const SIOCGIFCOUNT = 0x893
  const SIOCGIFDSTADDR = 0x891
  const SIOCGIFENCAP = 0x892
  const SIOCGIFFLAGS = 0x891
  const SIOCGIFHWADDR = 0x892
  const SIOCGIFINDEX = 0x893
  const SIOCGIFMAP = 0x897
  const SIOCGIFMEM = 0x891
  const SIOCGIFMETRIC = 0x891
  const SIOCGIFMTU = 0x892
  const SIOCGIFNAME = 0x891
  const SIOCGIFNETMASK = 0x891
  const SIOCGIFPFLAGS = 0x893
  const SIOCGIFSLAVE = 0x892
  const SIOCGIFTXQLEN = 0x894
  const SIOCGIFVLAN = 0x898
  const SIOCGMIIPHY = 0x894
  const SIOCGMIIREG = 0x894
  const SIOCGRARP = 0x896
  const SIOCGSKNS = 0x894
  const SIOCGSTAMP = if (native_arch == .x86_64 or @sizeOf(timeval) == 8) SIOCGSTAMP_OLD else SIOCGSTAMP_NE
  const SIOCGSTAMPNS = if (native_arch == .x86_64 or @sizeOf(timespec) == 8) SIOCGSTAMPNS_OLD else SIOCGSTAMPNS_NE
  const SIOCGSTAMPNS_NEW = IOCTL.IOR(SOCK_IOC_TYPE, 0x07, [2]i64
  const SIOCGSTAMPNS_OLD = IOCTL.IOR('s', 101, kernel_timespec
  const SIOCGSTAMP_NEW = IOCTL.IOR(SOCK_IOC_TYPE, 0x06, [2]i64
  const SIOCGSTAMP_OLD = IOCTL.IOR('s', 100, timeval
  const SIOCINQ = T.FIONREA
  const SIOCOUTQ = T.IOCOUT
  const SIOCOUTQNSD = 0x894
  const SIOCPROTOPRIVATE = 0x89E
  const SIOCRTMSG = 0x890
  const SIOCSARP = 0x895
  const SIOCSHWTSTAMP = 0x89b
  const SIOCSIFADDR = 0x891
  const SIOCSIFBR = 0x894
  const SIOCSIFBRDADDR = 0x891
  const SIOCSIFDSTADDR = 0x891
  const SIOCSIFENCAP = 0x892
  const SIOCSIFFLAGS = 0x891
  const SIOCSIFHWADDR = 0x892
  const SIOCSIFHWBROADCAST = 0x893
  const SIOCSIFLINK = 0x891
  const SIOCSIFMAP = 0x897
  const SIOCSIFMEM = 0x892
  const SIOCSIFMETRIC = 0x891
  const SIOCSIFMTU = 0x892
  const SIOCSIFNAME = 0x892
  const SIOCSIFNETMASK = 0x891
  const SIOCSIFPFLAGS = 0x893
  const SIOCSIFSLAVE = 0x893
  const SIOCSIFTXQLEN = 0x894
  const SIOCSIFVLAN = 0x898
  const SIOCSMIIREG = 0x894
  const SIOCSRARP = 0x896
  const SIOCWANDEV = 0x894
  const SO = if (is_mips) struct
  const SOCK = struct
  const SOCK_IOC_TYPE = 0x8
  const SOL = struct
  const SOMAXCONN = 12
  const SS = struct
  const STATX = packed struct(u32)
  const STATX_ATTR = packed struct(u64)
  const STDERR_FILENO = 
  const STDIN_FILENO = 
  const STDOUT_FILENO = 
  const SYS = switch (native_arch)
  const Sigaction = struct
  const Statx = extern struct
  const Sysinfo = switch (native_abi)
  const T = if (is_mips) struct
  const TABDLY = enum(u2)
  const TCP = struct
  const TCPI_OPT_ECN = 
  const TCPI_OPT_ECN_SEEN = 1
  const TCPI_OPT_SACK = 
  const TCPI_OPT_SYN_DATA = 3
  const TCPI_OPT_TIMESTAMPS = 
  const TCPI_OPT_WSCALE = 
  const TCSA = std.posix.TCS
  const TFD = switch (native_arch)
  const TIMER = packed struct(u32)
  const TIMERFD_CLOCK = timerfd_clockid_
  const TP_STATUS = extern union
  const TcpRepairOption = enum
  const UDP = struct
  const UDP_ENCAP = struct
  const UMOUNT_NOFOLLOW = 
  const UTIME = struct
  const V = if (is_mips) enum(u32)
  const VDSO = arch_bits.VDS
  const VFS_CAP_FLAGS_EFFECTIVE = 0x00000
  const VFS_CAP_FLAGS_MASK = ~@as(u32, VFS_CAP_REVISION_MASK
  const VFS_CAP_REVISION = VFS_CAP_REVISION_
  const VFS_CAP_REVISION_1 = 0x0100000
  const VFS_CAP_REVISION_2 = 0x0200000
  const VFS_CAP_REVISION_MASK = 0xFF00000
  const VFS_CAP_REVISION_SHIFT = 2
  const VFS_CAP_U32 = VFS_CAP_U32_
  const VFS_CAP_U32_1 = 
  const VFS_CAP_U32_2 = 
  const VTDLY = enum(u1)
  const W = struct
  const W_OK = 
  const XATTR_CAPS_SZ = XATTR_CAPS_SZ_
  const XATTR_CAPS_SZ_1 = @sizeOf(u32) * (1 + 2 * VFS_CAP_U32_1
  const XATTR_CAPS_SZ_2 = @sizeOf(u32) * (1 + 2 * VFS_CAP_U32_2
  const XDP = struct
  const XSK_UNALIGNED_BUF_ADDR_MASK = (1 << XSK_UNALIGNED_BUF_OFFSET_SHIFT) - 
  const XSK_UNALIGNED_BUF_OFFSET_SHIFT = 4
  const X_OK = 
  const addrinfo = extern struct
  const blkcnt_t = u6
  const blksize_t = u3
  const cache_stat = extern struct
  const cache_stat_range = extern struct
  const cap_t = extern struct
  const cap_user_data_t = extern struct
  const cap_user_header_t = extern struct
  const cc_t = u
  const clock_t = isiz
  const clockid_t = enum(u32)
  const cmsghdr = extern struct
  const cpu_count_t = std.meta.Int(.unsigned, std.math.log2(CPU_SETSIZE * 8)
  const cpu_set_t = [CPU_SETSIZE / @sizeOf(usize)]usiz
  const dev_t = u6
  const dirent64 = extern struct
  const dl_phdr_info = extern struct
  const epoll_data = extern union
  const epoll_event = extern struct
  const f_owner_ex = extern struct
  const fanotify = struct
  const fd_t = i3
  const file_handle = extern struct
  const fsid_t = [2]i3
  const futex2_waitone = extern struct
  const futex_param4 = extern union
  const getauxval = if (extern_getauxval) struct
  const gid_t = u3
  const ifinfomsg = extern struct
  const ifmap = extern struct
  const ifreq = extern struct
  const in6_pktinfo = extern struct
  const in_pktinfo = extern struct
  const in_port_t = u1
  const ino_t = u6
  const inotify_event = extern struct
  const io_cqring_offsets = extern struct
  const io_sqring_offsets = extern struct
  const io_uring_buf = extern struct
  const io_uring_buf_reg = extern struct
  const io_uring_buf_ring = extern struct
  const io_uring_cqe = extern struct
  const io_uring_file_index_range = extern struct
  const io_uring_files_update = extern struct
  const io_uring_getevents_arg = extern struct
  const io_uring_napi = extern struct
  const io_uring_notification_register = extern struct
  const io_uring_notification_slot = extern struct
  const io_uring_params = extern struct
  const io_uring_probe = extern struct
  const io_uring_probe_op = extern struct
  const io_uring_recvmsg_out = extern struct
  const io_uring_restriction = extern struct
  const io_uring_rsrc_register = extern struct
  const io_uring_rsrc_update = extern struct
  const io_uring_rsrc_update2 = extern struct
  const io_uring_sqe = @import("linux/io_uring_sqe.zig").io_uring_sq
  const io_uring_sync_cancel_reg = extern struct
  const itimerspec = extern struct
  const k_sigaction = switch (native_arch)
  const kernel_fsid_t = fsid_
  const kernel_rwf = u3
  const kernel_timespec = extern struct
  const linger = extern struct
  const ltchars = if (is_mips or is_ppc or is_sparc) extern struct
  const mmsghdr = extern struct
  const mode_t = u3
  const msghdr = extern struct
  const msghdr_const = extern struct
  const nfds_t = usiz
  const nlink_t = u3
  const nlmsghdr = extern struct
  const off_t = i6
  const perf_event_attr = extern struct
  const perf_event_header = extern struct
  const perf_event_mmap_page = extern struct
  const pid_t = i3
  const pollfd = extern struct
  const prctl_mm_map = extern struct
  const restore = syscall_bits.restor
  const restore_rt = syscall_bits.restore_r
  const rlim_t = u6
  const rlimit = extern struct
  const rlimit_resource = if (native_arch.isMIPS()) enum(c_int)
  const rtattr = extern struct
  const rtnl_link_ifmap = extern struct
  const rtnl_link_stats = extern struct
  const rtnl_link_stats64 = extern struct
  const rusage = extern struct
  const sa_family_t = u1
  const sched_attr = extern struct
  const sched_param = extern struct
  const serial_iso7816 = extern struct
  const serial_rs485 = extern struct
  const sgttyb = if (is_mips or is_ppc or is_sparc) extern struct
  const siginfo_t = if (is_mip
  const signalfd_siginfo = extern struct
  const sigset_t = [(NSIG - 1 + 7) / @bitSizeOf(SigsetElement)]SigsetElemen
  const sigval = extern union
  const sockaddr = extern struct
  const socket_t = i3
  const socketcall = syscall_bits.socketcal
  const socklen_t = u3
  const speed_t = if (is_ppc) enum(c_uint)
  const stack_t = if (is_mip
  const statx_timestamp = extern struct
  const syscall0 = syscall_bits.syscall
  const syscall1 = syscall_bits.syscall
  const syscall2 = syscall_bits.syscall
  const syscall3 = syscall_bits.syscall
  const syscall4 = syscall_bits.syscall
  const syscall5 = syscall_bits.syscall
  const syscall6 = syscall_bits.syscall
  const syscall7 = syscall_bits.syscall
  const syscall_fork = syscall_bits.syscall_for
  const syscall_pipe = syscall_bits.syscall_pip
  const syscalls = @import("linux/syscalls.zig"
  const tc_cflag_t = if (is_ppc) packed struct(tcflag_t)
  const tc_iflag_t = if (is_ppc) packed struct(tcflag_t)
  const tc_lflag_t = if (is_mips) packed struct(tcflag_t)
  const tc_oflag_t = if (is_ppc) packed struct(tcflag_t)
  const tcflag_t = if (native_arch == .sparc) c_ulong else c_uin
  const tchars = if (is_mips or is_ppc or is_sparc) extern struct
  const tcp_fastopen_client_fail = enum
  const tcp_repair_opt = extern struct
  const tcp_repair_window = extern struct
  const termio = extern struct
  const termios = if (is_mips or is_sparc) extern struct
  const termios2 = if (is_mips) extern struct
  const time_t = arch_bits.time_
  const timerfd_clockid_t = enum(u32)
  const timespec = if (native_arch == .hexagon or native_arch == .riscv32) kernel_timespec else extern struct
  const timeval = extern struct
  const timezone = extern struct
  const tls = @import("linux/tls.zig"
  const tpacket3_hdr = extern struct
  const tpacket_bd_header_u = extern union
  const tpacket_bd_ts = extern struct
  const tpacket_block_desc = extern struct
  const tpacket_hdr_v1 = extern struct
  const tpacket_hdr_variant1 = extern struct
  const tpacket_req3 = extern struct
  const tpacket_stats_v3 = extern struct
  const tpacket_versions = enum(u32)
  const uid_t = u3
  const user_desc = arch_bits.user_des
  const utsname = extern struct
  const vfs_cap_data = extern struct
  const xdp_desc = extern struct
  const xdp_mmap_offsets = extern struct
  const xdp_options = extern struct
  const xdp_ring_offset = extern struct
  const xdp_statistics = extern struct
  const xdp_umem_reg = extern struct
  fn CPU_COUNT(set: cpu_set_t) cpu_count_t
  fn accept(fd: i32, noalias addr: ?*sockaddr, noalias len: ?*socklen_t) usize
  fn accept4(fd: i32, noalias addr: ?*sockaddr, noalias len: ?*socklen_t, flags: u32) usize
  fn access(path: [*:0]const u8, mode: u32) usize
  fn acct(path: [*:0]const u8) usize
  fn bind(fd: i32, addr: *const sockaddr, len: socklen_t) usize
  fn bpf(cmd: BPF.Cmd, attr: *BPF.Attr, size: u32) usize
  fn brk(addr: usize) usize
  fn cachestat(fd: fd_t, cstat_range: *const cache_stat_range, cstat: *cache_stat, flags: u32) usize
  fn capget(hdrp: *cap_user_header_t, datap: *cap_user_data_t) usize
  fn capset(hdrp: *cap_user_header_t, datap: *const cap_user_data_t) usize
  fn chdir(path: [*:0]const u8) usize
  fn chmod(path: [*:0]const u8, mode: mode_t) usize
  fn chown(path: [*:0]const u8, owner: uid_t, group: gid_t) usize
  fn chroot(path: [*:0]const u8) usize
  fn clock_getres(clk_id: clockid_t, tp: *timespec) usize
  fn clock_gettime(clk_id: clockid_t, tp: *timespec) usize
  fn clock_nanosleep(clockid: clockid_t, flags: TIMER, request: *const timespec, remain: ?*timespec) usize
  fn clock_settime(clk_id: clockid_t, tp: *const timespec) usize
  fn clone(func: *const fn (arg: usize) callconv(.c) u8, stack: usize, flags: u32, arg: usize, ptid: ?*i32, tp: usize, // aka tls ctid: ?*i32) usize
  fn clone2(flags: u32, child_stack_ptr: usize) usize
  fn clone5(flags: usize, child_stack_ptr: usize, parent_tid: *i32, child_tid: *i32, newtls: usize) usize
  fn close(fd: fd_t) usize
  fn close_range(first: fd_t, last: fd_t, flags: CLOSE_RANGE) usize
  fn connect(fd: i32, addr: *const anyopaque, len: socklen_t) usize
  fn copy_file_range(fd_in: fd_t, off_in: ?*i64, fd_out: fd_t, off_out: ?*i64, len: usize, flags: u32) usize
  fn create(path: [*:0]const u8, perm: mode_t) usize
  fn dup(old: i32) usize
  fn dup2(old: i32, new: i32) usize
  fn dup3(old: i32, new: i32, flags: u32) usize
  fn epoll_create() usize
  fn epoll_create1(flags: usize) usize
  fn epoll_ctl(epoll_fd: i32, op: u32, fd: i32, ev: ?*epoll_event) usize
  fn epoll_pwait(epoll_fd: i32, events: [*]epoll_event, maxevents: u32, timeout: i32, sigmask: ?*const sigset_t) usize
  fn epoll_wait(epoll_fd: i32, events: [*]epoll_event, maxevents: u32, timeout: i32) usize
  fn errno(r: usize) E
  fn eventfd(count: u32, flags: u32) usize
  fn execve(path: [*:0]const u8, argv: [*:null]const ?[*:0]const u8, envp: [*:null]const ?[*:0]const u8) usize
  fn execveat(dirfd: fd_t, path: [*:0]const u8, argv: [*:null]const ?[*:0]const u8, envp: [*:null]const ?[*:0]const u8, flags: EXECVEAT) usize
  fn exit(status: i32) noreturn
  fn exit_group(status: i32) noreturn
  fn faccessat(dirfd: i32, path: [*:0]const u8, mode: u32, flags: u32) usize
  fn fadvise(fd: fd_t, offset: i64, len: i64, advice: usize) usize
  fn fallocate(fd: i32, mode: i32, offset: i64, length: i64) usize
  fn fanotify_init(flags: fanotify.InitFlags, event_f_flags: u32) usize
  fn fanotify_mark(fd: fd_t, flags: fanotify.MarkFlags, mask: fanotify.MarkMask, dirfd: fd_t, pathname: ?[*:0]const u8) usize
  fn fchdir(fd: fd_t) usize
  fn fchmod(fd: i32, mode: mode_t) usize
  fn fchmodat(fd: i32, path: [*:0]const u8, mode: mode_t) usize
  fn fchmodat2(fd: i32, path: [*:0]const u8, mode: mode_t, flags: u32) usize
  fn fchown(fd: i32, owner: uid_t, group: gid_t) usize
  fn fchownat(fd: i32, path: [*:0]const u8, owner: uid_t, group: gid_t, flags: u32) usize
  fn fcntl(fd: fd_t, cmd: i32, arg: usize) usize
  fn fdatasync(fd: fd_t) usize
  fn fgetxattr(fd: fd_t, name: [*:0]const u8, value: [*]u8, size: usize) usize
  fn flistxattr(fd: fd_t, list: [*]u8, size: usize) usize
  fn flock(fd: fd_t, operation: i32) usize
  fn fork() usize
  fn fremovexattr(fd: usize, name: [*:0]const u8) usize
  fn fsconfig(fd: fd_t, cmd: FSCONFIG_CMD, key: ?[*:0]const u8, value: ?[*:0]const u8, aux: u32) usize
  fn fsetxattr(fd: fd_t, name: [*:0]const u8, value: [*]const u8, size: usize, flags: usize) usize
  fn fsmount(fsfd: fd_t, flags: FSMOUNT, attr_flags: MOUNT_ATTR) usize
  fn fsopen(fsname: [*:0]const u8, flags: FSOPEN) usize
  fn fspick(dirfd: fd_t, path: [*:0]const u8, flags: FSPICK) usize
  fn fsync(fd: fd_t) usize
  fn ftruncate(fd: i32, length: i64) usize
  fn futex(uaddr: *const anyopaque, futex_op: FUTEX_OP, val: u32, val2timeout: futex_param4, uaddr2: ?*const anyopaque, val3: u32) usize
  fn futex2_requeue(waiters: [*]const futex2_waitone, flags: FUTEX2_FLAGS_REQUEUE, nr_wake: i32, nr_requeue: i32) usize
  fn futex2_wait(uaddr: *const anyopaque, val: usize, mask: usize, flags: FUTEX2_FLAGS, timeout: ?*const kernel_timespec, clockid: clockid_t) usize
  fn futex2_waitv(futexes: [*]const futex2_waitone, nr_futexes: u32, flags: FUTEX2_FLAGS_WAITV, timeout: ?*const kernel_timespec, clockid: clockid_t) usize
  fn futex2_wake(uaddr: *const anyopaque, mask: usize, nr_wake: i32, flags: FUTEX2_FLAGS) usize
  fn futex_3arg(uaddr: *const anyopaque, futex_op: FUTEX_OP, val: u32) usize
  fn futex_4arg(uaddr: *const anyopaque, futex_op: FUTEX_OP, val: u32, timeout: ?*const timespec) usize
  fn futimens(fd: i32, times: ?*const [2]timespec) usize
  fn getcpu(cpu: ?*usize, node: ?*usize) usize
  fn getcwd(buf: [*]u8, size: usize) usize
  fn getdents(fd: i32, dirp: [*]u8, len: usize) usize
  fn getdents64(fd: i32, dirp: [*]u8, len: usize) usize
  fn getegid() gid_t
  fn geteuid() uid_t
  fn getgid() gid_t
  fn getgroups(size: usize, list: ?[*]gid_t) usize
  fn getitimer(which: i32, curr_value: *itimerspec) usize
  fn getpeername(fd: i32, noalias addr: *sockaddr, noalias len: *socklen_t) usize
  fn getpgid(pid: pid_t) usize
  fn getpid() pid_t
  fn getppid() pid_t
  fn getrandom(buf: [*]u8, count: usize, flags: u32) usize
  fn getresgid(rgid: *gid_t, egid: *gid_t, sgid: *gid_t) usize
  fn getresuid(ruid: *uid_t, euid: *uid_t, suid: *uid_t) usize
  fn getrlimit(resource: rlimit_resource, rlim: *rlimit) usize
  fn getrusage(who: i32, usage: *rusage) usize
  fn getsid(pid: pid_t) usize
  fn getsockname(fd: i32, noalias addr: *sockaddr, noalias len: *socklen_t) usize
  fn getsockopt(fd: i32, level: i32, optname: u32, noalias optval: [*]u8, noalias optlen: *socklen_t) usize
  fn gettid() pid_t
  fn gettimeofday(tv: ?*timeval, tz: ?*timezone) usize
  fn getuid() uid_t
  fn getxattr(path: [*:0]const u8, name: [*:0]const u8, value: [*]u8, size: usize) usize
  fn inotify_add_watch(fd: i32, pathname: [*:0]const u8, mask: u32) usize
  fn inotify_init1(flags: u32) usize
  fn inotify_rm_watch(fd: i32, wd: i32) usize
  fn io_uring_enter(fd: i32, to_submit: u32, min_complete: u32, flags: u32, sig: ?*sigset_t) usize
  fn io_uring_register(fd: i32, opcode: IORING_REGISTER, arg: ?*const anyopaque, nr_args: u32) usize
  fn io_uring_setup(entries: u32, p: *io_uring_params) usize
  fn ioctl(fd: fd_t, request: u32, arg: usize) usize
  fn kill(pid: pid_t, sig: SIG) usize
  fn lchown(path: [*:0]const u8, owner: uid_t, group: gid_t) usize
  fn lgetxattr(path: [*:0]const u8, name: [*:0]const u8, value: [*]u8, size: usize) usize
  fn link(oldpath: [*:0]const u8, newpath: [*:0]const u8) usize
  fn linkat(oldfd: fd_t, oldpath: [*:0]const u8, newfd: fd_t, newpath: [*:0]const u8, flags: u32) usize
  fn listen(fd: i32, backlog: u32) usize
  fn listxattr(path: [*:0]const u8, list: [*]u8, size: usize) usize
  fn llistxattr(path: [*:0]const u8, list: [*]u8, size: usize) usize
  fn llseek(fd: i32, offset: u64, result: ?*u64, whence: usize) usize
  fn lremovexattr(path: [*:0]const u8, name: [*:0]const u8) usize
  fn lseek(fd: i32, offset: i64, whence: usize) usize
  fn lsetxattr(path: [*:0]const u8, name: [*:0]const u8, value: [*]const u8, size: usize, flags: usize) usize
  fn madvise(address: [*]u8, len: usize, advice: u32) usize
  fn map_shadow_stack(addr: u64, size: u64, flags: u32) usize
  fn memfd_create(name: [*:0]const u8, flags: u32) usize
  fn mincore(address: [*]u8, len: usize, vec: [*]u8) usize
  fn mkdir(path: [*:0]const u8, mode: mode_t) usize
  fn mkdirat(dirfd: i32, path: [*:0]const u8, mode: mode_t) usize
  fn mknod(path: [*:0]const u8, mode: u32, dev: u32) usize
  fn mknodat(dirfd: i32, path: [*:0]const u8, mode: u32, dev: u32) usize
  fn mlock(address: [*]const u8, length: usize) usize
  fn mlock2(address: [*]const u8, length: usize, flags: MLOCK) usize
  fn mlockall(flags: MCL) usize
  fn mmap(address: ?[*]u8, length: usize, prot: PROT, flags: MAP, fd: i32, offset: i64) usize
  fn mount(special: ?[*:0]const u8, dir: [*:0]const u8, fstype: ?[*:0]const u8, flags: u32, data: usize) usize
  fn mount_setattr(dirfd: fd_t, path: [*:0]const u8, flags: MOUNT_ATTR) usize
  fn move_mount(from_dirfd: fd_t, from_path: [*:0]const u8, to_dirfd: fd_t, to_path: [*:0]const u8, flags: MOVE_MOUNT) usize
  fn mprotect(address: [*]const u8, length: usize, protection: PROT) usize
  fn mremap(old_addr: ?[*]const u8, old_len: usize, new_len: usize, flags: MREMAP, new_addr: ?[*]const u8) usize
  fn mseal(address: [*]const u8, length: usize, flags: usize) usize
  fn msync(address: [*]const u8, length: usize, flags: i32) usize
  fn munlock(address: [*]const u8, length: usize) usize
  fn munlockall() usize
  fn munmap(address: [*]const u8, length: usize) usize
  fn name_to_handle_at(dirfd: fd_t, pathname: [*:0]const u8, handle: *std.os.linux.file_handle, mount_id: *i32, flags: u32) usize
  fn nanosleep(req: *const timespec, rem: ?*timespec) usize
  fn open(path: [*:0]const u8, flags: O, perm: mode_t) usize
  fn openat(dirfd: i32, path: [*:0]const u8, flags: O, mode: mode_t) usize
  fn pause() usize
  fn perf_event_open(attr: *perf_event_attr, pid: pid_t, cpu: i32, group_fd: fd_t, flags: usize) usize
  fn pidfd_getfd(pidfd: fd_t, targetfd: fd_t, flags: u32) usize
  fn pidfd_open(pid: pid_t, flags: u32) usize
  fn pidfd_send_signal(pidfd: fd_t, sig: SIG, info: ?*siginfo_t, flags: u32) usize
  fn pipe(fd: *[2]i32) usize
  fn pipe2(fd: *[2]i32, flags: O) usize
  fn pivot_root(new_root: [*:0]const u8, put_old: [*:0]const u8) usize
  fn poll(fds: [*]pollfd, n: nfds_t, timeout: i32) usize
  fn ppoll(fds: [*]pollfd, n: nfds_t, timeout: ?*timespec, sigmask: ?*const sigset_t) usize
  fn prctl(option: i32, arg2: usize, arg3: usize, arg4: usize, arg5: usize) usize
  fn pread(fd: i32, buf: [*]u8, count: usize, offset: i64) usize
  fn preadv(fd: i32, iov: [*]const iovec, count: usize, offset: i64) usize
  fn preadv2(fd: i32, iov: [*]const iovec, count: usize, offset: i64, flags: kernel_rwf) usize
  fn prlimit(pid: pid_t, resource: rlimit_resource, new_limit: ?*const rlimit, old_limit: ?*rlimit) usize
  fn process_vm_readv(pid: pid_t, local: []const iovec, remote: []const iovec_const, flags: usize) usize
  fn process_vm_writev(pid: pid_t, local: []const iovec_const, remote: []const iovec_const, flags: usize) usize
  fn ptrace(req: u32, pid: pid_t, addr: usize, data: usize, addr2: usize) usize
  fn pwrite(fd: i32, buf: [*]const u8, count: usize, offset: i64) usize
  fn pwritev(fd: i32, iov: [*]const iovec_const, count: usize, offset: i64) usize
  fn pwritev2(fd: i32, iov: [*]const iovec_const, count: usize, offset: i64, flags: kernel_rwf) usize
  fn read(fd: i32, buf: [*]u8, count: usize) usize
  fn readlink(noalias path: [*:0]const u8, noalias buf_ptr: [*]u8, buf_len: usize) usize
  fn readlinkat(dirfd: i32, noalias path: [*:0]const u8, noalias buf_ptr: [*]u8, buf_len: usize) usize
  fn readv(fd: i32, iov: [*]const iovec, count: usize) usize
  fn reboot(magic: LINUX_REBOOT.MAGIC1, magic2: LINUX_REBOOT.MAGIC2, cmd: LINUX_REBOOT.CMD, arg: ?*const anyopaque) usize
  fn recvfrom(fd: i32, noalias buf: [*]u8, len: usize, flags: u32, noalias addr: ?*sockaddr, noalias alen: ?*socklen_t) usize
  fn recvmmsg(fd: i32, msgvec: ?[*]mmsghdr, vlen: u32, flags: u32, timeout: ?*timespec) usize
  fn recvmsg(fd: i32, msg: *msghdr, flags: u32) usize
  fn removexattr(path: [*:0]const u8, name: [*:0]const u8) usize
  fn rename(old: [*:0]const u8, new: [*:0]const u8) usize
  fn renameat(oldfd: i32, oldpath: [*:0]const u8, newfd: i32, newpath: [*:0]const u8) usize
  fn renameat2(oldfd: i32, oldpath: [*:0]const u8, newfd: i32, newpath: [*:0]const u8, flags: RENAME) usize
  fn rmdir(path: [*:0]const u8) usize
  fn sched_get_priority_max(policy: SCHED) usize
  fn sched_get_priority_min(policy: SCHED) usize
  fn sched_getaffinity(pid: pid_t, size: usize, set: *cpu_set_t) usize
  fn sched_getattr(pid: pid_t, attr: *sched_attr, size: usize, flags: usize) usize
  fn sched_getparam(pid: pid_t, param: *sched_param) usize
  fn sched_getscheduler(pid: pid_t) usize
  fn sched_rr_get_interval(pid: pid_t, tp: *timespec) usize
  fn sched_setaffinity(pid: pid_t, set: *const cpu_set_t) !void
  fn sched_setattr(pid: pid_t, attr: *const sched_attr, flags: usize) usize
  fn sched_setparam(pid: pid_t, param: *const sched_param) usize
  fn sched_setscheduler(pid: pid_t, policy: SCHED, param: *const sched_param) usize
  fn sched_yield() usize
  fn seccomp(operation: u32, flags: u32, args: ?*const anyopaque) usize
  fn sendfile(outfd: i32, infd: i32, offset: ?*i64, count: usize) usize
  fn sendmmsg(fd: i32, msgvec: [*]mmsghdr, vlen: u32, flags: u32) usize
  fn sendmsg(fd: i32, msg: *const msghdr_const, flags: u32) usize
  fn sendto(fd: i32, buf: [*]const u8, len: usize, flags: u32, addr: ?*const sockaddr, alen: socklen_t) usize
  fn set_tid_address(tidptr: ?*pid_t) pid_t
  fn setegid(egid: gid_t) usize
  fn seteuid(euid: uid_t) usize
  fn setgid(gid: gid_t) usize
  fn setgroups(size: usize, list: [*]const gid_t) usize
  fn setitimer(which: i32, new_value: *const itimerspec, old_value: ?*itimerspec) usize
  fn setns(fd: fd_t, flags: u32) usize
  fn setpgid(pid: pid_t, pgid: pid_t) usize
  fn setregid(rgid: gid_t, egid: gid_t) usize
  fn setresgid(rgid: gid_t, egid: gid_t, sgid: gid_t) usize
  fn setresuid(ruid: uid_t, euid: uid_t, suid: uid_t) usize
  fn setreuid(ruid: uid_t, euid: uid_t) usize
  fn setrlimit(resource: rlimit_resource, rlim: *const rlimit) usize
  fn setsid() usize
  fn setsockopt(fd: i32, level: i32, optname: u32, optval: [*]const u8, optlen: socklen_t) usize
  fn settimeofday(tv: *const timeval, tz: *const timezone) usize
  fn setuid(uid: uid_t) usize
  fn setxattr(path: [*:0]const u8, name: [*:0]const u8, value: [*]const u8, size: usize, flags: usize) usize
  fn shutdown(fd: i32, how: i32) usize
  fn sigaction(sig: SIG, noalias act: ?*const Sigaction, noalias oact: ?*Sigaction) usize
  fn sigaddset(set: *sigset_t, sig: SIG) void
  fn sigaltstack(ss: ?*const stack_t, old_ss: ?*stack_t) usize
  fn sigdelset(set: *sigset_t, sig: SIG) void
  fn sigemptyset() sigset_t
  fn sigfillset() sigset_t
  fn sigismember(set: *const sigset_t, sig: SIG) bool
  fn signalfd(fd: fd_t, mask: *const sigset_t, flags: u32) usize
  fn sigprocmask(flags: u32, noalias set: ?*const sigset_t, noalias oldset: ?*sigset_t) usize
  fn sigrtmax() u8
  fn sigrtmin() u8
  fn socket(domain: u32, socket_type: u32, protocol: u32) usize
  fn socketpair(domain: u32, socket_type: u32, protocol: u32, fd: *[2]i32) usize
  fn statx(dirfd: i32, path: [*:0]const u8, flags: u32, mask: STATX, statx_buf: *Statx) usize
  fn symlink(existing: [*:0]const u8, new: [*:0]const u8) usize
  fn symlinkat(existing: [*:0]const u8, newfd: i32, newpath: [*:0]const u8) usize
  fn sync() void
  fn syncfs(fd: fd_t) usize
  fn sysinfo(info: *Sysinfo) usize
  fn tcdrain(fd: fd_t) usize
  fn tcgetattr(fd: fd_t, termios_p: *termios) usize
  fn tcgetpgrp(fd: fd_t, pgrp: *pid_t) usize
  fn tcsetattr(fd: fd_t, optional_action: TCSA, termios_p: *const termios) usize
  fn tcsetpgrp(fd: fd_t, pgrp: *const pid_t) usize
  fn tgkill(tgid: pid_t, tid: pid_t, sig: SIG) usize
  fn timerfd_create(clockid: timerfd_clockid_t, flags: TFD) usize
  fn timerfd_gettime(fd: i32, curr_value: *itimerspec) usize
  fn timerfd_settime(fd: i32, flags: TFD.TIMER, new_value: *const itimerspec, old_value: ?*itimerspec) usize
  fn tkill(tid: pid_t, sig: SIG) usize
  fn umount(special: [*:0]const u8) usize
  fn umount2(special: [*:0]const u8, flags: u32) usize
  fn uname(uts: *utsname) usize
  fn unlink(path: [*:0]const u8) usize
  fn unlinkat(dirfd: i32, path: [*:0]const u8, flags: u32) usize
  fn unshare(flags: usize) usize
  fn utimensat(dirfd: i32, path: ?[*:0]const u8, times: ?*const [2]timespec, flags: u32) usize
  fn wait4(pid: pid_t, status: *u32, flags: u32, usage: ?*rusage) usize
  fn waitid(id_type: P, id: i32, infop: *siginfo_t, flags: u32, usage: ?*rusage) usize
  fn waitpid(pid: pid_t, status: *u32, flags: u32) usize
  fn write(fd: i32, buf: [*]const u8, count: usize) usize
  fn writev(fd: i32, iov: [*]const iovec_const, count: usize) usize
  inline fn vfork() usize
  var elf_aux_maybe: ?[*]std.elf.Auxv = nul
}

std.os.plan9.x86_64 {
  fn syscall1(sys: plan9.SYS, arg0: usize) usize
  fn syscall2(sys: plan9.SYS, arg0: usize, arg1: usize) usize
  fn syscall3(sys: plan9.SYS, arg0: usize, arg1: usize, arg2: usize) usize
  fn syscall4(sys: plan9.SYS, arg0: usize, arg1: usize, arg2: usize, arg3: usize) usize
}

std.os.plan9 {
  const AT = struct
  const AccessMode = enum(u2)
  const E = enum(u16)
  const ERRMAX = 12
  const ExecData = struct
  const O = packed struct(u32)
  const PATH_MAX = 102
  const Plink = anyopaqu
  const SIG = struct
  const STDERR_FILENO = 
  const STDIN_FILENO = 
  const STDOUT_FILENO = 
  const SYS = enum(usize)
  const Sigaction = extern struct
  const Tos = extern struct
  const fd_t = i3
  const mode_t = i3
  const siginfo_t = c_lon
  const sigset_t = c_lon
  const syscall_bits = switch (builtin.cpu.arch)
  fn brk_(addr: usize) i32
  fn close(fd: i32) usize
  fn create(path: [*:0]const u8, omode: mode_t, perms: usize) usize
  fn errno(r: usize) E
  fn errstr() []const u8
  fn exit(status: u8) noreturn
  fn exits(status: ?[*:0]const u8) noreturn
  fn fd2path(fd: i32, buf: [*]u8, nbuf: usize) usize
  fn getpid() u32
  fn open(path: [*:0]const u8, flags: u32) usize
  fn openat(dirfd: i32, path: [*:0]const u8, flags: u32, _: mode_t) usize
  fn pread(fd: i32, buf: [*]const u8, count: usize, offset: isize) usize
  fn pwrite(fd: i32, buf: [*]const u8, count: usize, offset: isize) usize
  fn read(fd: i32, buf: [*]const u8, count: usize) usize
  fn sbrk(n: usize) usize
  fn sigaction(sig: u6, noalias act: ?*const Sigaction, noalias oact: ?*Sigaction) usize
  fn sigemptyset() sigset_t
  fn write(fd: i32, buf: [*]const u8, count: usize) usize
  var tos: *Tos = undefined; // set in start.z
}

std.os.uefi.device_path {
  const DevicePath = union(Type)
}

std.os.uefi.hii {
  const Handle = *opaque {
  const NarrowGlyph = extern struct
  const NarrowGlyphAttributes = packed struct(u8)
  const PackageHeader = packed struct(u32)
  const PackageList = extern struct
  const SimplifiedFontPackage = extern struct
  const StringPackage = extern struct
  const WideGlyph = extern struct
  const WideGlyphAttributes = packed struct(u8)
}

std.os.uefi.pool_allocator {
  const pool_allocator = Allocato
  const raw_pool_allocator = Allocato
}

std.os.uefi.protocol.absolute_pointer {
  const AbsolutePointer = extern struct
}

std.os.uefi.protocol.block_io {
  const BlockIo = extern struct
}

std.os.uefi.protocol.device_path {
  const DevicePath = extern struct
}

std.os.uefi.protocol.edid {
  const Active = extern struct
  const Discovered = extern struct
  const Override = extern struct
}

std.os.uefi.protocol.file {
  const File = extern struct
}

std.os.uefi.protocol.graphics_output {
  const GraphicsOutput = extern struct
}

std.os.uefi.protocol.hii_database {
  const HiiDatabase = extern struct
}

std.os.uefi.protocol.hii_popup {
  const HiiPopup = extern struct
}

std.os.uefi.protocol.ip6 {
  const Ip6 = extern struct
}

std.os.uefi.protocol.ip6_config {
  const Ip6Config = extern struct
}

std.os.uefi.protocol.loaded_image {
  const LoadedImage = extern struct
}

std.os.uefi.protocol.managed_network {
  const ManagedNetwork = extern struct
}

std.os.uefi.protocol.rng {
  const Rng = extern struct
}

std.os.uefi.protocol.serial_io {
  const SerialIo = extern struct
}

std.os.uefi.protocol.service_binding {
  fn ServiceBinding(service_guid: Guid) type
}

std.os.uefi.protocol.shell_parameters {
  const ShellParameters = extern struct
}

std.os.uefi.protocol.simple_file_system {
  const SimpleFileSystem = extern struct
}

std.os.uefi.protocol.simple_network {
  const SimpleNetwork = extern struct
}

std.os.uefi.protocol.simple_pointer {
  const SimplePointer = struct
}

std.os.uefi.protocol.simple_text_input {
  const SimpleTextInput = extern struct
}

std.os.uefi.protocol.simple_text_input_ex {
  const SimpleTextInputEx = extern struct
}

std.os.uefi.protocol.simple_text_output {
  const SimpleTextOutput = extern struct
}

std.os.uefi.protocol.udp6 {
  const Udp6 = extern struct
}

std.os.uefi.protocol {
  const AbsolutePointer = @import("protocol/absolute_pointer.zig").AbsolutePointe
  const BlockIo = @import("protocol/block_io.zig").BlockI
  const DevicePath = @import("protocol/device_path.zig").DevicePat
  const File = @import("protocol/file.zig").Fil
  const GraphicsOutput = @import("protocol/graphics_output.zig").GraphicsOutpu
  const HiiDatabase = @import("protocol/hii_database.zig").HiiDatabas
  const HiiPopup = @import("protocol/hii_popup.zig").HiiPopu
  const Ip6 = @import("protocol/ip6.zig").Ip
  const Ip6Config = @import("protocol/ip6_config.zig").Ip6Confi
  const Ip6ServiceBinding = ServiceBinding(
  const LoadedImage = @import("protocol/loaded_image.zig").LoadedImag
  const ManagedNetwork = @import("protocol/managed_network.zig").ManagedNetwor
  const Rng = @import("protocol/rng.zig").Rn
  const SerialIo = @import("protocol/serial_io.zig").SerialI
  const ServiceBinding = @import("protocol/service_binding.zig").ServiceBindin
  const ShellParameters = @import("protocol/shell_parameters.zig").ShellParameter
  const SimpleFileSystem = @import("protocol/simple_file_system.zig").SimpleFileSyste
  const SimpleNetwork = @import("protocol/simple_network.zig").SimpleNetwor
  const SimplePointer = @import("protocol/simple_pointer.zig").SimplePointe
  const SimpleTextInput = @import("protocol/simple_text_input.zig").SimpleTextInpu
  const SimpleTextInputEx = @import("protocol/simple_text_input_ex.zig").SimpleTextInputE
  const SimpleTextOutput = @import("protocol/simple_text_output.zig").SimpleTextOutpu
  const Udp6 = @import("protocol/udp6.zig").Udp
  const Udp6ServiceBinding = ServiceBinding(
  const edid = @import("protocol/edid.zig"
}

std.os.uefi.status {
  const Status = enum(usize)
}

std.os.uefi.tables.boot_services {
  const BootServices = extern struct
}

std.os.uefi.tables.configuration_table {
  const ConfigurationTable = extern struct
}

std.os.uefi.tables.runtime_services {
  const RuntimeServices = extern struct
}

std.os.uefi.tables.system_table {
  const SystemTable = extern struct
}

std.os.uefi.tables.table_header {
  const TableHeader = extern struct
}

std.os.uefi.tables {
  const AllocateLocation = union(AllocateType)
  const AllocateType = enum(u32)
  const BootServices = @import("tables/boot_services.zig").BootService
  const CapsuleHeader = extern struct
  const ConfigurationTable = @import("tables/configuration_table.zig").ConfigurationTabl
  const EventNotify = *const fn (event: Event, ctx: *anyopaque) callconv(cc) voi
  const InterfaceType = enum(u32)
  const LocateSearch = union(LocateSearchType)
  const LocateSearchType = enum(u32)
  const MemoryDescriptor = extern struct
  const MemoryDescriptorAttribute = packed struct(u64)
  const MemoryDescriptorIterator = struct
  const MemoryMapInfo = struct
  const MemoryMapKey = enum(usize) { _ 
  const MemoryMapSlice = struct
  const MemoryType = enum(u32)
  const OpenProtocolArgs = union(OpenProtocolAttributes)
  const OpenProtocolAttributes = enum(u32)
  const PhysicalAddress = u6
  const ProtocolInformationEntry = extern struct
  const ResetType = enum(u32)
  const RuntimeServices = @import("tables/runtime_services.zig").RuntimeService
  const SystemTable = @import("tables/system_table.zig").SystemTabl
  const TableHeader = @import("tables/table_header.zig").TableHeade
  const TimerDelay = enum(u32)
  const UefiCapsuleBlockDescriptor = extern struct
  const global_variable = Gui
}

std.os.uefi {
  const DevicePath = @import("uefi/device_path.zig").DevicePat
  const Error = UnexpectedError || Status.Erro
  const Event = *opaque {
  const EventRegistration = *const opaque {
  const EventType = packed struct(u32)
  const FileHandle = *opaque {
  const Guid = extern struct
  const Handle = *opaque {
  const IpAddress = extern union
  const Ipv4Address = extern struct
  const Ipv6Address = extern struct
  const MacAddress = extern struct
  const Page = [4096]u
  const Status = @import("uefi/status.zig").Statu
  const Time = extern struct
  const TimeCapabilities = extern struct
  const UnexpectedError = error{Unexpected
  const cc: std.builtin.CallingConvention = switch (@import("builtin").target.cpu.arch)
  const hii = @import("uefi/hii.zig"
  const pool_allocator = @import("uefi/pool_allocator.zig").pool_allocato
  const protocol = @import("uefi/protocol.zig"
  const raw_pool_allocator = @import("uefi/pool_allocator.zig").raw_pool_allocato
  const tables = @import("uefi/tables.zig"
  fn unexpectedStatus(status: Status) UnexpectedError
  var efi_pool_memory_type: tables.MemoryType = .loader_dat
  var handle: Handle = undefine
  var system_table: *tables.SystemTable = undefine
}

std.os.wasi {
  const DIRCOOKIE_START: dircookie_t = 
  const EVENT_FD_READWRITE_HANGUP: eventrwflags_t = 0x000
  const SOCK = struct
  const SUBSCRIPTION_CLOCK_ABSTIME: subclockflags_t = 0x000
  const advice_t = enum(u8)
  const ciovec_t = std.posix.iovec_cons
  const clockid_t = enum(u32)
  const device_t = u6
  const dircookie_t = u6
  const dirent_t = extern struct
  const dirnamlen_t = u3
  const errno_t = enum(u16)
  const event_t = extern struct
  const eventfdreadwrite_t = extern struct
  const eventrwflags_t = u1
  const eventtype_t = enum(u8)
  const exitcode_t = u3
  const fd_t = i3
  const fdflags_t = packed struct(u16)
  const fdstat_t = extern struct
  const filedelta_t = i6
  const filesize_t = u6
  const filestat_t = extern struct
  const filetype_t = enum(u8)
  const fstflags_t = packed struct(u16)
  const inode_t = u6
  const iovec_t = std.posix.iove
  const linkcount_t = u6
  const lookupflags_t = packed struct(u32)
  const oflags_t = packed struct(u16)
  const preopentype_t = enum(u8)
  const prestat_dir_t = extern struct
  const prestat_t = extern struct
  const prestat_u_t = extern union
  const riflags_t = u1
  const rights_t = packed struct(u64)
  const roflags_t = u1
  const sdflags_t = packed struct(u8)
  const siflags_t = u1
  const signal_t = enum(u8)
  const subclockflags_t = u1
  const subscription_clock_t = extern struct
  const subscription_fd_readwrite_t = extern struct
  const subscription_t = extern struct
  const subscription_u_t = extern struct
  const subscription_u_u_t = extern union
  const timestamp_t = u6
  const userdata_t = u6
  const whence_t = enum(u8) { SET, CUR, END 
  extern "wasi_snapshot_preview1" fn args_get(argv: [*][*:0]u8, argv_buf: [*]u8) errno_
  extern "wasi_snapshot_preview1" fn args_sizes_get(argc: *usize, argv_buf_size: *usize) errno_
  extern "wasi_snapshot_preview1" fn clock_res_get(clock_id: clockid_t, resolution: *timestamp_t) errno_
  extern "wasi_snapshot_preview1" fn clock_time_get(clock_id: clockid_t, precision: timestamp_t, timestamp: *timestamp_t) errno_
  extern "wasi_snapshot_preview1" fn environ_get(environ: [*][*:0]u8, environ_buf: [*]u8) errno_
  extern "wasi_snapshot_preview1" fn environ_sizes_get(environ_count: *usize, environ_buf_size: *usize) errno_
  extern "wasi_snapshot_preview1" fn fd_advise(fd: fd_t, offset: filesize_t, len: filesize_t, advice: advice_t) errno_
  extern "wasi_snapshot_preview1" fn fd_allocate(fd: fd_t, offset: filesize_t, len: filesize_t) errno_
  extern "wasi_snapshot_preview1" fn fd_close(fd: fd_t) errno_
  extern "wasi_snapshot_preview1" fn fd_datasync(fd: fd_t) errno_
  extern "wasi_snapshot_preview1" fn fd_fdstat_get(fd: fd_t, buf: *fdstat_t) errno_
  extern "wasi_snapshot_preview1" fn fd_fdstat_set_flags(fd: fd_t, flags: fdflags_t) errno_
  extern "wasi_snapshot_preview1" fn fd_fdstat_set_rights(fd: fd_t, fs_rights_base: rights_t, fs_rights_inheriting: rights_t) errno_
  extern "wasi_snapshot_preview1" fn fd_filestat_get(fd: fd_t, buf: *filestat_t) errno_
  extern "wasi_snapshot_preview1" fn fd_filestat_set_size(fd: fd_t, st_size: filesize_t) errno_
  extern "wasi_snapshot_preview1" fn fd_filestat_set_times(fd: fd_t, st_atim: timestamp_t, st_mtim: timestamp_t, fstflags: fstflags_t) errno_
  extern "wasi_snapshot_preview1" fn fd_pread(fd: fd_t, iovs: [*]const iovec_t, iovs_len: usize, offset: filesize_t, nread: *usize) errno_
  extern "wasi_snapshot_preview1" fn fd_prestat_dir_name(fd: fd_t, path: [*]u8, path_len: usize) errno_
  extern "wasi_snapshot_preview1" fn fd_prestat_get(fd: fd_t, buf: *prestat_t) errno_
  extern "wasi_snapshot_preview1" fn fd_pwrite(fd: fd_t, iovs: [*]const ciovec_t, iovs_len: usize, offset: filesize_t, nwritten: *usize) errno_
  extern "wasi_snapshot_preview1" fn fd_read(fd: fd_t, iovs: [*]const iovec_t, iovs_len: usize, nread: *usize) errno_
  extern "wasi_snapshot_preview1" fn fd_readdir(fd: fd_t, buf: [*]u8, buf_len: usize, cookie: dircookie_t, bufused: *usize) errno_
  extern "wasi_snapshot_preview1" fn fd_renumber(from: fd_t, to: fd_t) errno_
  extern "wasi_snapshot_preview1" fn fd_seek(fd: fd_t, offset: filedelta_t, whence: whence_t, newoffset: *filesize_t) errno_
  extern "wasi_snapshot_preview1" fn fd_sync(fd: fd_t) errno_
  extern "wasi_snapshot_preview1" fn fd_tell(fd: fd_t, newoffset: *filesize_t) errno_
  extern "wasi_snapshot_preview1" fn fd_write(fd: fd_t, iovs: [*]const ciovec_t, iovs_len: usize, nwritten: *usize) errno_
  extern "wasi_snapshot_preview1" fn path_create_directory(fd: fd_t, path: [*]const u8, path_len: usize) errno_
  extern "wasi_snapshot_preview1" fn path_filestat_get(fd: fd_t, flags: lookupflags_t, path: [*]const u8, path_len: usize, buf: *filestat_t) errno_
  extern "wasi_snapshot_preview1" fn path_filestat_set_times(fd: fd_t, flags: lookupflags_t, path: [*]const u8, path_len: usize, st_atim: timestamp_t, st_mtim: timestamp_t, fstflags: fstflags_t) errno_
  extern "wasi_snapshot_preview1" fn path_link(old_fd: fd_t, old_flags: lookupflags_t, old_path: [*]const u8, old_path_len: usize, new_fd: fd_t, new_path: [*]const u8, new_path_len: usize) errno_
  extern "wasi_snapshot_preview1" fn path_open(dirfd: fd_t, dirflags: lookupflags_t, path: [*]const u8, path_len: usize, oflags: oflags_t, fs_rights_base: rights_t, fs_rights_inheriting: rights_t, fs_flags: fdflags_t, fd: *fd_t) errno_
  extern "wasi_snapshot_preview1" fn path_readlink(fd: fd_t, path: [*]const u8, path_len: usize, buf: [*]u8, buf_len: usize, bufused: *usize) errno_
  extern "wasi_snapshot_preview1" fn path_remove_directory(fd: fd_t, path: [*]const u8, path_len: usize) errno_
  extern "wasi_snapshot_preview1" fn path_rename(old_fd: fd_t, old_path: [*]const u8, old_path_len: usize, new_fd: fd_t, new_path: [*]const u8, new_path_len: usize) errno_
  extern "wasi_snapshot_preview1" fn path_symlink(old_path: [*]const u8, old_path_len: usize, fd: fd_t, new_path: [*]const u8, new_path_len: usize) errno_
  extern "wasi_snapshot_preview1" fn path_unlink_file(fd: fd_t, path: [*]const u8, path_len: usize) errno_
  extern "wasi_snapshot_preview1" fn poll_oneoff(in: *const subscription_t, out: *event_t, nsubscriptions: usize, nevents: *usize) errno_
  extern "wasi_snapshot_preview1" fn proc_exit(rval: exitcode_t) noretur
  extern "wasi_snapshot_preview1" fn random_get(buf: [*]u8, buf_len: usize) errno_
  extern "wasi_snapshot_preview1" fn sched_yield() errno_
  extern "wasi_snapshot_preview1" fn sock_accept(sock: fd_t, flags: fdflags_t, result_fd: *fd_t) errno_
  extern "wasi_snapshot_preview1" fn sock_recv(sock: fd_t, ri_data: [*]iovec_t, ri_data_len: usize, ri_flags: riflags_t, ro_datalen: *usize, ro_flags: *roflags_t) errno_
  extern "wasi_snapshot_preview1" fn sock_send(sock: fd_t, si_data: [*]const ciovec_t, si_data_len: usize, si_flags: siflags_t, so_datalen: *usize) errno_
  extern "wasi_snapshot_preview1" fn sock_shutdown(sock: fd_t, how: sdflags_t) errno_
}

std.os.windows.crypt32 {
  const CERT_CHAIN = packed struct(DWORD)
  const CERT_CLOSE_STORE_FLAG = packed struct(DWORD)
  const CERT_CONTEXT = extern struct
  const CERT_ENHKEY_USAGE = CTL_USAG
  const CERT_INFO = *opaque {
  const CERT_STORE = struct
  const CTL_USAGE = extern struct
  const ENCODING = enum(u16)
  const HCERTCHAINENGINE = enum(usize)
  const HCERTSTORE = *opaque {
  const HCRYPTPROV_LEGACY = enum(usize) { NULL = 0 
  const HTTPSPolicyCallbackData = extern struct
  extern "crypt32" fn CertAddEncodedCertificateToStor
  extern "crypt32" fn CertCloseStor
  extern "crypt32" fn CertEnumCertificatesInStor
  extern "crypt32" fn CertFreeCertificateChai
  extern "crypt32" fn CertFreeCertificateContex
  extern "crypt32" fn CertGetCertificateChai
  extern "crypt32" fn CertOpenStor
  extern "crypt32" fn CertOpenSystemStore
  extern "crypt32" fn CertVerifyCertificateChainPolic
}

std.os.windows.kernel32 {
  extern "kernel32" fn CreateProcess
}

std.os.windows.lang {
  const AFRIKAANS = 0x3
  const ALBANIAN = 0x1
  const ALSATIAN = 0x8
  const AMHARIC = 0x5
  const ARABIC = 0x0
  const ARMENIAN = 0x2
  const ASSAMESE = 0x4
  const AZERBAIJANI = 0x2
  const AZERI = 0x2
  const BANGLA = 0x4
  const BASHKIR = 0x6
  const BASQUE = 0x2
  const BELARUSIAN = 0x2
  const BENGALI = 0x4
  const BOSNIAN = 0x1
  const BOSNIAN_NEUTRAL = 0x781
  const BRETON = 0x7
  const BULGARIAN = 0x0
  const CATALAN = 0x0
  const CENTRAL_KURDISH = 0x9
  const CHEROKEE = 0x5
  const CHINESE = 0x0
  const CHINESE_SIMPLIFIED = 0x0
  const CHINESE_TRADITIONAL = 0x7c0
  const CORSICAN = 0x8
  const CROATIAN = 0x1
  const CZECH = 0x0
  const DANISH = 0x0
  const DARI = 0x8
  const DIVEHI = 0x6
  const DUTCH = 0x1
  const ENGLISH = 0x0
  const ESTONIAN = 0x2
  const FAEROESE = 0x3
  const FARSI = 0x2
  const FILIPINO = 0x6
  const FINNISH = 0x0
  const FRENCH = 0x0
  const FRISIAN = 0x6
  const FULAH = 0x6
  const GALICIAN = 0x5
  const GEORGIAN = 0x3
  const GERMAN = 0x0
  const GREEK = 0x0
  const GREENLANDIC = 0x6
  const GUJARATI = 0x4
  const HAUSA = 0x6
  const HAWAIIAN = 0x7
  const HEBREW = 0x0
  const HINDI = 0x3
  const HUNGARIAN = 0x0
  const ICELANDIC = 0x0
  const IGBO = 0x7
  const INDONESIAN = 0x2
  const INUKTITUT = 0x5
  const INVARIANT = 0x7
  const IRISH = 0x3
  const ITALIAN = 0x1
  const JAPANESE = 0x1
  const KANNADA = 0x4
  const KASHMIRI = 0x6
  const KAZAK = 0x3
  const KHMER = 0x5
  const KICHE = 0x8
  const KINYARWANDA = 0x8
  const KONKANI = 0x5
  const KOREAN = 0x1
  const KYRGYZ = 0x4
  const LAO = 0x5
  const LATVIAN = 0x2
  const LITHUANIAN = 0x2
  const LOWER_SORBIAN = 0x2
  const LUXEMBOURGISH = 0x6
  const MACEDONIAN = 0x2
  const MALAY = 0x3
  const MALAYALAM = 0x4
  const MALTESE = 0x3
  const MANIPURI = 0x5
  const MAORI = 0x8
  const MAPUDUNGUN = 0x7
  const MARATHI = 0x4
  const MOHAWK = 0x7
  const MONGOLIAN = 0x5
  const NEPALI = 0x6
  const NEUTRAL = 0x0
  const NORWEGIAN = 0x1
  const OCCITAN = 0x8
  const ODIA = 0x4
  const ORIYA = 0x4
  const PASHTO = 0x6
  const PERSIAN = 0x2
  const POLISH = 0x1
  const PORTUGUESE = 0x1
  const PULAR = 0x6
  const PUNJABI = 0x4
  const QUECHUA = 0x6
  const ROMANIAN = 0x1
  const ROMANSH = 0x1
  const RUSSIAN = 0x1
  const SAKHA = 0x8
  const SAMI = 0x3
  const SANSKRIT = 0x4
  const SCOTTISH_GAELIC = 0x9
  const SERBIAN = 0x1
  const SERBIAN_NEUTRAL = 0x7c1
  const SINDHI = 0x5
  const SINHALESE = 0x5
  const SLOVAK = 0x1
  const SLOVENIAN = 0x2
  const SOTHO = 0x6
  const SPANISH = 0x0
  const SWAHILI = 0x4
  const SWEDISH = 0x1
  const SYRIAC = 0x5
  const TAJIK = 0x2
  const TAMAZIGHT = 0x5
  const TAMIL = 0x4
  const TATAR = 0x4
  const TELUGU = 0x4
  const THAI = 0x1
  const TIBETAN = 0x5
  const TIGRIGNA = 0x7
  const TIGRINYA = 0x7
  const TSWANA = 0x3
  const TURKISH = 0x1
  const TURKMEN = 0x4
  const UIGHUR = 0x8
  const UKRAINIAN = 0x2
  const UPPER_SORBIAN = 0x2
  const URDU = 0x2
  const UZBEK = 0x4
  const VALENCIAN = 0x0
  const VIETNAMESE = 0x2
  const WELSH = 0x5
  const WOLOF = 0x8
  const XHOSA = 0x3
  const YAKUT = 0x8
  const YI = 0x7
  const YORUBA = 0x6
  const ZULU = 0x3
}

std.os.windows.nls {
  fn upcaseW(c: u16) u16
}

std.os.windows.ntdll {
  extern "ntdll" fn LdrAddRefDl
  extern "ntdll" fn LdrFindEntryForAddres
  extern "ntdll" fn LdrGetDllFullNam
  extern "ntdll" fn LdrGetDllHandl
  extern "ntdll" fn LdrGetDllHandleByMappin
  extern "ntdll" fn LdrGetDllHandleByNam
  extern "ntdll" fn LdrGetDllHandleE
  extern "ntdll" fn LdrGetDllPat
  extern "ntdll" fn LdrGetProcedureAddres
  extern "ntdll" fn LdrGetProcedureAddressE
  extern "ntdll" fn LdrGetProcedureAddressForCalle
  extern "ntdll" fn LdrLoadDl
  extern "ntdll" fn LdrRegisterDllNotificatio
  extern "ntdll" fn LdrUnloadDl
  extern "ntdll" fn LdrUnregisterDllNotificatio
  extern "ntdll" fn NtAlertMultipleThreadByThreadI
  extern "ntdll" fn NtAlertThread(ThreadHandle: HANDLE) callconv(.winapi) NTSTATU
  extern "ntdll" fn NtAlertThreadByThreadId(ThreadId: DWORD) callconv(.winapi) NTSTATU
  extern "ntdll" fn NtAllocateVirtualMemor
  extern "ntdll" fn NtCancelIoFil
  extern "ntdll" fn NtCancelIoFileE
  extern "ntdll" fn NtCancelSynchronousIoFil
  extern "ntdll" fn NtClos
  extern "ntdll" fn NtCreateEven
  extern "ntdll" fn NtCreateFil
  extern "ntdll" fn NtCreateKeyedEven
  extern "ntdll" fn NtCreateNamedPipeFil
  extern "ntdll" fn NtCreateSectio
  extern "ntdll" fn NtCreateThreadE
  extern "ntdll" fn NtDelayExecutio
  extern "ntdll" fn NtDeviceIoControlFil
  extern "ntdll" fn NtExtendSectio
  extern "ntdll" fn NtFlushBuffersFil
  extern "ntdll" fn NtFreeVirtualMemor
  extern "ntdll" fn NtFsControlFil
  extern "ntdll" fn NtLoadKeyE
  extern "ntdll" fn NtLockFil
  extern "ntdll" fn NtMapViewOfSectio
  extern "ntdll" fn NtNotifyChangeDirectoryFileE
  extern "ntdll" fn NtOpenFil
  extern "ntdll" fn NtOpenKe
  extern "ntdll" fn NtOpenKeyE
  extern "ntdll" fn NtOpenThrea
  extern "ntdll" fn NtProtectVirtualMemor
  extern "ntdll" fn NtQueryAttributesFil
  extern "ntdll" fn NtQueryDirectoryFil
  extern "ntdll" fn NtQueryInformationFil
  extern "ntdll" fn NtQueryInformationProces
  extern "ntdll" fn NtQueryInformationThrea
  extern "ntdll" fn NtQueryObjec
  extern "ntdll" fn NtQuerySystemInformatio
  extern "ntdll" fn NtQueryValueKe
  extern "ntdll" fn NtQueryVolumeInformationFil
  extern "ntdll" fn NtQueueApcThrea
  extern "ntdll" fn NtReadFil
  extern "ntdll" fn NtReadVirtualMemor
  extern "ntdll" fn NtReleaseKeyedEven
  extern "ntdll" fn NtResumeThrea
  extern "ntdll" fn NtSetEven
  extern "ntdll" fn NtSetInformationFil
  extern "ntdll" fn NtSetInformationThrea
  extern "ntdll" fn NtTerminateProces
  extern "ntdll" fn NtUnlockFil
  extern "ntdll" fn NtUnmapViewOfSectio
  extern "ntdll" fn NtUnmapViewOfSectionE
  extern "ntdll" fn NtWaitForAlertByThreadI
  extern "ntdll" fn NtWaitForKeyedEven
  extern "ntdll" fn NtWaitForSingleObjec
  extern "ntdll" fn NtWriteFil
  extern "ntdll" fn NtWriteVirtualMemor
  extern "ntdll" fn NtYieldExecution() callconv(.winapi) NTSTATU
  extern "ntdll" fn RtlAcquireSRWLockExclusiv
  extern "ntdll" fn RtlActivateActivationContextE
  extern "ntdll" fn RtlAddVectoredExceptionHandle
  extern "ntdll" fn RtlAllocateHea
  extern "ntdll" fn RtlCaptureContex
  extern "ntdll" fn RtlCaptureStackBackTrac
  extern "ntdll" fn RtlCreateHea
  extern "ntdll" fn RtlDeleteCriticalSectio
  extern "ntdll" fn RtlDestroyHea
  extern "ntdll" fn RtlDosPathNameToNtPathName_
  extern "ntdll" fn RtlEnterCriticalSectio
  extern "ntdll" fn RtlEqualUnicodeStrin
  extern "ntdll" fn RtlExitUserProces
  extern "ntdll" fn RtlFreeHea
  extern "ntdll" fn RtlFreeUnicodeStrin
  extern "ntdll" fn RtlGetActiveActivationContex
  extern "ntdll" fn RtlGetCurrentDirectory_
  extern "ntdll" fn RtlGetFullPathName_
  extern "ntdll" fn RtlGetSystemTimePrecise() callconv(.winapi) LARGE_INTEGE
  extern "ntdll" fn RtlGetVersio
  extern "ntdll" fn RtlInitializeCriticalSectio
  extern "ntdll" fn RtlLeaveCriticalSectio
  extern "ntdll" fn RtlLookupFunctionEntr
  extern "ntdll" fn RtlOpenCurrentUse
  extern "ntdll" fn RtlQueryPerformanceCounte
  extern "ntdll" fn RtlQueryPerformanceFrequenc
  extern "ntdll" fn RtlQueryRegistryValue
  extern "ntdll" fn RtlReAllocateHea
  extern "ntdll" fn RtlReleaseActivationContex
  extern "ntdll" fn RtlReleaseSRWLockExclusiv
  extern "ntdll" fn RtlRemoveVectoredExceptionHandle
  extern "ntdll" fn RtlReportSilentProcessExi
  extern "ntdll" fn RtlSetCurrentDirectory_
  extern "ntdll" fn RtlTryAcquireSRWLockExclusiv
  extern "ntdll" fn RtlUpcaseUnicodeCha
  extern "ntdll" fn RtlVirtualUnwin
  extern "ntdll" fn RtlWaitOnAddres
  extern "ntdll" fn RtlWakeAddressAl
  extern "ntdll" fn RtlWakeAddressSingl
  extern "ntdll" fn RtlWakeAllConditionVariabl
  extern "ntdll" fn RtlWakeConditionVariabl
}

std.os.windows.ntstatus {
  const NTSTATUS = enum(u32)
}

std.os.windows.sublang {
  const AFRIKAANS_SOUTH_AFRICA = 0x0
  const ALBANIAN_ALBANIA = 0x0
  const ALSATIAN_FRANCE = 0x0
  const AMHARIC_ETHIOPIA = 0x0
  const ARABIC_ALGERIA = 0x0
  const ARABIC_BAHRAIN = 0x0
  const ARABIC_EGYPT = 0x0
  const ARABIC_IRAQ = 0x0
  const ARABIC_JORDAN = 0x0
  const ARABIC_KUWAIT = 0x0
  const ARABIC_LEBANON = 0x0
  const ARABIC_LIBYA = 0x0
  const ARABIC_MOROCCO = 0x0
  const ARABIC_OMAN = 0x0
  const ARABIC_QATAR = 0x1
  const ARABIC_SAUDI_ARABIA = 0x0
  const ARABIC_SYRIA = 0x0
  const ARABIC_TUNISIA = 0x0
  const ARABIC_UAE = 0x0
  const ARABIC_YEMEN = 0x0
  const ARMENIAN_ARMENIA = 0x0
  const ASSAMESE_INDIA = 0x0
  const AZERBAIJANI_AZERBAIJAN_CYRILLIC = 0x0
  const AZERBAIJANI_AZERBAIJAN_LATIN = 0x0
  const AZERI_CYRILLIC = 0x0
  const AZERI_LATIN = 0x0
  const BANGLA_BANGLADESH = 0x0
  const BANGLA_INDIA = 0x0
  const BASHKIR_RUSSIA = 0x0
  const BASQUE_BASQUE = 0x0
  const BELARUSIAN_BELARUS = 0x0
  const BENGALI_BANGLADESH = 0x0
  const BENGALI_INDIA = 0x0
  const BOSNIAN_BOSNIA_HERZEGOVINA_CYRILLIC = 0x0
  const BOSNIAN_BOSNIA_HERZEGOVINA_LATIN = 0x0
  const BRETON_FRANCE = 0x0
  const BULGARIAN_BULGARIA = 0x0
  const CATALAN_CATALAN = 0x0
  const CENTRAL_KURDISH_IRAQ = 0x0
  const CHEROKEE_CHEROKEE = 0x0
  const CHINESE_HONGKONG = 0x0
  const CHINESE_MACAU = 0x0
  const CHINESE_SIMPLIFIED = 0x0
  const CHINESE_SINGAPORE = 0x0
  const CHINESE_TRADITIONAL = 0x0
  const CORSICAN_FRANCE = 0x0
  const CROATIAN_BOSNIA_HERZEGOVINA_LATIN = 0x0
  const CROATIAN_CROATIA = 0x0
  const CUSTOM_DEFAULT = 0x0
  const CUSTOM_UNSPECIFIED = 0x0
  const CZECH_CZECH_REPUBLIC = 0x0
  const DANISH_DENMARK = 0x0
  const DARI_AFGHANISTAN = 0x0
  const DEFAULT = 0x0
  const DIVEHI_MALDIVES = 0x0
  const DUTCH = 0x0
  const DUTCH_BELGIAN = 0x0
  const ENGLISH_AUS = 0x0
  const ENGLISH_BELIZE = 0x0
  const ENGLISH_CAN = 0x0
  const ENGLISH_CARIBBEAN = 0x0
  const ENGLISH_EIRE = 0x0
  const ENGLISH_INDIA = 0x1
  const ENGLISH_JAMAICA = 0x0
  const ENGLISH_MALAYSIA = 0x1
  const ENGLISH_NZ = 0x0
  const ENGLISH_PHILIPPINES = 0x0
  const ENGLISH_SINGAPORE = 0x1
  const ENGLISH_SOUTH_AFRICA = 0x0
  const ENGLISH_TRINIDAD = 0x0
  const ENGLISH_UK = 0x0
  const ENGLISH_US = 0x0
  const ENGLISH_ZIMBABWE = 0x0
  const ESTONIAN_ESTONIA = 0x0
  const FAEROESE_FAROE_ISLANDS = 0x0
  const FILIPINO_PHILIPPINES = 0x0
  const FINNISH_FINLAND = 0x0
  const FRENCH = 0x0
  const FRENCH_BELGIAN = 0x0
  const FRENCH_CANADIAN = 0x0
  const FRENCH_LUXEMBOURG = 0x0
  const FRENCH_MONACO = 0x0
  const FRENCH_SWISS = 0x0
  const FRISIAN_NETHERLANDS = 0x0
  const FULAH_SENEGAL = 0x0
  const GALICIAN_GALICIAN = 0x0
  const GEORGIAN_GEORGIA = 0x0
  const GERMAN = 0x0
  const GERMAN_AUSTRIAN = 0x0
  const GERMAN_LIECHTENSTEIN = 0x0
  const GERMAN_LUXEMBOURG = 0x0
  const GERMAN_SWISS = 0x0
  const GREEK_GREECE = 0x0
  const GREENLANDIC_GREENLAND = 0x0
  const GUJARATI_INDIA = 0x0
  const HAUSA_NIGERIA_LATIN = 0x0
  const HAWAIIAN_US = 0x0
  const HEBREW_ISRAEL = 0x0
  const HINDI_INDIA = 0x0
  const HUNGARIAN_HUNGARY = 0x0
  const ICELANDIC_ICELAND = 0x0
  const IGBO_NIGERIA = 0x0
  const INDONESIAN_INDONESIA = 0x0
  const INUKTITUT_CANADA = 0x0
  const INUKTITUT_CANADA_LATIN = 0x0
  const IRISH_IRELAND = 0x0
  const ITALIAN = 0x0
  const ITALIAN_SWISS = 0x0
  const JAPANESE_JAPAN = 0x0
  const KANNADA_INDIA = 0x0
  const KASHMIRI_INDIA = 0x0
  const KASHMIRI_SASIA = 0x0
  const KAZAK_KAZAKHSTAN = 0x0
  const KHMER_CAMBODIA = 0x0
  const KICHE_GUATEMALA = 0x0
  const KINYARWANDA_RWANDA = 0x0
  const KONKANI_INDIA = 0x0
  const KOREAN = 0x0
  const KYRGYZ_KYRGYZSTAN = 0x0
  const LAO_LAO = 0x0
  const LATVIAN_LATVIA = 0x0
  const LITHUANIAN = 0x0
  const LOWER_SORBIAN_GERMANY = 0x0
  const LUXEMBOURGISH_LUXEMBOURG = 0x0
  const MACEDONIAN_MACEDONIA = 0x0
  const MALAYALAM_INDIA = 0x0
  const MALAY_BRUNEI_DARUSSALAM = 0x0
  const MALAY_MALAYSIA = 0x0
  const MALTESE_MALTA = 0x0
  const MAORI_NEW_ZEALAND = 0x0
  const MAPUDUNGUN_CHILE = 0x0
  const MARATHI_INDIA = 0x0
  const MOHAWK_MOHAWK = 0x0
  const MONGOLIAN_CYRILLIC_MONGOLIA = 0x0
  const MONGOLIAN_PRC = 0x0
  const NEPALI_INDIA = 0x0
  const NEPALI_NEPAL = 0x0
  const NEUTRAL = 0x0
  const NORWEGIAN_BOKMAL = 0x0
  const NORWEGIAN_NYNORSK = 0x0
  const OCCITAN_FRANCE = 0x0
  const ODIA_INDIA = 0x0
  const ORIYA_INDIA = 0x0
  const PASHTO_AFGHANISTAN = 0x0
  const PERSIAN_IRAN = 0x0
  const POLISH_POLAND = 0x0
  const PORTUGUESE = 0x0
  const PORTUGUESE_BRAZILIAN = 0x0
  const PULAR_SENEGAL = 0x0
  const PUNJABI_INDIA = 0x0
  const PUNJABI_PAKISTAN = 0x0
  const QUECHUA_BOLIVIA = 0x0
  const QUECHUA_ECUADOR = 0x0
  const QUECHUA_PERU = 0x0
  const ROMANIAN_ROMANIA = 0x0
  const ROMANSH_SWITZERLAND = 0x0
  const RUSSIAN_RUSSIA = 0x0
  const SAKHA_RUSSIA = 0x0
  const SAMI_INARI_FINLAND = 0x0
  const SAMI_LULE_NORWAY = 0x0
  const SAMI_LULE_SWEDEN = 0x0
  const SAMI_NORTHERN_FINLAND = 0x0
  const SAMI_NORTHERN_NORWAY = 0x0
  const SAMI_NORTHERN_SWEDEN = 0x0
  const SAMI_SKOLT_FINLAND = 0x0
  const SAMI_SOUTHERN_NORWAY = 0x0
  const SAMI_SOUTHERN_SWEDEN = 0x0
  const SANSKRIT_INDIA = 0x0
  const SCOTTISH_GAELIC = 0x0
  const SERBIAN_BOSNIA_HERZEGOVINA_CYRILLIC = 0x0
  const SERBIAN_BOSNIA_HERZEGOVINA_LATIN = 0x0
  const SERBIAN_CROATIA = 0x0
  const SERBIAN_CYRILLIC = 0x0
  const SERBIAN_LATIN = 0x0
  const SERBIAN_MONTENEGRO_CYRILLIC = 0x0
  const SERBIAN_MONTENEGRO_LATIN = 0x0
  const SERBIAN_SERBIA_CYRILLIC = 0x0
  const SERBIAN_SERBIA_LATIN = 0x0
  const SINDHI_AFGHANISTAN = 0x0
  const SINDHI_INDIA = 0x0
  const SINDHI_PAKISTAN = 0x0
  const SINHALESE_SRI_LANKA = 0x0
  const SLOVAK_SLOVAKIA = 0x0
  const SLOVENIAN_SLOVENIA = 0x0
  const SOTHO_NORTHERN_SOUTH_AFRICA = 0x0
  const SPANISH = 0x0
  const SPANISH_ARGENTINA = 0x0
  const SPANISH_BOLIVIA = 0x1
  const SPANISH_CHILE = 0x0
  const SPANISH_COLOMBIA = 0x0
  const SPANISH_COSTA_RICA = 0x0
  const SPANISH_DOMINICAN_REPUBLIC = 0x0
  const SPANISH_ECUADOR = 0x0
  const SPANISH_EL_SALVADOR = 0x1
  const SPANISH_GUATEMALA = 0x0
  const SPANISH_HONDURAS = 0x1
  const SPANISH_MEXICAN = 0x0
  const SPANISH_MODERN = 0x0
  const SPANISH_NICARAGUA = 0x1
  const SPANISH_PANAMA = 0x0
  const SPANISH_PARAGUAY = 0x0
  const SPANISH_PERU = 0x0
  const SPANISH_PUERTO_RICO = 0x1
  const SPANISH_URUGUAY = 0x0
  const SPANISH_US = 0x1
  const SPANISH_VENEZUELA = 0x0
  const SWAHILI_KENYA = 0x0
  const SWEDISH = 0x0
  const SWEDISH_FINLAND = 0x0
  const SYRIAC_SYRIA = 0x0
  const SYS_DEFAULT = 0x0
  const TAJIK_TAJIKISTAN = 0x0
  const TAMAZIGHT_ALGERIA_LATIN = 0x0
  const TAMAZIGHT_MOROCCO_TIFINAGH = 0x0
  const TAMIL_INDIA = 0x0
  const TAMIL_SRI_LANKA = 0x0
  const TATAR_RUSSIA = 0x0
  const TELUGU_INDIA = 0x0
  const THAI_THAILAND = 0x0
  const TIBETAN_PRC = 0x0
  const TIGRIGNA_ERITREA = 0x0
  const TIGRINYA_ERITREA = 0x0
  const TIGRINYA_ETHIOPIA = 0x0
  const TSWANA_BOTSWANA = 0x0
  const TSWANA_SOUTH_AFRICA = 0x0
  const TURKISH_TURKEY = 0x0
  const TURKMEN_TURKMENISTAN = 0x0
  const UIGHUR_PRC = 0x0
  const UI_CUSTOM_DEFAULT = 0x0
  const UKRAINIAN_UKRAINE = 0x0
  const UPPER_SORBIAN_GERMANY = 0x0
  const URDU_INDIA = 0x0
  const URDU_PAKISTAN = 0x0
  const UZBEK_CYRILLIC = 0x0
  const UZBEK_LATIN = 0x0
  const VALENCIAN_VALENCIA = 0x0
  const VIETNAMESE_VIETNAM = 0x0
  const WELSH_UNITED_KINGDOM = 0x0
  const WOLOF_SENEGAL = 0x0
  const XHOSA_SOUTH_AFRICA = 0x0
  const YAKUT_RUSSIA = 0x0
  const YI_PRC = 0x0
  const YORUBA_NIGERIA = 0x0
  const ZULU_SOUTH_AFRICA = 0x0
}

std.os.windows.tls {
  const IMAGE_TLS_DIRECTORY = extern struct
}

std.os.windows.win32error {
  const Win32Error = enum(u32)
}

std.os.windows.ws2_32 {
  const ADDRESS_FAMILY = u1
  const AF = struct
  const FLOWSPEC = extern struct
  const GROUP = u3
  const IPPROTO = struct
  const MSG = struct
  const SO = struct
  const SOCK = struct
  const SOL = struct
  const TCP = struct
  const hostent = extern struct
  const linger = extern struct
  const sockaddr = extern struct
  const socklen_t = u3
  const sockproto = extern struct
  const timeval = extern struct
}

std.os.windows {
  const ACCESS_MASK = packed struct(DWORD)
  const ACTIVATION_CONTEXT_DATA = opaque {
  const AFD = packed struct(ULONG)
  const ALTERNATIVE_ARCHITECTURE_TYPE = enum(INT)
  const ANSI_STRING = STRING(CHAR
  const ASSEMBLY_STORAGE_MAP = opaque {
  const ATOM = u1
  const BACKGROUND_BLUE = 0x001
  const BACKGROUND_GREEN = 0x002
  const BACKGROUND_INTENSITY = 0x008
  const BACKGROUND_RED = 0x004
  const BOOL = Bool(c_int
  const BOOLEAN = Bool(BYTE
  const BSTR = [*:0]WCHA
  const BYTE = u
  const CHAR = u
  const CLIENT_ID = extern struct
  const COLORREF = DWOR
  const CONDITION_VARIABLE = extern struct
  const CONDITION_VARIABLE_INIT = CONDITION_VARIABLE{
  const CONSOLE = struct
  const CONTEXT = switch (native_arch)
  const COORD = extern struct
  const CRITICAL_SECTION = RTL_CRITICAL_SECTIO
  const CTL_CODE = packed struct(ULONG)
  const CURDIR = extern struct
  const CreateProcessError = erro
  const CreateProcessFlags = packed struct(u32)
  const DEVICE_TYPE = packed struct(ULONG)
  const DIRECTORY = struct
  const DISABLE_NEWLINE_AUTO_RETURN = 0x
  const DNS = struct
  const DUPLICATE_SAME_ACCESS = 
  const DWORD = u3
  const DWORD64 = u6
  const DWORD_PTR = ULONG_PT
  const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 0x
  const ERESOURCE = opaque {
  const EVENT_TYPE = enum(c_int)
  const EXCEPTION_ACCESS_VIOLATION = 0xc000000
  const EXCEPTION_CONTINUE_SEARCH = 
  const EXCEPTION_DATATYPE_MISALIGNMENT = 0x8000000
  const EXCEPTION_DISPOSITION = i3
  const EXCEPTION_ILLEGAL_INSTRUCTION = 0xc000001
  const EXCEPTION_POINTERS = extern struct
  const EXCEPTION_RECORD = extern struct
  const EXCEPTION_REGISTRATION_RECORD = extern struct
  const EXCEPTION_ROUTINE = *const fn
  const EXCEPTION_STACK_OVERFLOW = 0xc00000f
  const FARPROC = *opaque {
  const FILE = struct
  const FILETIME = extern struct
  const FILE_BOTH_DIRECTORY_INFORMATION = FILE_BOTH_DIR_INFORMATIO
  const FILE_BOTH_DIR_INFORMATION = extern struct
  const FILE_DIRECTORY_INFORMATION = extern struct
  const FLOAT = f3
  const FLOATING_SAVE_AREA = switch (native_arch)
  const FLS_CALLBACK_INFO = opaque {
  const FOREGROUND_BLUE = 0x000
  const FOREGROUND_GREEN = 0x000
  const FOREGROUND_INTENSITY = 0x000
  const FOREGROUND_RED = 0x000
  const FS_INFORMATION_CLASS = enum(c_int)
  const GUID = extern struct
  const HANDLE = *anyopaqu
  const HBRUSH = *opaque {
  const HCRYPTPROV = ULONG_PT
  const HCURSOR = *opaque {
  const HDC = *opaque {
  const HEAP = opaque
  const HGLRC = *opaque {
  const HICON = *opaque {
  const HINSTANCE = *opaque {
  const HKEY = *opaque {
  const HKEY_CLASSES_ROOT: HKEY = @ptrFromInt(0x80000000
  const HKEY_CURRENT_CONFIG: HKEY = @ptrFromInt(0x80000005
  const HKEY_CURRENT_USER: HKEY = @ptrFromInt(0x80000001
  const HKEY_CURRENT_USER_LOCAL_SETTINGS: HKEY = @ptrFromInt(0x80000007
  const HKEY_DYN_DATA: HKEY = @ptrFromInt(0x80000006
  const HKEY_LOCAL_MACHINE: HKEY = @ptrFromInt(0x80000002
  const HKEY_PERFORMANCE_DATA: HKEY = @ptrFromInt(0x80000004
  const HKEY_PERFORMANCE_NLSTEXT: HKEY = @ptrFromInt(0x80000060
  const HKEY_PERFORMANCE_TEXT: HKEY = @ptrFromInt(0x80000050
  const HKEY_USERS: HKEY = @ptrFromInt(0x80000003
  const HMENU = *opaque {
  const HMODULE = *opaque {
  const HWND = *opaque {
  const IMAGE_TLS_DIRECTORY = extern struct
  const IMAGE_TLS_DIRECTORY32 = IMAGE_TLS_DIRECTOR
  const IMAGE_TLS_DIRECTORY64 = IMAGE_TLS_DIRECTOR
  const INIT_ONCE = RTL_RUN_ONC
  const INIT_ONCE_FN = *const fn (InitOnce: *INIT_ONCE, Parameter: ?*anyopaque, Context: ?*anyopaque) callconv(.winapi) BOO
  const INIT_ONCE_STATIC_INIT = RTL_RUN_ONCE_INI
  const INT = c_in
  const INVALID_FILE_ATTRIBUTES: DWORD = maxInt(DWORD
  const INVALID_HANDLE_VALUE: HANDLE = @ptrFromInt(maxInt(usize)
  const IOCTL = struct
  const IO_APC_ROUTINE = fn (?*anyopaque, *IO_STATUS_BLOCK, ULONG) callconv(.winapi) voi
  const IO_REPARSE_TAG = packed struct(ULONG)
  const IO_STATUS_BLOCK = extern struct
  const KAFFINITY = usiz
  const KERNEL_USER_TIMES = extern struct
  const KEY = struct
  const KNONVOLATILE_CONTEXT_POINTERS = switch (native_arch)
  const KPRIORITY = i3
  const KSYSTEM_TIME = extern struct
  const KUSER_SHARED_DATA = extern struct
  const LANG = @import("windows/lang.zig"
  const LANGID = c_ushor
  const LARGE_INTEGER = i6
  const LDR = struct
  const LIST_ENTRY = extern struct
  const LOGICAL = ULON
  const LONG = i3
  const LONGLONG = i6
  const LONG_PTR = isiz
  const LPARAM = LONG_PT
  const LPCSTR = [*:0]const CHA
  const LPCTSTR = @compileError("Deprecated: choose between `LPCSTR` or `LPCWSTR` directly instead."
  const LPCVOID = *const anyopaqu
  const LPCWSTR = [*:0]const WCHA
  const LPSTR = [*:0]CHA
  const LPTSTR = @compileError("Deprecated: choose between `LPSTR` or `LPWSTR` directly instead."
  const LPVOID = *anyopaqu
  const LPWSTR = [*:0]WCHA
  const LSTATUS = LON
  const M128A = switch (native_arch)
  const MAXIMUM_REPARSE_DATA_BUFFER_SIZE: ULONG = 16 * 102
  const MAXIMUM_XSTATE_FEATURES = 6
  const MAX_PATH = 26
  const MAX_WOW64_SHARED_ENTRIES = 1
  const MEM = struct
  const MEMORY = struct
  const MODULEINFO = extern struct
  const MOUNTMGR_MOUNT_POINT = extern struct
  const MOUNTMGR_MOUNT_POINTS = extern struct
  const MOUNTMGR_TARGET_NAME = extern struct
  const MOUNTMGR_VOLUME_PATHS = extern struct
  const MOUNT_POINT_REPARSE_BUFFER = extern struct
  const NAME_MAX = 25
  const NEON128 = switch (native_arch)
  const NET = struct
  const NTSTATUS = @import("windows/ntstatus.zig").NTSTATU
  const NT_PRODUCT_TYPE = enum(INT)
  const NT_TIB = extern struct
  const OBJECT = struct
  const OSVERSIONINFOW = extern struct
  const PAGE = packed struct(ULONG)
  const PATH_MAX_WIDE = 3276
  const PCTSTR = @compileError("Deprecated: choose between `PCSTR` or `PCWSTR` directly instead."
  const PCWSTR = [*:0]const WCHA
  const PEB = extern struct
  const PEB_LDR_DATA = extern struct
  const PF = enum(DWORD)
  const PIMAGE_TLS_CALLBACK = ?*const fn (PVOID, DWORD, PVOID) callconv(.winapi) voi
  const PPS_POST_PROCESS_INIT_ROUTINE = ?*const fn () callconv(.winapi) voi
  const PROC = *opaque {
  const PROCESS = struct
  const PROCESSOR_FEATURE_MAX = 6
  const PS = struct
  const PTSTR = @compileError("Deprecated: choose between `PSTR` or `PWSTR` directly instead."
  const PVOID = *anyopaqu
  const PWSTR = [*:0]WCHA
  const REG = struct
  const REGSAM = ACCESS_MAS
  const REPARSE_DATA_BUFFER = extern struct
  const RTL_BITMAP = opaque {
  const RTL_CRITICAL_SECTION = extern struct
  const RTL_CRITICAL_SECTION_DEBUG = extern struct
  const RTL_DRIVE_LETTER_CURDIR = extern struct
  const RTL_OSVERSIONINFOW = OSVERSIONINFO
  const RTL_QUERY_REGISTRY_DELETE = 0x0000004
  const RTL_QUERY_REGISTRY_DIRECT = 0x0000002
  const RTL_QUERY_REGISTRY_NOEXPAND = 0x0000001
  const RTL_QUERY_REGISTRY_NOVALUE = 0x0000000
  const RTL_QUERY_REGISTRY_REQUIRED = 0x0000000
  const RTL_QUERY_REGISTRY_ROUTINE = ?*const fn
  const RTL_QUERY_REGISTRY_SUBKEY = 0x0000000
  const RTL_QUERY_REGISTRY_TABLE = extern struct
  const RTL_QUERY_REGISTRY_TOPKEY = 0x0000000
  const RTL_QUERY_REGISTRY_TYPECHECK = 0x0000010
  const RTL_REGISTRY_ABSOLUTE = 
  const RTL_REGISTRY_CONTROL = 
  const RTL_REGISTRY_DEVICEMAP = 
  const RTL_REGISTRY_HANDLE = 0x4000000
  const RTL_REGISTRY_MAXIMUM = 
  const RTL_REGISTRY_OPTIONAL = 0x8000000
  const RTL_REGISTRY_SERVICES = 
  const RTL_REGISTRY_USER = 
  const RTL_REGISTRY_WINDOWS_NT = 
  const RTL_RUN_ONCE = extern struct
  const RTL_RUN_ONCE_INIT = RTL_RUN_ONCE{ .Ptr = null 
  const RTL_USER_PROCESS_PARAMETERS = extern struct
  const RUNTIME_FUNCTION = switch (native_arch)
  const RemoveDotDirsError = error{TooManyParentDirs
  const SEC = packed struct(ULONG)
  const SECTION_INHERIT = enum(c_int)
  const SECURITY_ATTRIBUTES = extern struct
  const SHORT = i1
  const SIZE_T = usiz
  const SRWLOCK = extern struct
  const SRWLOCK_INIT = SRWLOCK{
  const STARTF_FORCEOFFFEEDBACK = 0x0000008
  const STARTF_FORCEONFEEDBACK = 0x0000004
  const STARTF_PREVENTPINNING = 0x0000200
  const STARTF_RUNFULLSCREEN = 0x0000002
  const STARTF_TITLEISAPPID = 0x0000100
  const STARTF_TITLEISLINKNAME = 0x0000080
  const STARTF_UNTRUSTEDSOURCE = 0x0000800
  const STARTF_USECOUNTCHARS = 0x0000000
  const STARTF_USEFILLATTRIBUTE = 0x0000001
  const STARTF_USEHOTKEY = 0x0000020
  const STARTF_USEPOSITION = 0x0000000
  const STARTF_USESHOWWINDOW = 0x0000000
  const STARTF_USESIZE = 0x0000000
  const STARTF_USESTDHANDLES = 0x0000010
  const STARTUPINFOW = extern struct
  const SUBLANG = @import("windows/sublang.zig"
  const SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE: DWORD = 0x
  const SYMBOLIC_LINK_FLAG_DIRECTORY: DWORD = 0x
  const SYMBOLIC_LINK_REPARSE_BUFFER = extern struct
  const SYMLINK_FLAG_RELATIVE: ULONG = 0x
  const SYSTEM = struct
  const SharedUserData: *const KUSER_SHARED_DATA = @ptrFromInt(0x7FFE0000
  const TCHAR = @compileError("Deprecated: choose between `CHAR` or `WCHAR` directly instead."
  const TDI = struct
  const TEB = extern struct
  const THREAD = struct
  const THREAD_START_ROUTINE = fn (LPVOID) callconv(.winapi) DWOR
  const TIMER_TYPE = enum(c_int)
  const TLS_OUT_OF_INDEXES = 429496729
  const UCHAR = u
  const UINT = c_uin
  const ULARGE_INTEGER = u6
  const ULONG = u3
  const ULONG64 = u6
  const ULONGLONG = u6
  const ULONG_PTR = usiz
  const UNICODE_STRING = STRING(WCHAR
  const UNWIND_HISTORY_TABLE = extern struct
  const UNWIND_HISTORY_TABLE_ENTRY = extern struct
  const UNWIND_HISTORY_TABLE_SIZE = 1
  const UNW_FLAG_CHAININFO = 0x
  const UNW_FLAG_EHANDLER = 0x
  const UNW_FLAG_NHANDLER = 0x
  const UNW_FLAG_UHANDLER = 0x
  const USER_THREAD_START_ROUTINE = fn (LPVOID) callconv(.winapi) NTSTATU
  const USHORT = u1
  const VECTORED_EXCEPTION_HANDLER = *const fn (ExceptionInfo: *EXCEPTION_POINTERS) callconv(.winapi) c_lon
  const WAIT_TYPE = enum(c_int)
  const WCHAR = u1
  const WORD = u1
  const Win32Error = @import("windows/win32error.zig").Win32Erro
  const XMM_SAVE_AREA32 = switch (native_arch)
  const XSTATE_CONFIGURATION = extern struct
  const XSTATE_FEATURE = extern struct
  const crypt32 = @import("windows/crypt32.zig"
  const current_process: HANDLE = @ptrFromInt(@as(usize, @bitCast(@as(isize, -1)))
  const kernel32 = @import("windows/kernel32.zig"
  const nls = @import("windows/nls.zig"
  const ntdll = @import("windows/ntdll.zig"
  const va_list = *opaque {
  const ws2_32 = @import("windows/ws2_32.zig"
  fn CloseHandle(hObject: HANDLE) void
  fn FileInformationIterator(comptime FileInformationType: type) type
  fn GetCurrentProcess() HANDLE
  fn GetCurrentProcessId() DWORD
  fn GetCurrentThread() HANDLE
  fn GetCurrentThreadId() DWORD
  fn GetLastError() Win32Error
  fn GetProcessHeap() ?*HEAP
  fn IsProcessorFeaturePresent(feature: PF) bool
  fn eqlIgnoreCaseWtf16(a: []const u16, b: []const u16) bool
  fn eqlIgnoreCaseWtf8(a: []const u8, b: []const u8) bool
  fn errorBug(err: Win32Error) UnexpectedError
  fn fromSysTime(hns: i64) Io.Timestamp
  fn getSystemDirectoryWtf16Le() [:0]const u16
  fn hasCommonNtPrefix(comptime T: type, path: []const T) bool
  fn normalizePath(comptime T: type, path: []T) RemoveDotDirsError!usize
  fn ntToWin32Namespace(path: []const u16, out: []u16) error{ NameTooLong, NotNtPath }![]u16
  fn peb() *PEB
  fn removeDotDirsSanitized(comptime T: type, path: []T) RemoveDotDirsError!usize
  fn statusBug(status: NTSTATUS) UnexpectedError
  fn teb() *TEB
  fn toSysTime(ns: Io.Timestamp) i64
  fn unexpectedError(err: Win32Error) UnexpectedError
  fn unexpectedStatus(status: NTSTATUS) UnexpectedError
  fn wtf8ToWtf16Le(wtf16le: []u16, wtf8: []const u8) error{ BadPathName, NameTooLong }!usize
  inline fn toUpperWtf16(c: u16) u16
}

std.os {
  const emscripten = @import("os/emscripten.zig"
  const linux = @import("os/linux.zig"
  const plan9 = @import("os/plan9.zig"
  const uefi = @import("os/uefi.zig"
  const wasi = @import("os/wasi.zig"
  const windows = @import("os/windows.zig"
}

std.pdb {
  const BinaryAnnotationOpcode = enum(u8)
  const ColumnNumberEntry = extern struct
  const DbiStreamHeader = extern struct
  const DebugSubsectionHeader = extern struct
  const DebugSubsectionKind = enum(u32)
  const FileChecksumEntryHeader = extern struct
  const InlineSiteSym = extern struct
  const InlineSiteSym2 = extern struct
  const InlineeSourceLine = extern struct
  const InlineeSourceLineEx = extern struct
  const InlineeSourceLineSignature = enum(u32) { normal = 0, ex = 1, _ 
  const IpiStreamHeader = extern struct
  const IpiStreamVersion = enum(u32)
  const LfFuncId = extern struct
  const LfMFuncId = extern struct
  const LfRecordKind = enum(u16)
  const LfRecordPrefix = extern struct
  const LineBlockFragmentHeader = extern struct
  const LineFlags = packed struct(u16)
  const LineFragmentHeader = extern struct
  const LineNumberEntry = extern struct
  const ModInfo = extern struct
  const ProcSym = extern struct
  const ProcSymFlags = packed struct(u8)
  const RecordPrefix = extern struct
  const SectionContrSubstreamVersion = enum(u32)
  const SectionContribEntry = extern struct
  const SectionMapEntry = extern struct
  const SectionMapHeader = extern struct
  const StreamType = enum(u16)
  const StringTableHeader = extern struct
  const SuperBlock = extern struct
  const SymbolKind = enum(u16)
  const TypeIndex = u3
}

std.pie {
  fn relocate(phdrs: []const elf.Phdr) void
}

std.posix {
  const ACCMODE = switch (native_os)
  const AF = system.A
  const AF_SUN = system.AF_SU
  const AI = system.A
  const ARCH = system.ARC
  const AT = system.A
  const AT_SUN = system.AT_SU
  const CLOCK = system.CLOC
  const CPU_COUNT = system.CPU_COUN
  const CSIZE = system.CSIZ
  const CTL = system.CT
  const DT = system.D
  const E = system.
  const Elf_Symndx = system.Elf_Symnd
  const F = system.
  const FD_CLOEXEC = system.FD_CLOEXE
  const F_OK = system.F_O
  const FanotifyInitError = erro
  const FanotifyMarkError = erro
  const Flock = system.Floc
  const GetHostNameError = error{PermissionDenied} || UnexpectedErro
  const GetSockNameError = erro
  const GetrlimitError = UnexpectedErro
  const HOST_NAME_MAX = system.HOST_NAME_MA
  const HW = system.H
  const IFF = system.IF
  const IFNAMESIZE = system.IFNAMESIZ
  const IOV_MAX = system.IOV_MA
  const IP = system.I
  const IPPROTO = system.IPPROT
  const IPTOS = system.IPTO
  const IPV6 = system.IPV
  const KERN = system.KER
  const Kevent = system.Keven
  const KillError = error{ ProcessNotFound, PermissionDenied } || UnexpectedErro
  const LOCK = struct
  const LOG = struct
  const MADV = system.MAD
  const MAP = system.MA
  const MAX_ADDR_LEN = system.MAX_ADDR_LE
  const MCL = system.MC
  const MFD = system.MF
  const MLOCK = system.MLOC
  const MMapError = erro
  const MREMAP = system.MREMA
  const MRemapError = erro
  const MSF = system.MS
  const MSG = system.MS
  const MSyncError = erro
  const MadviseError = erro
  const MemFdCreateError = erro
  const MincoreError = erro
  const NAME_MAX = system.NAME_MA
  const NCCS = system.NCC
  const NSIG = system.NSI
  const NameToFileHandleAtError = erro
  const O = system.
  const OpenError = std.Io.File.OpenError || error{WouldBlock
  const PATH_MAX = system.PATH_MA
  const POLL = system.POL
  const POSIX_FADV = system.POSIX_FAD
  const PPollError = erro
  const PR = system.P
  const PROT = system.PRO
  const PerfEventOpenError = erro
  const PollError = erro
  const PrctlError = erro
  const PtraceError = erro
  const RLIM = system.RLI
  const R_OK = system.R_O
  const RaiseError = UnexpectedErro
  const ReadError = std.Io.File.Reader.Erro
  const RebootCommand = switch (native_os)
  const RebootError = erro
  const S = system.
  const SA = system.S
  const SC = system.S
  const SCM = system.SC
  const SEEK = system.SEE
  const SHUT = system.SHU
  const SIG = system.SI
  const SIOCGIFINDEX = system.SIOCGIFINDE
  const SO = system.S
  const SOCK = system.SOC
  const SOL = system.SO
  const STDERR_FILENO = system.STDERR_FILEN
  const STDIN_FILENO = system.STDIN_FILEN
  const STDOUT_FILENO = system.STDOUT_FILEN
  const SYS = system.SY
  const SchedGetAffinityError = error{PermissionDenied} || UnexpectedErro
  const SetSockOptError = erro
  const SetrlimitError = error{ PermissionDenied, LimitTooBig } || UnexpectedErro
  const Sigaction = system.Sigactio
  const SigaltstackError = erro
  const Stat = switch (native_os)
  const SyncError = std.Io.File.SyncErro
  const SysCtlError = erro
  const T = system.
  const TCP = system.TC
  const TCSA = enum(c_uint)
  const TIOCError = error{NotATerminal
  const TermioGetPgrpError = TIOCError || UnexpectedErro
  const TermioSetPgrpError = TermioGetPgrpError || error{NotAPgrpMember
  const TermiosGetError = TIOCError || UnexpectedErro
  const TermiosSetError = TermiosGetError || error{ProcessOrphaned
  const UTIME = system.UTIM
  const UnexpectedError = std.Io.UnexpectedErro
  const V = system.
  const VDSO = system.VDS
  const W = system.
  const W_OK = system.W_O
  const X_OK = system.X_O
  const _SC = system._S
  const addrinfo = system.addrinf
  const blkcnt_t = system.blkcnt_
  const blksize_t = system.blksize_
  const cc_t = system.cc_
  const clock_t = system.clock_
  const clockid_t = system.clockid_
  const cpu_set_t = system.cpu_set_
  const dev_t = system.dev_
  const dl_phdr_info = system.dl_phdr_inf
  const errno = system.errn
  const fd_t = system.fd_
  const file_obj = system.file_ob
  const gid_t = system.gid_
  const ifreq = system.ifre
  const in6_pktinfo = system.in6_pktinf
  const in_pktinfo = system.in_pktinf
  const ino_t = system.ino_
  const iovec = extern struct
  const iovec_const = extern struct
  const lfs64_abi = native_os == .linux and builtin.link_libc and (builtin.abi.isGnu() or builtin.abi.isAndroid()
  const linger = system.linge
  const mode_t = system.mode_
  const msghdr = system.msghd
  const msghdr_const = system.msghdr_cons
  const nfds_t = system.nfds_
  const nlink_t = system.nlink_
  const off_t = system.off_
  const pid_t = system.pid_
  const pollfd = system.pollf
  const port_event = system.port_even
  const port_notify = system.port_notif
  const port_t = system.port_
  const rlim_t = system.rlim_
  const rlimit = system.rlimi
  const rlimit_resource = system.rlimit_resourc
  const rusage = system.rusag
  const sa_family_t = system.sa_family_
  const siginfo_t = system.siginfo_
  const sigrtmax = system.sigrtma
  const sigrtmin = system.sigrtmi
  const sigset_t = system.sigset_
  const sockaddr = system.sockadd
  const socket_t = fd_
  const socklen_t = system.socklen_
  const speed_t = system.speed_
  const stack_t = system.stack_
  const system = if (use_lib
  const tc_cflag_t = system.tc_cflag_
  const tc_iflag_t = system.tc_iflag_
  const tc_lflag_t = system.tc_lflag_
  const tc_oflag_t = system.tc_oflag_
  const termios = system.termio
  const time_t = system.time_
  const timerfd_clockid_t = system.timerfd_clockid_
  const timespec = system.timespe
  const timestamp_t = system.timestamp_
  const timeval = system.timeva
  const timezone = system.timezon
  const uid_t = system.uid_
  const user_desc = system.user_des
  const utsname = system.utsnam
  const winsize = extern struct
  fn dl_iterate_phdr(context: anytype, comptime Error: type, comptime callback: fn (info: *dl_phdr_info, size: usize, context: @TypeOf(context)) Error!void) Error!void
  fn fanotify_init(flags: std.os.linux.fanotify.InitFlags, event_f_flags: u32) FanotifyInitError!i32
  fn fanotify_mark(fanotify_fd: fd_t, flags: std.os.linux.fanotify.MarkFlags, mask: std.os.linux.fanotify.MarkMask, dirfd: fd_t, pathname: ?[]const u8) FanotifyMarkError!void
  fn fanotify_markZ(fanotify_fd: fd_t, flags: std.os.linux.fanotify.MarkFlags, mask: std.os.linux.fanotify.MarkMask, dirfd: fd_t, pathname: ?[*:0]const u8) FanotifyMarkError!void
  fn fdatasync(fd: fd_t) SyncError!void
  fn getSelfPhdrs() []std.elf.ElfN.Phdr
  fn gethostname(name_buffer: *[HOST_NAME_MAX]u8) GetHostNameError![]u8
  fn getpeername(sock: socket_t, addr: *sockaddr, addrlen: *socklen_t) GetSockNameError!void
  fn getppid() pid_t
  fn getrlimit(resource: rlimit_resource) GetrlimitError!rlimit
  fn getrusage(who: i32) rusage
  fn kill(pid: pid_t, sig: SIG) KillError!void
  fn madvise(ptr: [*]align(page_size_min) u8, length: usize, advice: u32) MadviseError!void
  fn memfd_create(name: []const u8, flags: u32) MemFdCreateError!fd_t
  fn memfd_createZ(name: [*:0]const u8, flags: u32) MemFdCreateError!fd_t
  fn mincore(ptr: [*]align(page_size_min) u8, length: usize, vec: [*]u8) MincoreError!void
  fn mmap(ptr: ?[*]align(page_size_min) u8, length: usize, prot: PROT, flags: MAP, fd: fd_t, offset: u64) MMapError![]align(page_size_min) u8
  fn mremap(old_address: ?[*]align(page_size_min) u8, old_len: usize, new_len: usize, flags: system.MREMAP, new_address: ?[*]align(page_size_min) u8) MRemapError![]align(page_size_min) u8
  fn msync(memory: []align(page_size_min) u8, flags: i32) MSyncError!void
  fn munmap(memory: []align(page_size_min) const u8) void
  fn name_to_handle_at(dirfd: fd_t, pathname: []const u8, handle: *std.os.linux.file_handle, mount_id: *i32, flags: u32) NameToFileHandleAtError!void
  fn name_to_handle_atZ(dirfd: fd_t, pathname_z: [*:0]const u8, handle: *std.os.linux.file_handle, mount_id: *i32, flags: u32) NameToFileHandleAtError!void
  fn openat(dir_fd: fd_t, file_path: []const u8, flags: O, mode: mode_t) OpenError!fd_t
  fn openatZ(dir_fd: fd_t, file_path: [*:0]const u8, flags: O, mode: mode_t) OpenError!fd_t
  fn perf_event_open(attr: *system.perf_event_attr, pid: pid_t, cpu: i32, group_fd: fd_t, flags: usize) PerfEventOpenError!fd_t
  fn poll(fds: []pollfd, timeout: i32) PollError!usize
  fn ppoll(fds: []pollfd, timeout: ?*const timespec, mask: ?*const sigset_t) PPollError!usize
  fn prctl(option: PR, args: anytype) PrctlError!u31
  fn ptrace(request: u32, pid: pid_t, addr: usize, data: usize) PtraceError!void
  fn raise(sig: SIG) RaiseError!void
  fn read(fd: fd_t, buf: []u8) ReadError!usize
  fn reboot(cmd: RebootCommand) RebootError!void
  fn sched_getaffinity(pid: pid_t) SchedGetAffinityError!cpu_set_t
  fn setrlimit(resource: rlimit_resource, limits: rlimit) SetrlimitError!void
  fn setsockopt(fd: socket_t, level: i32, optname: u32, opt: []const u8) SetSockOptError!void
  fn sigaction(sig: SIG, noalias act: ?*const Sigaction, noalias oact: ?*Sigaction) void
  fn sigaddset(set: *sigset_t, sig: SIG) void
  fn sigaltstack(ss: ?*const stack_t, old_ss: ?*stack_t) SigaltstackError!void
  fn sigdelset(set: *sigset_t, sig: SIG) void
  fn sigemptyset() sigset_t
  fn sigfillset() sigset_t
  fn sigismember(set: *const sigset_t, sig: SIG) bool
  fn signalfd(fd: fd_t, mask: *const sigset_t, flags: u32) !fd_t
  fn sigprocmask(flags: u32, noalias set: ?*const sigset_t, noalias oldset: ?*sigset_t) void
  fn sync() void
  fn syncfs(fd: fd_t) SyncError!void
  fn sysctl(name: []const c_int, oldp: ?*anyopaque, oldlenp: ?*usize, newp: ?*anyopaque, newlen: usize) SysCtlError!void
  fn tcgetattr(handle: fd_t) TermiosGetError!termios
  fn tcgetpgrp(handle: fd_t) TermioGetPgrpError!pid_t
  fn tcsetattr(handle: fd_t, optional_action: TCSA, termios_p: termios) TermiosSetError!void
  fn tcsetpgrp(handle: fd_t, pgrp: pid_t) TermioSetPgrpError!void
  fn toPosixPath(file_path: []const u8) error{NameTooLong}![PATH_MAX - 1:0]u8
  fn uname() utsname
  fn unexpectedErrno(err: E) UnexpectedError
}

std.priority_dequeue {
  fn PriorityDequeue(comptime T: type, comptime Context: type, comptime compareFn: fn (context: Context, a: T, b: T) Order) type
}

std.priority_queue {
  fn PriorityQueue(comptime T: type, comptime Context: type, comptime compareFn: fn (context: Context, a: T, b: T) Order) type
}

std.process.Args {
  const Iterator = struct
  const IteratorGeneralOptions = struct
  const ToSliceError = Iterator.Windows.InitError || Iterator.Wasi.InitErro
  const Vector = switch (native_os)
  fn IteratorGeneral(comptime options: IteratorGeneralOptions) type
  fn iterate(a: Args) Iterator
  fn iterateAllocator(a: Args, gpa: Allocator) Iterator.InitError!Iterator
  fn toSlice(a: Args, arena: Allocator) ToSliceError![]const [:0]const u8
}

std.process.Child {
  const Cwd = union(enum)
  const Id = switch (native_os)
  const ResourceUsageStatistics = struct
  const Term = union(enum)
  const WaitError = erro
  fn kill(child: *Child, io: Io) void
  fn wait(child: *Child, io: Io) WaitError!Term
}

std.process.Environ {
  const Block = switch (native_os)
  const ContainsError = erro
  const CreateMapError = erro
  const CreatePosixBlockOptions = struct
  const CreateWindowsBlockOptions = struct
  const GetAllocError = erro
  const GlobalBlock = struct
  const Map = struct
  const PosixBlock = struct
  const WindowsBlock = struct
  const empty: Environ = .{ .block = .empty 
  fn contains(environ: Environ, gpa: Allocator, key: []const u8) ContainsError!bool
  fn containsUnempty(environ: Environ, gpa: Allocator, key: []const u8) ContainsError!bool
  fn createMap(env: Environ, allocator: Allocator) CreateMapError!Map
  fn createPosixBlock(existing: Environ, gpa: Allocator, options: CreatePosixBlockOptions) Allocator.Error!PosixBlock
  fn createWindowsBlock(existing: Environ, gpa: Allocator, options: CreateWindowsBlockOptions) Allocator.Error!WindowsBlock
  fn getAlloc(environ: Environ, gpa: Allocator, key: []const u8) GetAllocError![]u8
  fn getPosix(environ: Environ, key: []const u8) ?[:0]const u8
  fn getWindows(environ: Environ, key: [*:0]const u16) ?[:0]const u16
  inline fn containsConstant(environ: Environ, comptime key: []const u8) bool
  inline fn containsUnemptyConstant(environ: Environ, comptime key: []const u8) bool
}

std.process.Preopens {
  const InitError = Allocator.Error || error{Unexpected
  const Map = switch (native_os)
  const Resource = union(enum)
  const empty: Preopens = switch (native_os)
  fn get(p: *const Preopens, name: []const u8) ?Resource
  fn init(arena: Allocator) InitError!Preopens
}

std.process {
  const ArgExpansion = enum { expand, no_expand 
  const Args = @import("process/Args.zig"
  const Child = @import("process/Child.zig"
  const CurrentPathAllocError = Allocator.Error || erro
  const CurrentPathError = erro
  const Environ = @import("process/Environ.zig"
  const ExecutablePathAllocError = ExecutablePathBaseError || Allocator.Erro
  const ExecutablePathBaseError = erro
  const ExecutablePathError = ExecutablePathBaseError || error{NameTooLong
  const Init = struct
  const LockMemoryAllOptions = struct
  const LockMemoryError = erro
  const LockMemoryOptions = struct
  const MemoryProtection = packed struct(u3)
  const OpenExecutableError = File.OpenError || ExecutablePathError || File.LockErro
  const Preopens = @import("process/Preopens.zig"
  const ProtectMemoryError = erro
  const ReplaceError = erro
  const ReplaceOptions = struct
  const RunError = erro
  const RunOptions = struct
  const RunResult = struct
  const SetCurrentDirError = erro
  const SetCurrentPathError = erro
  const SpawnError = erro
  const SpawnOptions = struct
  const TotalSystemMemoryError = erro
  const UnlockMemoryError = erro
  const UserInfo = struct
  const WindowsExtension = enum { bat, cmd, com, exe 
  const can_replace = switch (native_os)
  const can_spawn = switch (native_os)
  fn abort() noreturn
  fn cleanExit(io: Io) void
  fn currentPath(io: Io, buffer: []u8) CurrentPathError!usize
  fn currentPathAlloc(io: Io, allocator: Allocator) CurrentPathAllocError![:0]u8
  fn executableDirPath(io: Io, out_buffer: []u8) ExecutablePathError!usize
  fn executableDirPathAlloc(io: Io, allocator: Allocator) ExecutablePathAllocError![]u8
  fn executablePath(io: Io, out_buffer: []u8) ExecutablePathError!usize
  fn executablePathAlloc(io: Io, allocator: Allocator) ExecutablePathAllocError![:0]u8
  fn exit(status: u8) noreturn
  fn fatal(comptime format: []const u8, format_arguments: anytype) noreturn
  fn getBaseAddress() usize
  fn getUserInfo(name: []const u8) !UserInfo
  fn lockMemory(memory: []align(std.heap.page_size_min) const u8, options: LockMemoryOptions) LockMemoryError!void
  fn lockMemoryAll(options: LockMemoryAllOptions) LockMemoryError!void
  fn openExecutable(io: Io, flags: File.OpenFlags) OpenExecutableError!File
  fn posixGetUserInfo(io: Io, name: []const u8) !UserInfo
  fn protectMemory(memory: []align(std.heap.page_size_min) u8, protection: MemoryProtection) ProtectMemoryError!void
  fn raiseFileDescriptorLimit() void
  fn replace(io: Io, options: ReplaceOptions) ReplaceError
  fn replacePath(io: Io, dir: Io.Dir, options: ReplaceOptions) ReplaceError
  fn run(gpa: Allocator, io: Io, options: RunOptions) RunError!RunResult
  fn setCurrentDir(io: Io, dir: Io.Dir) !void
  fn setCurrentPath(io: Io, path: []const u8) !void
  fn spawn(io: Io, options: SpawnOptions) SpawnError!Child
  fn spawnPath(io: Io, dir: Io.Dir, options: SpawnOptions) SpawnError!Child
  fn totalSystemMemory() TotalSystemMemoryError!u64
  fn unlockMemory(memory: []align(std.heap.page_size_min) const u8) UnlockMemoryError!void
  fn unlockMemoryAll() UnlockMemoryError!void
}

std.Progress {
  const Ipc = packed struct(u32)
  const Node = struct
  const Options = struct
  const ParentFileError = erro
  const StartFailure = union(enum)
  const Status = enum
  const TerminalMode = union(enum)
  const have_ipc = switch (builtin.os.tag)
  const max_packet_len = std.math.ceilPowerOfTwoAsser
  fn clearWrittenWithEscapeCodes(file_writer: *Io.File.Writer) Io.Writer.Error!void
  fn setStatus(new_status: Status) void
  fn start(io: Io, options: Options) Node
}

std.Random.Ascon {
  const secret_seed_length = 3
  fn addEntropy(self: *Self, bytes: []const u8) void
  fn fill(self: *Self, buf: []u8) void
  fn init(secret_seed: [secret_seed_length]u8) Self
  fn random(self: *Self) std.Random
}

std.Random.benchmark {
  fn benchTime(io: Io) i96
  fn benchmark(comptime H: anytype, io: Io, bytes: usize, comptime block_size: usize) !Result
  fn main(init: std.process.Init) !void
}

std.Random.ChaCha {
  const secret_seed_length = Cipher.key_lengt
  fn addEntropy(self: *Self, bytes: []const u8) void
  fn fill(self: *Self, buf_: []u8) void
  fn init(secret_seed: [secret_seed_length]u8) Self
  fn random(self: *Self) std.Random
}

std.Random.Isaac64 {
  fn fill(self: *Isaac64, buf: []u8) void
  fn init(init_s: u64) Isaac64
  fn random(self: *Isaac64) std.Random
}

std.Random.lcg {
  fn Wrapping(comptime T: type) type
}

std.Random.Pcg {
  fn fill(self: *Pcg, buf: []u8) void
  fn init(init_s: u64) Pcg
  fn random(self: *Pcg) std.Random
}

std.Random.RomuTrio {
  fn fill(self: *RomuTrio, buf: []u8) void
  fn init(init_s: u64) RomuTrio
  fn random(self: *RomuTrio) std.Random
  fn seed(self: *RomuTrio, init_s: u64) void
  fn seedWithBuf(self: *RomuTrio, buf: [24]u8) void
}

std.Random.Sfc64 {
  fn fill(self: *Sfc64, buf: []u8) void
  fn init(init_s: u64) Sfc64
  fn random(self: *Sfc64) std.Random
}

std.Random.SplitMix64 {
  fn init(seed: u64) SplitMix64
  fn next(self: *SplitMix64) u64
}

std.Random.Xoroshiro128 {
  fn fill(self: *Xoroshiro128, buf: []u8) void
  fn init(init_s: u64) Xoroshiro128
  fn jump(self: *Xoroshiro128) void
  fn next(self: *Xoroshiro128) u64
  fn random(self: *Xoroshiro128) std.Random
  fn seed(self: *Xoroshiro128, init_s: u64) void
}

std.Random.Xoshiro256 {
  fn fill(self: *Xoshiro256, buf: []u8) void
  fn init(init_s: u64) Xoshiro256
  fn jump(self: *Xoshiro256) void
  fn next(self: *Xoshiro256) u64
  fn random(self: *Xoshiro256) std.Random
  fn seed(self: *Xoshiro256, init_s: u64) void
}

std.Random.ziggurat {
  const ExpDist = blk:
  const NormDist = blk:
  const ZigTable = struct
  const exp_r = 7.6971174701310497
  const exp_v = 0.003949659822581557199
  const norm_r = 3.654152885361008
  const norm_v = 0.0049286732339
  fn ZigTableGen(comptime is_symmetric: bool, comptime r: f64, comptime v: f64, comptime f: fn (f64) f64, comptime f_inv: fn (f64) f64, comptime zero_case: fn (Random, f64) f64) ZigTable
  fn exp_f(x: f64) f64
  fn exp_f_inv(y: f64) f64
  fn exp_zero_case(random: Random, _: f64) f64
  fn next_f64(random: Random, comptime tables: ZigTable) f64
  fn norm_f(x: f64) f64
  fn norm_f_inv(y: f64) f64
  fn norm_zero_case(random: Random, u: f64) f64
}

std.Random {
  const Ascon = @import("Random/Ascon.zig"
  const ChaCha = @import("Random/ChaCha.zig"
  const DefaultCsprng = ChaCh
  const DefaultPrng = Xoshiro25
  const IoSource = struct
  const Isaac64 = @import("Random/Isaac64.zig"
  const Pcg = @import("Random/Pcg.zig"
  const RomuTrio = @import("Random/RomuTrio.zig"
  const Sfc64 = @import("Random/Sfc64.zig"
  const SplitMix64 = @import("Random/SplitMix64.zig"
  const Xoroshiro128 = @import("Random/Xoroshiro128.zig"
  const Xoshiro256 = @import("Random/Xoshiro256.zig"
  const lcg = @import("Random/lcg.zig"
  const ziggurat = @import("Random/ziggurat.zig"
  fn array(r: Random, comptime E: type, comptime N: usize) [N]E
  fn boolean(r: Random) bool
  fn bytes(r: Random, buf: []u8) void
  fn enumValueWithIndex(r: Random, comptime EnumType: type, comptime Index: type) EnumType
  fn float(r: Random, comptime T: type) T
  fn floatExp(r: Random, comptime T: type) T
  fn floatNorm(r: Random, comptime T: type) T
  fn init(pointer: anytype, comptime fillFn: fn (ptr: @TypeOf(pointer), buf: []u8) void) Random
  fn int(r: Random, comptime T: type) T
  fn intRangeAtMost(r: Random, comptime T: type, at_least: T, at_most: T) T
  fn intRangeAtMostBiased(r: Random, comptime T: type, at_least: T, at_most: T) T
  fn intRangeLessThan(r: Random, comptime T: type, at_least: T, less_than: T) T
  fn intRangeLessThanBiased(r: Random, comptime T: type, at_least: T, less_than: T) T
  fn limitRangeBiased(comptime T: type, random_int: T, less_than: T) T
  fn shuffleWithIndex(r: Random, comptime T: type, buf: []T, comptime Index: type) void
  fn uintAtMost(r: Random, comptime T: type, at_most: T) T
  fn uintAtMostBiased(r: Random, comptime T: type, at_most: T) T
  fn uintLessThan(r: Random, comptime T: type, less_than: T) T
  fn uintLessThanBiased(r: Random, comptime T: type, less_than: T) T
  fn weightedIndex(r: Random, comptime T: type, proportions: []const T) usize
  inline fn enumValue(r: Random, comptime EnumType: type) EnumType
  inline fn shuffle(r: Random, comptime T: type, buf: []T) void
}

std.SemanticVersion {
  const Range = struct
  fn format(self: Version, w: *std.Io.Writer) std.Io.Writer.Error!void
  fn order(lhs: Version, rhs: Version) std.math.Order
  fn parse(text: []const u8) !Version
}

std.simd {
  fn VectorCount(comptime VectorType: type) type
  fn VectorIndex(comptime VectorType: type) type
  fn countElementsWithValue(vec: anytype, value: std.meta.Child(@TypeOf(vec))) VectorCount(@TypeOf(vec))
  fn countTrues(vec: anytype) VectorCount(@TypeOf(vec))
  fn deinterlace(comptime vec_count: usize, interlaced: anytype) [vec_count]@Vector
  fn extract(vec: anytype, comptime first: VectorIndex(@TypeOf(vec)), comptime count: VectorCount(@TypeOf(vec))) @Vector(count, std.meta.Child(@TypeOf(vec)))
  fn firstIndexOfValue(vec: anytype, value: std.meta.Child(@TypeOf(vec))) ?VectorIndex(@TypeOf(vec))
  fn firstTrue(vec: anytype) ?VectorIndex(@TypeOf(vec))
  fn interlace(vecs: anytype) @Vector(vectorLength(@TypeOf(vecs[0])) * vecs.len, std.meta.Child(@TypeOf(vecs[0])))
  fn join(a: anytype, b: anytype) @Vector(vectorLength(@TypeOf(a)) + vectorLength(@TypeOf(b)), std.meta.Child(@TypeOf(a)))
  fn lastIndexOfValue(vec: anytype, value: std.meta.Child(@TypeOf(vec))) ?VectorIndex(@TypeOf(vec))
  fn lastTrue(vec: anytype) ?VectorIndex(@TypeOf(vec))
  fn mergeShift(a: anytype, b: anytype, comptime shift: VectorCount(@TypeOf(a, b))) @TypeOf(a, b)
  fn prefixScan(comptime op: std.builtin.ReduceOp, comptime hop: isize, vec: anytype) @TypeOf(vec)
  fn prefixScanWithFunc(comptime hop: isize, vec: anytype, comptime ErrorType: type, comptime func: fn (@TypeOf(vec), @TypeOf(vec)) if (ErrorType == void) @TypeOf(vec) else ErrorType!@TypeOf(vec), comptime identity: std.meta.Child(@TypeOf(vec))) if (ErrorType == void) @TypeOf(vec) else ErrorType!@TypeOf(vec)
  fn repeat(comptime len: usize, vec: anytype) @Vector(len, std.meta.Child(@TypeOf(vec)))
  fn reverseOrder(vec: anytype) @TypeOf(vec)
  fn rotateElementsLeft(vec: anytype, comptime amount: VectorCount(@TypeOf(vec))) @TypeOf(vec)
  fn rotateElementsRight(vec: anytype, comptime amount: VectorCount(@TypeOf(vec))) @TypeOf(vec)
  fn shiftElementsLeft(vec: anytype, comptime amount: VectorCount(@TypeOf(vec)), shift_in: std.meta.Child(@TypeOf(vec))) @TypeOf(vec)
  fn shiftElementsRight(vec: anytype, comptime amount: VectorCount(@TypeOf(vec)), shift_in: std.meta.Child(@TypeOf(vec))) @TypeOf(vec)
  fn suggestVectorLength(comptime T: type) ?comptime_int
  fn suggestVectorLengthForCpu(comptime T: type, comptime cpu: std.Target.Cpu) ?comptime_int
  inline fn iota(comptime T: type, comptime len: usize) @Vector(len, T)
}

std.SinglyLinkedList {
  const Node = struct
  fn len(list: SinglyLinkedList) usize
  fn popFirst(list: *SinglyLinkedList) ?*Node
  fn prepend(list: *SinglyLinkedList, new_node: *Node) void
  fn remove(list: *SinglyLinkedList, node: *Node) void
}

std.sort.block {
  fn block(comptime T: type, items: []T, context: anytype, comptime lessThanFn: fn (@TypeOf(context), lhs: T, rhs: T) bool) void
}

std.sort.pdq {
  fn pdq(comptime T: type, items: []T, context: anytype, comptime lessThanFn: fn (context: @TypeOf(context), lhs: T, rhs: T) bool) void
  fn pdqContext(a: usize, b: usize, context: anytype) void
}

std.sort {
  const Mode = enum { stable, unstable 
  const block = @import("sort/block.zig").bloc
  const pdq = @import("sort/pdq.zig").pd
  const pdqContext = @import("sort/pdq.zig").pdqContex
  fn argMax(comptime T: type, items: []const T, context: anytype, comptime lessThan: fn (context: @TypeOf(context), lhs: T, rhs: T) bool) ?usize
  fn argMin(comptime T: type, items: []const T, context: anytype, comptime lessThan: fn (@TypeOf(context), lhs: T, rhs: T) bool) ?usize
  fn asc(comptime T: type) fn (void, T, T) bool
  fn binarySearch(comptime T: type, items: []const T, context: anytype, comptime compareFn: fn (@TypeOf(context), T) std.math.Order) ?usize
  fn desc(comptime T: type) fn (void, T, T) bool
  fn equalRange(comptime T: type, items: []const T, context: anytype, comptime compareFn: fn (@TypeOf(context), T) std.math.Order) struct { usize, usize }
  fn heap(comptime T: type, items: []T, context: anytype, comptime lessThanFn: fn (@TypeOf(context), lhs: T, rhs: T) bool) void
  fn heapContext(a: usize, b: usize, context: anytype) void
  fn insertion(comptime T: type, items: []T, context: anytype, comptime lessThanFn: fn (@TypeOf(context), lhs: T, rhs: T) bool) void
  fn insertionContext(a: usize, b: usize, context: anytype) void
  fn isSorted(comptime T: type, items: []const T, context: anytype, comptime lessThan: fn (context: @TypeOf(context), lhs: T, rhs: T) bool) bool
  fn lowerBound(comptime T: type, items: []const T, context: anytype, comptime compareFn: fn (@TypeOf(context), T) std.math.Order) usize
  fn max(comptime T: type, items: []const T, context: anytype, comptime lessThan: fn (context: @TypeOf(context), lhs: T, rhs: T) bool) ?T
  fn min(comptime T: type, items: []const T, context: anytype, comptime lessThan: fn (context: @TypeOf(context), lhs: T, rhs: T) bool) ?T
  fn partitionPoint(comptime T: type, items: []const T, context: anytype, comptime predicate: fn (@TypeOf(context), T) bool) usize
  fn upperBound(comptime T: type, items: []const T, context: anytype, comptime compareFn: fn (@TypeOf(context), T) std.math.Order) usize
}

std.static_string_map {
  fn StaticStringMap(comptime V: type) type
  fn StaticStringMapWithEql(comptime V: type, comptime eql: fn (a: []const u8, b: []const u8) bool) type
  fn defaultEql(a: []const u8, b: []const u8) bool
  fn eqlAsciiIgnoreCase(a: []const u8, b: []const u8) bool
}

std {
  const ArrayHashMapUnmanaged = array_hash_map.Custo
  const ArrayListAligned = array_list.Aligne
  const ArrayListAlignedUnmanaged = array_list.Aligne
  const ArrayListUnmanaged = ArrayLis
  const AutoArrayHashMapUnmanaged = array_hash_map.Aut
  const AutoHashMap = hash_map.AutoHashMa
  const AutoHashMapUnmanaged = hash_map.AutoHashMapUnmanage
  const BitStack = @import("BitStack.zig"
  const BufMap = @import("buf_map.zig").BufMa
  const BufSet = @import("buf_set.zig").BufSe
  const Build = @import("Build.zig"
  const Deque = @import("deque.zig").Dequ
  const DoublyLinkedList = @import("DoublyLinkedList.zig"
  const DynLib = @import("dynamic_library.zig").DynLi
  const DynamicBitSet = bit_set.DynamicBitSe
  const DynamicBitSetUnmanaged = bit_set.DynamicBitSetUnmanage
  const EnumArray = enums.EnumArra
  const EnumMap = enums.EnumMa
  const EnumSet = enums.EnumSe
  const HashMap = hash_map.HashMa
  const HashMapUnmanaged = hash_map.HashMapUnmanage
  const Io = @import("Io.zig"
  const MultiArrayList = @import("multi_array_list.zig").MultiArrayLis
  const Options = struct
  const PriorityDequeue = @import("priority_dequeue.zig").PriorityDequeu
  const PriorityQueue = @import("priority_queue.zig").PriorityQueu
  const Progress = @import("Progress.zig"
  const Random = @import("Random.zig"
  const SemanticVersion = @import("SemanticVersion.zig"
  const SinglyLinkedList = @import("SinglyLinkedList.zig"
  const StaticBitSet = bit_set.StaticBitSe
  const StaticStringMap = static_string_map.StaticStringMa
  const StaticStringMapWithEql = static_string_map.StaticStringMapWithEq
  const StringArrayHashMapUnmanaged = array_hash_map.Strin
  const StringHashMap = hash_map.StringHashMa
  const StringHashMapUnmanaged = hash_map.StringHashMapUnmanage
  const Target = @import("Target.zig"
  const Thread = @import("Thread.zig"
  const Treap = @import("treap.zig").Trea
  const Tz = tz.T
  const Uri = @import("Uri.zig"
  const array_hash_map = @import("array_hash_map.zig"
  const array_list = @import("array_list.zig"
  const ascii = @import("ascii.zig"
  const atomic = @import("atomic.zig"
  const base64 = @import("base64.zig"
  const bit_set = @import("bit_set.zig"
  const builtin = @import("builtin.zig"
  const c = @import("c.zig"
  const coff = @import("coff.zig"
  const compress = @import("compress.zig"
  const crypto = @import("crypto.zig"
  const debug = @import("debug.zig"
  const dwarf = @import("dwarf.zig"
  const elf = @import("elf.zig"
  const enums = @import("enums.zig"
  const fmt = @import("fmt.zig"
  const fs = @import("fs.zig"
  const gpu = @import("gpu.zig"
  const hash = @import("hash.zig"
  const hash_map = @import("hash_map.zig"
  const heap = @import("heap.zig"
  const http = @import("http.zig"
  const json = @import("json.zig"
  const leb = @import("leb128.zig"
  const log = @import("log.zig"
  const macho = @import("macho.zig"
  const math = @import("math.zig"
  const mem = @import("mem.zig"
  const meta = @import("meta.zig"
  const options: Options = if (@hasDecl(root, "std_options")) root.std_options else .{
  const os = @import("os.zig"
  const pdb = @import("pdb.zig"
  const pie = @import("pie.zig"
  const posix = @import("posix.zig"
  const process = @import("process.zig"
  const simd = @import("simd.zig"
  const sort = @import("sort.zig"
  const start = @import("start.zig"
  const static_string_map = @import("static_string_map.zig"
  const tar = @import("tar.zig"
  const testing = @import("testing.zig"
  const time = @import("time.zig"
  const tz = @import("tz.zig"
  const unicode = @import("unicode.zig"
  const valgrind = @import("valgrind.zig"
  const wasm = @import("wasm.zig"
  const zig = @import("zig.zig"
  const zip = @import("zip.zig"
  const zon = @import("zon.zig"
  fn ArrayList(comptime T: type) type
}

std.tar.Writer {
  const Header = extern struct
  const Options = struct
  const WriteFileError = Io.Writer.FileError || Error || Io.File.Reader.SizeErro
  const WriteFileStreamError = Error || Io.Reader.StreamErro
  fn finishPedantically(w: *Writer) Io.Writer.Error!void
  fn setRoot(w: *Writer, root: []const u8) Error!void
  fn writeDir(w: *Writer, sub_path: []const u8, options: Options) Error!void
  fn writeFile(w: *Writer, sub_path: []const u8, file_reader: *Io.File.Reader, mtime: u64) WriteFileError!void
  fn writeFileBytes(w: *Writer, sub_path: []const u8, content: []const u8, options: Options) Error!void
  fn writeFileStream(w: *Writer, sub_path: []const u8, size: u64, reader: *Io.Reader, options: Options) WriteFileStreamError!void
  fn writeFileTimestamp(w: *Writer, sub_path: []const u8, file_reader: *Io.File.Reader, mtime: Io.Timestamp) WriteFileError!void
  fn writeLink(w: *Writer, sub_path: []const u8, link_name: []const u8, options: Options) Error!void
}

std.tar {
  const Diagnostics = struct
  const ExtractOptions = struct
  const FileKind = enum
  const Iterator = struct
  const PaxIterator = struct
  const PipeOptions = ExtractOption
  const Writer = @import("tar/Writer.zig"
  const pipeToFileSystem = extrac
  fn extract(io: Io, dir: Io.Dir, reader: *Io.Reader, options: ExtractOptions) !void
}

std.Target.aarch64 {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.alpha {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.amdgcn {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.arc {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.arm {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.avr {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.bpf {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.csky {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.generic {
  const Feature = enum {
  const all_features: [0]CpuFeature = .{
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.hexagon {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.hppa {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.kvx {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.lanai {
  const Feature = enum {
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.loongarch {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.m68k {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.mips {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.msp430 {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.nvptx {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.powerpc {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.propeller {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.Query {
  const CpuModel = union(enum)
  const OsVersion = union(enum)
  const ParseOptions = struct
  const SemanticVersion = std.SemanticVersio
  fn allocDescription(self: Query, allocator: Allocator) ![]u8
  fn canDetectLibC(self: Query) bool
  fn eql(a: Query, b: Query) bool
  fn fromTarget(target: *const Target) Query
  fn isNative(self: Query) bool
  fn isNativeAbi(self: Query) bool
  fn isNativeCpu(self: Query) bool
  fn isNativeOs(self: Query) bool
  fn isNativeTriple(self: Query) bool
  fn parse(args: ParseOptions) !Query
  fn parseCpuArch(args: ParseOptions) ?Target.Cpu.Arch
  fn parseVersion(ver: []const u8) error{ InvalidVersion, Overflow }!SemanticVersion
  fn serializeCpu(q: Query, buffer: *std.array_list.Managed(u8)) Allocator.Error!void
  fn serializeCpuAlloc(q: Query, ally: Allocator) Allocator.Error![]u8
  fn setGnuLibCVersion(self: *Query, major: u32, minor: u32, patch: u32) void
  fn zigTriple(self: Query, gpa: Allocator) Allocator.Error![]u8
}

std.Target.riscv {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.s390x {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.sparc {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.spirv {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.ve {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.wasm {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.x86 {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.xcore {
  const Feature = enum {
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target.xtensa {
  const Feature = enum
  const all_features = blk:
  const cpu = struct
  const featureSet = CpuFeature.FeatureSetFns(Feature).featureSe
  const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHa
  const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAl
  const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAn
}

std.Target {
  const Abi = enum
  const AddressSpaceContext = enum
  const CType = enum
  const Cpu = struct
  const DynamicLinker = struct
  const ObjectFormat = enum
  const Os = struct
  const Query = @import("Target/Query.zig"
  const StackGrowth = enum
  const SubSystem = std.zig.Subsyste
  const aarch64 = @import("Target/aarch64.zig"
  const alpha = @import("Target/alpha.zig"
  const amdgcn = @import("Target/amdgcn.zig"
  const arc = @import("Target/arc.zig"
  const arm = @import("Target/arm.zig"
  const avr = @import("Target/avr.zig"
  const bpf = @import("Target/bpf.zig"
  const csky = @import("Target/csky.zig"
  const hexagon = @import("Target/hexagon.zig"
  const hppa = @import("Target/hppa.zig"
  const kalimba = @import("Target/generic.zig"
  const kvx = @import("Target/kvx.zig"
  const lanai = @import("Target/lanai.zig"
  const loongarch = @import("Target/loongarch.zig"
  const m68k = @import("Target/m68k.zig"
  const microblaze = @import("Target/generic.zig"
  const mips = @import("Target/mips.zig"
  const msp430 = @import("Target/msp430.zig"
  const nvptx = @import("Target/nvptx.zig"
  const or1k = @import("Target/generic.zig"
  const powerpc = @import("Target/powerpc.zig"
  const propeller = @import("Target/propeller.zig"
  const riscv = @import("Target/riscv.zig"
  const s390x = @import("Target/s390x.zig"
  const sh = @import("Target/generic.zig"
  const sparc = @import("Target/sparc.zig"
  const spirv = @import("Target/spirv.zig"
  const ve = @import("Target/ve.zig"
  const wasm = @import("Target/wasm.zig"
  const x86 = @import("Target/x86.zig"
  const xcore = @import("Target/xcore.zig"
  const xtensa = @import("Target/xtensa.zig"
  fn cCallingConvention(target: *const Target) ?std.builtin.CallingConvention
  fn cCharSignedness(target: *const Target) std.builtin.Signedness
  fn cMaxIntAlignment(target: *const Target) u16
  fn cTypeAlignment(target: *const Target, c_type: CType) u16
  fn cTypeBitSize(target: *const Target, c_type: CType) u16
  fn cTypeByteSize(t: *const Target, c_type: CType) u16
  fn cTypePreferredAlignment(target: *const Target, c_type: CType) u16
  fn dynamicLibSuffix(target: *const Target) [:0]const u8
  fn exeFileExt(target: *const Target) [:0]const u8
  fn hurdTuple(target: *const Target, allocator: Allocator) ![]u8
  fn hurdTupleSimple(allocator: Allocator, arch: Cpu.Arch, abi: Abi) ![]u8
  fn libPrefix(target: *const Target) [:0]const u8
  fn linuxTriple(target: *const Target, allocator: Allocator) ![]u8
  fn linuxTripleSimple(allocator: Allocator, arch: Cpu.Arch, os_tag: Os.Tag, abi: Abi) ![]u8
  fn ptrBitWidth(target: *const Target) u16
  fn ptrBitWidth_arch_abi(cpu_arch: Cpu.Arch, abi: Abi) u16
  fn ptrBitWidth_cpu_abi(cpu: Cpu, abi: Abi) u16
  fn requiresLibC(target: *const Target) bool
  fn stackAlignment(target: *const Target) u16
  fn stackGrowth(target: *const Target) StackGrowth
  fn standardDynamicLinkerPath(target: *const Target) DynamicLinker
  fn staticLibSuffix(target: *const Target) [:0]const u8
  fn supportsAddressSpace(target: Target, address_space: std.builtin.AddressSpace, context: ?AddressSpaceContext) bool
  fn toCoffMachine(target: *const Target) std.coff.IMAGE.FILE.MACHINE
  fn toElfMachine(target: *const Target) std.elf.EM
  fn zigTriple(target: *const Target, allocator: Allocator) Allocator.Error![]u8
  inline fn isBionicLibC(target: *const Target) bool
  inline fn isDarwinLibC(target: *const Target) bool
  inline fn isFreeBSDLibC(target: *const Target) bool
  inline fn isGnuLibC(target: *const Target) bool
  inline fn isMinGW(target: *const Target) bool
  inline fn isMuslLibC(target: *const Target) bool
  inline fn isNetBSDLibC(target: *const Target) bool
  inline fn isOpenBSDLibC(target: *const Target) bool
  inline fn isWasiLibC(target: *const Target) bool
}

std.testing.FailingAllocator {
  const Config = struct
  fn allocator(self: *FailingAllocator) mem.Allocator
  fn getStackTrace(self: *FailingAllocator) std.debug.StackTrace
  fn init(internal_allocator: mem.Allocator, config: Config) FailingAllocator
}

std.testing.Smith {
  const Weight = fuzz_abi.Weigh
  fn boolWeightedWithHash(s: *Smith, false_weight: u64, true_weight: u64, hash: u32) bool
  fn bytesWeightedWithHash(s: *Smith, out: []u8, weights: []const Weight, hash: u32) void
  fn bytesWithHash(s: *Smith, out: []u8, hash: u32) void
  fn eosWeightedSimpleWithHash(s: *Smith, false_weight: u64, true_weight: u64, hash: u32) bool
  fn eosWeightedWithHash(s: *Smith, weights: []const Weight, hash: u32) bool
  fn eosWithHash(s: *Smith, hash: u32) bool
  fn indexWithHash(s: *Smith, len: usize, hash: u32) usize
  fn sliceWeightedBytesWithHash(s: *Smith, buf: []u8, byte_weights: []const Weight, hash: u32) u32
  fn sliceWeightedWithHash(s: *Smith, buf: []u8, len_weights: []const Weight, byte_weights: []const Weight, hash: u32) u32
  fn sliceWithHash(s: *Smith, buf: []u8, hash: u32) u32
  fn valueRangeAtMostWithHash(s: *Smith, T: type, at_least: T, at_most: T, hash: u32) T
  fn valueRangeLessThanWithHash(s: *Smith, T: type, at_least: T, less_than: T, hash: u32) T
  fn valueWeightedWithHash(s: *Smith, T: type, weights: []const Weight, hash: u32) T
  fn valueWithHash(s: *Smith, T: type, hash: u32) T
  inline fn baselineWeights(T: type) []const Weight
  noinline fn boolWeighted(s: *Smith, false_weight: u64, true_weight: u64) bool
  noinline fn bytes(s: *Smith, out: []u8) void
  noinline fn bytesWeighted(s: *Smith, out: []u8, weights: []const Weight) void
  noinline fn eos(s: *Smith) bool
  noinline fn eosWeighted(s: *Smith, weights: []const Weight) bool
  noinline fn eosWeightedSimple(s: *Smith, false_weight: u64, true_weight: u64) bool
  noinline fn index(s: *Smith, len: usize) usize
  noinline fn slice(s: *Smith, buf: []u8) u32
  noinline fn sliceWeighte
  noinline fn sliceWeightedBytes(s: *Smith, buf: []u8, byte_weights: []const Weight) u32
  noinline fn value(s: *Smith, T: type) T
  noinline fn valueRangeAtMost(s: *Smith, T: type, at_least: T, at_most: T) T
  noinline fn valueRangeLessThan(s: *Smith, T: type, at_least: T, less_than: T) T
  noinline fn valueWeighted(s: *Smith, T: type, weights: []const Weight) T
}

std.testing {
  const FailingAllocator = @import("testing/FailingAllocator.zig"
  const FuzzInputOptions = struct
  const Reader = struct
  const ReaderIndirect = struct
  const Smith = @import("testing/Smith.zig"
  const TmpDir = struct
  const allocator = allocator_instance.allocator(
  const backend_can_print = switch (builtin.zig_backend)
  const failing_allocator = failing_allocator_instance.allocator(
  const io = if (builtin.is_test) io_instance.io() else @compileError("not testing"
  fn checkAllAllocationFailures(backing_allocator: std.mem.Allocator, comptime test_fn: anytype, extra_args: CheckAllAllocationFailuresExtraArgs(@TypeOf(test_fn))) !void
  fn expect(ok: bool) !void
  fn expectEqualSentinel(comptime T: type, comptime sentinel: T, expected: [:sentinel]const T, actual: [:sentinel]const T) !void
  fn expectEqualSlices(comptime T: type, expected: []const T, actual: []const T) !void
  fn expectEqualStrings(expected: []const u8, actual: []const u8) !void
  fn expectError(expected_error: anyerror, actual_error_union: anytype) !void
  fn expectFmt(expected: []const u8, comptime template: []const u8, args: anytype) !void
  fn expectStringEndsWith(actual: []const u8, expected_ends_with: []const u8) !void
  fn expectStringStartsWith(actual: []const u8, expected_starts_with: []const u8) !void
  fn refAllDecls(comptime T: type) void
  fn tmpDir(opts: Io.Dir.OpenOptions) TmpDir
  inline fn expectApproxEqAbs(expected: anytype, actual: anytype, tolerance: anytype) !void
  inline fn expectApproxEqRel(expected: anytype, actual: anytype, tolerance: anytype) !void
  inline fn expectEqual(expected: anytype, actual: anytype) !void
  inline fn expectEqualDeep(expected: anytype, actual: anytype) error{TestExpectedEqual}!void
  inline fn fuz
  var allocator_instance: std.heap.DebugAllocator(
  var environ: Environ = if (builtin.is_test) undefined else @compileError("not testing"
  var io_instance: Io.Threaded = undefine
  var log_level = std.log.Level.war
  var random_seed: u32 = 
}

std.Thread {
  const CpuCountError = erro
  const GetNameError = erro
  const Handle = Impl.ThreadHandl
  const Id = switch (native_os)
  const SetNameError = erro
  const SpawnConfig = struct
  const SpawnError = erro
  const YieldError = erro
  const max_name_len = switch (native_os)
  const use_pthreads = native_os != .windows and native_os != .wasi and builtin.link_lib
  fn detach(self: Thread) void
  fn getCpuCount() CpuCountError!usize
  fn getCurrentId() Id
  fn getHandle(self: Thread) Handle
  fn getName(self: Thread, buffer_ptr: *[max_name_len:0]u8) GetNameError!?[]const u8
  fn join(self: Thread) void
  fn maybeAttachSignalStack() void
  fn setName(self: Thread, io: Io, name: []const u8) SetNameError!void
  fn spawn(config: SpawnConfig, comptime function: anytype, args: anytype) SpawnError!Thread
  fn yield() YieldError!void
}

std.time.epoch {
  const DaySeconds = struct
  const EpochDay = struct
  const EpochSeconds = struct
  const Month = enum(u4)
  const MonthAndDay = struct
  const Year = u1
  const YearAndDay = struct
  const amiga = 25246080
  const android = posi
  const aros = amig
  const atsc = gp
  const bios = do
  const brew = gp
  const clr = -6213576960
  const dos = 31553280
  const epoch_year = 197
  const go = cl
  const gps = 31596480
  const ios = 97830720
  const jbase = picko
  const morphos = amig
  const ntfs = window
  const ntp = zo
  const openvms = -350671680
  const os2 = do
  const pickos = -6324480
  const posix = 
  const secs_per_day: u17 = 24 * 60 * 6
  const unix = posi
  const vfat = do
  const windows = -1164447360
  const zos = -220898880
  fn getDaysInMonth(year: Year, month: Month) u5
  fn getDaysInYear(year: Year) u9
  fn isLeapYear(year: Year) bool
}

std.time {
  const epoch = @import("time/epoch.zig"
  const ms_per_day = 24 * ms_per_hou
  const ms_per_hour = 60 * ms_per_mi
  const ms_per_min = 60 * ms_per_
  const ms_per_s = 100
  const ms_per_week = 7 * ms_per_da
  const ns_per_day = 24 * ns_per_hou
  const ns_per_hour = 60 * ns_per_mi
  const ns_per_min = 60 * ns_per_
  const ns_per_ms = 1000 * ns_per_u
  const ns_per_s = 1000 * ns_per_m
  const ns_per_us = 100
  const ns_per_week = 7 * ns_per_da
  const s_per_day = s_per_hour * 2
  const s_per_hour = s_per_min * 6
  const s_per_min = 6
  const s_per_week = s_per_day * 
  const us_per_day = 24 * us_per_hou
  const us_per_hour = 60 * us_per_mi
  const us_per_min = 60 * us_per_
  const us_per_ms = 100
  const us_per_s = 1000 * us_per_m
  const us_per_week = 7 * us_per_da
}

std.treap {
  fn Treap(comptime Key: type, comptime compareFn: anytype) type
}

std.tz {
  const Leapsecond = struct
  const Timetype = struct
  const Transition = struct
  const Tz = struct
}

std.unicode {
  const Utf16LeIterator = struct
  const Utf16LeToUtf8AllocError = Allocator.Error || Utf16LeToUtf8Erro
  const Utf16LeToUtf8Error = Utf16LeIterator.NextCodepointErro
  const Utf8Iterator = struct
  const Utf8View = struct
  const Wtf16LeIterator = struct
  const Wtf8Iterator = struct
  const Wtf8View = struct
  const replacement_character: u21 = 0xFFF
  const replacement_character_utf8: [3]u8 = utf8EncodeComptime(replacement_character
  fn calcUtf16LeLen(utf8: []const u8) CalcUtf16LeLenError!usize
  fn calcUtf16LeLenImpl(utf8: []const u8, comptime surrogates: Surrogates) !usize
  fn calcWtf16LeLen(wtf8: []const u8) CalcWtf16LeLenError!usize
  fn calcWtf8Len(wtf16le: []const u16) usize
  fn fmtUtf16Le(utf16le: []const u16) std.fmt.Alt([]const u16, formatUtf16Le)
  fn fmtUtf8(utf8: []const u8) std.fmt.Alt([]const u8, formatUtf8)
  fn isSurrogateCodepoint(c: u21) bool
  fn utf16CodeUnitSequenceLength(first_code_unit: u16) !u2
  fn utf16CodepointSequenceLength(c: u21) !u2
  fn utf16CountCodepoints(utf16le: []const u16) !usize
  fn utf16DecodeSurrogatePair(surrogate_pair: []const u16) !u21
  fn utf16IsHighSurrogate(c: u16) bool
  fn utf16IsLowSurrogate(c: u16) bool
  fn utf16LeToUtf8(utf8: []u8, utf16le: []const u16) Utf16LeToUtf8Error!usize
  fn utf16LeToUtf8Alloc(allocator: Allocator, utf16le: []const u16) Utf16LeToUtf8AllocError![]u8
  fn utf16LeToUtf8AllocZ(allocator: Allocator, utf16le: []const u16) Utf16LeToUtf8AllocError![:0]u8
  fn utf16LeToUtf8ArrayList(result: *std.array_list.Managed(u8), utf16le: []const u16) Utf16LeToUtf8AllocError!void
  fn utf8ByteSequenceLength(first_byte: u8) !u3
  fn utf8CodepointSequenceLength(c: u21) !u3
  fn utf8CountCodepoints(s: []const u8) !usize
  fn utf8Decode(bytes: []const u8) Utf8DecodeError!u21
  fn utf8Decode2(bytes: [2]u8) Utf8Decode2Error!u21
  fn utf8Decode3(bytes: [3]u8) Utf8Decode3Error!u21
  fn utf8Decode3AllowSurrogateHalf(bytes: [3]u8) Utf8Decode3AllowSurrogateHalfError!u21
  fn utf8Decode4(bytes: [4]u8) Utf8Decode4Error!u21
  fn utf8Encode(c: u21, out: []u8) error{ Utf8CannotEncodeSurrogateHalf, CodepointTooLarge }!u3
  fn utf8ToUtf16Le(utf16le: []u16, utf8: []const u8) error{InvalidUtf8}!usize
  fn utf8ToUtf16LeAlloc(allocator: Allocator, utf8: []const u8) error{ InvalidUtf8, OutOfMemory }![]u16
  fn utf8ToUtf16LeAllocZ(allocator: Allocator, utf8: []const u8) error{ InvalidUtf8, OutOfMemory }![:0]u16
  fn utf8ToUtf16LeArrayList(result: *std.array_list.Managed(u16), utf8: []const u8) error{ InvalidUtf8, OutOfMemory }!void
  fn utf8ToUtf16LeImpl(utf16le: []u16, utf8: []const u8, comptime surrogates: Surrogates) !usize
  fn utf8ToUtf16LeStringLiteral(comptime utf8: []const u8) *const [calcUtf16LeLen(utf8) catch |err| @compileError(err):0]u16
  fn utf8ValidCodepoint(value: u21) bool
  fn utf8ValidateSlice(input: []const u8) bool
  fn wtf16LeToWtf8(wtf8: []u8, wtf16le: []const u16) usize
  fn wtf16LeToWtf8Alloc(allocator: Allocator, wtf16le: []const u16) Allocator.Error![]u8
  fn wtf16LeToWtf8AllocZ(allocator: Allocator, wtf16le: []const u16) Allocator.Error![:0]u8
  fn wtf16LeToWtf8ArrayList(result: *std.array_list.Managed(u8), utf16le: []const u16) Allocator.Error!void
  fn wtf8Decode(bytes: []const u8) Wtf8DecodeError!u21
  fn wtf8Encode(c: u21, out: []u8) error{CodepointTooLarge}!u3
  fn wtf8ToUtf8Lossy(utf8: []u8, wtf8: []const u8) error{InvalidWtf8}!void
  fn wtf8ToUtf8LossyAlloc(allocator: Allocator, wtf8: []const u8) error{ InvalidWtf8, OutOfMemory }![]u8
  fn wtf8ToUtf8LossyAllocZ(allocator: Allocator, wtf8: []const u8) error{ InvalidWtf8, OutOfMemory }![:0]u8
  fn wtf8ToWtf16Le(wtf16le: []u16, wtf8: []const u8) error{InvalidWtf8}!usize
  fn wtf8ToWtf16LeAlloc(allocator: Allocator, wtf8: []const u8) error{ InvalidWtf8, OutOfMemory }![]u16
  fn wtf8ToWtf16LeAllocZ(allocator: Allocator, wtf8: []const u8) error{ InvalidWtf8, OutOfMemory }![:0]u16
  fn wtf8ToWtf16LeArrayList(result: *std.array_list.Managed(u16), wtf8: []const u8) error{ InvalidWtf8, OutOfMemory }!void
  fn wtf8ToWtf16LeStringLiteral(comptime wtf8: []const u8) *const [calcWtf16LeLen(wtf8) catch |err| @compileError(err):0]u16
  fn wtf8ValidateSlice(input: []const u8) bool
  inline fn utf8EncodeComptime(comptime c: u21)
}

std.Uri {
  const Component = union(enum)
  const Format = struct
  const GetHostAllocError = GetHostError || error{OutOfMemory
  const GetHostError = error{UriMissingHost
  const ParseError = erro
  const ResolveInPlaceError = ParseError || error{NoSpaceLeft
  fn fmt(uri: *const Uri, flags: Format.Flags) std.fmt.Alt(Format, Format.default)
  fn format(uri: *const Uri, writer: *Writer) Writer.Error!void
  fn getHost(uri: Uri, buffer: *[HostName.max_len]u8) GetHostError!HostName
  fn getHostAlloc(uri: Uri, arena: Allocator) GetHostAllocError!HostName
  fn parse(text: []const u8) ParseError!Uri
  fn parseAfterScheme(scheme: []const u8, text: []const u8) ParseError!Uri
  fn percentDecodeBackwards(output: []u8, input: []const u8) []u8
  fn percentDecodeInPlace(buffer: []u8) []u8
  fn resolveInPlace(base: Uri, new_len: usize, aux_buf: *[]u8) ResolveInPlaceError!Uri
  fn writeToStream(uri: *const Uri, writer: *Writer, flags: Format.Flags) Writer.Error!void
}

std.valgrind.cachegrind {
  const ClientRequest = enum(usize)
  fn startInstrumentation() void
  fn stopInstrumentation() void
}

std.valgrind.callgrind {
  const ClientRequest = enum(usize)
  fn dumpStats() void
  fn dumpStatsAt(pos_str: [*:0]const u8) void
  fn startInstrumentation() void
  fn stopInstrumentation() void
  fn toggleCollect() void
  fn zeroStats() void
}

std.valgrind.memcheck {
  const ClientRequest = enum(usize)
  fn checkMemIsAddressable(qzz: []const u8) usize
  fn checkMemIsDefined(qzz: []const u8) usize
  fn countLeakBlocks() CountResult
  fn countLeaks() CountResult
  fn createBlock(qzz: []const u8, desc: [*:0]const u8) usize
  fn disableAddrErrorReportingInRange(qzz: []u8) usize
  fn discard(blkindex: usize) bool
  fn doAddedLeakCheck() void
  fn doChangedLeakCheck() void
  fn doLeakCheck() void
  fn doQuickLeakCheck() void
  fn enableAddrErrorReportingInRange(qzz: []u8) usize
  fn getVbits(zza: []u8, zzvbits: []u8) u2
  fn makeMemDefined(qzz: []const u8) void
  fn makeMemDefinedIfAddressable(qzz: []const u8) void
  fn makeMemNoAccess(qzz: []const u8) void
  fn makeMemUndefined(qzz: []const u8) void
  fn setVbits(zzvbits: []u8, zza: []u8) u2
}

std.valgrind {
  const ClientRequest = enum(u32)
  const MempoolFlags = struct
  const cachegrind = @import("valgrind/cachegrind.zig"
  const callgrind = @import("valgrind/callgrind.zig"
  const memcheck = @import("valgrind/memcheck.zig"
  fn IsTool(base: [2]u8, code: usize) bool
  fn ToolBase(base: [2]u8) u32
  fn countErrors() usize
  fn createMempool(pool: [*]u8, rzB: usize, is_zeroed: bool, flags: usize) void
  fn destroyMempool(pool: [*]u8) void
  fn disableErrorReporting() void
  fn discardTranslations(qzz: []const u8) void
  fn doClientRequest(default: usize, request: usize, a1: usize, a2: usize, a3: usize, a4: usize, a5: usize) usize
  fn enableErrorReporting() void
  fn freeLikeBlock(addr: [*]u8, rzB: usize) void
  fn innerThreads(qzz: [*]u8) void
  fn mallocLikeBlock(mem: []u8, rzB: usize, is_zeroed: bool) void
  fn mapIpToSrcloc(addr: *const u8, buf64: [64]u8) usize
  fn mempoolAlloc(pool: [*]u8, mem: []u8) void
  fn mempoolChange(pool: [*]u8, addrA: [*]u8, mem: []u8) void
  fn mempoolExists(pool: [*]u8) bool
  fn mempoolFree(pool: [*]u8, addr: [*]u8) void
  fn mempoolTrim(pool: [*]u8, mem: []u8) void
  fn monitorCommand(command: [*]u8) bool
  fn moveMempool(poolA: [*]u8, poolB: [*]u8) void
  fn nonSimdCall0(func: fn (usize) usize) usize
  fn nonSimdCall1(func: fn (usize, usize) usize, a1: usize) usize
  fn nonSimdCall2(func: fn (usize, usize, usize) usize, a1: usize, a2: usize) usize
  fn nonSimdCall3(func: fn (usize, usize, usize, usize) usize, a1: usize, a2: usize, a3: usize) usize
  fn resizeInPlaceBlock(oldmem: []u8, newsize: usize, rzB: usize) void
  fn runningOnValgrind() usize
  fn stackChange(id: usize, newstack: []u8) void
  fn stackDeregister(id: usize) void
  fn stackRegister(stack: []u8) usize
}

std.wasm {
  const AtomicsOpcode = enum(u32)
  const BlockType = enum(u8)
  const ExternalKind = enum(u8)
  const InitExpression = union(enum)
  const Limits = struct
  const Memory = struct
  const MiscOpcode = enum(u32)
  const NameSubsection = enum(u8)
  const Opcode = enum(u8)
  const RefType = enum(u8)
  const Section = enum(u8)
  const SimdOpcode = enum(u32)
  const Valtype = enum(u8)
  const element_type: u8 = 0x7
  const function_type: u8 = 0x6
  const magic = [_]u8{ 0x00, 0x61, 0x73, 0x6D }; // \0a
  const page_size = 64 * 102
  const result_type: u8 = 0x4
  const version = [_]u8{ 0x01, 0x00, 0x00, 0x00 }; // version 1 (MV
}

std.zig.Ast.Render {
  const Error = erro
  const Fixups = struct
  fn renderTree(gpa: Allocator, w: *Writer, tree: Ast, fixups: Fixups) Error!void
}

std.zig.Ast {
  const ByteOffset = u3
  const Error = struct
  const ExtraIndex = enum(u32)
  const Location = struct
  const Mode = enum { zig, zon 
  const Node = struct
  const NodeList = std.MultiArrayList(Node
  const OptionalTokenIndex = enum(u32)
  const OptionalTokenOffset = enum(i32)
  const Render = @import("Ast/Render.zig"
  const Span = struct
  const TokenIndex = u3
  const TokenList = std.MultiArrayList(struct
  const TokenOffset = enum(i32)
  const full = struct
  fn alignedVarDecl(tree: Ast, node: Node.Index) full.VarDecl
  fn arrayInit(tree: Ast, node: Node.Index) full.ArrayInit
  fn arrayInitDot(tree: Ast, node: Node.Index) full.ArrayInit
  fn arrayInitDotTwo(tree: Ast, buffer: *[2]Node.Index, node: Node.Index) full.ArrayInit
  fn arrayInitOne(tree: Ast, buffer: *[1]Node.Index, node: Node.Index) full.ArrayInit
  fn arrayType(tree: Ast, node: Node.Index) full.ArrayType
  fn arrayTypeSentinel(tree: Ast, node: Node.Index) full.ArrayType
  fn asmFull(tree: Ast, node: Node.Index) full.Asm
  fn asmSimple(tree: Ast, node: Node.Index) full.Asm
  fn assignDestructure(tree: Ast, node: Node.Index) full.AssignDestructure
  fn blockStatements(tree: Ast, buffer: *[2]Ast.Node.Index, node: Ast.Node.Index) ?[]const Node.Index
  fn builtinCallParams(tree: Ast, buffer: *[2]Ast.Node.Index, node: Ast.Node.Index) ?[]const Node.Index
  fn callFull(tree: Ast, node: Node.Index) full.Call
  fn callOne(tree: Ast, buffer: *[1]Node.Index, node: Node.Index) full.Call
  fn containerDecl(tree: Ast, node: Node.Index) full.ContainerDecl
  fn containerDeclArg(tree: Ast, node: Node.Index) full.ContainerDecl
  fn containerDeclRoot(tree: Ast) full.ContainerDecl
  fn containerDeclTwo(tree: Ast, buffer: *[2]Node.Index, node: Node.Index) full.ContainerDecl
  fn containerField(tree: Ast, node: Node.Index) full.ContainerField
  fn containerFieldAlign(tree: Ast, node: Node.Index) full.ContainerField
  fn containerFieldInit(tree: Ast, node: Node.Index) full.ContainerField
  fn deinit(tree: *Ast, gpa: Allocator) void
  fn errorOffset(tree: Ast, parse_error: Error) u32
  fn extraData(tree: Ast, index: ExtraIndex, comptime T: type) T
  fn extraDataSlice(tree: Ast, range: Node.SubRange, comptime T: type) []const T
  fn extraDataSliceWithLen(tree: Ast, start: ExtraIndex, len: u32, comptime T: type) []const T
  fn firstToken(tree: Ast, node: Node.Index) TokenIndex
  fn fnProto(tree: Ast, node: Node.Index) full.FnProto
  fn fnProtoMulti(tree: Ast, node: Node.Index) full.FnProto
  fn fnProtoOne(tree: Ast, buffer: *[1]Node.Index, node: Node.Index) full.FnProto
  fn fnProtoSimple(tree: Ast, buffer: *[1]Node.Index, node: Node.Index) full.FnProto
  fn forFull(tree: Ast, node: Node.Index) full.For
  fn forSimple(tree: Ast, node: Node.Index) full.For
  fn fullArrayInit(tree: Ast, buffer: *[2]Node.Index, node: Node.Index) ?full.ArrayInit
  fn fullArrayType(tree: Ast, node: Node.Index) ?full.ArrayType
  fn fullAsm(tree: Ast, node: Node.Index) ?full.Asm
  fn fullCall(tree: Ast, buffer: *[1]Ast.Node.Index, node: Node.Index) ?full.Call
  fn fullContainerDecl(tree: Ast, buffer: *[2]Ast.Node.Index, node: Node.Index) ?full.ContainerDecl
  fn fullContainerField(tree: Ast, node: Node.Index) ?full.ContainerField
  fn fullFnProto(tree: Ast, buffer: *[1]Ast.Node.Index, node: Node.Index) ?full.FnProto
  fn fullFor(tree: Ast, node: Node.Index) ?full.For
  fn fullIf(tree: Ast, node: Node.Index) ?full.If
  fn fullPtrType(tree: Ast, node: Node.Index) ?full.PtrType
  fn fullSlice(tree: Ast, node: Node.Index) ?full.Slice
  fn fullStructInit(tree: Ast, buffer: *[2]Ast.Node.Index, node: Node.Index) ?full.StructInit
  fn fullSwitch(tree: Ast, node: Node.Index) ?full.Switch
  fn fullSwitchCase(tree: Ast, node: Node.Index) ?full.SwitchCase
  fn fullVarDecl(tree: Ast, node: Node.Index) ?full.VarDecl
  fn fullWhile(tree: Ast, node: Node.Index) ?full.While
  fn getNodeSource(tree: Ast, node: Node.Index) []const u8
  fn globalVarDecl(tree: Ast, node: Node.Index) full.VarDecl
  fn ifFull(tree: Ast, node: Node.Index) full.If
  fn ifSimple(tree: Ast, node: Node.Index) full.If
  fn isTokenPrecededByTags(tree: *const Ast, ti: TokenIndex, expected_token_tags: []const Token.Tag) bool
  fn lastToken(tree: Ast, node: Node.Index) TokenIndex
  fn localVarDecl(tree: Ast, node: Node.Index) full.VarDecl
  fn nodeData(tree: *const Ast, node: Node.Index) Node.Data
  fn nodeMainToken(tree: *const Ast, node: Node.Index) TokenIndex
  fn nodeTag(tree: *const Ast, node: Node.Index) Node.Tag
  fn nodeToSpan(tree: *const Ast, node: Ast.Node.Index) Span
  fn parse(gpa: Allocator, source: [:0]const u8, mode: Mode) Allocator.Error!Ast
  fn parseTokens(gpa: Allocator, source: [:0]const u8, tokens: Ast.TokenList.Slice, mode: Mode) Allocator.Error!Ast
  fn ptrType(tree: Ast, node: Node.Index) full.PtrType
  fn ptrTypeAligned(tree: Ast, node: Node.Index) full.PtrType
  fn ptrTypeBitRange(tree: Ast, node: Node.Index) full.PtrType
  fn ptrTypeSentinel(tree: Ast, node: Node.Index) full.PtrType
  fn render(tree: Ast, gpa: Allocator, w: *Writer, fixups: Render.Fixups) Render.Error!void
  fn renderAlloc(tree: Ast, gpa: Allocator) error{OutOfMemory}![]u8
  fn renderError(tree: Ast, parse_error: Error, w: *Writer) Writer.Error!void
  fn rootDecls(tree: Ast) []const Node.Index
  fn simpleVarDecl(tree: Ast, node: Node.Index) full.VarDecl
  fn slice(tree: Ast, node: Node.Index) full.Slice
  fn sliceOpen(tree: Ast, node: Node.Index) full.Slice
  fn sliceSentinel(tree: Ast, node: Node.Index) full.Slice
  fn structInit(tree: Ast, node: Node.Index) full.StructInit
  fn structInitDot(tree: Ast, node: Node.Index) full.StructInit
  fn structInitDotTwo(tree: Ast, buffer: *[2]Node.Index, node: Node.Index) full.StructInit
  fn structInitOne(tree: Ast, buffer: *[1]Node.Index, node: Node.Index) full.StructInit
  fn switchCase(tree: Ast, node: Node.Index) full.SwitchCase
  fn switchCaseOne(tree: Ast, node: Node.Index) full.SwitchCase
  fn switchFull(tree: Ast, node: Node.Index) full.Switch
  fn taggedUnion(tree: Ast, node: Node.Index) full.ContainerDecl
  fn taggedUnionEnumTag(tree: Ast, node: Node.Index) full.ContainerDecl
  fn taggedUnionTwo(tree: Ast, buffer: *[2]Node.Index, node: Node.Index) full.ContainerDecl
  fn tokenLocation(self: Ast, start_offset: ByteOffset, token_index: TokenIndex) Location
  fn tokenSlice(tree: Ast, token_index: TokenIndex) []const u8
  fn tokenStart(tree: *const Ast, token_index: TokenIndex) ByteOffset
  fn tokenTag(tree: *const Ast, token_index: TokenIndex) Token.Tag
  fn tokenToSpan(tree: *const Ast, token: Ast.TokenIndex) Span
  fn tokensOnSameLine(tree: Ast, token1: TokenIndex, token2: TokenIndex) bool
  fn tokensToSpan(tree: *const Ast, start: Ast.TokenIndex, end: Ast.TokenIndex, main: Ast.TokenIndex) Span
  fn whileCont(tree: Ast, node: Node.Index) full.While
  fn whileFull(tree: Ast, node: Node.Index) full.While
  fn whileSimple(tree: Ast, node: Node.Index) full.While
}

std.zig.AstGen {
  fn generate(gpa: Allocator, tree: Ast) Allocator.Error!Zir
}

std.zig.AstRlAnnotate {
  const RlNeededSet = AutoHashMapUnmanaged(Ast.Node.Index, void
  fn annotate(gpa: Allocator, arena: Allocator, tree: Ast) Allocator.Error!RlNeededSet
}

std.zig.AstSmith {
  const Error = error{ OutOfMemory, SkipZigTest 
  fn generate(a: *AstSmith, gpa: std.mem.Allocator) Error!std.zig.Ast
  fn generateSource(a: *AstSmith) SourceError!void
  fn init(smith: *Smith) AstSmith
  fn logSource(a: *AstSmith) void
  fn source(t: *AstSmith) [:0]u8
  fn tokens(t: *AstSmith) std.zig.Ast.TokenList.Slice
}

std.zig.BuiltinFn {
  const EvalToError = enum
  const Tag = enum
  const list = list:
}

std.zig.Client {
  const Message = struct
}

std.zig.c_translation.builtins {
  fn mul_overflow(a: anytype, b: anytype, result: *@TypeOf(a, b)) c_int
  inline fn @"unreachable"() noreturn
  inline fn abs(val: c_int) c_int
  inline fn assume(cond: bool) void
  inline fn bswap16(val: u16) u16
  inline fn bswap32(val: u32) u32
  inline fn bswap64(val: u64) u64
  inline fn ceil(val: f64) f64
  inline fn ceilf(val: f32) f32
  inline fn clz(val: c_uint) c_int
  inline fn constant_p(expr: anytype) c_int
  inline fn cos(val: f64) f64
  inline fn cosf(val: f32) f32
  inline fn ctz(val: c_uint) c_int
  inline fn exp(val: f64) f64
  inline fn exp2(val: f64) f64
  inline fn exp2f(val: f32) f32
  inline fn expect(expr: c_long, c: c_long) c_long
  inline fn expf(val: f32) f32
  inline fn fabs(val: f64) f64
  inline fn fabsf(val: f32) f32
  inline fn floor(val: f64) f64
  inline fn floorf(val: f32) f32
  inline fn has_builtin(func: anytype) c_int
  inline fn huge_valf() f32
  inline fn inff() f32
  inline fn isinf(x: anytype) c_int
  inline fn isinf_sign(x: anytype) c_int
  inline fn isnan(x: anytype) c_int
  inline fn labs(val: c_long) c_long
  inline fn llabs(val: c_longlong) c_longlong
  inline fn log(val: f64) f64
  inline fn log10(val: f64) f64
  inline fn log10f(val: f32) f32
  inline fn log2(val: f64) f64
  inline fn log2f(val: f32) f32
  inline fn logf(val: f32) f32
  inline fn memcp
  inline fn memcpy_ch
  inline fn memset(dst: ?*anyopaque, val: c_int, len: usize) ?*anyopaque
  inline fn memset_ch
  inline fn nanf(tagp: []const u8) f32
  inline fn object_size(ptr: ?*const anyopaque, ty: c_int) usize
  inline fn popcount(val: c_uint) c_int
  inline fn round(val: f64) f64
  inline fn roundf(val: f32) f32
  inline fn signbit(val: f64) c_int
  inline fn signbitf(val: f32) c_int
  inline fn sin(val: f64) f64
  inline fn sinf(val: f32) f32
  inline fn sqrt(val: f64) f64
  inline fn sqrtf(val: f32) f32
  inline fn strcmp(s1: [*c]const u8, s2: [*c]const u8) c_int
  inline fn strlen(s: [*c]const u8) usize
  inline fn trunc(val: f64) f64
  inline fn truncf(val: f32) f32
}

std.zig.c_translation.helpers {
  fn ArithmeticConversion(comptime A: type, comptime B: type) type
  fn CAST_OR_CALL(a: anytype, b: anytype) switch (@typeInfo(@TypeOf(a)))
  fn F_SUFFIX(comptime f: comptime_float) f32
  fn FlexibleArrayType(comptime SelfType: type, comptime ElementType: type) type
  fn LL_SUFFIX(comptime n: comptime_int) @TypeOf(promoteIntLiteral(c_longlong, n, .decimal))
  fn L_SUFFIX(comptime number: anytype) L_SUFFIX_ReturnType(number)
  fn ULL_SUFFIX(comptime n: comptime_int) @TypeOf(promoteIntLiteral(c_ulonglong, n, .decimal))
  fn UL_SUFFIX(comptime n: comptime_int) @TypeOf(promoteIntLiteral(c_ulong, n, .decimal))
  fn U_SUFFIX(comptime n: comptime_int) @TypeOf(promoteIntLiteral(c_uint, n, .decimal))
  fn WL_CONTAINER_OF(ptr: anytype, sample: anytype, comptime member: []const u8) @TypeOf(sample)
  fn cast(comptime DestType: type, target: anytype) DestType
  fn div(a: anytype, b: anytype) ArithmeticConversion(@TypeOf(a), @TypeOf(b))
  fn promoteIntLiteral(comptime SuffixType: type, comptime number: comptime_int, comptime base: CIntLiteralBase) PromoteIntLiteralReturnType(SuffixType, number, base)
  fn rem(a: anytype, b: anytype) ArithmeticConversion(@TypeOf(a), @TypeOf(b))
  fn shuffleVectorIndex(comptime this_index: c_int, comptime source_vector_len: usize) i32
  fn signedRemainder(numerator: anytype, denominator: anytype) @TypeOf(numerator, denominator)
  fn sizeof(target: anytype) usize
  inline fn DISCARD(x: anytype) void
}

std.zig.ErrorBundle {
  const ErrorMessage = struct
  const ErrorMessageList = struct
  const MessageIndex = enum(u32)
  const OptionalString = u3
  const ReferenceTrace = struct
  const RenderOptions = struct
  const RenderToStderrError = Io.Cancelable || Io.File.Writer.Erro
  const SourceLocation = struct
  const SourceLocationIndex = enum(u32)
  const String = u3
  const Wip = struct
  const empty: ErrorBundle = 
  fn deinit(eb: *ErrorBundle, gpa: Allocator) void
  fn errorMessageCount(eb: ErrorBundle) u32
  fn getCompileLogOutput(eb: ErrorBundle) [:0]const u8
  fn getErrorMessage(eb: ErrorBundle, index: MessageIndex) ErrorMessage
  fn getErrorMessageList(eb: ErrorBundle) ErrorMessageList
  fn getMessages(eb: ErrorBundle) []const MessageIndex
  fn getNotes(eb: ErrorBundle, index: MessageIndex) []const MessageIndex
  fn getSourceLocation(eb: ErrorBundle, index: SourceLocationIndex) SourceLocation
  fn nullTerminatedString(eb: ErrorBundle, index: String) [:0]const u8
  fn renderToStderr(eb: ErrorBundle, io: Io, options: RenderOptions, color: std.zig.Color) RenderToStderrError!void
  fn renderToTerminal(eb: ErrorBundle, options: RenderOptions, t: Io.Terminal) Io.Terminal.SetColorError!void
  fn renderToWriter(eb: ErrorBundle, options: RenderOptions, w: *Writer) Writer.Error!void
}

std.zig.LibCDirs {
  const DarwinSdkLayout = enum
  fn detect(arena: Allocator, io: Io, zig_lib_dir: []const u8, target: *const std.Target, is_native_abi: bool, link_libc: bool, libc_installation: ?*const LibCInstallation, environ_map: *const std.process.Environ.Map) LibCInstallation.FindError!LibCDirs
  fn detectFromBuilding(arena: Allocator, zig_lib_dir: []const u8, target: *const std.Target) !LibCDirs
}

std.zig.LibCInstallation {
  const CCPrintFileNameOptions = struct
  const CrtBasenames = struct
  const CrtPaths = struct
  const FindError = erro
  const FindNativeOptions = struct
  fn deinit(self: *LibCInstallation, allocator: Allocator) void
  fn findNative(gpa: Allocator, io: Io, args: FindNativeOptions) FindError!LibCInstallation
  fn parse(allocator: Allocator, io: Io, libc_file: []const u8, target: *const std.Target) !LibCInstallation
  fn render(self: LibCInstallation, out: *std.Io.Writer) !void
  fn resolveCrtPaths(lci: LibCInstallation, arena: Allocator, crt_basenames: CrtBasenames, target: *const std.Target) error{ OutOfMemory, LibCInstallationMissingCrtDir }!CrtPaths
}

std.zig.llvm.BitcodeReader {
  const Block = struct
  const InitOptions = struct
  const Item = union(enum)
  const Record = struct
  fn checkMagic(bc: *BitcodeReader, magic: *const [4]u8) !void
  fn deinit(bc: *BitcodeReader) void
  fn init(allocator: std.mem.Allocator, options: InitOptions) BitcodeReader
  fn next(bc: *BitcodeReader) !?Item
  fn skipBlock(bc: *BitcodeReader, block: Block) !void
}

std.zig.llvm.bitcode_writer {
  const AbbrevOp = union(enum)
  const Error = error{OutOfMemory
  fn BitcodeWriter(comptime types: []const type) type
}

std.zig.llvm.Builder {
  const AddrSpace = enum(u24)
  const Alias = struct
  const Alignment = enum(u6)
  const AtomicOrdering = enum(u3)
  const Attribute = union(Kind)
  const Attributes = enum(u32)
  const BinaryOpcode = enum(u4)
  const CallConv = enum(u10)
  const CastOpcode = enum(u4)
  const CmpPredicate = enum(u6)
  const Constant = enum(u32)
  const DebugLocation = union(enum)
  const DllStorageClass = enum(u2)
  const ExternallyInitialized = enum
  const FastMath = packed struct(u8)
  const FastMathKind = enum
  const FloatCondition = enum(u4)
  const Function = struct
  const FunctionAttributes = enum(u32)
  const Global = struct
  const IntegerCondition = enum(u6)
  const Intrinsic = enum
  const Linkage = enum(u4)
  const MemoryAccessKind = enum(u1)
  const Metadata = packed struct(u32)
  const Mutability = enum { global, constant 
  const Options = struct
  const Preemption = enum
  const Producer = struct
  const String = enum(u32)
  const StrtabString = enum(u32)
  const SyncScope = enum(u1)
  const ThreadLocal = enum(u3)
  const Type = enum(u32)
  const UnnamedAddr = enum(u2)
  const Value = enum(u32)
  const Variable = struct
  const Visibility = enum(u2)
  const WipFunction = struct
  const expected_args_len = 1
  const expected_attrs_len = 1
  const expected_cases_len = 
  const expected_fields_len = 3
  const expected_gep_indices_len = 
  const expected_incoming_len = 
  fn addAlias(self: *Builder, name: StrtabString, ty: Type, addr_space: AddrSpace, aliasee: Constant) Allocator.Error!Alias.Index
  fn addAliasAssumeCapacity(self: *Builder, name: StrtabString, ty: Type, addr_space: AddrSpace, aliasee: Constant) Alias.Index
  fn addFunction(self: *Builder, ty: Type, name: StrtabString, addr_space: AddrSpace) Allocator.Error!Function.Index
  fn addFunctionAssumeCapacity(self: *Builder, ty: Type, name: StrtabString, addr_space: AddrSpace) Function.Index
  fn addGlobal(self: *Builder, name: StrtabString, global: Global) Allocator.Error!Global.Index
  fn addGlobalAssumeCapacity(self: *Builder, name: StrtabString, global: Global) Global.Index
  fn addNamedMetadata(self: *Builder, name: String, operands: []const Metadata) Allocator.Error!void
  fn addVariable(self: *Builder, name: StrtabString, ty: Type, addr_space: AddrSpace) Allocator.Error!Variable.Index
  fn addVariableAssumeCapacity(self: *Builder, ty: Type, name: StrtabString, addr_space: AddrSpace) Variable.Index
  fn alignmentForwardReference(b: *Builder) Allocator.Error!Alignment.Lazy
  fn arrayConst(self: *Builder, ty: Type, vals: []const Constant) Allocator.Error!Constant
  fn arrayType(self: *Builder, len: u64, child: Type) Allocator.Error!Type
  fn arrayValue(self: *Builder, ty: Type, vals: []const Constant) Allocator.Error!Value
  fn asmConst(self: *Builder, ty: Type, info: Constant.Assembly.Info, assembly: String, constraints: String) Allocator.Error!Constant
  fn asmValue(self: *Builder, ty: Type, info: Constant.Assembly.Info, assembly: String, constraints: String) Allocator.Error!Value
  fn attr(self: *Builder, attribute: Attribute) Allocator.Error!Attribute.Index
  fn attrs(self: *Builder, attributes: []Attribute.Index) Allocator.Error!Attributes
  fn bfloatConst(self: *Builder, val: f32) Allocator.Error!Constant
  fn bfloatValue(self: *Builder, value: f32) Allocator.Error!Value
  fn bigIntConst(self: *Builder, ty: Type, value: std.math.big.int.Const) Allocator.Error!Constant
  fn bigIntValue(self: *Builder, ty: Type, value: std.math.big.int.Const) Allocator.Error!Value
  fn binConst(self: *Builder, tag: Constant.Tag, lhs: Constant, rhs: Constant) Allocator.Error!Constant
  fn binValue(self: *Builder, tag: Constant.Tag, lhs: Constant, rhs: Constant) Allocator.Error!Value
  fn blockAddrConst(self: *Builder, function: Function.Index, block: Function.Block.Index) Allocator.Error!Constant
  fn blockAddrValue(self: *Builder, function: Function.Index, block: Function.Block.Index) Allocator.Error!Value
  fn castConst(self: *Builder, tag: Constant.Tag, val: Constant, ty: Type) Allocator.Error!Constant
  fn castValue(self: *Builder, tag: Constant.Tag, val: Constant, ty: Type) Allocator.Error!Value
  fn clearAndFree(self: *Builder) void
  fn convConst(self: *Builder, val: Constant, ty: Type) Allocator.Error!Constant
  fn convValue(self: *Builder, val: Constant, ty: Type) Allocator.Error!Value
  fn debugArrayType(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, underlying_type: ?Metadata, size_in_bits: u64, align_in_bits: u64, fields_tuple: ?Metadata) Allocator.Error!Metadata
  fn debugBoolType(self: *Builder, name: ?Metadata.String, size_in_bits: u64) Allocator.Error!Metadata
  fn debugCompileUnit(self: *Builder, file: ?Metadata, producer: ?Metadata.String, enums: ?Metadata, globals: ?Metadata, options: Metadata.CompileUnit.Options) Allocator.Error!Metadata
  fn debugCompileUnitAssumeCapacity(self: *Builder, file: ?Metadata, producer: ?Metadata.String, enums: ?Metadata, globals: ?Metadata, options: Metadata.CompileUnit.Options) Metadata
  fn debugEnumerationType(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, underlying_type: ?Metadata, size_in_bits: u64, align_in_bits: u64, fields_tuple: ?Metadata) Allocator.Error!Metadata
  fn debugEnumerator(self: *Builder, name: ?Metadata.String, unsigned: bool, bit_width: u32, value: std.math.big.int.Const) Allocator.Error!Metadata
  fn debugExpression(self: *Builder, elements: []const u32) Allocator.Error!Metadata
  fn debugFile(self: *Builder, filename: ?Metadata.String, directory: ?Metadata.String) Allocator.Error!Metadata
  fn debugFloatType(self: *Builder, name: ?Metadata.String, size_in_bits: u64) Allocator.Error!Metadata
  fn debugForwardReference(self: *Builder) Allocator.Error!Metadata
  fn debugGlobalVar(self: *Builder, name: ?Metadata.String, linkage_name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, ty: ?Metadata, variable: Variable.Index, options: Metadata.GlobalVar.Options) Allocator.Error!Metadata
  fn debugGlobalVarExpression(self: *Builder, variable: ?Metadata, expression: ?Metadata) Allocator.Error!Metadata
  fn debugLexicalBlock(self: *Builder, scope: ?Metadata, file: ?Metadata, line: u32, column: u32) Allocator.Error!Metadata
  fn debugLocalVar(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, ty: ?Metadata) Allocator.Error!Metadata
  fn debugLocation(self: *Builder, line: u32, column: u32, scope: Metadata, inlined_at: ?Metadata) Allocator.Error!Metadata
  fn debugMemberType(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, underlying_type: ?Metadata, size_in_bits: u64, align_in_bits: u64, offset_in_bits: u64) Allocator.Error!Metadata
  fn debugParameter(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, ty: ?Metadata, arg_no: u32) Allocator.Error!Metadata
  fn debugPointerType(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, underlying_type: ?Metadata, size_in_bits: u64, align_in_bits: u64, offset_in_bits: u64) Allocator.Error!Metadata
  fn debugSignedType(self: *Builder, name: ?Metadata.String, size_in_bits: u64) Allocator.Error!Metadata
  fn debugStructType(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, underlying_type: ?Metadata, size_in_bits: u64, align_in_bits: u64, fields_tuple: ?Metadata) Allocator.Error!Metadata
  fn debugSubprogram(self: *Builder, file: ?Metadata, name: ?Metadata.String, linkage_name: ?Metadata.String, line: u32, scope_line: u32, ty: ?Metadata, options: Metadata.Subprogram.Options, compile_unit: ?Metadata) Allocator.Error!Metadata
  fn debugSubrange(self: *Builder, lower_bound: ?Metadata, count: ?Metadata) Allocator.Error!Metadata
  fn debugSubroutineType(self: *Builder, types_tuple: ?Metadata) Allocator.Error!Metadata
  fn debugTypedefType(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, underlying_type: ?Metadata, size_in_bits: u64, align_in_bits: u64, offset_in_bits: u64) Allocator.Error!Metadata
  fn debugUnionType(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, underlying_type: ?Metadata, size_in_bits: u64, align_in_bits: u64, fields_tuple: ?Metadata) Allocator.Error!Metadata
  fn debugUnsignedType(self: *Builder, name: ?Metadata.String, size_in_bits: u64) Allocator.Error!Metadata
  fn debugVectorType(self: *Builder, name: ?Metadata.String, file: ?Metadata, scope: ?Metadata, line: u32, underlying_type: ?Metadata, size_in_bits: u64, align_in_bits: u64, fields_tuple: ?Metadata) Allocator.Error!Metadata
  fn deinit(self: *Builder) void
  fn doubleConst(self: *Builder, val: f64) Allocator.Error!Constant
  fn doubleValue(self: *Builder, value: f64) Allocator.Error!Value
  fn dsoLocalEquivalentConst(self: *Builder, function: Function.Index) Allocator.Error!Constant
  fn dsoLocalEquivalentValue(self: *Builder, function: Function.Index) Allocator.Error!Value
  fn dump(b: *Builder, io: Io) void
  fn finishModuleAsm(self: *Builder, aw: *Writer.Allocating) Allocator.Error!void
  fn floatConst(self: *Builder, val: f32) Allocator.Error!Constant
  fn floatValue(self: *Builder, value: f32) Allocator.Error!Value
  fn fmt(self: *Builder, comptime fmt_str: []const u8, fmt_args: anytype) Allocator.Error!String
  fn fmtAssumeCapacity(self: *Builder, comptime fmt_str: []const u8, fmt_args: anytype) String
  fn fnAttrs(self: *Builder, fn_attributes: []const Attributes) Allocator.Error!FunctionAttributes
  fn fnType(self: *Builder, ret: Type, params: []const Type, kind: Type.Function.Kind) Allocator.Error!Type
  fn fp128Const(self: *Builder, val: f128) Allocator.Error!Constant
  fn fp128Value(self: *Builder, value: f128) Allocator.Error!Value
  fn fpConst(self: *Builder, ty: Type, comptime val: comptime_float) Allocator.Error!Constant
  fn fpValue(self: *Builder, ty: Type, comptime value: comptime_float) Allocator.Error!Value
  fn gepConst(self: *Builder, comptime kind: Constant.GetElementPtr.Kind, ty: Type, base: Constant, inrange: ?u16, indices: []const Constant) Allocator.Error!Constant
  fn gepValue(self: *Builder, comptime kind: Constant.GetElementPtr.Kind, ty: Type, base: Constant, inrange: ?u16, indices: []const Constant) Allocator.Error!Value
  fn getGlobal(self: *const Builder, name: StrtabString) ?Global.Index
  fn getIntrinsic(self: *Builder, id: Intrinsic, overload: []const Type) Allocator.Error!Function.Index
  fn halfConst(self: *Builder, val: f16) Allocator.Error!Constant
  fn halfValue(self: *Builder, value: f16) Allocator.Error!Value
  fn init(options: Options) Allocator.Error!Builder
  fn intConst(self: *Builder, ty: Type, value: anytype) Allocator.Error!Constant
  fn intType(self: *Builder, bits: u24) Allocator.Error!Type
  fn intValue(self: *Builder, ty: Type, value: anytype) Allocator.Error!Value
  fn metadataConstant(self: *Builder, value: Constant) Allocator.Error!Metadata
  fn metadataString(self: *Builder, bytes: []const u8) Allocator.Error!Metadata.String
  fn metadataStringFmt(self: *Builder, comptime fmt_str: []const u8, fmt_args: anytype) Allocator.Error!Metadata.String
  fn metadataStringFmtAssumeCapacity(self: *Builder, comptime fmt_str: []const u8, fmt_args: anytype) Metadata.String
  fn metadataStringFromStrtabString(self: *Builder, str: StrtabString) Allocator.Error!Metadata.String
  fn metadataTuple(self: *Builder, elements: []const Metadata) Allocator.Error!Metadata
  fn metadataTupleOptionals(self: *Builder, elements: []const Metadata.Optional) Allocator.Error!Metadata
  fn namedTypeSetBody(self: *Builder, named_type: Type, body_type: Type) void
  fn nanConst(self: *Builder, ty: Type) Allocator.Error!Constant
  fn nanValue(self: *Builder, ty: Type) Allocator.Error!Value
  fn noCfiConst(self: *Builder, function: Function.Index) Allocator.Error!Constant
  fn noCfiValue(self: *Builder, function: Function.Index) Allocator.Error!Value
  fn noneConst(self: *Builder, ty: Type) Allocator.Error!Constant
  fn noneValue(self: *Builder, ty: Type) Allocator.Error!Value
  fn nullConst(self: *Builder, ty: Type) Allocator.Error!Constant
  fn nullValue(self: *Builder, ty: Type) Allocator.Error!Value
  fn opaqueType(self: *Builder, name: String) Allocator.Error!Type
  fn poisonConst(self: *Builder, ty: Type) Allocator.Error!Constant
  fn poisonValue(self: *Builder, ty: Type) Allocator.Error!Value
  fn ppc_fp128Const(self: *Builder, val: [2]f64) Allocator.Error!Constant
  fn ppc_fp128Value(self: *Builder, value: [2]f64) Allocator.Error!Value
  fn print(self: *Builder, w: *Writer) (Writer.Error || Allocator.Error)!void
  fn printToFile(b: *Builder, io: Io, file: Io.File, buffer: []u8) !void
  fn printToFilePath(b: *Builder, io: Io, dir: Io.Dir, path: []const u8) !void
  fn ptrType(self: *Builder, addr_space: AddrSpace) Allocator.Error!Type
  fn resolveAlignmentForwardReference(b: *Builder, fwd_ref: Alignment.Lazy, value: Alignment) void
  fn resolveDebugForwardReference(self: *Builder, fwd_ref: Metadata, value: Metadata) void
  fn splatConst(self: *Builder, ty: Type, val: Constant) Allocator.Error!Constant
  fn splatValue(self: *Builder, ty: Type, val: Constant) Allocator.Error!Value
  fn string(self: *Builder, bytes: []const u8) Allocator.Error!String
  fn stringConst(self: *Builder, val: String) Allocator.Error!Constant
  fn stringIfExists(self: *const Builder, bytes: []const u8) ?String
  fn stringNull(self: *Builder, bytes: [:0]const u8) Allocator.Error!String
  fn stringValue(self: *Builder, val: String) Allocator.Error!Value
  fn strtabString(self: *Builder, bytes: []const u8) Allocator.Error!StrtabString
  fn strtabStringFmt(self: *Builder, comptime fmt_str: []const u8, fmt_args: anytype) Allocator.Error!StrtabString
  fn strtabStringFmtAssumeCapacity(self: *Builder, comptime fmt_str: []const u8, fmt_args: anytype) StrtabString
  fn strtabStringIfExists(self: *const Builder, bytes: []const u8) ?StrtabString
  fn structConst(self: *Builder, ty: Type, vals: []const Constant) Allocator.Error!Constant
  fn structType(self: *Builder, kind: Type.Structure.Kind, fields: []const Type) Allocator.Error!Type
  fn structValue(self: *Builder, ty: Type, vals: []const Constant) Allocator.Error!Value
  fn toBitcode(self: *Builder, allocator: Allocator, producer: Producer) bitcode_writer.Error![]const u32
  fn trailingMetadataString(self: *Builder) Allocator.Error!Metadata.String
  fn trailingMetadataStringAssumeCapacity(self: *Builder) Metadata.String
  fn trailingString(self: *Builder) Allocator.Error!String
  fn trailingStringAssumeCapacity(self: *Builder) String
  fn trailingStrtabString(self: *Builder) Allocator.Error!StrtabString
  fn trailingStrtabStringAssumeCapacity(self: *Builder) StrtabString
  fn undefConst(self: *Builder, ty: Type) Allocator.Error!Constant
  fn undefValue(self: *Builder, ty: Type) Allocator.Error!Value
  fn vectorConst(self: *Builder, ty: Type, vals: []const Constant) Allocator.Error!Constant
  fn vectorType(self: *Builder, kind: Type.Vector.Kind, len: u32, child: Type) Allocator.Error!Type
  fn vectorValue(self: *Builder, ty: Type, vals: []const Constant) Allocator.Error!Value
  fn x86_fp80Const(self: *Builder, val: f80) Allocator.Error!Constant
  fn x86_fp80Value(self: *Builder, value: f80) Allocator.Error!Value
  fn zeroInitConst(self: *Builder, ty: Type) Allocator.Error!Constant
  fn zeroInitValue(self: *Builder, ty: Type) Allocator.Error!Value
}

std.zig.llvm.ir {
  const BlockId = enum(u5)
  const BlockInfoBlock = struct
  const FixedMetadataKind = enum(u6)
  const IdentificationBlock = struct
  const MAGIC: u32 = 0xdec0434
  const ModuleBlock = struct
  const StrtabBlock = struct
}

std.zig.llvm {
  const BitcodeReader = @import("llvm/BitcodeReader.zig"
  const Builder = @import("llvm/Builder.zig"
  const bitcode_writer = @import("llvm/bitcode_writer.zig"
}

std.zig.number_literal {
  const Base = enum(u8) { decimal = 10, hex = 16, binary = 2, octal = 8 
  const Error = union(enum)
  const FloatBase = enum(u8) { decimal = 10, hex = 16 
  const ParseError = erro
  const Result = union(enum)
  fn parseNumberLiteral(bytes: []const u8) Result
}

std.zig.Parse {
  const Error = error{ParseError} || Allocator.Erro
  fn parseRoot(p: *Parse) !void
  fn parseZon(p: *Parse) !void
}

std.zig.primitives {
  const names = std.StaticStringMap(void).initComptime(
  fn isPrimitive(name: []const u8) bool
}

std.zig.Server {
  const Message = struct
  const Options = struct
  const TestMetadata = struct
  fn allocErrorBundle(gpa: std.mem.Allocator, body: []const u8) error{ OutOfMemory, EndOfStream }!std.zig.ErrorBundle
  fn init(options: Options) !Server
  fn receiveBody_u32(s: *Server) !u32
  fn receiveBody_u64(s: *Server) !u64
  fn receiveBody_u8(s: *Server) !u8
  fn receiveMessage(s: *Server) !InMessage.Header
  fn serveBroadcastFuzzInputMessage(s: *const Server, test_i: u32, bytes: []const u8) !void
  fn serveCoverageIdMessage(s: *const Server, id: u64, runs: u64, unique: u64, cov: u64) !void
  fn serveEmitDigest(s: *Server, digest: *const [Cache.bin_digest_len]u8, header: OutMessage.EmitDigest) !void
  fn serveErrorBundle(s: *Server, error_bundle: std.zig.ErrorBundle) !void
  fn serveMessageHeader(s: *const Server, header: OutMessage.Header) !void
  fn serveStringMessage(s: *Server, tag: OutMessage.Tag, msg: []const u8) !void
  fn serveTestMetadata(s: *Server, test_metadata: TestMetadata) !void
  fn serveTestResults(s: *Server, msg: OutMessage.TestResults) !void
  fn serveU32Message(s: *const Server, tag: OutMessage.Tag, int: u32) !void
  fn serveU64Message(s: *const Server, tag: OutMessage.Tag, int: u64) !void
}

std.zig.string_literal {
  const Error = union(enum)
  const ParseError = erro
  const ParsedCharLiteral = union(enum)
  const Result = union(enum)
  fn parseAlloc(allocator: std.mem.Allocator, bytes: []const u8) ParseError![]u8
  fn parseCharLiteral(slice: []const u8) ParsedCharLiteral
  fn parseEscapeSequence(slice: []const u8, offset: *usize) ParsedCharLiteral
  fn parseWrite(writer: *Writer, bytes: []const u8) Writer.Error!Result
}

std.zig.system.arm {
  const CoreInfo = struct
  const aarch64 = struct
  const cpu_models = struct
}

std.zig.system.darwin.macos {
  fn detect(io: Io, target_os: *Target.Os) !void
  fn detectNativeCpuAndFeatures() ?Target.Cpu
}

std.zig.system.darwin {
  const macos = @import("darwin/macos.zig"
  fn getSdk(gpa: Allocator, io: Io, target: *const Target) ?[]const u8
  fn isSdkInstalled(gpa: Allocator, io: Io) bool
}

std.zig.system.linux {
  fn detectNativeCpuAndFeatures(io: Io) ?Target.Cpu
}

std.zig.system.loongarch {
  fn detectNativeCpuAndFeatures(arch: std.Target.Cpu.Arch, os: std.Target.Os, query: std.Target.Query) ?std.Target.Cpu
}

std.zig.system.NativePaths {
  fn addFrameworkDir(self: *NativePaths, s: []const u8) !void
  fn addFrameworkDirFmt(self: *NativePaths, comptime fmt: []const u8, args: anytype) !void
  fn addIncludeDir(self: *NativePaths, s: []const u8) !void
  fn addIncludeDirFmt(self: *NativePaths, comptime fmt: []const u8, args: anytype) !void
  fn addLibDir(self: *NativePaths, s: []const u8) !void
  fn addLibDirFmt(self: *NativePaths, comptime fmt: []const u8, args: anytype) !void
  fn addRPath(self: *NativePaths, s: []const u8) !void
  fn addWarning(self: *NativePaths, s: []const u8) !void
  fn addWarningFmt(self: *NativePaths, comptime fmt: []const u8, args: anytype) !void
  fn detect(arena: Allocator, io: Io, native_target: *const std.Target, environ_map: *const process.Environ.Map) !NativePaths
}

std.zig.system.windows {
  const IsProcessorFeaturePresent = std.os.windows.IsProcessorFeaturePresen
  const PF = std.os.windows.P
  const REG = std.os.windows.RE
  const WindowsVersion = std.Target.Os.WindowsVersio
  fn detectNativeCpuAndFeatures() ?Target.Cpu
  fn detectRuntimeVersion() WindowsVersion
}

std.zig.system.x86 {
  fn detectNativeCpuAndFeatures(arch: Target.Cpu.Arch, os: Target.Os, query: Target.Query) Target.Cpu
}

std.zig.system {
  const AbiAndDynamicLinkerFromFileError = erro
  const DetectError = erro
  const Executor = union(enum)
  const GetExternalExecutorOptions = struct
  const NativePaths = @import("system/NativePaths.zig"
  const darwin = @import("system/darwin.zig"
  const linux = @import("system/linux.zig"
  const windows = @import("system/windows.zig"
  fn getExternalExecutor(io: Io, host: *const std.Target, candidate: *const std.Target, options: GetExternalExecutorOptions) Executor
  fn resolveTargetQuery(io: Io, query: Target.Query) DetectError!Target
}

std.zig.target {
  const ArchOsAbi = struct
  const available_libcs = [_]ArchOsAb
  fn canBuildLibC(target: *const std.Target) bool
  fn freebsdArchNameHeaders(arch: std.Target.Cpu.Arch) [:0]const u8
  fn glibcAbiNameHeaders(abi: std.Target.Abi) [:0]const u8
  fn glibcArchNameHeaders(arch: std.Target.Cpu.Arch) [:0]const u8
  fn glibcRuntimeTriple(allocator: Allocator, arch: std.Target.Cpu.Arch, os: std.Target.Os.Tag, abi: std.Target.Abi) Allocator.Error![]const u8
  fn intAlignment(target: *const std.Target, bits: u16) u16
  fn intByteSize(target: *const std.Target, bits: u16) u16
  fn isLibCLibName(target: *const std.Target, name: []const u8) bool
  fn isLibCxxLibName(target: *const std.Target, name: []const u8) bool
  fn muslAbiNameHeaders(abi: std.Target.Abi) [:0]const u8
  fn muslArchName(arch: std.Target.Cpu.Arch, abi: std.Target.Abi) [:0]const u8
  fn muslArchNameHeaders(arch: std.Target.Cpu.Arch) [:0]const u8
  fn muslRuntimeTriple(allocator: Allocator, arch: std.Target.Cpu.Arch, abi: std.Target.Abi) Allocator.Error![]const u8
  fn netbsdAbiNameHeaders(abi: std.Target.Abi) [:0]const u8
  fn netbsdArchNameHeaders(arch: std.Target.Cpu.Arch) [:0]const u8
  fn openbsdArchNameHeaders(arch: std.Target.Cpu.Arch) [:0]const u8
  fn osArchName(target: *const std.Target) [:0]const u8
}

std.zig.tokenizer {
  const Token = struct
  const Tokenizer = struct
}

std.zig.TokenSmith {
  fn gen(smith: *Smith) TokenSmith
  fn list(t: *TokenSmith) TokenList.Slice
  fn source(t: *TokenSmith) [:0]u8
}

std.zig.WindowsSdk {
  const Installation = struct
  fn find(gpa: Allocator, io: Io, arch: std.Target.Cpu.Arch, environ_map: *const Environ.Map) error{ OutOfMemory, NotFound, PathTooLong }!WindowsSdk
  fn free(sdk: WindowsSdk, gpa: Allocator) void
}

std.zig.Zir {
  const DeclContents = struct
  const ExtraIndex = enum(u32)
  const FnInfo = struct
  const Header = extern struct
  const Inst = struct
  const NullTerminatedString = enum(u32)
  const UnwrappedEnumDecl = struct
  const UnwrappedOpaqueDecl = struct
  const UnwrappedStructDecl = struct
  const UnwrappedSwitchBlock = struct
  const UnwrappedUnionDecl = struct
  const inst_tracking_version = 
  fn assertTrackable(zir: Zir, inst_idx: Zir.Inst.Index) void
  fn bodySlice(zir: Zir, start: usize, len: usize) []Inst.Index
  fn deinit(code: *Zir, gpa: Allocator) void
  fn extraData(code: Zir, comptime T: type, index: usize) ExtraData(T)
  fn findTrackable(zir: Zir, gpa: Allocator, contents: *DeclContents, decl_inst: Zir.Inst.Index) !void
  fn findTrackableRoot(zir: Zir, gpa: Allocator, contents: *DeclContents) !void
  fn getAssociatedSrcHash(zir: Zir, inst: Zir.Inst.Index) ?std.zig.SrcHash
  fn getDeclaration(zir: Zir, inst: Zir.Inst.Index) Inst.Declaration.Unwrapped
  fn getEnumDecl(zir: *const Zir, enum_decl: Inst.Index) UnwrappedEnumDecl
  fn getFnInfo(zir: Zir, fn_inst: Inst.Index) FnInfo
  fn getOpaqueDecl(zir: *const Zir, opaque_decl: Inst.Index) UnwrappedOpaqueDecl
  fn getParamBody(zir: Zir, fn_inst: Inst.Index) []const Zir.Inst.Index
  fn getParamName(zir: Zir, param_inst: Inst.Index) ?NullTerminatedString
  fn getStructDecl(zir: *const Zir, struct_decl: Inst.Index) UnwrappedStructDecl
  fn getSwitchBlock(zir: *const Zir, switch_inst: Inst.Index) UnwrappedSwitchBlock
  fn getUnionDecl(zir: *const Zir, union_decl: Inst.Index) UnwrappedUnionDecl
  fn hasCompileErrors(code: Zir) bool
  fn loweringFailed(code: Zir) bool
  fn nullTerminatedString(code: Zir, index: NullTerminatedString) [:0]const u8
  fn refSlice(code: Zir, start: usize, len: usize) []Inst.Ref
  fn typeDecls(zir: Zir, type_decl: Inst.Index) []const Zir.Inst.Index
}

std.zig.Zoir {
  const CompileError = extern struct
  const Header = extern struct
  const Node = union(enum)
  const NullTerminatedString = enum(u32)
  fn deinit(zoir: Zoir, gpa: Allocator) void
  fn hasCompileErrors(zoir: Zoir) bool
}

std.zig.ZonGen {
  const Options = struct
  fn generate(gpa: Allocator, tree: Ast, options: Options) Allocator.Error!Zoir
  fn parseStrLit(tree: Ast, node: Ast.Node.Index, writer: *Writer) Writer.Error!std.zig.string_literal.Result
  fn strLitSizeHint(tree: Ast, node: Ast.Node.Index) usize
}

std.zig {
  const Ast = @import("zig/Ast.zig"
  const AstGen = @import("zig/AstGen.zig"
  const AstRlAnnotate = @import("zig/AstRlAnnotate.zig"
  const AstSmith = @import("zig/AstSmith.zig"
  const BinNameOptions = struct
  const BuildId = union(enum)
  const BuiltinFn = @import("zig/BuiltinFn.zig"
  const ClangCliParam = struct
  const Client = @import("zig/Client.zig"
  const Color = enum
  const CompressDebugSections = enum { none, zlib, zstd 
  const EmitArtifact = enum
  const EnvVar = enum
  const ErrorBundle = @import("zig/ErrorBundle.zig"
  const FormatId = struct
  const LibCDirs = @import("zig/LibCDirs.zig"
  const LibCInstallation = @import("zig/LibCInstallation.zig"
  const Loc = struct
  const LtoMode = enum { none, full, thin 
  const ParsedCharLiteral = string_literal.ParsedCharLitera
  const RcIncludes = enum
  const SanitizeC = enum
  const Server = @import("zig/Server.zig"
  const SimpleComptimeReason = enum(u32)
  const SrcHash = [16]u
  const SrcHasher = std.crypto.hash.Blake
  const Subsystem = enum
  const Token = tokenizer.Toke
  const TokenSmith = @import("zig/TokenSmith.zig"
  const Tokenizer = tokenizer.Tokenize
  const WindowsSdk = @import("zig/WindowsSdk.zig"
  const Zir = @import("zig/Zir.zig"
  const Zoir = @import("zig/Zoir.zig"
  const ZonGen = @import("zig/ZonGen.zig"
  const c_translation = struct
  const isPrimitive = primitives.isPrimitiv
  const llvm = @import("zig/llvm.zig"
  const max_src_size = std.math.maxInt(u32
  const number_literal = @import("zig/number_literal.zig"
  const parseCharLiteral = string_literal.parseCharLitera
  const parseNumberLiteral = number_literal.parseNumberLitera
  const primitives = @import("zig/primitives.zig"
  const string_literal = @import("zig/string_literal.zig"
  const system = @import("zig/system.zig"
  const target = @import("zig/target.zig"
  fn binNameAlloc(allocator: Allocator, options: BinNameOptions) error{OutOfMemory}![]u8
  fn charEscape(codepoint: u21, w: *Writer) Writer.Error!void
  fn findLineColumn(source: []const u8, byte_offset: usize) Loc
  fn fmtChar(c: u21) std.fmt.Alt(u21, charEscape)
  fn fmtId(bytes: []const u8) FormatId
  fn fmtIdFlags(bytes: []const u8, flags: FormatId.Flags) FormatId
  fn fmtIdP(bytes: []const u8) FormatId
  fn fmtIdPU(bytes: []const u8) FormatId
  fn fmtString(bytes: []const u8) std.fmt.Alt([]const u8, stringEscape)
  fn hashName(parent_hash: SrcHash, sep: []const u8, name: []const u8) SrcHash
  fn hashSrc(src: []const u8) SrcHash
  fn isUnderscore(bytes: []const u8) bool
  fn isValidId(bytes: []const u8) bool
  fn lineDelta(source: []const u8, start: usize, end: usize) isize
  fn parseTargetQueryOrReportFatalError(allocator: Allocator, opts: std.Target.Query.ParseOptions) std.Target.Query
  fn printAstErrorsToStderr(gpa: Allocator, io: Io, tree: Ast, path: []const u8, color: Color) !void
  fn putAstErrorsIntoBundle(gpa: Allocator, tree: Ast, path: []const u8, wip_errors: *std.zig.ErrorBundle.Wip) Allocator.Error!void
  fn readSourceFileToEndAlloc(gpa: Allocator, file_reader: *Io.File.Reader) ![:0]u8
  fn resolveTargetQueryOrFatal(io: Io, target_query: std.Target.Query) std.Target
  fn serializeCpu(buffer: *std.array_list.Managed(u8), cpu: std.Target.Cpu) Allocator.Error!void
  fn serializeCpuAlloc(ally: Allocator, cpu: std.Target.Cpu) Allocator.Error![]u8
  fn srcHashEql(a: SrcHash, b: SrcHash) bool
  fn stringEscape(bytes: []const u8, w: *Writer) Writer.Error!void
}

std.zip {
  const CentralDirectoryFileHeader = extern struct
  const CompressionMethod = enum(u16)
  const Decompress = struct
  const Diagnostics = struct
  const EndLocator64 = extern struct
  const EndRecord = extern struct
  const EndRecord64 = extern struct
  const ExtraHeader = enum(u16)
  const ExtractOptions = struct
  const Iterator = struct
  const LocalFileHeader = extern struct
  const central_file_header_sig = [4]u8{ 'P', 'K', 1, 2 
  const end_locator64_sig = [4]u8{ 'P', 'K', 6, 7 
  const end_record64_sig = [4]u8{ 'P', 'K', 6, 6 
  const end_record_sig = [4]u8{ 'P', 'K', 5, 6 
  const local_file_header_sig = [4]u8{ 'P', 'K', 3, 4 
  fn extract(dest: Io.Dir, fr: *File.Reader, options: ExtractOptions) !void
}

std.zon.parse {
  const Diagnostics = struct
  const Error = union(enum)
  const Options = struct
  fn free(gpa: Allocator, value: anytype) void
  fn fromSlice(T: type, gpa: Allocator, source: [:0]const u8, diag: ?*Diagnostics, options: Options) error{ OutOfMemory, ParseZon }!T
  fn fromSliceAlloc(T: type, gpa: Allocator, source: [:0]const u8, diag: ?*Diagnostics, options: Options) error{ OutOfMemory, ParseZon }!T
  fn fromZoir(T: type, ast: Ast, zoir: Zoir, diag: ?*Diagnostics, options: Options) error{ParseZon}!T
  fn fromZoirAlloc(T: type, gpa: Allocator, ast: Ast, zoir: Zoir, diag: ?*Diagnostics, options: Options) error{ OutOfMemory, ParseZon }!T
  fn fromZoirNode(T: type, ast: Ast, zoir: Zoir, node: Zoir.Node.Index, diag: ?*Diagnostics, options: Options) error{ParseZon}!T
  fn fromZoirNodeAlloc(T: type, gpa: Allocator, ast: Ast, zoir: Zoir, node: Zoir.Node.Index, diag: ?*Diagnostics, options: Options) error{ OutOfMemory, ParseZon }!T
}

std.zon.Serializer {
  const CodePointError = Error || error{InvalidCodepoint
  const ContainerOptions = struct
  const DepthError = Error || error{ExceededMaxDepth
  const EmitCodepointLiterals = enum
  const Error = Writer.Erro
  const MultilineStringError = Error || error{InnerCarriageReturn
  const MultilineStringOptions = struct
  const Options = struct
  const Struct = struct
  const Tuple = struct
  const ValueOptions = struct
  fn beginStruct(self: *Serializer, options: ContainerOptions) Error!Struct
  fn beginTuple(self: *Serializer, options: ContainerOptions) Error!Tuple
  fn codePoint(self: *Serializer, val: u21) CodePointError!void
  fn float(self: *Serializer, val: anytype) Error!void
  fn ident(self: *Serializer, name: []const u8) Error!void
  fn int(self: *Serializer, val: anytype) Error!void
  fn multilineString(self: *Serializer, val: []const u8, options: MultilineStringOptions) MultilineStringError!void
  fn string(self: *Serializer, val: []const u8) Error!void
  fn tuple(self: *Serializer, val: anytype, options: ValueOptions) Error!void
  fn tupleArbitraryDepth(self: *Serializer, val: anytype, options: ValueOptions) Error!void
  fn tupleMaxDepth(self: *Serializer, val: anytype, options: ValueOptions, depth: usize) DepthError!void
  fn value(self: *Serializer, val: anytype, options: ValueOptions) Error!void
  fn valueArbitraryDepth(self: *Serializer, val: anytype, options: ValueOptions) Error!void
  fn valueMaxDepth(self: *Serializer, val: anytype, options: ValueOptions, depth: usize) DepthError!void
}

std.zon.stringify {
  const SerializeOptions = struct
  fn serialize(val: anytype, options: SerializeOptions, writer: *Writer) Writer.Error!void
  fn serializeArbitraryDepth(val: anytype, options: SerializeOptions, writer: *Writer) Serializer.Error!void
  fn serializeMaxDepth(val: anytype, options: SerializeOptions, writer: *Writer, depth: usize) Serializer.DepthError!void
}

std.zon {
  const Serializer = @import("zon/Serializer.zig"
  const parse = @import("zon/parse.zig"
  const stringify = @import("zon/stringify.zig"
}

