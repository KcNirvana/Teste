.class public Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;
.super Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;
.source "SeriesEpListPopup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001:\u0002\u0086\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010d\u001a\u00020\u0008H\u0002J\u0010\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020#H\u0002J\u0008\u0010h\u001a\u00020fH\u0002J\u0008\u0010i\u001a\u00020fH\u0016J\u0006\u0010j\u001a\u00020kJ\u0006\u0010l\u001a\u00020fJ\u0006\u0010m\u001a\u00020#J\u0006\u0010n\u001a\u00020#J\u0008\u0010o\u001a\u00020#H\u0016J\u0010\u0010p\u001a\u00020#2\u0006\u0010q\u001a\u00020rH\u0016J\u0010\u0010s\u001a\u00020#2\u0006\u0010q\u001a\u00020rH\u0016J\u0018\u0010t\u001a\u00020f2\u0006\u0010u\u001a\u00020S2\u0006\u0010v\u001a\u00020\u000eH\u0014J\u0010\u0010w\u001a\u00020f2\u0006\u0010x\u001a\u00020#H\u0016J\u0010\u0010y\u001a\u00020f2\u0006\u0010x\u001a\u00020#H\u0016J\u0008\u0010z\u001a\u00020fH\u0002J\u000e\u0010{\u001a\u00020f2\u0006\u0010|\u001a\u00020}J\u000f\u0010~\u001a\u00020f2\u0007\u0010\u007f\u001a\u00030\u0080\u0001J\u0019\u0010\u0081\u0001\u001a\u00020f2\u0007\u0010\u0082\u0001\u001a\u00020#2\u0007\u0010\u0083\u0001\u001a\u00020#J\u0010\u0010\u0084\u0001\u001a\u00020f2\u0007\u0010\u0085\u0001\u001a\u00020\u000eR\u0014\u0010\u0007\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\r\u001a\u00020\u000eX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0010\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0010\"\u0004\u0008!\u0010\u001eR\u001a\u0010\"\u001a\u00020#X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u00020#X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010%\"\u0004\u0008*\u0010\'R\u001a\u0010+\u001a\u00020#X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010%\"\u0004\u0008-\u0010\'R\u001a\u0010.\u001a\u00020#X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010%\"\u0004\u00080\u0010\'R\u001a\u00101\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0010\"\u0004\u00083\u0010\u001eR\u001a\u00104\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0010\"\u0004\u00086\u0010\u001eR\u001c\u00107\u001a\u0004\u0018\u000108X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001a\u0010=\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u0010\"\u0004\u0008?\u0010\u001eR\u001a\u0010@\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u0010\"\u0004\u0008B\u0010\u001eR\u001a\u0010C\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u0010\"\u0004\u0008E\u0010\u001eR\u001a\u0010F\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\u0010\"\u0004\u0008H\u0010\u001eR\u000e\u0010I\u001a\u00020JX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010K\u001a\u00020LX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010NR\u0014\u0010O\u001a\u0008\u0012\u0004\u0012\u00020Q0PX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010R\u001a\u00020SX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010UR\u0014\u0010V\u001a\u00020WX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010YR\u0014\u0010Z\u001a\u00020WX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010YR\u0014\u0010\\\u001a\u00020]X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010_R\u0014\u0010`\u001a\u00020aX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008b\u0010cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;",
        "Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;",
        "mContext",
        "Landroid/content/Context;",
        "videoPresenter",
        "Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;",
        "(Landroid/content/Context;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V",
        "SIDEVIEW_CLOSE_ALPHA",
        "",
        "getSIDEVIEW_CLOSE_ALPHA",
        "()F",
        "SIDEVIEW_OPEN_ALPHA",
        "getSIDEVIEW_OPEN_ALPHA",
        "SPEED_FAST",
        "",
        "getSPEED_FAST",
        "()I",
        "TAG",
        "",
        "mAnchor",
        "Landroid/view/ViewGroup;",
        "getMAnchor",
        "()Landroid/view/ViewGroup;",
        "setMAnchor",
        "(Landroid/view/ViewGroup;)V",
        "getMContext",
        "()Landroid/content/Context;",
        "mEndX",
        "getMEndX",
        "setMEndX",
        "(I)V",
        "mFixEdgeWidth",
        "getMFixEdgeWidth",
        "setMFixEdgeWidth",
        "mIsMoveInit",
        "",
        "getMIsMoveInit",
        "()Z",
        "setMIsMoveInit",
        "(Z)V",
        "mIsMoved",
        "getMIsMoved",
        "setMIsMoved",
        "mIsShowingComplete",
        "getMIsShowingComplete",
        "setMIsShowingComplete",
        "mIsShowingSwitch",
        "getMIsShowingSwitch",
        "setMIsShowingSwitch",
        "mMaxScrollPosition",
        "getMMaxScrollPosition",
        "setMMaxScrollPosition",
        "mMiddlePosition",
        "getMMiddlePosition",
        "setMMiddlePosition",
        "mOnSideViewEventListener",
        "Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;",
        "getMOnSideViewEventListener",
        "()Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;",
        "setMOnSideViewEventListener",
        "(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;)V",
        "mScreenWidth",
        "getMScreenWidth",
        "setMScreenWidth",
        "mSideAreaWidth",
        "getMSideAreaWidth",
        "setMSideAreaWidth",
        "mStartX",
        "getMStartX",
        "setMStartX",
        "mStartY",
        "getMStartY",
        "setMStartY",
        "mThisDismissClick",
        "Landroid/view/View$OnClickListener;",
        "mVelocityTracker",
        "Landroid/view/VelocityTracker;",
        "getMVelocityTracker",
        "()Landroid/view/VelocityTracker;",
        "mVideoList",
        "",
        "Lcom/miui/video/player/service/model/VideoObject;",
        "vBackground",
        "Landroid/view/View;",
        "getVBackground",
        "()Landroid/view/View;",
        "vMaskView",
        "Landroid/widget/ImageView;",
        "getVMaskView",
        "()Landroid/widget/ImageView;",
        "vSwitch",
        "getVSwitch",
        "vTitleAddition",
        "Landroid/widget/TextView;",
        "getVTitleAddition",
        "()Landroid/widget/TextView;",
        "vTitleSwitch",
        "Lcom/miui/video/player/service/setting/views/SwitchButton;",
        "getVTitleSwitch",
        "()Lcom/miui/video/player/service/setting/views/SwitchButton;",
        "adjustPanelAlpha",
        "adjustPopupWidth",
        "",
        "isFull",
        "adjustSwitchPosition",
        "dismiss",
        "generateParams",
        "Landroid/view/ViewGroup$LayoutParams;",
        "initViewValue",
        "isShowingComplete",
        "isShowingSwitch",
        "needPauseVideo",
        "onInterceptTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "onVisibilityChanged",
        "changedView",
        "visibility",
        "openSideSwitch",
        "bool",
        "openSideView",
        "scrollThisView",
        "setAddition",
        "title",
        "",
        "setAnchor",
        "anchor",
        "Landroid/widget/FrameLayout;",
        "setTitleSwitch",
        "isShow",
        "value",
        "setTitleViewVisibility",
        "visible",
        "OnSideViewEventListener",
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
.field private final SIDEVIEW_CLOSE_ALPHA:F

.field private final SIDEVIEW_OPEN_ALPHA:F

.field private final SPEED_FAST:I

.field private TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field protected mAnchor:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mEndX:I

.field private mFixEdgeWidth:I

.field private mIsMoveInit:Z

.field private mIsMoved:Z

.field private mIsShowingComplete:Z

.field private mIsShowingSwitch:Z

.field private mMaxScrollPosition:I

.field private mMiddlePosition:I

.field private mOnSideViewEventListener:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mScreenWidth:I

.field private mSideAreaWidth:I

.field private mStartX:I

.field private mStartY:I

.field private final mThisDismissClick:Landroid/view/View$OnClickListener;

.field private final mVelocityTracker:Landroid/view/VelocityTracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/player/service/model/VideoObject;",
            ">;"
        }
    .end annotation
.end field

.field private final vBackground:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vMaskView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vSwitch:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vTitleAddition:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vTitleSwitch:Lcom/miui/video/player/service/setting/views/SwitchButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->videoPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    const-string p1, "SeriesEpListPopup"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->TAG:Ljava/lang/String;

    const/16 p1, 0x320

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SPEED_FAST:I

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_OPEN_ALPHA:F

    const p1, 0x3eb33333    # 0.35f

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_CLOSE_ALPHA:F

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/player/online/R$layout;->ovp_popup_episode:I

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getPopupWidth()I

    move-result p1

    sget p2, Lcom/miui/video/biz/player/online/R$id;->v_container:I

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/player/online/R$layout;->vp_popup_base_title:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mTitleLayout:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mTitleLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget p1, Lcom/miui/video/biz/player/online/R$id;->vp_popup_base_title_name:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleText:Landroid/widget/TextView;

    sget p1, Lcom/miui/video/biz/player/online/R$id;->vp_popup_base_title_addition:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.vp_popup_base_title_addition)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleAddition:Landroid/widget/TextView;

    sget p1, Lcom/miui/video/biz/player/online/R$id;->vp_popup_base_title_switch:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.vp_popup_base_title_switch)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/player/service/setting/views/SwitchButton;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleSwitch:Lcom/miui/video/player/service/setting/views/SwitchButton;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleSwitch:Lcom/miui/video/player/service/setting/views/SwitchButton;

    new-instance p2, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$1;-><init>(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget p1, Lcom/miui/video/biz/player/online/R$id;->v_background:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.v_background)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vBackground:Landroid/view/View;

    sget p1, Lcom/miui/video/biz/player/online/R$id;->v_side_mask:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.v_side_mask)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    sget p1, Lcom/miui/video/biz/player/online/R$id;->v_switch:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.v_switch)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    const-string p2, "VelocityTracker.obtain()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/player/online/R$dimen;->dp_1:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mFixEdgeWidth:I

    new-instance p1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/widget/AbsListView;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAbsListView:Landroid/widget/AbsListView;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/player/online/R$dimen;->dp_15:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAbsListView:Landroid/widget/AbsListView;

    const-string v0, "mAbsListView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAbsListView:Landroid/widget/AbsListView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->initViewValue()V

    new-instance p1, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$mThisDismissClick$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$mThisDismissClick$1;-><init>(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mThisDismissClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private final adjustPanelAlpha()F
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMaxScrollPosition:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_CLOSE_ALPHA:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_CLOSE_ALPHA:F

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_OPEN_ALPHA:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_OPEN_ALPHA:F

    :cond_1
    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vBackground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    return v0
.end method

.method private final adjustPopupWidth(Z)V
    .locals 10

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

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    const-string v3, "mContentView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_c

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

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

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

    iput v6, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/miui/video/biz/player/online/R$dimen;->dp_43:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    const/4 v4, 0x3

    if-eqz v1, :cond_2

    if-ne v3, v4, :cond_2

    iget-object v7, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v6, v6, v8, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getPopupWidth()I

    move-result v7

    iget-object v8, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    const-string v9, "mContentView"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez p1, :cond_7

    if-ne v3, v5, :cond_4

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    iget p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v6

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    const-string v1, "DeviceUtils.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    goto/16 :goto_1

    :cond_4
    if-ne v3, v4, :cond_9

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/player/online/R$dimen;->dp_43:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    iget v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    iget p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, v6

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    :cond_8
    iget p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    const-string v1, "DeviceUtils.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    :cond_9
    :goto_1
    iget p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mFixEdgeWidth:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    :goto_2
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    const-string v0, "mContentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMiddlePosition:I

    return-void

    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final adjustSwitchPosition()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->isShowingComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_24_NOUGAT()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$dimen;->dp_8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

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

.method private final scrollThisView()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoved:Z

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SPEED_FAST:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    int-to-float v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mEndX:I

    iget v5, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMiddlePosition:I

    if-le v4, v5, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    :cond_4
    invoke-direct {p0, v2}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustPopupWidth(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->clearAnimator()V

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mEndX:I

    iget v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v4, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vBackground:Landroid/view/View;

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_CLOSE_ALPHA:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingComplete:Z

    iput-boolean v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustSwitchPosition()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->onShowStateChanged()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTitleViewVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    new-instance v1, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$scrollThisView$onClickListener$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$scrollThisView$onClickListener$1;-><init>(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTitleViewVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mOnSideViewEventListener:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, v2}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;->moved(Z)V

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mEndX:I

    iget v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMiddlePosition:I

    if-lt v2, v3, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustPopupWidth(Z)V

    new-instance v1, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$scrollThisView$onClickListener$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$scrollThisView$onClickListener$2;-><init>(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->clearAnimator()V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartX "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mEndX:I

    iget v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vBackground:Landroid/view/View;

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_OPEN_ALPHA:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingComplete:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustSwitchPosition()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->onShowStateChanged()V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mOnSideViewEventListener:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;->moved(Z)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->clearAnimator()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->clearAutoDismiss()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->isShowingComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->openSideView(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->isShowingSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->openSideSwitch(Z)V

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    iput-boolean v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingSwitch:Z

    iput-boolean v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingComplete:Z

    return-void
.end method

.method public final generateParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected final getMAnchor()Landroid/view/ViewGroup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnchor:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v1, "mAnchor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected final getMEndX()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mEndX:I

    return v0
.end method

.method protected final getMFixEdgeWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mFixEdgeWidth:I

    return v0
.end method

.method protected final getMIsMoveInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoveInit:Z

    return v0
.end method

.method protected final getMIsMoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoved:Z

    return v0
.end method

.method protected final getMIsShowingComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingComplete:Z

    return v0
.end method

.method protected final getMIsShowingSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingSwitch:Z

    return v0
.end method

.method protected final getMMaxScrollPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMaxScrollPosition:I

    return v0
.end method

.method protected final getMMiddlePosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMiddlePosition:I

    return v0
.end method

.method public final getMOnSideViewEventListener()Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mOnSideViewEventListener:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    return-object v0
.end method

.method protected final getMScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    return v0
.end method

.method protected final getMSideAreaWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    return v0
.end method

.method protected final getMStartX()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartX:I

    return v0
.end method

.method protected final getMStartY()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartY:I

    return v0
.end method

.method protected final getMVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public final getSIDEVIEW_CLOSE_ALPHA()F
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_CLOSE_ALPHA:F

    return v0
.end method

.method public final getSIDEVIEW_OPEN_ALPHA()F
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_OPEN_ALPHA:F

    return v0
.end method

.method public final getSPEED_FAST()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SPEED_FAST:I

    return v0
.end method

.method protected final getVBackground()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vBackground:Landroid/view/View;

    return-object v0
.end method

.method protected final getVMaskView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final getVSwitch()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final getVTitleAddition()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleAddition:Landroid/widget/TextView;

    return-object v0
.end method

.method protected final getVTitleSwitch()Lcom/miui/video/player/service/setting/views/SwitchButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleSwitch:Lcom/miui/video/player/service/setting/views/SwitchButton;

    return-object v0
.end method

.method public final initViewValue()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->videoPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getSideBarVideoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVideoList:Ljava/util/List;

    new-instance v0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->videoPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVideoList:Ljava/util/List;

    if-nez v1, :cond_1

    const-string v2, "mVideoList"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->setGroup(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAbsListView:Landroid/widget/AbsListView;

    const-string v2, "mAbsListView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAbsListView:Landroid/widget/AbsListView;

    const-string v1, "mAbsListView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAbsListView:Landroid/widget/AbsListView;

    const-string v2, "mAbsListView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/player/online/R$string;->vp_upcoming_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->videoPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerMode()Lcom/miui/video/base/IPlayer$playerMode;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleSwitch:Lcom/miui/video/player/service/setting/views/SwitchButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleAddition:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/player/online/R$string;->vp_upcoming_auto_play:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ng.vp_upcoming_auto_play)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setAddition(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "auto_play_next"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/video/service/common/VideoSPManager;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTitleSwitch(ZZ)V

    :goto_0
    return-void
.end method

.method public final isShowingComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingComplete:Z

    return v0
.end method

.method public final isShowingSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingSwitch:Z

    return v0
.end method

.method public needPauseVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartY:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartY:I

    :goto_0
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoveInit:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustPopupWidth(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartY:I

    iput-boolean v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoveInit:Z

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getWidth()I

    move-result v1

    iget v4, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    sub-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMaxScrollPosition:I

    iput-boolean v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingComplete:Z

    iput-boolean v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustSwitchPosition()V

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTitleViewVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mOnSideViewEventListener:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;->moveInit()V

    :cond_0
    iput-boolean v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoved:Z

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartX:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_5

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoved:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getX()F

    move-result v2

    iget v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMaxScrollPosition:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getX()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTranslationX(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mEndX:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->scrollThisView()V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getX()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTranslationX(F)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartY:I

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustPanelAlpha()F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mOnSideViewEventListener:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;->moving(F)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mEndX:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->scrollThisView()V

    iput-boolean v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoveInit:Z

    :cond_6
    :goto_3
    :pswitch_2
    invoke-super {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->onShowStateChanged()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->onShowStateChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public openSideSwitch(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->isShowingSwitch()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustPopupWidth(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->clearAnimator()V

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    sub-int/2addr v2, v3

    invoke-static {p1, v1, v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnimator:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vBackground:Landroid/view/View;

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_CLOSE_ALPHA:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingSwitch:Z

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustSwitchPosition()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->onShowStateChanged()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    new-instance p1, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$openSideSwitch$onClickListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$openSideSwitch$onClickListener$1;-><init>(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTitleViewVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->isShowingSwitch()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->clearAnimator()V

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-static {p1, v1, v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateOutHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnimator:Landroid/animation/Animator;

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingSwitch:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->onShowStateChanged()V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public openSideView(Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mOnSideViewEventListener:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;->open()V

    :cond_0
    new-instance v2, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$openSideView$onClickListener$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$openSideView$onClickListener$1;-><init>(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTitleViewVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->isShowingComplete()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v4}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustPopupWidth(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->clearAnimator()V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    const-string v3, "mContentView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    const-string v2, "mContentView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->anchor:Landroid/view/ViewGroup;

    const-string v2, "anchor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    :goto_0
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    iget v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v5, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v6, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    sub-int/2addr v0, v6

    sub-int/2addr v5, v0

    invoke-static {v2, v3, v5}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vBackground:Landroid/view/View;

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_OPEN_ALPHA:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v4, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingComplete:Z

    iput-boolean v4, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustSwitchPosition()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->onShowStateChanged()V

    :cond_3
    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayListOut(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mOnSideViewEventListener:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;->close()V

    :cond_5
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->isShowingComplete()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->clearAnimator()V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    const-string v3, "mContentView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mContentView:Landroid/widget/LinearLayout;

    const-string v2, "mContentView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_6

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->anchor:Landroid/view/ViewGroup;

    const-string v2, "anchor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    :goto_1
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    iget v3, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    iget v4, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    sub-int/2addr v0, v4

    sub-int/2addr v3, v0

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    invoke-static {v2, v3, v0}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateOutHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vBackground:Landroid/view/View;

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->SIDEVIEW_CLOSE_ALPHA:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingComplete:Z

    iput-boolean v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowing:Z

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->adjustSwitchPosition()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setTitleViewVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$openSideView$onClickListener$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$openSideView$onClickListener$2;-><init>(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vMaskView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setClickable(Z)V

    return-void
.end method

.method public final setAddition(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleAddition:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleAddition:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setAnchor(Landroid/widget/FrameLayout;)V
    .locals 3
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnchor:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    const-string v0, "mAnchor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->generateParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final setMAnchor(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mAnchor:Landroid/view/ViewGroup;

    return-void
.end method

.method protected final setMEndX(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mEndX:I

    return-void
.end method

.method protected final setMFixEdgeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mFixEdgeWidth:I

    return-void
.end method

.method protected final setMIsMoveInit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoveInit:Z

    return-void
.end method

.method protected final setMIsMoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsMoved:Z

    return-void
.end method

.method protected final setMIsShowingComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingComplete:Z

    return-void
.end method

.method protected final setMIsShowingSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mIsShowingSwitch:Z

    return-void
.end method

.method protected final setMMaxScrollPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMaxScrollPosition:I

    return-void
.end method

.method protected final setMMiddlePosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mMiddlePosition:I

    return-void
.end method

.method public final setMOnSideViewEventListener(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mOnSideViewEventListener:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    return-void
.end method

.method protected final setMScreenWidth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mScreenWidth:I

    return-void
.end method

.method protected final setMSideAreaWidth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mSideAreaWidth:I

    return-void
.end method

.method protected final setMStartX(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartX:I

    return-void
.end method

.method protected final setMStartY(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mStartY:I

    return-void
.end method

.method public final setTitleSwitch(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleSwitch:Lcom/miui/video/player/service/setting/views/SwitchButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleSwitch:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleAddition:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/player/online/R$color;->c_white_60:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleSwitch:Lcom/miui/video/player/service/setting/views/SwitchButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vTitleAddition:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/player/online/R$color;->c_white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public final setTitleViewVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->mTitleLayout:Landroid/view/View;

    const-string v1, "mTitleLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->vBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
