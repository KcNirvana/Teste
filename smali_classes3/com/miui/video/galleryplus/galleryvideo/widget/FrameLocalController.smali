.class public Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;
.super Landroid/widget/FrameLayout;
.source "FrameLocalController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyLayoutManager;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAnimUpdateListener;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;
    }
.end annotation


# static fields
.field public static final CURSOR_WIDTH:I

.field public static final FRAME_HEIGHT:I

.field public static final FRAME_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "LocalController"


# instance fields
.field private isTouch:Z

.field private m8KBitmap:Landroid/graphics/Bitmap;

.field private mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;

.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPosition:I

.field private mCurrentText:Landroid/widget/TextView;

.field private mDuration:J

.field private mDurationText:Landroid/widget/TextView;

.field private mFrameCount:I

.field private mHasDestroyed:Z

.field private mHasPrepared:Z

.field private mIs8KVideo:Z

.field private mMeasureWidth:I

.field private mMediaPlayerControl:Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;

.field private mPadding:I

.field private mRecyclerView:Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mScrollChangeListener:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

.field private mScrollLength:I

.field private mScrollOffSet:I

.field private mTimeText:Landroid/view/View;

.field private mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private timeRunnable:Ljava/lang/Runnable;

.field private updateFrameRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$dimen;->dp_59_03:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$dimen;->dp_38_66:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_HEIGHT:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$dimen;->frame_controller_center_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->CURSOR_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mBitmaps:Ljava/util/List;

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mHasDestroyed:Z

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->isTouch:Z

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->updateFrameRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$4;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->timeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/miui/video/galleryplus/R$layout;->gallery_video_preview_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/miui/video/galleryplus/R$id;->frame_controller_recycler:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mRecyclerView:Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

    sget p2, Lcom/miui/video/galleryplus/R$id;->controller_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mTimeText:Landroid/view/View;

    sget p2, Lcom/miui/video/galleryplus/R$id;->text_cur:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentText:Landroid/widget/TextView;

    sget p2, Lcom/miui/video/galleryplus/R$id;->text_dur:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDurationText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mRecyclerView:Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyLayoutManager;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mRecyclerView:Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;

    invoke-virtual {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mRecyclerView:Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

    new-instance p3, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;

    invoke-direct {p3, p0, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;)V

    invoke-virtual {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mRecyclerView:Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

    invoke-virtual {p2, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->draw8KBitmap()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollOffSet:I

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollOffSet:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->isLayoutRTL()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollLength:I

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->updateTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->scrollRecyclerView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mMediaPlayerControl:Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mHasDestroyed:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->updateFrameRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mIs8KVideo:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->isTouch:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mBitmaps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->isTouch:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->m8KBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mFrameCount:I

    return p0
.end method

.method static synthetic access$2300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mPadding:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->startAutoScroll()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mTimeText:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollChangeListener:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$602(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->stopAutoScroll()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->timeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/base/common/task/WeakHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    return-object p0
.end method

.method private draw8KBitmap()V
    .locals 6

    sget v0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    sget v1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->m8KBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->m8KBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    add-int/lit8 v2, v2, -0x2

    sget v3, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_HEIGHT:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/miui/video/galleryplus/R$color;->gallery_8k_frame_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    add-int/lit8 v2, v2, -0x2

    sget v3, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    sget v5, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_HEIGHT:I

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/galleryplus/R$color;->gallery_8k_frame_divider_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private formatVideoDuration(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    const-wide/16 v2, 0xe10

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    div-long v4, p1, v2

    mul-long v2, v2, v4

    sub-long/2addr p1, v2

    goto :goto_0

    :cond_1
    move-wide v4, v0

    :goto_0
    const-wide/16 v2, 0x3c

    cmp-long v6, p1, v2

    if-ltz v6, :cond_2

    div-long v6, p1, v2

    mul-long v2, v2, v6

    sub-long/2addr p1, v2

    goto :goto_1

    :cond_2
    move-wide v6, v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v8, "%d"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xa

    cmp-long v0, p1, v4

    if-gez v0, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isLayoutRTL()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private scrollRecyclerView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mRecyclerView:Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollOffSet:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollOffSet:I

    sub-int v0, v1, v0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mRecyclerView:Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;->scrollBy(II)V

    return-void
.end method

.method private startAutoScroll()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->timeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->timeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->updateFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->updateFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mMediaPlayerControl:Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDuration:J

    long-to-int v0, v0

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentPosition:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollOffSet:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollLength:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAnimUpdateListener;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAnimUpdateListener;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private stopAutoScroll()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->updateFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private updateTime()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentText:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentPosition:I

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDurationText:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDuration:J

    invoke-direct {p0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public attachMediaPlayerControl(Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mMediaPlayerControl:Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentPosition:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTimeLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mTimeText:Landroid/view/View;

    return-object v0
.end method

.method public initData(JI)V
    .locals 2

    iput-wide p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDuration:J

    iput p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentPosition:I

    invoke-static {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->getFrameCount(J)I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mFrameCount:I

    iget-wide p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDuration:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    sget p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    iget p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mFrameCount:I

    mul-int p1, p1, p2

    sget p2, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->CURSOR_WIDTH:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollLength:I

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollLength:I

    mul-int p3, p3, p1

    int-to-long p1, p3

    iget-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDuration:J

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollOffSet:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollLength:I

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollOffSet:I

    :goto_0
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->updateTime()V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$2;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->updateFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mHasDestroyed:Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mMeasureWidth:I

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mMeasureWidth:I

    const-string v0, "LocalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGlobalLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mMeasureWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->stopAutoScroll()V

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mMeasureWidth:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->CURSOR_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mPadding:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->scrollRecyclerView()V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mHasPrepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mHasDestroyed:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->startAutoScroll()V

    :cond_1
    return-void
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mHasPrepared:Z

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->scrollRecyclerView()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->startAutoScroll()V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mHasPrepared:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->startAutoScroll()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->stopAutoScroll()V

    return-void
.end method

.method public resetController()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mRecyclerView:Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/ControllerRecyclerView;->scrollToPosition(I)V

    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentPosition:I

    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollOffSet:I

    iget-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mCurrentPosition:I

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollLength:I

    mul-int v0, v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollOffSet:I

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->updateTime()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->stopAutoScroll()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->scrollRecyclerView()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->startAutoScroll()V

    return-void
.end method

.method public setBitmaps(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    iput-boolean p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mIs8KVideo:Z

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mBitmaps:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnScrollChangeListener(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->mScrollChangeListener:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    return-void
.end method
