.class public Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;
.super Landroid/support/v7/widget/RecyclerView;
.source "ImagePagerIndicator.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;,
        Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;,
        Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x64

.field private static final ITEM_HEIGHT:I

.field private static final ITEM_OFFSET_FOCUS:I

.field private static final ITEM_OFFSET_NORMAL:I

.field private static final ITEM_WIDTH:I


# instance fields
.field private mAdapter:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

.field private mCurrentPosition:I

.field private mCurrentScrollPosition:I

.field private mIsUserTouchMoving:Z

.field private mItemDecoration:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPageScrollState:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->dp_22:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_WIDTH:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->dp_38:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_HEIGHT:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->dp_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_OFFSET_NORMAL:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->dp_10:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_OFFSET_FOCUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentScrollPosition:I

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mIsUserTouchMoving:Z

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;-><init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->setHasStableIds(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;-><init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mItemDecoration:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mItemDecoration:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_OFFSET_FOCUS:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_OFFSET_NORMAL:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mItemDecoration:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    return-object p0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_WIDTH:I

    return v0
.end method

.method private scrollToItem(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->scrollToItem(IZ)V

    return-void
.end method

.method private scrollToItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->scrollToItemWithOffset(IFZ)V

    return-void
.end method

.method private scrollToItemWithOffset(IFZ)V
    .locals 3

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentPosition:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mItemDecoration:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->access$300(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mItemDecoration:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

    invoke-static {v0, p2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->access$400(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    sget v1, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_WIDTH:I

    sget v2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_OFFSET_FOCUS:I

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    add-float/2addr p1, p2

    sget p2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_WIDTH:I

    sget v2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_OFFSET_NORMAL:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentScrollPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->smoothScrollBy(II)V

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentScrollPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->scrollBy(II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public fling(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentPosition:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->scrollToItem(I)V

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mPageScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-boolean p3, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mIsUserTouchMoving:Z

    if-nez p3, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->scrollToItemWithOffset(IFZ)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mIsUserTouchMoving:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mPageScrollState:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentScrollPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentScrollPosition:I

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mIsUserTouchMoving:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentScrollPosition:I

    sget p2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_WIDTH:I

    sget v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_OFFSET_FOCUS:I

    add-int/2addr p2, v0

    const/4 v0, 0x0

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentScrollPosition:I

    sget p2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_WIDTH:I

    sub-int/2addr p1, p2

    sget p2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_OFFSET_FOCUS:I

    sub-int/2addr p1, p2

    sget p2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_WIDTH:I

    sget v1, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->ITEM_OFFSET_NORMAL:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    div-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentPosition:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentPosition:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mItemDecoration:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentPosition:I

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->access$300(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentPosition:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mIsUserTouchMoving:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mIsUserTouchMoving:Z

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$2;-><init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$3;-><init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mIsUserTouchMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mIsUserTouchMoving:Z

    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$4;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$4;-><init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$5;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$5;-><init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mCurrentPosition:I

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->scrollToItem(IZ)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setCurrentItem(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->scrollToItem(I)V

    return-void
.end method

.method public setIndicatorData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->access$100(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;-><init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method
