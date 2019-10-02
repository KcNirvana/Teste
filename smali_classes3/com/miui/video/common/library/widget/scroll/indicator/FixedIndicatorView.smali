.class public Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;
.super Landroid/widget/LinearLayout;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/scroll/indicator/Indicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;
    }
.end annotation


# static fields
.field public static final SPLITMETHOD_EQUALS:I = 0x0

.field public static final SPLITMETHOD_WEIGHT:I = 0x1

.field public static final SPLITMETHOD_WRAP:I = 0x2


# instance fields
.field private cacheBitmap:Landroid/graphics/Bitmap;

.field private cacheCanvas:Landroid/graphics/Canvas;

.field private cacheMatrix:Landroid/graphics/Matrix;

.field private centerView:Landroid/view/View;

.field private centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

.field private inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

.field private itemClickable:Z

.field private mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

.field private mPosition:I

.field private mPositionOffset:F

.field private mPositionOffsetPixels:I

.field private mPreSelectedTabIndex:I

.field private mSelectedTabIndex:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onIndicatorItemClickListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;

.field private onItemSelectedListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

.field private onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

.field private prePositions:[I

.field private scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

.field private splitMethod:I

.field private state:I

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->splitMethod:I

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->state:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->itemClickable:Z

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->views:Ljava/util/List;

    new-instance p1, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$1;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

    new-instance p1, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$2;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->prePositions:[I

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->splitMethod:I

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->state:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->itemClickable:Z

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->views:Ljava/util/List;

    new-instance p1, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$1;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

    new-instance p1, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$2;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->prePositions:[I

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->splitMethod:I

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->state:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->itemClickable:Z

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->views:Ljava/util/List;

    new-instance p1, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$1;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

    new-instance p1, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$2;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->prePositions:[I

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->measureTabs()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->itemClickable:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onIndicatorItemClickListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->views:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;I)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object p0
.end method

.method private drawSlideBar(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->stop()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v0, :cond_2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->stop()V

    return-void

    :cond_2
    sget-object v1, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$3;->$SwitchMap$com$miui$video$common$library$widget$scroll$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v3}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getGravity()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getHeight()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getHeight()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v4}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v4}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v4}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->getCurrentX()I

    move-result v4

    int-to-float v4, v4

    move-object v8, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_4

    invoke-direct {p0, v7}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v4

    if-gtz v9, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v4, v9

    float-to-int v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v4, v8

    int-to-float v0, v0

    div-float/2addr v8, v0

    invoke-direct {p0, v7, v8, v9}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    invoke-direct {p0, v7, v8, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->state:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPosition:I

    invoke-direct {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v4

    iget v7, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPositionOffset:F

    mul-float v4, v4, v7

    add-float/2addr v4, v0

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPosition:I

    iget v7, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPositionOffset:F

    iget v8, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPositionOffsetPixels:I

    invoke-direct {p0, v0, v7, v8}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPosition:I

    iget v7, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPositionOffset:F

    invoke-direct {p0, v0, v7, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v3, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    iget v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v4, v2

    :goto_3
    iget-object v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v2}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v7, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v7}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v8, v0, v7

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v4, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getMeasuredHeight()I

    move-result v10

    iget-object v11, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v11}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->isLoop()Z

    move-result v11

    if-eqz v11, :cond_a

    int-to-float v11, v7

    add-float/2addr v11, v4

    int-to-float v12, v9

    cmpl-float v13, v11, v12

    if-lez v13, :cond_a

    iget-object v13, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_8

    iget-object v13, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lt v13, v7, :cond_8

    iget-object v13, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ge v13, v2, :cond_9

    :cond_8
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    sub-float/2addr v11, v12

    iget-object v9, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    iget-object v9, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v6, v6, v7, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v9, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v6, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v9, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v9}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v9, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v6, v6, v7, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    int-to-float v1, v2

    invoke-virtual {p1, v3, v3, v11, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    sub-float/2addr v11, v0

    invoke-virtual {v1, v11, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v6, v6, v7, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->stop()V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getItemOutView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getItemViewUnCheck(I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getTabCountInLayout()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    return-void
.end method

.method private measureScrollBar(IFZ)I
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v2}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float p3, p3, v2

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    :goto_1
    add-float/2addr p3, p1

    float-to-int p1, p3

    iget-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {p2, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getWidth(I)I

    move-result p2

    iget-object p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p3, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p3

    invoke-virtual {v0, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return p1

    :cond_4
    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method private measureTabs()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    iget v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->splitMethod:I

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :goto_0
    :pswitch_0
    if-ge v4, v0, :cond_0

    invoke-direct {p0, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_1
    :pswitch_1
    if-ge v4, v0, :cond_0

    invoke-direct {p0, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyPageScrolled(IFI)V
    .locals 8

    if-ltz p1, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->onPageScrolled(IFI)V

    :cond_1
    iget-object p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->prePositions:[I

    array-length v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    aget v5, p3, v3

    if-eq v5, p1, :cond_2

    add-int/lit8 v6, p1, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0, v5}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    invoke-interface {v7, v6, v5, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->prePositions:[I

    aput p1, p3, v2

    iget-object p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->prePositions:[I

    add-int/lit8 v0, p1, 0x1

    aput v0, p3, v1

    iget p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-virtual {p0, p3}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    iget v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-interface {v1, p3, v2, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-interface {v1, p3, p1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    invoke-interface {p3, p1, v0, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method private updateTabSelectState(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-direct {p0, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemViewUnCheck(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-ne p1, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getGravity()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getGravity()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getCenterView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    return v0
.end method

.method public getIndicatorAdapter()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemViewUnCheck(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getOnIndicatorItemClickListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onIndicatorItemClickListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return v0
.end method

.method public getScrollBar()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    return-object v0
.end method

.method public getSplitMethod()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->splitMethod:I

    return v0
.end method

.method public isItemClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->itemClickable:Z

    return v0
.end method

.method protected measureChildren(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->stop()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->state:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPosition:I

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPositionOffset:F

    iput p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPositionOffsetPixels:I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    return-void
.end method

.method public removeCenterView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    :cond_0
    iput-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public setAdapter(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->unRegistDataSetObserver(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->registDataSetObserver(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;)V

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;II)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->removeCenterView()V

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    if-eq v0, p1, :cond_6

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->stop()V

    :cond_3
    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->state:I

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    if-ltz p2, :cond_4

    iget p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-direct {p0, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/16 v1, 0x258

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->inRun:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v1, p2, v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->startScroll(III)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    if-nez p2, :cond_6

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->itemClickable:Z

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onIndicatorItemClickListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;

    return-void
.end method

.method public setOnItemSelectListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

    return-void
.end method

.method public setOnTransitionListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onTransitionListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mAdapter:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    if-ne v2, v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v1, v0, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setScrollBar(Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$3;->$SwitchMap$com$miui$video$common$library$widget$scroll$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v3}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getGravity()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    sget-object v2, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$3;->$SwitchMap$com$miui$video$common$library$widget$scroll$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->scrollBar:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-interface {v3}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getGravity()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p1

    add-int/2addr v0, p1

    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->setPadding(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setSplitMethod(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->splitMethod:I

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->measureTabs()V

    return-void
.end method
