.class public Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;
.super Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;
.source "GalleryPlayerFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$LoadSeekBarTask;,
        Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;,
        Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;
    }
.end annotation


# static fields
.field private static final MSG_GET_SEEK_BAR_BITMAP_LIST:I = 0x66

.field private static final MSG_HIDE_CONTROLLER:I = 0x69

.field private static final MSG_HIDE_GALLERY:I = 0x68

.field private static final MSG_HIDE_PREVIEW_VIEW:I = 0x67

.field private static final MSG_SHOW_GALLERY_PREPARED:I = 0x65

.field private static final MSG_SHOW_GALLERY_TIMEOUT:I = 0x64

.field private static final NX_PHONE_BOTTOM_HEIGHT:I = 0xd5

.field private static final TAG:Ljava/lang/String; = "GalleryPlayerFragment"

.field private static final TOKEN_PAUSE_DECODER:Ljava/lang/String; = "TOKEN_PAUSE_DECODER"

.field private static final TOKEN_PREVIEW:Ljava/lang/String; = "TOKEN_PREVIEW"

.field private static final TOKEN_START_DECODER:Ljava/lang/String; = "TOKEN_START_DECODER"

.field private static final XX_PHONE_BOTTOM_HEIGHT:I = 0xb7

.field private static final X_PHONE_BOTTOM_HEIGHT:I = 0x7b


# instance fields
.field private isShowing:Z

.field private m8KProgress:Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;

.field protected mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnEdit:Landroid/widget/TextView;

.field private mCanEdit:Z

.field private mContentView:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameBackground:Landroid/view/View;

.field private mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

.field private mGalleryPreparedReceiver:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;

.field private mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

.field private mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

.field private mIsFirstStart:Z

.field private mLineBottom:Landroid/view/View;

.field private mMainPage:Landroid/view/View;

.field private mMainPagePosition:I

.field private mMenuHeight:I

.field private mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

.field private mPageCount:I

.field private mPlayCompleted:Z

.field private mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

.field mRecommendVideoContainer:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

.field private mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

.field private mReportRunnable:Ljava/lang/Runnable;

.field private mResultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

.field private mTopBar:Landroid/view/View;

.field private mTopBtnEdit:Landroid/widget/TextView;

.field private mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

.field public mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

.field private onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private scrollChangeListener:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPagePosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPlayCompleted:Z

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mIsFirstStart:Z

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mReportRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->scrollChangeListener:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$7;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mDataList:Ljava/util/List;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mResultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->recordUiAccessCalculateEvent()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPagePosition:I

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mCanEdit:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isUseCNLanguage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->handlePlayError(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setBottomPadding()V

    return-void
.end method

.method static synthetic access$1602(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPlayCompleted:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mResultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->unRegisterGalleryPreparedReceiver()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setResultToGallery(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPageCount:I

    return p0
.end method

.method static synthetic access$2100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideController(ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showRecommendView(Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showGallery(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->m8KProgress:Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;)Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->m8KProgress:Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContentView:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    return-object p0
.end method

.method private clearAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getCurrentPosition()J
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPlayCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private handlePlayError(II)V
    .locals 3

    const-string v0, "GalleryPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePlayError what:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->close()V

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showErrorDialog(I)V

    return-void
.end method

.method private hideController(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideNavigationBar()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->clearAnimations()V

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBar:Landroid/view/View;

    invoke-static {p1}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateOutTopViewQuick(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideEditBtn()V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getTimeLayout()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getTimeLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    sget v0, Lcom/miui/video/galleryplus/R$id;->bottom_controller_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateOutBottomViewQuick(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameBackground:Landroid/view/View;

    sget p2, Lcom/miui/video/galleryplus/R$color;->c_black:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isShowing:Z

    return-void
.end method

.method private hideEditBtn()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    return-void
.end method

.method private hideGallery()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.VIDEO_PLAYER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private initMainPage()V
    .locals 10

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->frame_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContentView:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->frame_surface:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->recommend_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mRecommendVideoContainer:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getRotation()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getRotation()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVideoSize(II)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVideoSize(II)V

    :goto_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    invoke-virtual {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setRenderCallback(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->frame_controller:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->pause_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v2, Lcom/miui/video/galleryplus/R$id;->ll_bottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v2, Lcom/miui/video/galleryplus/R$id;->btn_edit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v2, Lcom/miui/video/galleryplus/R$id;->img_edit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    iput-boolean v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mCanEdit:Z

    goto/16 :goto_4

    :pswitch_0
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->isSecret()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mCanEdit:Z

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    sget v2, Lcom/miui/video/galleryplus/R$drawable;->gallery_ai_music:I

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setImage(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$jOfsfCm4VrRo-PbhfVugC0DubCQ;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$jOfsfCm4VrRo-PbhfVugC0DubCQ;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    sget v2, Lcom/miui/video/galleryplus/R$drawable;->gallery_ai_music:I

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setImage(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$yYsS2JMRdt4XVF9KoImTvye5z9w;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$yYsS2JMRdt4XVF9KoImTvye5z9w;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->isSecret()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mCanEdit:Z

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    sget v4, Lcom/miui/video/galleryplus/R$string;->gallery_video_operate_text:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    sget v4, Lcom/miui/video/galleryplus/R$string;->gallery_video_operate_text:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/video/galleryplus/R$drawable;->gallery_btn_music:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    sget v2, Lcom/miui/video/galleryplus/R$drawable;->gallery_super_slow_edit:I

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setImage(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    sget v2, Lcom/miui/video/galleryplus/R$drawable;->gallery_super_slow_edit:I

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setImage(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$7RMbdeSbZvFTQ_XTk0bKgJQkZQs;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$7RMbdeSbZvFTQ_XTk0bKgJQkZQs;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$W0lAT9iKFJVsTe9yxF1300CUd-o;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$W0lAT9iKFJVsTe9yxF1300CUd-o;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$RM3CDEl4x01vXYHTpIuYuXLL08U;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$RM3CDEl4x01vXYHTpIuYuXLL08U;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$3Fjp6y4kgpI6hQi5wLuRiY1al1g;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$3Fjp6y4kgpI6hQi5wLuRiY1al1g;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->isSecret()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mCanEdit:Z

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    sget v4, Lcom/miui/video/galleryplus/R$string;->gallery_video_slow_edit:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    sget v4, Lcom/miui/video/galleryplus/R$string;->gallery_video_slow_edit:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/video/galleryplus/R$drawable;->gallery_btn_slow:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    sget v2, Lcom/miui/video/galleryplus/R$drawable;->gallery_slow_edit:I

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setImage(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    sget v2, Lcom/miui/video/galleryplus/R$drawable;->gallery_slow_edit:I

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setImage(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$2FnZHRz6tsP-5XkknCnCYwnvSQ8;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$2FnZHRz6tsP-5XkknCnCYwnvSQ8;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$774moVbtdvX84pcUAMemal7kWYc;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$774moVbtdvX84pcUAMemal7kWYc;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$6mLHCQRHpLGc7h0YzlM09nKv4K4;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$6mLHCQRHpLGc7h0YzlM09nKv4K4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$CLEr09ACEqU8wxZuQAvl_bz7TYE;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$CLEr09ACEqU8wxZuQAvl_bz7TYE;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setEditBtn()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const-string v2, "GalleryPlayerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMainPage menu height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMenuHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMenuHeight:I

    const/4 v3, -0x1

    if-gtz v2, :cond_7

    float-to-double v1, v1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    sub-double v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v4, v6

    const/16 v5, 0xb7

    if-gez v4, :cond_4

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_4
    const-wide/high16 v8, 0x4006000000000000L    # 2.75

    sub-double v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v4, v8, v6

    if-gez v4, :cond_5

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xd5

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_5
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v6

    if-gez v1, :cond_6

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x7b

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_7
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMenuHeight:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->ic_pause:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$pjQJ8srSN131xHzeoP5jcHPpGVs;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$pjQJ8srSN131xHzeoP5jcHPpGVs;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getSeekWhenPrepared()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->initData(JI)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->scrollChangeListener:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->setOnScrollChangeListener(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$LoadSeekBarTask;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$LoadSeekBarTask;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->initVideoView()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->playVideo()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initVideoView()V
    .locals 4

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setOnPreparedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setOnErrorListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setOnCompletionListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->asView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContentView:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->asView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContentView:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->getTransformView()Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    invoke-direct {v1, v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->setTransformView(Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContentView:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-virtual {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->setGestureListener(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->attachMediaPlayerControl(Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;)V

    return-void
.end method

.method private isUseCNLanguage()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const-string v1, "zh_CN"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$initFindViews$33(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->onBackPressed()Z

    return-void
.end method

.method public static synthetic lambda$initMainPage$34(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showSlowEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$35(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showSlowEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$36(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showSlowEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$37(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showSlowEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$38(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showMusicEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$39(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showMusicEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$40(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showMusicEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$41(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showMusicEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$42(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showMusicEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$43(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showMusicEditFragment()V

    return-void
.end method

.method public static synthetic lambda$initMainPage$44(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->pause()V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->onStop()V

    :cond_1
    invoke-static {}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportGalleryVideoPause()V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setResultToGallery(IZ)V

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showGallery(I)V

    return-void
.end method

.method public static synthetic lambda$onCreate$24(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->pauseDecoder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onExitConfirm$29()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$onExitConfirm$30(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setResultToGallery(IZ)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->finish()V

    return-void
.end method

.method public static synthetic lambda$onSurfaceCreated$45(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 2

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->setSurface(Ljava/lang/String;Landroid/view/Surface;I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$showGallery$31(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->startDecoder(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$showGalleryNotNeedResponse$32(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->startDecoder(Ljava/lang/String;)V

    return-void
.end method

.method private markVideoRef(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-direct {v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;-><init>()V

    invoke-virtual {v1, p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPath(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setMd5_path(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setRef(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/video/base/database/CLVDatabase;->saveLocalHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    :cond_0
    return-void
.end method

.method private playVideo()V
    .locals 3

    const-string v0, "GalleryPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVideo: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->start()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.gallery"

    invoke-direct {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->markVideoRef(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private recordUiAccessCalculateEvent()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ui"

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "miui"

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->getMIUIVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/AppUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version.incremental"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version.release"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ui_access_dau"

    const-string v2, "dau"

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->trackMiDev(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private registerGalleryPreparedReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryPreparedReceiver:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$1;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryPreparedReceiver:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryPreparedReceiver:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.miui.video.ACTION_GALLERY_PREPARED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setBottomPadding()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, v2, v2, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setBottomPadding(IIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideNavigationBarFull()V

    :cond_2
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setBottomPadding(IIII)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v0

    invoke-direct {p0, v2, v2, v2, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setBottomPadding(IIII)V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isShowing:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showNavigationBar()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setBottomPadding(IIII)V

    :cond_5
    :goto_0
    return-void
.end method

.method private setBottomPadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private setEditBtn()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mCanEdit:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isUseCNLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mCanEdit:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isUseCNLanguage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setResultToGallery(IZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "request_finish"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "relative_index"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "seek_time"

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "action_bar_visible"

    iget-boolean p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isShowing:Z

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setStatusBarHeight()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBar:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->statue_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenStatusBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showController(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showNavigationBar()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setBottomPadding()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->clearAnimations()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBar:Landroid/view/View;

    invoke-static {p1}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInTopView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showEditBtn()V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    sget v0, Lcom/miui/video/galleryplus/R$id;->bottom_controller_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInBottomViewQuick(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mLineBottom:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/base/utils/AndroidUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/miui/video/galleryplus/R$color;->c_black:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/miui/video/galleryplus/R$color;->color_fbfbfb:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isShowing:Z

    return-void
.end method

.method private showEditBtn()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mCanEdit:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isUseCNLanguage()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mCanEdit:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isUseCNLanguage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-static {v0}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateAlphaInQuick(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateAlphaInQuick(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-static {v0}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateAlphaInQuick(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method private showGallery(I)V
    .locals 3

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$qpa2oE7x5CYUAbGUwF5hCBxv9ec;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$qpa2oE7x5CYUAbGUwF5hCBxv9ec;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    const-string v1, "TOKEN_START_DECODER"

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->registerGalleryPreparedReceiver()V

    const/16 v0, 0x64

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->runUIMessage(IJ)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.VIDEO_PLAYER_RETURN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "relative_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "seek_time"

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "action_bar_visible"

    iget-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isShowing:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showGalleryNotNeedResponse(I)V
    .locals 4

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$f_0BJmIfIWuTHRxxWGQedVDFe1k;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$f_0BJmIfIWuTHRxxWGQedVDFe1k;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    const-string v1, "TOKEN_START_DECODER"

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.VIDEO_PLAYER_RETURN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPlayCompleted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getCurrentPosition()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "relative_index"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "seek_time"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "action_bar_visible"

    iget-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isShowing:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showMusicEditFragment()V
    .locals 2

    const-string v0, "super_slow_edit"

    invoke-static {v0}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportShowEditClick(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showGalleryNotNeedResponse(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryStateFactory;->createEditState(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;I)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showFragment(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V

    return-void
.end method

.method private showRecommendView(Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mRecommendVideoContainer:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    const-string v1, "gallery"

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mDataList:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->showRecommendView(Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;)V

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mRecommendVideoContainer:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->setVisibility(I)V

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->setIsShowRecommend(Z)V

    return-void
.end method

.method private showSlowEditFragment()V
    .locals 2

    const-string v0, "slow_edit"

    invoke-static {v0}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportShowEditClick(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showGalleryNotNeedResponse(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryStateFactory;->createEditState(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;I)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showFragment(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V

    return-void
.end method

.method private unRegisterGalleryPreparedReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryPreparedReceiver:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryPreparedReceiver:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryPreparedReceiver:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;

    return-void
.end method


# virtual methods
.method public attachGalleryState(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V
    .locals 0

    check-cast p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    return-void
.end method

.method public getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    return-object v0
.end method

.method protected hideNavigationBarFull()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1103

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_0

    const/16 v1, 0x3103

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/base/utils/AndroidUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initFindViews()V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$layout;->item_frame_video:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPage:Landroid/view/View;

    sget v0, Lcom/miui/video/galleryplus/R$id;->frame_vp:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    sget v1, Lcom/miui/video/galleryplus/R$id;->local_top_bar:I

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBar:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->top_btn_edit:I

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopBtnEdit:Landroid/widget/TextView;

    sget v1, Lcom/miui/video/galleryplus/R$id;->top_img_edit:I

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mTopImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    sget v1, Lcom/miui/video/galleryplus/R$id;->frame_bg:I

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameBackground:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->initMainPage()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setStatusBarHeight()V

    sget v1, Lcom/miui/video/galleryplus/R$id;->action_back:I

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$vr4bTm0sjG5eAN2djD9T21y83dU;

    invoke-direct {v3, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$vr4bTm0sjG5eAN2djD9T21y83dU;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPagePosition:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    sget v0, Lcom/miui/video/galleryplus/R$id;->top_bar_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/miui/video/galleryplus/R$id;->top_bar_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/miui/video/galleryplus/R$id;->top_bar_subtitle_divider:I

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/miui/video/galleryplus/R$id;->top_bar_location:I

    invoke-virtual {p0, v3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v4}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v4}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->isActionBarVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showController(ZZ)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideController(ZZ)V

    :goto_2
    return-void
.end method

.method lossVideoFocus()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->onStop()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setResultToGallery(IZ)V

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showGallery(I)V

    return-void
.end method

.method public onAlphaChanged(F)V
    .locals 3

    const-string v0, "GalleryPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame test onAlphaChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float p1, p1, p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameBackground:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->onExitConfirm()V

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setBottomPadding()V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContentView:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContentView:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->resetMatrix()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showEditBtn()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isShowing:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mBtnEdit:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mImgEdit:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->isShowRecommendFragment()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "GalleryPlayerFragment"

    const-string v0, "recommend is show"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideController(ZZ)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x600

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_2
    const-string p1, "GalleryPlayerFragment"

    const-string v0, "recommend is not show"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getSeekWhenPrepared()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->setSeekWhenPrepared(J)V

    :cond_1
    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$rf34EcTMA1izOSaoIJnkwGo4PFc;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$rf34EcTMA1izOSaoIJnkwGo4PFc;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    const-string v0, "TOKEN_PAUSE_DECODER"

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPagePosition:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPageCount:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getLeftUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMainPagePosition:I

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPageCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPageCount:I

    :cond_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getRightUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPageCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPageCount:I

    :cond_3
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mMenuHeight:I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onDestroy()V

    invoke-static {}, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->destroyDialog()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->unRegisterGalleryPreparedReceiver()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->close()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->onDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mReportRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onExitCancel()V
    .locals 2

    const-string v0, "GalleryPlayerFragment"

    const-string v1, "frame test onExitCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameBackground:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onExitConfirm()V
    .locals 4

    invoke-static {}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportPullBackEvent()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mContentView:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    sget-object v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$94A7T6N9ta8A9x_pdxo2Yc6f4ek;->INSTANCE:Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$94A7T6N9ta8A9x_pdxo2Yc6f4ek;

    new-instance v3, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$q-kKGb0DFzUdu9ognHDgLcQ9zkw;

    invoke-direct {v3, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$q-kKGb0DFzUdu9ognHDgLcQ9zkw;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->postExitTransition(Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExitStart()V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    iget-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isShowing:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showController(ZZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideController(ZZ)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setBottomPadding()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {v0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->isShowRecommendFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->requestAudioFocus(Z)V

    :cond_0
    return-void
.end method

.method public onSingleTap()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->isShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportImmersionEvent()V

    invoke-direct {p0, v1, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideController(ZZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->showController(ZZ)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onStart()V

    const-string v0, "GalleryPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {v2}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->isShowRecommendFragment()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {v0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->isShowRecommendFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->start()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->onStart()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->setBottomPadding()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mIsFirstStart:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mIsFirstStart:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getSeekWhenPrepared()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportGalleryVideoPlay(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onStop()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {v0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->isShowRecommendFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->onStop()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->pause()V

    :cond_2
    return-void
.end method

.method public onSurfaceChanged(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 1

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$e68AfePis4FA_4ivmTTvkPi4QF4;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$e68AfePis4FA_4ivmTTvkPi4QF4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->isActionBarVisible()Z

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideController(ZZ)V

    const/16 p1, 0x68

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->runUIMessage(IJ)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->hideGallery()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    check-cast p3, Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mFrameLocalController:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->is8kVideo()Z

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->setBitmaps(Ljava/util/List;Z)V

    goto :goto_0

    :pswitch_4
    const-string p1, "GalleryPlayerFragment"

    const-string p2, "showGallery prepared"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->finish()V

    goto :goto_0

    :pswitch_5
    const-string p1, "GalleryPlayerFragment"

    const-string p2, "showGallery timeout"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->finish()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/galleryplus/R$layout;->fragment_gallery_player:I

    return v0
.end method
