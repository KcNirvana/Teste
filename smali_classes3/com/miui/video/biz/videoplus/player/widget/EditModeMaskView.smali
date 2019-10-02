.class public Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;
.super Landroid/widget/RelativeLayout;
.source "EditModeMaskView.java"


# static fields
.field private static mClickAreaMarginLeft:I

.field private static mClickAreaMarginRight:I


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mMediaHeight:I

.field private mMediaWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private refreshCheckBoxTranslation()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mMediaWidth:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mMediaHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mMediaWidth:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mMediaHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    cmpg-float v2, v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v4

    sub-float/2addr v2, v0

    neg-float v0, v2

    div-float/2addr v0, v3

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr v2, v4

    neg-float v0, v2

    div-float/2addr v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTranslationX(F)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->refreshCheckBoxTranslation()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mClickAreaMarginLeft:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mClickAreaMarginRight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setCheckBox(Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method public setClickAreaMargin(II)V
    .locals 0

    sput p1, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mClickAreaMarginLeft:I

    sput p2, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mClickAreaMarginRight:I

    return-void
.end method

.method public setMediaSize(II)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mMediaWidth:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->mMediaHeight:I

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/EditModeMaskView;->refreshCheckBoxTranslation()V

    return-void
.end method
