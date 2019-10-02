.class public Lcom/miui/video/player/service/setting/views/SwitchButton;
.super Landroid/widget/CheckBox;
.source "SwitchButton.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xb4

.field private static final FULL_ALPHA:I = 0xff

.field private static final SCALE_ANIMATION_DELAY:I = 0x64


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBarOff:Landroid/graphics/Bitmap;

.field private mBarOn:Landroid/graphics/Bitmap;

.field private mFrameOff:Landroid/graphics/drawable/Drawable;

.field private mFrameOn:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mLastX:I

.field private mMask:Landroid/graphics/Bitmap;

.field private mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOriginalTouchPointX:I

.field private mSliderHeight:I

.field private mSliderMoved:Z

.field private mSliderOff:Landroid/graphics/drawable/Drawable;

.field private mSliderOffset:I

.field private mSliderOn:Landroid/graphics/drawable/Drawable;

.field private mSliderOnAlpha:I

.field private mSliderPositionEnd:I

.field private mSliderPositionStart:I

.field private mSliderWidth:I

.field private mTapThreshold:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTmpRect:Landroid/graphics/Rect;

    new-instance p2, Lcom/miui/video/player/service/setting/views/SwitchButton$1;

    invoke-direct {p2, p0}, Lcom/miui/video/player/service/setting/views/SwitchButton$1;-><init>(Lcom/miui/video/player/service/setting/views/SwitchButton;)V

    iput-object p2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setDrawingCacheEnabled(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTapThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/miui/video/player/service/R$drawable;->switch_open_bg:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mFrameOn:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/video/player/service/R$drawable;->switch_off_bg:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mFrameOff:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/video/player/service/R$drawable;->switch_open_round:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/video/player/service/R$drawable;->switch_open_round:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOff:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mFrameOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iput p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mWidth:I

    iget-object p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mFrameOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    iput p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    iget p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mWidth:I

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderWidth:I

    iget p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderHeight:I

    iget p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderHeight:I

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionStart:I

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mWidth:I

    iget v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderWidth:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionEnd:I

    iget p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionStart:I

    iput p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget-object p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mFrameOn:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mWidth:I

    iget v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    invoke-virtual {p3, p2, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mFrameOff:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mWidth:I

    iget v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    invoke-virtual {p3, p2, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget p3, Lcom/miui/video/player/service/R$drawable;->switch_mask_bg:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mWidth:I

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->convertToAlphaMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/player/service/setting/views/SwitchButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/setting/views/SwitchButton;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/setting/views/SwitchButton;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionEnd:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/setting/views/SwitchButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private animateToState(Z)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mAnimator:Landroid/animation/Animator;

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v1, "SliderOffset"

    const/4 v2, 0x1

    new-array v3, v2, [I

    if-eqz p1, :cond_1

    iget v4, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionEnd:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionStart:I

    :goto_0
    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "SliderOnAlpha"

    new-array v2, v2, [I

    if-eqz p1, :cond_2

    const/16 p1, 0xff

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    aput p1, v2, v5

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0xb4

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mAnimator:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private animateToggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->animateToState(Z)V

    return-void
.end method

.method private convertToAlphaMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private moveSlider(I)V
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionStart:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionStart:I

    iput p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionEnd:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionEnd:I

    iput p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setSliderOffset(I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public getSliderOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    return v0
.end method

.method public getSliderOnAlpha()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOnAlpha:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->isEnabled()Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    const/16 v7, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    const/16 v7, 0x7f

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOnAlpha:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mFrameOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mFrameOn:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOnAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mFrameOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOnAlpha:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOff:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget v2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    iget v3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderWidth:I

    iget v4, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    iget v5, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOnAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget v2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    iget v3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderWidth:I

    iget v4, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    iget v5, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mWidth:I

    iget p2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget v5, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget v6, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mHeight:I

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTracking:Z

    iput-boolean v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderMoved:Z

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setPressed(Z)V

    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionEnd:I

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->animateToState(Z)V

    goto :goto_3

    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTracking:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mLastX:I

    sub-int p1, v2, p1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->moveSlider(I)V

    iput v2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mLastX:I

    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mOriginalTouchPointX:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTapThreshold:I

    if-lt p1, v0, :cond_6

    iput-boolean v4, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderMoved:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    :pswitch_2
    iget-boolean p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTracking:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderMoved:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->animateToggle()V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionEnd:I

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->animateToState(Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->animateToggle()V

    :goto_1
    iput-boolean v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTracking:Z

    iput-boolean v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderMoved:Z

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setPressed(Z)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v3, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v4, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTracking:Z

    invoke-virtual {p0, v4}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setPressed(Z)V

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mTracking:Z

    :goto_2
    iput v2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mLastX:I

    iput v2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mOriginalTouchPointX:I

    iput-boolean v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderMoved:Z

    :cond_6
    :goto_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionEnd:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderPositionStart:I

    :goto_0
    iput v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    if-eqz p1, :cond_1

    const/16 p1, 0xff

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOnAlpha:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->invalidate()V

    :cond_2
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->invalidate()V

    return-void
.end method

.method public setSliderOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOffset:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->invalidate()V

    return-void
.end method

.method public setSliderOnAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton;->mSliderOnAlpha:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->invalidate()V

    return-void
.end method
