.class public Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;
.super Landroid/widget/GridView;
.source "LaunchDragGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$OnChanageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchDragGridView"

.field private static final speed:I = 0x14


# instance fields
.field private dragResponseMS:J

.field private isDrag:Z

.field private mDownScrollBorder:I

.field private mDownX:I

.field private mDownY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mLongClickRunnable:Ljava/lang/Runnable;

.field private mOffset2Left:I

.field private mOffset2Top:I

.field private mPoint2ItemLeft:I

.field private mPoint2ItemTop:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mStartDragItemView:Landroid/view/View;

.field private mStatusHeight:I

.field private mUpScrollBorder:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveX:I

.field private moveY:I

.field private onChanageListener:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$OnChanageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->dragResponseMS:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->isDrag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStartDragItemView:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;-><init>(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;-><init>(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mVibrator:Landroid/os/Vibrator;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/miui/personalassistant/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStatusHeight:I

    return-void
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->isDrag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownScrollBorder:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->moveX:I

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->onSwapItem(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStartDragItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownX:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownY:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->createDragImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->moveY:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mUpScrollBorder:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createDragImage(Landroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mPoint2ItemLeft:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mPoint2ItemTop:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isTouchInItem(Landroid/view/View;II)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gt p2, v3, :cond_0

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-gt p3, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDragItem(II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mPoint2ItemLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mPoint2ItemTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->onSwapItem(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onStopDrag()V
    .locals 3

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->removeDragImage()V

    return-void
.end method

.method private onSwapItem(II)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->pointToPosition(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->getItem(I)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->getItem(I)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->onChanageListener:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$OnChanageListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->onChanageListener:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$OnChanageListener;

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    invoke-interface {v1, v2, v0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$OnChanageListener;->onChange(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    goto :goto_0
.end method

.method private removeDragImage()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragImageView:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownY:I

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownX:I

    iget v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownY:I

    invoke-virtual {p0, v2, v3}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iget v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->getItem(I)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->dragResponseMS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStartDragItemView:Landroid/view/View;

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownY:I

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mPoint2ItemTop:I

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownX:I

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mPoint2ItemLeft:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mOffset2Top:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mOffset2Left:I

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDownScrollBorder:I

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mUpScrollBorder:I

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStartDragItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->isDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->moveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->moveY:I

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->moveX:I

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->onDragItem(II)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->onStopDrag()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->isDrag:Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragResponseMS(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->dragResponseMS:J

    return-void
.end method

.method public setOnChangeListener(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$OnChanageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->onChanageListener:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$OnChanageListener;

    return-void
.end method
