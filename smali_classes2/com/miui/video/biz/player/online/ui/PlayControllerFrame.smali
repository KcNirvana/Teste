.class public final Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;
.super Landroid/widget/FrameLayout;
.source "PlayControllerFrame.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/VideoPlayContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/miui/video/biz/player/online/VideoPlayContract$View<",
        "Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayControllerFrame.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayControllerFrame.kt\ncom/miui/video/biz/player/online/ui/PlayControllerFrame\n*L\n1#1,234:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000q\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008*\u0001\u000f\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u001e\u001a\u00020\rJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u0008\u0010#\u001a\u00020 H\u0016J\u0006\u0010$\u001a\u00020 J\u0006\u0010%\u001a\u00020 J\u0006\u0010&\u001a\u00020 J\u0006\u0010\'\u001a\u00020 J\u0008\u0010(\u001a\u00020 H\u0016J\u0008\u0010)\u001a\u00020 H\u0016J\u0010\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020\"H\u0016J\u0012\u0010,\u001a\u00020 2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0006\u0010/\u001a\u00020 J\u0010\u00100\u001a\u00020\u00122\u0006\u00101\u001a\u000202H\u0016J\u0008\u00103\u001a\u00020 H\u0016J\u0008\u00104\u001a\u00020 H\u0002J\u000e\u00105\u001a\u00020 2\u0006\u00106\u001a\u00020\u0019J\u0010\u00107\u001a\u00020 2\u0006\u00108\u001a\u00020\u0003H\u0016J\u001a\u00109\u001a\u00020 2\u0008\u0010:\u001a\u0004\u0018\u00010;2\u0008\u0010<\u001a\u0004\u0018\u00010;J\u0008\u0010=\u001a\u00020 H\u0016J\u0006\u0010>\u001a\u00020 J\u0006\u0010?\u001a\u00020 J\u000e\u0010@\u001a\u00020 2\u0006\u0010A\u001a\u00020\"J\u0006\u0010B\u001a\u00020 R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013R\u001c\u0010\u0014\u001a\u00020\u00128FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;",
        "Landroid/widget/FrameLayout;",
        "Lcom/miui/video/biz/player/online/VideoPlayContract$View;",
        "Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "controlPresenter",
        "currentControlView",
        "Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;",
        "getCurrentControlView",
        "()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;",
        "fullscreenControlView",
        "Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;",
        "gestureListener",
        "com/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1",
        "Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;",
        "isActive",
        "",
        "()Z",
        "isFullscreen",
        "setFullscreen",
        "(Z)V",
        "isShowing",
        "mOrientationUpdater",
        "Lcom/miui/video/player/service/play/OrientationUpdater;",
        "miniControlView",
        "Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;",
        "viewGestureHandler",
        "Lcom/miui/video/player/service/play/ViewGestureHandler;",
        "getFullScreenControllerView",
        "handleTapEvent",
        "",
        "region",
        "",
        "hide",
        "hideReplay",
        "onActivityDestroy",
        "onActivityPause",
        "onActivityResume",
        "onClickPause",
        "onClickResume",
        "onClickSeekTo",
        "s",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onReleaseVideoView",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "refresh",
        "reset",
        "setOrientation",
        "orientationUpdater",
        "setPresenter",
        "presenter",
        "setVideoTitle",
        "title1",
        "",
        "subTitle1",
        "show",
        "showReplay",
        "stopProgressRunnerUpdate",
        "switchViewOrientation",
        "orientation",
        "syncPlayButtonState",
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

.field private controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

.field private final fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

.field private final gestureListener:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;

.field private final isActive:Z

.field private isFullscreen:Z

.field private final isShowing:Z

.field private mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

.field private final miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

.field private final viewGestureHandler:Lcom/miui/video/player/service/play/ViewGestureHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/video/player/service/play/ViewGestureHandler;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-direct {v0, p1, v1}, Lcom/miui/video/player/service/play/ViewGestureHandler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->viewGestureHandler:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/player/online/R$layout;->ovp_fullscreen_controller:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/player/online/R$layout;->ovp_mini_controller_layout:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->isShowing:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    check-cast p1, Landroid/app/Activity;

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->attachActivity(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/miui/video/player/service/play/OrientationUpdater;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setGestureContainer(Landroid/widget/FrameLayout;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->attachActivity(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/miui/video/player/service/play/OrientationUpdater;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->setGestureContainer(Landroid/widget/FrameLayout;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;-><init>(Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->gestureListener:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->viewGestureHandler:Lcom/miui/video/player/service/play/ViewGestureHandler;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->gestureListener:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;

    check-cast v0, Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/play/ViewGestureHandler;->setGestureListener(Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.MiniVideoControllerView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.FullScreenVideoControllerView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getCurrentControlView$p(Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;)Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object p0

    return-object p0
.end method

.method private final getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getContext()Landroid/content/Context;

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

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final reset()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->deActive()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->deActive()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->active()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getFullScreenControllerView()Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    return-object v0
.end method

.method public final handleTapEvent(I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isAdsPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object p1

    iget-boolean p1, p1, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->mIsShowing:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    :cond_3
    :goto_0
    return-void
.end method

.method public hide()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->hideController()V

    return-void
.end method

.method public final hideReplay()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->hideReplay()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->hideReplay()V

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->isActive:Z

    return v0
.end method

.method public final isFullscreen()Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->isShowing:Z

    return v0
.end method

.method public final onActivityDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onActivityDestroy()V

    return-void
.end method

.method public final onActivityPause()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onActivityPause()V

    return-void
.end method

.method public final onActivityResume()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onActivityResume()V

    return-void
.end method

.method public onClickPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->pauseVideo()V

    :cond_0
    return-void
.end method

.method public onClickResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->resumeVideo()V

    :cond_0
    return-void
.end method

.method public onClickSeekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->switchViewOrientation(I)V

    :cond_0
    return-void
.end method

.method public final onReleaseVideoView()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onReleaseVideoView()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->viewGestureHandler:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->isFullscreen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->viewGestureHandler:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-virtual {p1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->isMoved()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return v1
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public final setFullscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->isFullscreen:Z

    return-void
.end method

.method public final setOrientation(Lcom/miui/video/player/service/play/OrientationUpdater;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/play/OrientationUpdater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "orientationUpdater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setOrientation(Lcom/miui/video/player/service/play/OrientationUpdater;)V

    return-void
.end method

.method public setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->reset()V

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    return-void
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

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVideoTitle(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->setVideoTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->showController()V

    return-void
.end method

.method public final showReplay()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-eqz v0, :cond_1

    const-string v2, "1.0"

    invoke-static {v2}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->setCurrentSpeed(F)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getImage_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->showReplay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->controlPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getImage_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->showReplay(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.player.service.model.VideoObject"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.player.service.model.VideoObject"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method public final stopProgressRunnerUpdate()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->stopProgressRunnerUpdate()V

    return-void
.end method

.method public final switchViewOrientation(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->active()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->deActive()V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->hideController()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->onDestroy()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-boolean v1, v1, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsShowingReplay:Z

    iput-boolean v1, p1, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->mIsShowingReplay:Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    iget-boolean p1, p1, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->mIsShowingReplay:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->hideReplay()V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->active()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->onDestroy()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->miniControlView:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    iget-boolean v1, v1, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->mIsShowingReplay:Z

    iput-boolean v1, p1, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsShowingReplay:Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-boolean p1, p1, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsShowingReplay:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->hideReplay()V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->fullscreenControlView:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->active()V

    :cond_4
    :goto_0
    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onScreenOrientationChange(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    return-void

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final syncPlayButtonState()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getCurrentControlView()Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->syncPlayButtonState()V

    return-void
.end method
