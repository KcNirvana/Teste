.class public Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "BaseSmoothScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;
    }
.end annotation


# instance fields
.field private mDurationTime:F

.field private mIsToTop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->NORMAL:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mDurationTime:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mIsToTop:Z

    invoke-direct {p0, p2, p3}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->init(Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mDurationTime:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mIsToTop:Z

    iput-boolean p4, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mIsToTop:Z

    invoke-direct {p0, p2, p3}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->init(Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;I)V

    return-void
.end method

.method private init(Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;I)V
    .locals 1

    sget-object v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$1;->$SwitchMap$com$miui$video$common$feed$recyclerview$BaseSmoothScroller$ScrollerSpeed:[I

    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mDurationTime:F

    goto :goto_0

    :pswitch_0
    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mDurationTime:F

    goto :goto_0

    :pswitch_1
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mDurationTime:F

    goto :goto_0

    :pswitch_2
    const/high16 p1, 0x40a00000    # 5.0f

    iput p1, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mDurationTime:F

    goto :goto_0

    :pswitch_3
    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mDurationTime:F

    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->setTargetPosition(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mDurationTime:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getHorizontalSnapPreference()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mIsToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v0

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;->mIsToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v0

    return v0
.end method
