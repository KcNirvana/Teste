.class public Lcom/android/camera/ui/ToggleSwitch;
.super Landroid/widget/CompoundButton;
.source "ToggleSwitch.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;,
        Lcom/android/camera/ui/ToggleSwitch$State;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-camera-ui-ToggleSwitch$StateSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isMoving:Z

.field private mAnimDuration:I

.field private mBroadcasting:Z

.field private mChecked:Z

.field private mCurrentPos:F

.field private mOnCheckedChangeListener:Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;

.field private mStrokeWidth:I

.field private mSwitchBackgroundColor:I

.field private mSwitchBackgroundStrokeColor:I

.field private mTextOff:Ljava/lang/String;

.field private mTextOffColor:I

.field private mTextOffShadowColor:I

.field private mTextOffShadowRadius:F

.field private mTextOffWidth:I

.field private mTextOn:Ljava/lang/String;

.field private mTextOnColor:I

.field private mTextOnWidth:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mThumbPadding:I

.field private mThumbShadowColor:I

.field private mThumbShadowRadius:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private state:Lcom/android/camera/ui/ToggleSwitch$State;


# direct methods
.method private static synthetic -getcom-android-camera-ui-ToggleSwitch$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/camera/ui/ToggleSwitch;->-com-android-camera-ui-ToggleSwitch$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/ToggleSwitch;->-com-android-camera-ui-ToggleSwitch$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/ui/ToggleSwitch$State;->values()[Lcom/android/camera/ui/ToggleSwitch$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCHING_ANIM_OFF:Lcom/android/camera/ui/ToggleSwitch$State;

    invoke-virtual {v1}, Lcom/android/camera/ui/ToggleSwitch$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCHING_ANIM_ON:Lcom/android/camera/ui/ToggleSwitch$State;

    invoke-virtual {v1}, Lcom/android/camera/ui/ToggleSwitch$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_OFF:Lcom/android/camera/ui/ToggleSwitch$State;

    invoke-virtual {v1}, Lcom/android/camera/ui/ToggleSwitch$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_ON:Lcom/android/camera/ui/ToggleSwitch$State;

    invoke-virtual {v1}, Lcom/android/camera/ui/ToggleSwitch$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/camera/ui/ToggleSwitch;->-com-android-camera-ui-ToggleSwitch$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/ToggleSwitch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->isMoving:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/ToggleSwitch;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ToggleSwitch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v1, 0x3faa3d71    # 1.33f

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "ON"

    iput-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    const-string/jumbo v0, "OFF"

    iput-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    const/high16 v0, -0x78000000

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const v0, -0x4c000001

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    const v0, -0xcc5501

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/high16 v0, 0x4d000000    # 1.34217728E8f

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowColor:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ToggleSwitch;->dp2pxFloat(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowRadius:F

    const/high16 v0, -0x41000000    # -0.5f

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowColor:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ToggleSwitch;->dp2pxFloat(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mAnimDuration:I

    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_ON:Lcom/android/camera/ui/ToggleSwitch$State;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ToggleSwitch;->setClickable(Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_OFF:Lcom/android/camera/ui/ToggleSwitch$State;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v9, 0x1

    const v8, -0x4c000001

    const v7, 0x3faa3d71    # 1.33f

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v4, "ON"

    iput-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    const-string/jumbo v4, "OFF"

    iput-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    sget-object v4, Lcom/android/camera/R$styleable;->ToggleSwitch:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v4, -0x78000000

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    const/4 v4, 0x4

    const v5, -0xcc5501

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/4 v4, 0x5

    const/high16 v5, 0x4d000000    # 1.34217728E8f

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowColor:I

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/ToggleSwitch;->dp2pxFloat(F)F

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    const/16 v4, 0x8

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnColor:I

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffColor:I

    const/16 v4, 0xb

    const/high16 v5, -0x41000000    # -0.5f

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowColor:I

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/ToggleSwitch;->dp2pxFloat(F)F

    move-result v4

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowRadius:F

    const/16 v4, 0xc

    const/16 v5, 0x30

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextSize:I

    const/16 v4, 0xe

    const/16 v5, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mAnimDuration:I

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v6, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v6, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnWidth:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffWidth:I

    iget-boolean v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_ON:Lcom/android/camera/ui/ToggleSwitch$State;

    :goto_0
    iput-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    invoke-virtual {p0, v9}, Lcom/android/camera/ui/ToggleSwitch;->setClickable(Z)V

    return-void

    :cond_0
    sget-object v4, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_OFF:Lcom/android/camera/ui/ToggleSwitch$State;

    goto :goto_0
.end method

.method private animateToCheckedState()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v4, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/ToggleSwitch$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ToggleSwitch$1;-><init>(Lcom/android/camera/ui/ToggleSwitch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/ToggleSwitch$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ToggleSwitch$2;-><init>(Lcom/android/camera/ui/ToggleSwitch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    :cond_0
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private compBackgroundRoundRectAttr()[F
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getHeight()I

    move-result v3

    int-to-float v5, v4

    sub-float v2, v5, v7

    int-to-float v5, v3

    sub-float v0, v5, v7

    sub-float v5, v0, v7

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v1, v5, v6

    const/4 v5, 0x5

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v7, v5, v6

    const/4 v6, 0x2

    aput v2, v5, v6

    const/4 v6, 0x3

    aput v0, v5, v6

    const/4 v6, 0x4

    aput v1, v5, v6

    return-object v5
.end method

.method private compThumbRoundRectAttr(F)[F
    .locals 13

    const/4 v12, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getHeight()I

    move-result v5

    iget v8, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v2, v5, v8

    iget v8, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    iget v9, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, p1

    mul-float/2addr v8, v9

    int-to-float v9, v6

    div-float/2addr v9, v11

    iget v10, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    int-to-float v10, v10

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float/2addr v9, p1

    add-float v1, v8, v9

    int-to-float v8, v6

    div-float/2addr v8, v11

    iget v9, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    int-to-float v9, v9

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    add-float v4, v1, v8

    iget v8, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    iget v9, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    add-int/2addr v8, v9

    int-to-float v7, v8

    int-to-float v8, v2

    add-float/2addr v8, v7

    iget v9, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v0, v8, v9

    sub-float v8, v0, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v3, v8, v9

    const/4 v8, 0x5

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v9, 0x1

    aput v7, v8, v9

    aput v4, v8, v12

    const/4 v9, 0x3

    aput v0, v8, v9

    const/4 v9, 0x4

    aput v3, v8, v9

    return-object v8
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;I[FZ)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p4, :cond_0

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowRadius:F

    iget v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowColor:I

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    const/4 v2, 0x0

    aget v2, p3, v2

    aget v3, p3, v5

    const/4 v4, 0x2

    aget v4, p3, v4

    const/4 v5, 0x3

    aget v5, p3, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    aget v2, p3, v6

    aget v3, p3, v6

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundRectStroke(Landroid/graphics/Canvas;I)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    iget v9, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    if-gtz v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getHeight()I

    move-result v6

    iget v9, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float v9, v9

    div-float v1, v9, v10

    int-to-float v9, v7

    sub-float v5, v9, v1

    iget v9, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float v9, v9

    div-float v8, v9, v10

    int-to-float v9, v6

    sub-float v0, v9, v8

    sub-float v9, v0, v8

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v3, v9, v10

    new-instance v2, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v2, v9}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget v9, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v4, v1, v8, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1, v4, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSwitchOff(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->compBackgroundRoundRectAttr()[F

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/ui/ToggleSwitch;->compThumbRoundRectAttr(F)[F

    move-result-object v0

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    invoke-direct {p0, p1, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRectStroke(Landroid/graphics/Canvas;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawText(Landroid/graphics/Canvas;[F)V

    return-void
.end method

.method private drawSwitchOffAnim(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->compBackgroundRoundRectAttr()[F

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    invoke-direct {p0, p1, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRectStroke(Landroid/graphics/Canvas;I)V

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    invoke-direct {p0, v2}, Lcom/android/camera/ui/ToggleSwitch;->compThumbRoundRectAttr(F)[F

    move-result-object v0

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawText(Landroid/graphics/Canvas;[F)V

    return-void
.end method

.method private drawSwitchOn(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->compBackgroundRoundRectAttr()[F

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lcom/android/camera/ui/ToggleSwitch;->compThumbRoundRectAttr(F)[F

    move-result-object v0

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    invoke-direct {p0, p1, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRectStroke(Landroid/graphics/Canvas;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawText(Landroid/graphics/Canvas;[F)V

    return-void
.end method

.method private drawSwitchOnAnim(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->compBackgroundRoundRectAttr()[F

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    invoke-direct {p0, p1, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRectStroke(Landroid/graphics/Canvas;I)V

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    invoke-direct {p0, v2}, Lcom/android/camera/ui/ToggleSwitch;->compThumbRoundRectAttr(F)[F

    move-result-object v0

    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawText(Landroid/graphics/Canvas;[F)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;[F)V
    .locals 10

    const/4 v9, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v9}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v4, v5

    iget-boolean v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowRadius:F

    iget v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowColor:I

    invoke-virtual {v2, v4, v6, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float v3, v4, v7

    iget-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    int-to-float v5, v0

    invoke-virtual {p1, v4, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    if-eqz v4, :cond_1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v9}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v4, v5

    iget-boolean v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v8

    iget v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float v3, v4, v7

    iget-object v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    int-to-float v5, v0

    invoke-virtual {p1, v4, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowRadius:F

    iget v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowColor:I

    invoke-virtual {v2, v4, v6, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1
.end method


# virtual methods
.method public dp2px(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public dp2pxFloat(F)F
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/android/camera/ui/ToggleSwitch;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getPaddingRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getPaddingBottom()I

    move-result v4

    sub-int v12, v10, v5

    sub-int v11, v12, v6

    sub-int v12, v2, v7

    sub-int v3, v12, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getHeight()I

    move-result v8

    sub-int v12, v11, v9

    div-int/lit8 v12, v12, 0x2

    add-int v0, v5, v12

    sub-int v12, v3, v8

    div-int/lit8 v12, v12, 0x2

    add-int v1, v7, v12

    int-to-float v12, v0

    int-to-float v13, v1

    invoke-virtual {p1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Lcom/android/camera/ui/ToggleSwitch;->-getcom-android-camera-ui-ToggleSwitch$StateSwitchesValues()[I

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    invoke-virtual {v13}, Lcom/android/camera/ui/ToggleSwitch$State;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->drawSwitchOn(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->drawSwitchOff(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->drawSwitchOnAnim(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->drawSwitchOffAnim(Landroid/graphics/Canvas;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 9

    const/high16 v8, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v6, 0x42580000    # 54.0f

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffWidth:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getPaddingRight()I

    move-result v7

    add-int v3, v6, v7

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->getPaddingBottom()I

    move-result v7

    add-int v0, v6, v7

    if-eq v4, v8, :cond_0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    if-eq v1, v8, :cond_1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/android/camera/ui/ToggleSwitch;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->isMoving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mBroadcasting:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mBroadcasting:Z

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mOnCheckedChangeListener:Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mOnCheckedChangeListener:Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/camera/ui/ToggleSwitch;Z)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mBroadcasting:Z

    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCHING_ANIM_ON:Lcom/android/camera/ui/ToggleSwitch$State;

    iput-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/ui/ToggleSwitch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->animateToCheckedState()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v0, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCHING_ANIM_OFF:Lcom/android/camera/ui/ToggleSwitch$State;

    iput-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->cancelPositionAnimator()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    goto :goto_1
.end method

.method public setOnCheckedChangeListener(Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mOnCheckedChangeListener:Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ToggleSwitch;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
