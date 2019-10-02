.class public final Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;
.super Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;
.source "SeriesEpListPopupRTL.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000cH\u0002J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000eH\u0016J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000eH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;",
        "Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;",
        "mcontext",
        "Landroid/content/Context;",
        "videoPresenter",
        "Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;",
        "(Landroid/content/Context;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V",
        "TAG",
        "",
        "getMcontext",
        "()Landroid/content/Context;",
        "adjustPopupWidth",
        "",
        "isFull",
        "",
        "adjustSwitchPosition",
        "needPauseVideo",
        "onInterceptTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "openSideSwitch",
        "bool",
        "openSideView",
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
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private final mcontext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mcontext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;-><init>(Landroid/content/Context;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    iput-object p1, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mcontext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->videoPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    const-string p1, "SeriesEpListPopupNewRTL"

    iput-object p1, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final adjustPopupWidth(Z)V
    .locals 9

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v0

    const-class v1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {v1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {v1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isNotchEnable()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mContentView:Landroid/widget/LinearLayout;

    const-string v3, "mContentView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_d

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    const-string v4, "(context as Activity).windowManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    const-string v4, "(context as Activity).windowManager.defaultDisplay"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v4}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMScreenWidth(I)V

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "context.resources"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    const/4 p1, -0x1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v6}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMSideAreaWidth(I)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/miui/video/biz/player/online/R$dimen;->dp_43:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMSideAreaWidth(I)V

    if-eqz v1, :cond_2

    if-ne v3, v5, :cond_2

    iget-object v4, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mContentView:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v7

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v7, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getPopupWidth()I

    move-result v4

    iget-object v7, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mContentView:Landroid/widget/LinearLayout;

    const-string v8, "mContentView"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_28_P()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v6, 0xf

    :cond_3
    if-nez p1, :cond_8

    const/4 p1, 0x3

    if-ne v3, p1, :cond_5

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMScreenWidth(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    const-string v1, "DeviceUtils.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMScreenWidth(I)V

    goto/16 :goto_1

    :cond_5
    if-ne v3, v5, :cond_a

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVMaskView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/player/online/R$dimen;->dp_43:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMScreenWidth(I)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMScreenWidth(I)V

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMScreenWidth(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVMaskView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMScreenWidth(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    const-string v1, "DeviceUtils.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMScreenWidth(I)V

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMFixEdgeWidth()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMScreenWidth(I)V

    :goto_2
    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mContentView:Landroid/widget/LinearLayout;

    const-string v0, "mContentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMSideAreaWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMMiddlePosition(I)V

    return-void

    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final adjustSwitchPosition()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->isShowingComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_24_NOUGAT()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$dimen;->dp_8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/miui/video/biz/player/online/R$dimen;->dp_8:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_24_NOUGAT()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-void

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMcontext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method public needPauseVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public openSideSwitch(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->isShowingSwitch()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->adjustPopupWidth(Z)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->clearAnimator()V

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMSideAreaWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1, v1, v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVBackground()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getSIDEVIEW_CLOSE_ALPHA()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMIsShowingSwitch(Z)V

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->adjustSwitchPosition()V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->onShowStateChanged()V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    new-instance p1, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL$openSideSwitch$onClickListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL$openSideSwitch$onClickListener$1;-><init>(Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVMaskView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVMaskView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setTitleViewVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->isShowingSwitch()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->clearAnimator()V

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMSideAreaWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v2

    neg-int v2, v2

    invoke-static {p1, v1, v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateOutHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMIsShowingSwitch(Z)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->onShowStateChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVMaskView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public openSideView(Z)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMOnSideViewEventListener()Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;->open()V

    :cond_0
    new-instance v2, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL$openSideView$onClickListener$1;

    invoke-direct {v2, p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL$openSideView$onClickListener$1;-><init>(Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVMaskView()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setTitleViewVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->isShowingComplete()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0, v4}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->adjustPopupWidth(Z)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->clearAnimator()V

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mContentView:Landroid/widget/LinearLayout;

    const-string v2, "mContentView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mContentView:Landroid/widget/LinearLayout;

    const-string v1, "mContentView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->anchor:Landroid/view/ViewGroup;

    const-string v1, "anchor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMSideAreaWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMSideAreaWidth()I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVBackground()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getSIDEVIEW_OPEN_ALPHA()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v4}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMIsShowingComplete(Z)V

    iput-boolean v4, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mIsShowing:Z

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->adjustSwitchPosition()V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->onShowStateChanged()V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMOnSideViewEventListener()Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->isShowingComplete()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->clearAnimator()V

    iget-object v2, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mContentView:Landroid/widget/LinearLayout;

    const-string v3, "mContentView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mContentView:Landroid/widget/LinearLayout;

    const-string v2, "mContentView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->anchor:Landroid/view/ViewGroup;

    const-string v2, "anchor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    :goto_1
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMSideAreaWidth()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMScreenWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getMSideAreaWidth()I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {v2, v3, v0}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateOutHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVBackground()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getSIDEVIEW_CLOSE_ALPHA()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setMIsShowingComplete(Z)V

    iput-boolean v1, p0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->mIsShowing:Z

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->adjustSwitchPosition()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setTitleViewVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVMaskView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL$openSideView$onClickListener$2;

    invoke-direct {v0, p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL$openSideView$onClickListener$2;-><init>(Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVMaskView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->getVSwitch()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/SeriesEpListPopupRTL;->setClickable(Z)V

    return-void
.end method
