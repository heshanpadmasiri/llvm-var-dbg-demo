; ModuleID = 'testModule'
source_filename = "testModule"

define i64 @main() !dbg !4 {
  %1 = alloca i64, align 8
  store i64 10, i64* %1, align 4
  call void @llvm.dbg.value(metadata i64* %1, metadata !8, metadata !DIExpression()), !dbg !10
  %2 = load i64, i64* %1, align 4
  %3 = add i64 %2, 1
  ret i64 %3
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #0

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "filename.bal", directory: "PATH_TO_BAL_SOURCE")
!2 = !{i32 1, !"Debug Info Version", i32 3}
!3 = !{i32 2, !"Dwarf Version", i32 2}
!4 = distinct !DISubprogram(name: "main", linkageName: "test", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !7)
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !{}
!8 = !DILocalVariable(name: "myVar", scope: !4, file: !1, line: 10, type: !9)
!9 = !DIBasicType(name: "myInt", size: 10, encoding: DW_ATE_signed)
!10 = !DILocation(line: 1, column: 2, scope: !4)
