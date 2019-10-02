.class public Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;
.super Lcom/miui/video/common/library/widget/viewpager/UIViewPager;
.source "CanForbidScrollViewPager.java"


# instance fields
.field private isCanScroll:Z

.field private isTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->isTouched:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->isCanScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->isTouched:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->isCanScroll:Z

    return-void
.end method


# virtual methods
.method public isCanScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->isCanScroll:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->isCanScroll:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->isCanScroll:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCanScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->isCanScroll:Z

    return-void
.end method
