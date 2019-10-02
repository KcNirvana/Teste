.class abstract Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "PlayerBaseFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/IPlayerFragment;
.implements Lcom/miui/video/biz/videoplus/player/IPlayerController;
.implements Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$OnPlayerContentListener;
.implements Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;
.implements Lcom/miui/video/biz/videoplus/player/widget/ITransformView;


# static fields
.field static final EXTRA_KEY_AUTO_PLAY:Ljava/lang/String; = "key_auto_play"

.field static final EXTRA_KEY_ENTER_TRANSITION:Ljava/lang/String; = "key_enter_transition"

.field static final EXTRA_KEY_POSITION:Ljava/lang/String; = "key_position"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

.field private mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

.field private mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

.field protected mIsFailedVideo:Z

.field private mIsFragmentShowing:Z

.field private mIsInPipMode:Z

.field private mIsLandscape:Z

.field private mIsProcessingEnterTransition:Z

.field private mIsUserLockRotate:Z

.field private mIsViewCreated:Z

.field private mIsVolumeBrightEnable:Z

.field protected mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

.field protected mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

.field private mMediaView:Landroid/view/View;

.field private mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

.field private mNeedEnterTransition:Z

.field protected mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

.field protected mPosition:I

.field private mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

.field protected mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

.field private mShareScreenText:Landroid/widget/TextView;

.field private mShareScreenView:Landroid/view/View;

.field private mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsUserLockRotate:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsVolumeBrightEnable:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsFailedVideo:Z

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private getRectInPosition(I)Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->findRectInList(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private initContentView()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setScrollView(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getContentViewId()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_share_screen_view:I

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->fl_content_layout:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->fl_share_screen_layout:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenView:Landroid/view/View;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->tv_share_screen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onInflateContentView(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setContentView(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)V

    return-void
.end method

.method private initDetailView()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->setScrollView(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getDetailViewId()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onInflateDetailView(Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$3;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setDetailView(Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;)V

    return-void
.end method


# virtual methods
.method public attachMediaController(Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    return-void
.end method

.method public attachShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    return-void
.end method

.method public connectDevice(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->connectDevice(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->hideMoreDialog()V

    return-void
.end method

.method public disconnectDevice()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->disconnectDevice()V

    :cond_0
    return-void
.end method

.method public enterPip()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isSupportPipMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->hideMoreDialog()V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->enterPictureInPictureMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getContentViewId()I
.end method

.method protected abstract getDetailViewId()I
.end method

.method public getFoundDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->getFoundDevices()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageController()Lcom/miui/video/biz/videoplus/player/IPlayerImageController;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/IPlayerImageController;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    check-cast v0, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    check-cast v0, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    :goto_0
    return-object v0
.end method

.method public getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    :goto_0
    return-object v0
.end method

.method protected hideController(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->hideController(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->hideController()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->smoothScrollTo(II)V

    :cond_1
    return-void
.end method

.method public hideMoreDialog()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    :cond_0
    return-void
.end method

.method protected hideShareScreenView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initFindViews()V
    .locals 6

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->scroll_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->edit_mask_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->cb_select:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setCheckBox(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getIsParsed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PlayerBaseFragment"

    const-string v3, " 0 VideoInfo.parse"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17

    invoke-static {v0, v3}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setRotation(I)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDuration(J)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsParsed(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsParsed(Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_getthumbs_crash:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    iput-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsFailedVideo:Z

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v0

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setMediaSize(II)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setMediaSize(II)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setMediaSize(II)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setMediaSize(II)V

    :goto_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    const/16 v3, 0x8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v4}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x0

    :cond_7
    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setVisibility(I)V

    :goto_3
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->initContentView()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->initDetailView()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setTransformView(Lcom/miui/video/biz/videoplus/player/widget/ITransformView;)V

    iput-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsViewCreated:Z

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsFragmentShowing:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onFragmentShow()V

    :cond_9
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onOrientationChanged(Z)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mNeedEnterTransition:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPosition:I

    invoke-direct {p0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getRectInPosition(I)Landroid/graphics/RectF;

    move-result-object v2

    new-instance v3, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$1;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)V

    new-instance v4, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$2;

    invoke-direct {v4, p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$2;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->postEnterTransition(Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mNeedEnterTransition:Z

    :cond_b
    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setGestureListener(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$OnPlayerContentListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setOnPlayerScrollListener(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$4;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isConnectedDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->isConnectedDevice()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFragmentShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsFragmentShowing:Z

    return v0
.end method

.method public isImage()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isInPipMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsInPipMode:Z

    return v0
.end method

.method protected isLandscape()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsLandscape:Z

    return v0
.end method

.method protected isNeedEnterTransition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mNeedEnterTransition:Z

    return v0
.end method

.method protected isProcessingEnterTransition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsProcessingEnterTransition:Z

    return v0
.end method

.method public isShareScreenServiceRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->isShareScreenServiceRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isShowingController()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onAlphaChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->setViewAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->updateBackgroundAlpha(F)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPosition:I

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getRectInPosition(I)Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$5;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$5;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)V

    new-instance v3, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$6;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$6;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->postExitTransition(Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onOrientationChanged(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_enter_transition"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mNeedEnterTransition:Z

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mNeedEnterTransition:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsProcessingEnterTransition:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_position"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPosition:I

    return-void
.end method

.method protected onDataChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_player_share_screen_connect_fail:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method

.method public onDeviceConnectSuccess()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenText:Landroid/widget/TextView;

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_share_screen_in_device:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDeviceDisconnected()V
    .locals 0

    return-void
.end method

.method public onDeviceListChanged()V
    .locals 0

    return-void
.end method

.method public onEnterEditMode()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->resetMatrix()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setVisibility(I)V

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result v2

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/miui/video/biz/videoplus/R$dimen;->dp_175:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    sub-int/2addr v2, v0

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/miui/video/biz/videoplus/R$dimen;->dp_37:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v4, v0, v2}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setClickAreaMargin(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_30:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v2, v0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setClickAreaMargin(II)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->setEditMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableSingleTap(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableDoubleTap(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableDrag(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableScale(Z)V

    return-void
.end method

.method protected onEnterTransitionEnd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onEnterTransitionEnd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsProcessingEnterTransition:Z

    return-void
.end method

.method protected onEnterTransitionStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onEnterTransitionStart()V

    return-void
.end method

.method public onExitCancel()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onAlphaChanged(F)V

    return-void
.end method

.method public onExitConfirm()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onBackPressed()Z

    return-void
.end method

.method public onExitEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mEditMaskView:Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->setEditMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableSingleTap(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableDoubleTap(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableDrag(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableScale(Z)V

    return-void
.end method

.method public onExitStart()V
    .locals 0

    return-void
.end method

.method protected onExitTransitionEnd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onExitTransitionEnd()V

    return-void
.end method

.method protected onExitTransitionStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onExitTransitionStart()V

    return-void
.end method

.method protected onFragmentHide(Z)V
    .locals 2

    invoke-virtual {p0, p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->attachMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->attachPlayerController(Lcom/miui/video/biz/videoplus/player/IPlayerController;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->scrollTo(II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->resetMatrix()V

    :cond_1
    return-void
.end method

.method protected onFragmentShow()V
    .locals 5

    invoke-virtual {p0, p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->attachMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->attachPlayerController(Lcom/miui/video/biz/videoplus/player/IPlayerController;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->hideMoreDialog()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isConnectedDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenText:Landroid/widget/TextView;

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_share_screen_in_device:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected abstract onInflateContentView(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)V
.end method

.method protected abstract onInflateDetailView(Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;)V
.end method

.method public onLandscapeMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setLandscapeMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->resetMatrixIfScaled()V

    return-void
.end method

.method protected onMoreDialogDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    return-void
.end method

.method protected onOrientationChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsLandscape:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsVolumeBrightEnable:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    return-void
.end method

.method public onPip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsInPipMode:Z

    return-void
.end method

.method public onPortraitMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setLandscapeMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->resetMatrixIfScaled()V

    return-void
.end method

.method public onScrollBegin()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isShowingController()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->showController(Z)V

    :cond_0
    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    return-void
.end method

.method public onServiceStarted()V
    .locals 0

    return-void
.end method

.method public onServiceStopped()V
    .locals 0

    return-void
.end method

.method public onSingleTap()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsProcessingEnterTransition:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isShowingController()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->hideController(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->showController(Z)V

    :goto_0
    return-void
.end method

.method public onUserLockRotate()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableSingleTap(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableDoubleTap(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableDrag(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableScale(Z)V

    iput-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsUserLockRotate:Z

    return-void
.end method

.method public onUserUnLockRotate()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableSingleTap(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableDoubleTap(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableDrag(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableScale(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsUserLockRotate:Z

    iget-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsVolumeBrightEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onVolumeBrightEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    iget-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsLandscape:Z

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setLandscapeMode(Z)V

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsVolumeBrightEnable:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableVolume(Z)V

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsLandscape:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->setEnableVolume(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setScrollEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVolumeOrBrightChanged(F)V
    .locals 0

    return-void
.end method

.method public onVolumeOrBrightEnd()V
    .locals 0

    return-void
.end method

.method public onVolumeOrBrightStart(F)V
    .locals 0

    return-void
.end method

.method public processFragmentHide(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsFragmentShowing:Z

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onFragmentHide(Z)V

    return-void
.end method

.method public processFragmentShow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsFragmentShowing:Z

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mIsViewCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onFragmentShow()V

    :cond_0
    return-void
.end method

.method public registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    :cond_0
    return-void
.end method

.method public releaseShareScreenService()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->releaseShareScreenService()V

    :cond_0
    return-void
.end method

.method public setData(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDataChanged()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_player:I

    return v0
.end method

.method public setPlayerActivity(Lcom/miui/video/biz/videoplus/player/IPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    return-void
.end method

.method protected showController(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->showController(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->showController()V

    return-void
.end method

.method public showMoreDialog(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->hideMoreDialog()V

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->bindPlayerController(Lcom/miui/video/biz/videoplus/player/IPlayerController;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->setRootView(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMoreDialog:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$7;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method protected showShareScreenView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mMediaView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startShareScreenService()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->startShareScreenService()V

    :cond_0
    return-void
.end method

.method public stopShareScreenService()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->stopShareScreenService()V

    :cond_0
    return-void
.end method

.method public unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    :cond_0
    return-void
.end method
