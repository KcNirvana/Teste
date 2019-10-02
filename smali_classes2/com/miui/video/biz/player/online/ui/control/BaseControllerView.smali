.class public abstract Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;
.super Lcom/miui/video/player/service/controller/FullScreenController;
.source "BaseControllerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008&\u0018\u0000 22\u00020\u0001:\u00012B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J \u0010\u001a\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0008\u0010\u001b\u001a\u00020\u0016H\u0015J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\u0008\u0010\u001f\u001a\u00020\u0016H\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0016J\u000e\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\tJ\u0006\u0010#\u001a\u00020\u0016J \u0010$\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u0014H\u0016J\u0010\u0010&\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\tH\u0016J\u000e\u0010\'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020)J\u0010\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u000eH\u0016J\u001a\u0010,\u001a\u00020\u00162\u0008\u0010-\u001a\u0004\u0018\u00010.2\u0008\u0010/\u001a\u0004\u0018\u00010.J\u0008\u00100\u001a\u00020\u0016H\u0016J\u0008\u00101\u001a\u00020\u0016H\u0016R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;",
        "Lcom/miui/video/player/service/controller/FullScreenController;",
        "ctx",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "duration",
        "gestureSeekPosition",
        "mPresenter",
        "Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;",
        "getMPresenter",
        "()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;",
        "setMPresenter",
        "(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V",
        "seekStep",
        "",
        "adjustSeekEndByTouch",
        "",
        "adjustSeekStartByTouch",
        "movementX",
        "currentPosition",
        "calculateSeekPositionByMoveX",
        "init",
        "isSeekGestureEnable",
        "",
        "onActivityDestroy",
        "onActivityPause",
        "onActivityResume",
        "onDoubleTap",
        "region",
        "onReleaseVideoView",
        "onTouchMove",
        "movementY",
        "onTouchUp",
        "setGestureContainer",
        "container",
        "Landroid/widget/FrameLayout;",
        "setPresenter",
        "p",
        "setVideoTitle",
        "title",
        "",
        "subTitle",
        "stopProgressRunnerUpdate",
        "syncPlayButtonState",
        "Companion",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$Companion;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "BaseControllerView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private duration:I

.field private gestureSeekPosition:I

.field private mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final seekStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->Companion:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$Companion;

    const-string v0, "BaseControllerView"

    sput-object v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/controller/FullScreenController;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->gestureSeekPosition:I

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const/high16 v0, 0x42f00000    # 120.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->seekStep:F

    return-void
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

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/controller/FullScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->gestureSeekPosition:I

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const/high16 p2, 0x42f00000    # 120.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->seekStep:F

    return-void
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

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/controller/FullScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->gestureSeekPosition:I

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const/high16 p2, 0x42f00000    # 120.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->seekStep:F

    return-void
.end method

.method public static final synthetic access$adjustSeekStartByTouch(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->adjustSeekStartByTouch(IF)V

    return-void
.end method

.method public static final synthetic access$getDuration$p(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    return-object p0
.end method

.method public static final synthetic access$setDuration$p(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    return-void
.end method

.method public static final synthetic access$setVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;Lcom/miui/video/player/service/controller/VideoMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    return-void
.end method

.method private final adjustSeekEndByTouch()V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSeekEndByTouch gestureSeekPosition == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->gestureSeekPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " duration == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->adjustSeekEnd()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsSeeking:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setHasSeeked(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setTouchSeek(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getMSeekRunner()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeIORunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getMSeekRunner()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final adjustSeekStartByTouch(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->hideController()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsSeeking:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isAsyncMode()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;F)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getVideoDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getVideoDuration()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getCurrentPosition$default(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;ZILjava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->adjustSeekStartByTouch(IF)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final adjustSeekStartByTouch(IF)V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSeekStartByTouch currentPosition == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " duration == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    invoke-direct {p0, p2, v0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->calculateSeekPositionByMoveX(FII)I

    move-result p2

    iput p2, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->gestureSeekPosition:I

    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz p2, :cond_2

    check-cast p2, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->gestureSeekPosition:I

    invoke-virtual {p2, v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setMCachedSeekPosition(I)V

    iget p2, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->gestureSeekPosition:I

    const/4 v0, 0x1

    if-le p2, p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->gestureSeekPosition:I

    if-ne v1, p1, :cond_1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->hide()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->hide()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->gestureSeekPosition:I

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->duration:I

    invoke-virtual {p1, v0, p2, v1}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->adjustSeekStart(IZI)V

    return-void

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final calculateSeekPositionByMoveX(FII)I
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->seekStep:F

    div-float/2addr v0, v1

    const/16 v1, 0x3e8

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    neg-int v0, v0

    :cond_0
    add-int p1, p3, v0

    if-gez v0, :cond_1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    move p1, p2

    :cond_2
    :goto_0
    return p1
.end method

.method private final isSeekGestureEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isAdsPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mIsScreenLocked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    return-object v0
.end method

.method protected init()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-super {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->init()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vReplay:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$init$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$init$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    return-void
.end method

.method public onActivityPause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->stopVideoPositionUpdate()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityResume()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->syncPlayButtonState()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;->updateMultiWindowMode()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineTopBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDoubleTap(I)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mIsScreenLocked:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->toggleDoubleClick(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->syncPlayButtonState()V

    return-void
.end method

.method public final onReleaseVideoView()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->hideController()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->onReleaseVideoView()V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTouchMove(IFF)V
    .locals 0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->isSeekGestureEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    neg-float p1, p2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->adjustSeekStartByTouch(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->adjustSeekStartByTouch(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchUp(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->isSeekGestureEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->adjustSeekEndByTouch()V

    :cond_0
    return-void
.end method

.method public final setGestureContainer(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mAnchor:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setMPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 0
    .param p1    # Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    return-void
.end method

.method public setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;->setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    return-void

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineTopBar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setVideoTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/controller/VideoTopBar;->updateVideoTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public stopProgressRunnerUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->stopVideoPositionUpdate()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncPlayButtonState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->syncPlayButtonState()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
