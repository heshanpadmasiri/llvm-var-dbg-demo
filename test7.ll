; ModuleID = '/app/example.c'
source_filename = "/app/example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 5, align 4, !dbg !0

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @square(i32 %0) local_unnamed_addr #0 !dbg !12 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !16, metadata !DIExpression()), !dbg !17
  %2 = mul nsw i32 %0, %0, !dbg !18
  ret i32 %2, !dbg !19
}

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i32 @main() local_unnamed_addr #1 !dbg !20 {
  %1 = load i32, i32* @a, align 4, !dbg !28, !tbaa !29
  call void @llvm.dbg.value(metadata i32 %1, metadata !16, metadata !DIExpression()), !dbg !33
  %2 = mul nsw i32 %1, %1, !dbg !35
  call void @llvm.dbg.value(metadata i32 %2, metadata !24, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata i32 12, metadata !25, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata i32 15, metadata !26, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata i32 %2, metadata !27, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !36
  %3 = icmp ult i32 %2, 88, !dbg !37
  br i1 %3, label %4, label %10, !dbg !38

4:                                                ; preds = %0
  %5 = add nuw nsw i32 %2, 12, !dbg !39
  call void @llvm.dbg.value(metadata i32 %5, metadata !27, metadata !DIExpression()), !dbg !36
  br label %6, !dbg !38

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %8, %6 ], [ %5, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !27, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata i32 %7, metadata !16, metadata !DIExpression()), !dbg !40
  %8 = mul nuw nsw i32 %7, %7, !dbg !43
  call void @llvm.dbg.value(metadata i32 %8, metadata !27, metadata !DIExpression()), !dbg !36
  %9 = icmp ult i32 %8, 100, !dbg !37
  br i1 %9, label %6, label %10, !dbg !38, !llvm.loop !44

10:                                               ; preds = %6, %0
  ret i32 0, !dbg !46
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !6, line: 2, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.0.1 (https://github.com/llvm/llvm-project.git 43ff75f2c3feef64f9d73328230d34dac8832a91)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: "example.c", directory: "/app")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 11.0.1 (https://github.com/llvm/llvm-project.git 43ff75f2c3feef64f9d73328230d34dac8832a91)"}
!12 = distinct !DISubprogram(name: "square", scope: !6, file: !6, line: 4, type: !13, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !7}
!15 = !{!16}
!16 = !DILocalVariable(name: "num", arg: 1, scope: !12, file: !6, line: 4, type: !7)
!17 = !DILocation(line: 0, scope: !12)
!18 = !DILocation(line: 5, column: 16, scope: !12)
!19 = !DILocation(line: 5, column: 5, scope: !12)
!20 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 8, type: !21, scopeLine: 8, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!7}
!23 = !{!24, !25, !26, !27}
!24 = !DILocalVariable(name: "c", scope: !20, file: !6, line: 9, type: !7)
!25 = !DILocalVariable(name: "d", scope: !20, file: !6, line: 10, type: !7)
!26 = !DILocalVariable(name: "f", scope: !20, file: !6, line: 11, type: !7)
!27 = !DILocalVariable(name: "e", scope: !20, file: !6, line: 12, type: !7)
!28 = !DILocation(line: 9, column: 20, scope: !20)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 0, scope: !12, inlinedAt: !34)
!34 = distinct !DILocation(line: 9, column: 13, scope: !20)
!35 = !DILocation(line: 5, column: 16, scope: !12, inlinedAt: !34)
!36 = !DILocation(line: 0, scope: !20)
!37 = !DILocation(line: 13, column: 14, scope: !20)
!38 = !DILocation(line: 13, column: 5, scope: !20)
!39 = !DILocation(line: 12, column: 15, scope: !20)
!40 = !DILocation(line: 0, scope: !12, inlinedAt: !41)
!41 = distinct !DILocation(line: 14, column: 13, scope: !42)
!42 = distinct !DILexicalBlock(scope: !20, file: !6, line: 13, column: 21)
!43 = !DILocation(line: 5, column: 16, scope: !12, inlinedAt: !41)
!44 = distinct !{!44, !38, !45}
!45 = !DILocation(line: 15, column: 5, scope: !20)
!46 = !DILocation(line: 16, column: 5, scope: !20)
