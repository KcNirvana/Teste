.class public Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;
.super Landroid/widget/FrameLayout;
.source "FrameLocalController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$MyLayoutManager;,
        Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;,
        Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;
    }
.end annotation


# static fields
.field public static final CURSOR_WIDTH:I

.field public static final FRAME_HEIGHT:I

.field public static final FRAME_WIDTH:I

.field private static final STATE_NONE:I = -0x1

.field private static final STATE_PAUSE:I = 0x2

.field private static final STATE_PLAY:I = 0x1

.field private static final STATE_PREVIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocalController"


# instance fields
.field private is8kVideo:Z

.field private isAnimRunEffective:Z

.field private isLandScape:Z

.field private isOrientationLand:Z

.field private isTouch:Z

.field private isUpdating:Z

.field private lastValue:I

.field private mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mCurrentPos:J

.field private mDuration:J

.field private mHasLoadBitmapList:Z

.field private mHeight:I

.field private mIsShowing:Z

.field private mLength:I

.field private mMeasureWidth:I

.field private mOffSet:I

.field private mOffSetTruth:I

.field private mPaddingWidth:I

.field private mPendingSeekPositionAtPreview:I

.field private mPlaySpeed:F

.field private mPlayState:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mScrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

.field private mScrollOffSet:I

.field private mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mUrl:Ljava/lang/String;

.field private mWidth:I

.field private onScrollChangeListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private updateRunning:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->frame_controller_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->FRAME_WIDTH:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->dp_41:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->FRAME_HEIGHT:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->frame_controller_center_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->CURSOR_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollOffSet:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSetTruth:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mWidth:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mHeight:I

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->is8kVideo:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPlaySpeed:F

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCount:I

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isUpdating:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isTouch:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isAnimRunEffective:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isLandScape:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mIsShowing:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isOrientationLand:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPlayState:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPendingSeekPositionAtPreview:I

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;-><init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->onScrollChangeListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    new-instance p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$2;-><init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->updateRunning:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isTouch:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isTouch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->lastValue:I

    return p0
.end method

.method static synthetic access$1102(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->lastValue:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPaddingWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCurrentPos:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCurrentPos:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    return p0
.end method

.method static synthetic access$302(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSetTruth:I

    return p0
.end method

.method static synthetic access$402(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSetTruth:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->updateFrame(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPendingSeekPositionAtPreview:I

    return p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    return p0
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_controller_frame:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->frame_controller_recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$MyLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$MyLayoutManager;-><init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->onScrollChangeListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private initLength()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->frame_controller_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    mul-int v0, v0, v1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    :cond_0
    return-void
.end method

.method private scroll(I)V
    .locals 3

    const-string v0, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame test controller scroll mOffSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->lastValue:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;-><init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private scroll(JJZF)V
    .locals 5

    const-string v0, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scroll start  current\uff50osition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isAnimRunEffective:Z

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    const-string p1, "LocalController"

    const-string p2, " scroll end "

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p5, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget p5, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    const/4 v0, 0x0

    if-gtz p5, :cond_2

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isAnimRunEffective:Z

    return-void

    :cond_2
    const-string p5, "LocalController"

    const-string v1, " scroll go on "

    invoke-static {p5, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p5, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mHasLoadBitmapList:Z

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isAnimRunEffective:Z

    sub-long/2addr p3, p1

    long-to-int p3, p3

    const-string p4, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, p3, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p3, :cond_3

    const-string p1, "LocalController"

    const-string p2, " time error"

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget p4, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    int-to-long v1, p4

    mul-long v1, v1, p1

    iget-wide v3, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    div-long/2addr v1, v3

    long-to-int p4, v1

    iput p4, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollOffSet:I

    iget-object p4, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p4

    iput p4, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    iput p4, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSetTruth:I

    iget p4, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    int-to-long v1, p4

    iget-wide v3, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    mul-long v1, v1, v3

    iget p4, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    int-to-long v3, p4

    div-long/2addr v1, v3

    long-to-int p4, v1

    int-to-long v1, p4

    iput-wide v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCurrentPos:J

    iget-wide v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCurrentPos:J

    sub-long v1, p1, v1

    iget p4, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    int-to-long v3, p4

    mul-long v1, v1, v3

    iget-wide v3, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    div-long/2addr v1, v3

    long-to-int p4, v1

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPlayState:I

    if-nez v1, :cond_4

    const-string p1, "LocalController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " STATE_PREVIEW return mPendingSeekPositionAtPreview:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPendingSeekPositionAtPreview:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz p4, :cond_5

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p4, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCurrentPos:J

    :cond_5
    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPlayState:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "LocalController"

    const-string p2, " STATE_PAUSE"

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "LocalController"

    const-string p2, " STATE_PREVIEW"

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_0
    :pswitch_2
    const/4 p1, 0x2

    new-array p1, p1, [I

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollOffSet:I

    aput p2, p1, v0

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    aput p2, p1, p5

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->lastValue:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;-><init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-float p2, p3

    div-float/2addr p2, p6

    float-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private sdf()V
    .locals 0

    return-void
.end method

.method private updateFrame(Z)V
    .locals 5

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    mul-long v0, v0, v2

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    mul-int/lit16 p1, p1, 0x3e8

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    div-int/2addr p1, v2

    const-string v2, "LocalController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " yqf_ttt mPendingSeekPositionAtPreview 2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    invoke-interface {v2, v0, v1, p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;->scrollPosition(JI)V

    long-to-int p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCurrentPos:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isUpdating:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mIsShowing:Z

    return-void
.end method

.method public initPos(I)V
    .locals 4

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    mul-int v0, v0, p1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->scroll(I)V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCurrentPos:J

    return-void
.end method

.method public is8kVideo()Z
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mWidth:I

    const/16 v1, 0x10e0

    const/16 v2, 0x1e00

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mHeight:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mWidth:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mHeight:I

    if-lt v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onGlobalLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mMeasureWidth:I

    const-string v0, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMeasureWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mMeasureWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public orientationChange(ZI)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isOrientationLand:Z

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPendingSeekPositionAtPreview:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->updateRunning:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isLandScape:Z

    const-wide/16 v0, 0x1f4

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isOrientationLand:Z

    if-eqz p1, :cond_0

    const-string p1, "LocalController"

    const-string p2, " syncPositionAtPreview 0 land "

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->updateRunning:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isLandScape:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isOrientationLand:Z

    if-nez p1, :cond_1

    const-string p1, "LocalController"

    const-string p2, " syncPositionAtPreview 1 portrait "

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->updateRunning:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    const-string p1, "LocalController"

    const-string p2, " "

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshRecyclerView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPaddingWidth:I

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->frame_controller_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->initLength()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;-><init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isAnimRunEffective:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    :cond_1
    return-void
.end method

.method public setBitmaps(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getMeasuredWidth()I

    move-result v3

    if-nez p2, :cond_0

    add-int v0, v1, v2

    const-string p2, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMeasureWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPaddingWidth:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mHasLoadBitmapList:Z

    iget-boolean p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isTouch:Z

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->frame_controller_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->initLength()V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;-><init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setBitmapsInit(Z)V
    .locals 4

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getMeasuredWidth()I

    move-result v3

    if-nez p1, :cond_0

    add-int v0, v1, v2

    const-string p1, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMeasureWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPaddingWidth:I

    if-eq v0, p1, :cond_1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPaddingWidth:I

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mHasLoadBitmapList:Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->frame_controller_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCount:I

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->initLength()V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;-><init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCount:I

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    const-string v0, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame test local duration -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isLandScape:Z

    return-void
.end method

.method public setLandscapeWidth(I)V
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPaddingWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPaddingWidth:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->refreshRecyclerView()V

    :cond_0
    return-void
.end method

.method public setOnScrollChangeListener(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    return-void
.end method

.method public setPauseState()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPlayState:I

    return-void
.end method

.method public setPlayingState()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPlayState:I

    return-void
.end method

.method public setPreviewState()V
    .locals 4

    const-string v0, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPreviewState mOffSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPlayState:I

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isAnimRunEffective:Z

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1

    const-string v1, "LocalController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRecyclerView.scrollBy   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    rsub-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSetTruth:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mCurrentPos:J

    :cond_1
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame test local duration -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setWidthHeight(II)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mWidth:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->is8kVideo()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->is8kVideo:Z

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mIsShowing:Z

    return-void
.end method

.method public stopScroll()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-string v0, "LocalController"

    const-string v1, " stopScroll"

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isAnimRunEffective:Z

    :cond_0
    return-void
.end method

.method public stopUpdatePosition()V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->startDecoder(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-string v0, "LocalController"

    const-string v1, " stopUpdatePosition"

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isAnimRunEffective:Z

    :cond_0
    return-void
.end method

.method public syncPositionAtPreview(I)V
    .locals 4

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mPlayState:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p1, "LocalController"

    const-string v0, " STATE_PAUSE"

    invoke-static {p1, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string v0, "LocalController"

    const-string v1, " syncPositionAtPreview"

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LocalController"

    const-string v1, " syncPositionAtPreview continue"

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mLength:I

    mul-int p1, p1, v0

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    div-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollOffSet:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSet:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mOffSetTruth:I

    const-string v0, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " syncPositionAtPreview continue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollOffSet:I

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mScrollOffSet:I

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePosition(JZF)V
    .locals 8

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isLandScape:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isOrientationLand:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isLandScape:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->isOrientationLand:Z

    if-nez v0, :cond_2

    :goto_0
    iget-wide v4, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->mDuration:J

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->scroll(JJZF)V

    return-void

    :cond_2
    const-string p1, "LocalController"

    const-string p2, " updatePosition return isLandScape not match "

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->stopScroll()V

    return-void
.end method
