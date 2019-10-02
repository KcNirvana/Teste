.class public Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;
.super Lcom/miui/video/common/library/widget/viewpager/UIViewPager;
.source "VideoPlusViewPager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mIsScrollEnabled:Z

.field private mLastChildWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->mIsScrollEnabled:Z

    invoke-virtual {p0, p0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private recomputeScrollPosition(III)V
    .locals 0

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->scrollTo(II)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->mIsScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->mIsScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPageMargin(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getPageMargin()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->setPageMargin(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getScrollX()I

    move-result v0

    invoke-super {p0, p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->setPageMargin(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->mIsScrollEnabled:Z

    return-void
.end method
