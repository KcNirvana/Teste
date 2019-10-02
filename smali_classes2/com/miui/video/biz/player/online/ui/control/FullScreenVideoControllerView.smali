.class public final Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;
.super Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;
.source "FullScreenVideoControllerView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFullScreenVideoControllerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullScreenVideoControllerView.kt\ncom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView\n*L\n1#1,422:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000s\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001$\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020/H\u0002J\u0010\u00100\u001a\u00020,2\u0006\u0010.\u001a\u00020/H\u0002J\u0006\u00101\u001a\u00020,J\u0008\u00102\u001a\u00020,H\u0002J\u0008\u00103\u001a\u00020,H\u0016J\u0008\u00104\u001a\u00020,H\u0016J\u0006\u00105\u001a\u00020,J\u0008\u00106\u001a\u00020,H\u0014J\u0008\u00107\u001a\u00020,H\u0016J\u0012\u00108\u001a\u00020,2\u0008\u00109\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010:\u001a\u00020,H\u0016J\u0010\u0010;\u001a\u00020\u00162\u0008\u0010<\u001a\u0004\u0018\u00010=J \u0010>\u001a\u00020,2\u0006\u0010?\u001a\u00020\n2\u0006\u0010@\u001a\u00020/2\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u0010A\u001a\u00020,2\u0006\u0010?\u001a\u00020\nH\u0016J\u0006\u0010B\u001a\u00020,J\u0008\u0010C\u001a\u00020,H\u0002J\u0010\u0010D\u001a\u00020,2\u0008\u0010E\u001a\u0004\u0018\u00010\"J\u000e\u0010F\u001a\u00020,2\u0006\u0010G\u001a\u00020\nJ\u0008\u0010H\u001a\u00020,H\u0016J\u0012\u0010I\u001a\u00020,2\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0016J\u0006\u0010L\u001a\u00020,R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010%R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;",
        "Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;",
        "Landroid/view/View$OnClickListener;",
        "ctx",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "activityBrightness",
        "Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;",
        "bottomEndPosition",
        "bottomHidePosition",
        "bottomShowPosition",
        "bottomStartPosition",
        "leftEndPosition",
        "leftHidePosition",
        "leftShowPosition",
        "mIsActive",
        "",
        "getMIsActive",
        "()Z",
        "setMIsActive",
        "(Z)V",
        "mNavigationBarBg",
        "Landroid/view/View;",
        "getMNavigationBarBg",
        "()Landroid/view/View;",
        "setMNavigationBarBg",
        "(Landroid/view/View;)V",
        "mSeriesEpListPopup",
        "Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;",
        "onSideViewEventListener",
        "com/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1",
        "Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;",
        "sysVolume",
        "Lcom/miui/video/biz/player/online/common/SysVolumeHelper;",
        "topEndPosition",
        "topHidePosition",
        "topShowPosition",
        "active",
        "",
        "adjustBrightnessBegin",
        "movementY",
        "",
        "adjustVolumeBegin",
        "closeController",
        "closeSeriesEpPop",
        "deActive",
        "hideController",
        "hideWhenLocked",
        "init",
        "onActivityDestroy",
        "onClick",
        "v",
        "onDestroy",
        "onKeyDown",
        "event",
        "Landroid/view/KeyEvent;",
        "onTouchMove",
        "region",
        "movementX",
        "onTouchUp",
        "openController",
        "openSeriesEpPop",
        "setUpSeriesEpPop",
        "seriesEpListPopup",
        "setViewsVisibility",
        "visibility",
        "showController",
        "showReplay",
        "imageUrl",
        "",
        "showWhenLocked",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final activityBrightness:Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;

.field private bottomEndPosition:I

.field private bottomHidePosition:I

.field private bottomShowPosition:I

.field private bottomStartPosition:I

.field private leftEndPosition:I

.field private leftHidePosition:I

.field private leftShowPosition:I

.field private mIsActive:Z

.field private mNavigationBarBg:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

.field private onSideViewEventListener:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;

.field private final sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

.field private topEndPosition:I

.field private topHidePosition:I

.field private topShowPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->activityBrightness:Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;

    new-instance p1, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    new-instance p1, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->onSideViewEventListener:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->activityBrightness:Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;

    new-instance p1, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    new-instance p1, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->onSideViewEventListener:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->activityBrightness:Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;

    new-instance p1, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    new-instance p1, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->onSideViewEventListener:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$clearAnimations(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->clearAnimations()V

    return-void
.end method

.method public static final synthetic access$clearDismissRunner(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->clearDismissRunner()V

    return-void
.end method

.method public static final synthetic access$getBottomEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->bottomEndPosition:I

    return p0
.end method

.method public static final synthetic access$getBottomHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->bottomHidePosition:I

    return p0
.end method

.method public static final synthetic access$getBottomShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->bottomShowPosition:I

    return p0
.end method

.method public static final synthetic access$getBottomStartPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->bottomStartPosition:I

    return p0
.end method

.method public static final synthetic access$getLeftEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->leftEndPosition:I

    return p0
.end method

.method public static final synthetic access$getLeftHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->leftHidePosition:I

    return p0
.end method

.method public static final synthetic access$getLeftShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->leftShowPosition:I

    return p0
.end method

.method public static final synthetic access$getMAnimators$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mAnimators:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTopEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->topEndPosition:I

    return p0
.end method

.method public static final synthetic access$getTopHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->topHidePosition:I

    return p0
.end method

.method public static final synthetic access$getTopShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->topShowPosition:I

    return p0
.end method

.method public static final synthetic access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    return-object p0
.end method

.method public static final synthetic access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    return-object p0
.end method

.method public static final synthetic access$getVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTopBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    return-object p0
.end method

.method public static final synthetic access$navigationBarIn(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->navigationBarIn()V

    return-void
.end method

.method public static final synthetic access$navigationBarOut(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->navigationBarOut()V

    return-void
.end method

.method public static final synthetic access$resetAutoDismiss(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->resetAutoDismiss()V

    return-void
.end method

.method public static final synthetic access$setBottomEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->bottomEndPosition:I

    return-void
.end method

.method public static final synthetic access$setBottomHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->bottomHidePosition:I

    return-void
.end method

.method public static final synthetic access$setBottomShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->bottomShowPosition:I

    return-void
.end method

.method public static final synthetic access$setBottomStartPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->bottomStartPosition:I

    return-void
.end method

.method public static final synthetic access$setLeftEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->leftEndPosition:I

    return-void
.end method

.method public static final synthetic access$setLeftHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->leftHidePosition:I

    return-void
.end method

.method public static final synthetic access$setLeftShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->leftShowPosition:I

    return-void
.end method

.method public static final synthetic access$setMAnimators$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mAnimators:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTopEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->topEndPosition:I

    return-void
.end method

.method public static final synthetic access$setTopHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->topHidePosition:I

    return-void
.end method

.method public static final synthetic access$setTopShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->topShowPosition:I

    return-void
.end method

.method public static final synthetic access$setVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;Lcom/miui/video/player/service/controller/VideoMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    return-void
.end method

.method public static final synthetic access$setVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;Lcom/miui/video/player/service/controller/VideoTools;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    return-void
.end method

.method public static final synthetic access$setVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;Lcom/miui/video/player/service/controller/VideoTopBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    return-void
.end method

.method private final adjustBrightnessBegin(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->activityBrightness:Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->getNewBrightnessByMovent(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/video/common/library/utils/SystemUtils;->setActivityBrightness(Landroid/app/Activity;I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->hide()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->hide()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->activityBrightness:Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->getBrightnessPercent()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->setPercent(I)V

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final adjustVolumeBegin(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->getNewVolumeValue(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->setVolumeByNewValue(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->hide()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->hide()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->getCurrentVolumePercent(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->setPercent(I)V

    return-void
.end method

.method private final closeSeriesEpPop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->dismiss()V

    :cond_1
    return-void
.end method

.method private final openSeriesEpPop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setAnchor(Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->openSideSwitch(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public active()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsActive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsActive:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->layoutNavigation(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x600

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v2, :cond_2

    check-cast v2, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v2, v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setFullScreenEnable(Z)V

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final closeController()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setViewsVisibility(I)V

    return-void
.end method

.method public deActive()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsActive:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->hideController()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->resetUIFlag()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x600

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v1, :cond_3

    check-cast v1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setFullScreenEnable(Z)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->dismiss()V

    :cond_1
    const/4 v1, 0x0

    check-cast v1, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    iput-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->cleanGestureView()V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsShowing:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMIsActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsActive:Z

    return v0
.end method

.method public final getMNavigationBarBg()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mNavigationBarBg:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->hideController()V

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->hideWhenLocked()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->clearDismissRunner()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->onHide()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->clearAnimations()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->closeController()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->navigationBarOut()V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->closeSeriesEpPop()V

    return-void

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hideWhenLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->clearDismissRunner()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const-string v1, "vVideoTools"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    return-void
.end method

.method protected init()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->init()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setFullScreenEnable(Z)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onActivityDestroy()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->onDestroy()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget v0, Lcom/miui/video/biz/player/online/R$id;->vp_screen_shot:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->hideController()V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onScreenshot()V

    goto :goto_2

    :cond_2
    :goto_1
    sget v0, Lcom/miui/video/biz/player/online/R$id;->vp_screen_locker:I

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    iget-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->enterLockScreen()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    if-eqz p1, :cond_4

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setVisibility(I)V

    :cond_4
    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onScreenLock(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->enterUnlockScreen()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setVisibility(I)V

    :cond_6
    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onScreenLock(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->deActive()V

    return-void
.end method

.method public final onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->getNewVolumeValue(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->setVolumeByNewValue(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->hide()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->getCurrentVolumePercent(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->setPercent(I)V

    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->getNewVolumeValue(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->setVolumeByNewValue(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->hide()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->sysVolume:Lcom/miui/video/biz/player/online/common/SysVolumeHelper;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->getCurrentVolumePercent(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->setPercent(I)V

    return v1

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchMove(IFF)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onTouchMove(IFF)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0, p3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->adjustBrightnessBegin(F)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    invoke-direct {p0, p3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->adjustVolumeBegin(F)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTouchUp(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onTouchUp(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->adjustVolumeSeekEnd()V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->adjustBrightSeekEnd()V

    :cond_1
    return-void
.end method

.method public final openController()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setViewsVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    const-string v1, "vVideoTopBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTopBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    const-string v2, "vVideoMediaController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const-string v2, "vVideoTools"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vRightCustomerContainer:Landroid/widget/RelativeLayout;

    const-string v2, "vRightCustomerContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    const-string v1, "vVideoTopBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTopBar;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    const-string v2, "vVideoMediaController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const-string v2, "vVideoTools"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vRightCustomerContainer:Landroid/widget/RelativeLayout;

    const-string v2, "vRightCustomerContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mNavigationBarBg:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mNavigationBarBg:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mNavigationBarBg:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/video/biz/player/online/R$color;->c_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mNavigationBarBg:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsActive:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const-string v1, "vVideoTools"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTools;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$dimen;->comm_vp_mc_screen_locker_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const-string v2, "vVideoTools"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vRightCustomerContainer:Landroid/widget/RelativeLayout;

    const-string v1, "vRightCustomerContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/player/online/R$dimen;->comm_vp_mc_screen_locker_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vRightCustomerContainer:Landroid/widget/RelativeLayout;

    const-string v2, "vRightCustomerContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {}, Lcom/miui/video/base/utils/NavigationUtils;->isNavigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mNavigationBarBg:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mNavigationBarBg:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_6
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    const-string v2, "(context as Activity).windowManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v2, "(context as Activity).windowManager.defaultDisplay"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->updateUIByNavPositionOnRight()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    const-string v1, "(context as Activity).windowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v1, "(context as Activity).windowManager.defaultDisplay"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->updateUIByNavPositionOnLeft()V

    goto :goto_1

    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->updateUIByNavPositionOnRight()V

    :cond_b
    :goto_1
    return-void
.end method

.method public final setMIsActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsActive:Z

    return-void
.end method

.method public final setMNavigationBarBg(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mNavigationBarBg:Landroid/view/View;

    return-void
.end method

.method public final setUpSeriesEpPop(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mSeriesEpListPopup:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->onSideViewEventListener:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;

    check-cast v0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setMOnSideViewEventListener(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;)V

    :cond_0
    return-void
.end method

.method public final setViewsVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    const-string v1, "vVideoTopBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/controller/VideoTopBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    const-string v1, "vVideoMediaController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/controller/VideoMediaController;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const-string v1, "vVideoTools"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/controller/VideoTools;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vRightCustomerContainer:Landroid/widget/RelativeLayout;

    const-string v1, "vRightCustomerContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showController()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsShowingReplay:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->showController()V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayControllerOut()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;->togglePopupClose()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->showWhenLocked()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$color;->c_black_80:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    if-eqz v0, :cond_8

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;->setOrientationMode(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v2, :cond_7

    check-cast v2, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->onShow()V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v2, :cond_6

    check-cast v2, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->syncPlayButtonState()V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    if-eqz v2, :cond_5

    check-cast v2, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;->updateEpisode()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->resetAutoDismiss()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->clearAnimations()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->openController()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->navigationBarIn()V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->openSeriesEpPop()V

    :goto_0
    return-void

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineTopBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineTopBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineTopBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showReplay(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsScreenLocked:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->enterUnlockScreen()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->hideController()V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->showReplay(Ljava/lang/String;)V

    return-void
.end method

.method public final showWhenLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->resetAutoDismiss()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const-string v1, "vVideoTools"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    return-void
.end method
