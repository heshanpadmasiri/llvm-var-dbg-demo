; ModuleID = 'testModule'
source_filename = "testModule"

define i32 @main() !dbg !4 {
  %1 = alloca i32
  call void @llvm.dbg.addr(metadata i32* %1, metadata !8, metadata !DIExpression()), !dbg !10
  store i32 0, i32* %1, !dbg !10

  %2 = load i32, i32* %1, !dbg !11
  %3 = add nsw i32 %2, 1, !dbg !11
  store i32 %3, i32* %1, !dbg !11

  %4 = alloca i32
  call void @llvm.dbg.addr(metadata i32* %4, metadata !8, metadata !DIExpression()), !dbg !12
  store i32 15, i32* %4, !dbg !12

  %5 = load i32, i32* %4, !dbg !13
  %6 = add i32 %2, 2, !dbg !13
  store i32 %6, i32* %4, !dbg !13
  ret i32 0, !dgb !13
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.addr(metadata, metadata, metadata) #0

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "test.bal", directory: ".")
!2 = !{i32 1, !"Debug Info Version", i32 3}
!3 = !{i32 2, !"Dwarf Version", i32 2}
!4 = distinct !DISubprogram(name: "main", linkageName: "test", scope: !1, line: 1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !7)
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !{}
!8 = !DILocalVariable(name: "myVar", scope: !4, file: !1, line: 10, type: !9)
!9 = !DIBasicType(name: "myInt", size:32, encoding: DW_ATE_signed)
!10 = !DILocation(line: 1, column: 2, scope: !4)
!11 = !DILocation(line: 2, column: 2, scope: !4)
!12 = !DILocation(line: 3, column: 2, scope: !4)
!13 = !DILocation(line: 4, column: 2, scope: !4)
