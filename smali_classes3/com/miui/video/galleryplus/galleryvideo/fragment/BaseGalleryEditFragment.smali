.class public abstract Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;
.super Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;
.source "BaseGalleryEditFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;


# static fields
.field protected static final MSG_HIDE_PREVIEW_VIEW:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BaseGalleryEditFragment"

.field protected static final TOKEN_PAUSE_DECODER:Ljava/lang/String; = "TOKEN_PAUSE_DECODER"

.field protected static final TOKEN_PREVIEW:Ljava/lang/String; = "TOKEN_PREVIEW"

.field protected static final TOKEN_START_DECODER:Ljava/lang/String; = "TOKEN_START_DECODER"


# instance fields
.field private mBottomMenu:Landroid/widget/RelativeLayout;

.field private mBottomPanel:Landroid/widget/RelativeLayout;

.field private mBtnCancel:Landroid/widget/ImageView;

.field private mBtnOk:Landroid/widget/ImageView;

.field protected mBtnPlay:Landroid/widget/ImageView;

.field protected mCanHidePreviewImmediately:Z

.field private mControllerContainer:Landroid/widget/FrameLayout;

.field private mIsInMultiWindowMode:Z

.field protected mIsPreviewing:Z

.field private mLayoutContainer:Landroid/view/View;

.field private mMenuText:Landroid/widget/TextView;

.field private mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

.field private mPreviewTime:I

.field protected mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

.field private mStatusBar:Landroid/view/View;

.field private mTopPanel:Landroid/widget/LinearLayout;

.field private mVideoContainer:Landroid/widget/FrameLayout;

.field protected mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mCanHidePreviewImmediately:Z

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$ONE7ofjB2Ufb78CN6vnQFUDVJNc;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$ONE7ofjB2Ufb78CN6vnQFUDVJNc;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$lcUPdPNn_vnctuWFPcdhvayrS7g;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$lcUPdPNn_vnctuWFPcdhvayrS7g;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mOnSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$wi2opA43T4ZTzXLCVoPdZDTXQIo;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$wi2opA43T4ZTzXLCVoPdZDTXQIo;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    return-void
.end method

.method private initPreviewView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    invoke-virtual {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setRenderCallback(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVideoSize(II)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVideoSize(II)V

    :goto_1
    return-void
.end method

.method private initVideoView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->createUrlMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setOnPreparedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mOnSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setOnSeekCompleteListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setOnCompletionListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setOnErrorListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public static synthetic lambda$finishPreviewFrame$10(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->pauseDecoder(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$initViewsEvent$4(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickCancel()V

    return-void
.end method

.method public static synthetic lambda$initViewsEvent$5(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickOk()V

    return-void
.end method

.method public static synthetic lambda$initViewsEvent$6(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickPlay()V

    return-void
.end method

.method public static synthetic lambda$initViewsEvent$7(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickPause()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onVideoPrepared()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onVideoSeekComplete()V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onVideoPlayComplete()V

    return-void
.end method

.method public static synthetic lambda$onSurfaceCreated$11(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setCurrentPosition(J)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->pauseDecoder(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onSurfaceDestroyed$12(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->startDecoder(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$preparePreviewFrame$8(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->startDecoder(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$showPreviewFrame$9(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setCurrentPosition(J)V

    return-void
.end method

.method private setStatusBarHeight()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mStatusBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mStatusBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showErrorDialog(I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateNavigationPadding()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mIsInMultiWindowMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mLayoutContainer:Landroid/view/View;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mLayoutContainer:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createUrlMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final finishPreviewFrame()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mIsPreviewing:Z

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mCanHidePreviewImmediately:Z

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewTime:I

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->accurateSeekTo(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "TOKEN_PREVIEW"

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->removeAsyncTask(Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$pUf9ZHY0CsYaa8uc9rpfEXcJ2R0;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$pUf9ZHY0CsYaa8uc9rpfEXcJ2R0;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    const-string v1, "TOKEN_PAUSE_DECODER"

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract getControllerView()Landroid/view/View;
.end method

.method protected final getPositionByPercent(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public initFindViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->TAG:Ljava/lang/String;

    const-string v1, " galleryState is null, return"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget v0, Lcom/miui/video/galleryplus/R$id;->layout_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mLayoutContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/galleryplus/R$id;->layout_top_panel:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mTopPanel:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/galleryplus/R$id;->layout_bottom_panel:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBottomPanel:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/galleryplus/R$id;->layout_bottom_menu:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBottomMenu:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/galleryplus/R$id;->layout_controller:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mControllerContainer:Landroid/widget/FrameLayout;

    sget v0, Lcom/miui/video/galleryplus/R$id;->layout_video_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoContainer:Landroid/widget/FrameLayout;

    sget v0, Lcom/miui/video/galleryplus/R$id;->status_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mStatusBar:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->setStatusBarHeight()V

    sget v0, Lcom/miui/video/galleryplus/R$id;->video_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->initVideoView()V

    sget v0, Lcom/miui/video/galleryplus/R$id;->preview_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->initPreviewView()V

    sget v0, Lcom/miui/video/galleryplus/R$id;->btn_play:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnPlay:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/galleryplus/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnCancel:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/galleryplus/R$id;->btn_ok:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnOk:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->setBtnOkEnabled(Z)V

    sget v1, Lcom/miui/video/galleryplus/R$id;->text_menu_name:I

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mMenuText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mControllerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getControllerView()Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->showNavigationBar(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->requestOrientation(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$P-OrB456y6EEAmBEKgoCqCmDdX4;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$P-OrB456y6EEAmBEKgoCqCmDdX4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnOk:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$0mQCtUd94IAy0yht6Tdm0hCXuxw;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$0mQCtUd94IAy0yht6Tdm0hCXuxw;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnPlay:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$yC589Tq1kD_QaC72pQcyjyy6Iiw;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$yC589Tq1kD_QaC72pQcyjyy6Iiw;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$YTPaKyrYtjx0rMttutqbxIhUdD0;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$YTPaKyrYtjx0rMttutqbxIhUdD0;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method lossVideoFocus()V
    .locals 0

    return-void
.end method

.method protected final notifyGallerySaveSuccess(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getResult()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->getResult()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->setResult(ILandroid/content/Intent;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.EDITOR_RETURN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "video/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickCancel()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onClickCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->finish()V

    return-void
.end method

.method protected onClickOk()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->pause()V

    return-void
.end method

.method protected onClickPause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->pause()V

    return-void
.end method

.method protected onClickPlay()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->start()V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mCanHidePreviewImmediately:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->runUIMessage(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onDestroy()V

    invoke-static {}, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->destroyDialog()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->close()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mIsInMultiWindowMode:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->showNavigationBar(Z)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->updateNavigationPadding()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onPause()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onResume()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickPlay()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onStart()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->updateNavigationPadding()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onStop()V

    return-void
.end method

.method public onSurfaceChanged(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 1

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$9ILN9Vc6kErBIbZojMwkzhBuMOI;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$9ILN9Vc6kErBIbZojMwkzhBuMOI;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    const-string v0, "TOKEN_PAUSE_DECODER"

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceDestroyed(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 1

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$tF3mDao17c7AqnFk5Jhm8Isgx-s;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$tF3mDao17c7AqnFk5Jhm8Isgx-s;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    const-string v0, "TOKEN_START_DECODER"

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const/16 p1, 0x64

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onVideoError(II)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnPlay:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->close()V

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->showErrorDialog(I)V

    return-void
.end method

.method protected onVideoPlayComplete()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVisibility(I)V

    return-void
.end method

.method protected onVideoPrepared()V
    .locals 0

    return-void
.end method

.method protected onVideoSeekComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mCanHidePreviewImmediately:Z

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mIsPreviewing:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->runUIMessage(I)V

    :cond_0
    return-void
.end method

.method protected final preparePreviewFrame()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mIsPreviewing:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->removeUIMessages(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->pause()V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$TLcD4hg0HYR6a4NqwwSxJeIUiqc;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$TLcD4hg0HYR6a4NqwwSxJeIUiqc;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    const-string v1, "TOKEN_START_DECODER"

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method protected final setBtnOkEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mBtnOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/galleryplus/R$layout;->fragment_gallery_edit:I

    return v0
.end method

.method protected final setMenuText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mMenuText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final showPreviewFrame(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPreviewFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mPreviewTime:I

    const-string p1, "TOKEN_PREVIEW"

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->removeAsyncTask(Ljava/lang/Object;)V

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$A5vpvmI32NaVPHIPBAkgkMkA9S4;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$A5vpvmI32NaVPHIPBAkgkMkA9S4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V

    const-string v0, "TOKEN_PREVIEW"

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
