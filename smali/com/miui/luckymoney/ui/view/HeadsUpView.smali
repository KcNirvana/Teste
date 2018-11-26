.class public Lcom/miui/luckymoney/ui/view/HeadsUpView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final SHOW_ANIM_DURATION:J = 0x1f4L

.field private static final SHOW_DURATION:J = 0x1770L


# instance fields
.field private final autoDismissRunnable:Ljava/lang/Runnable;

.field private contentLayout:Landroid/view/View;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private final height:I

.field private imgAds:Landroid/widget/ImageView;

.field private imgIcon:Landroid/widget/ImageView;

.field private isShown:Z

.field private negativeAction:Landroid/view/View;

.field private positiveAction:Landroid/view/View;

.field private settingsAction:Landroid/view/View;

.field private titleView:Landroid/widget/TextView;

.field private txvAds:Landroid/widget/TextView;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->removeMessageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private dismiss(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v1, Lcom/miui/luckymoney/ui/view/HeadsUpView$3;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$3;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->removeMessageView()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-eqz v2, :cond_4

    const v0, 0x7f0300c5

    :goto_1
    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a0215

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->contentLayout:Landroid/view/View;

    const v0, 0x7f0a024c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0201af

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->contentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eqz v2, :cond_1

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_1
    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->contentLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->contentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const v0, 0x7f0a024e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->imgAds:Landroid/widget/ImageView;

    const v0, 0x7f0a0038

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->imgIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a024f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->txvAds:Landroid/widget/TextView;

    const v0, 0x7f0a00b0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0a00b1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->positiveAction:Landroid/view/View;

    const v0, 0x7f0a0047

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->settingsAction:Landroid/view/View;

    const v0, 0x7f0a00b2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->negativeAction:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->negativeAction:Landroid/view/View;

    new-instance v1, Lcom/miui/luckymoney/ui/view/HeadsUpView$2;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$2;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/miui/luckymoney/webapi/AdsHelper;->getCurrentAdsItem(Landroid/content/Context;)Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->imgAds:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->txvAds:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, v0, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->startTime:J

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordAds(J)V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0300c4

    goto/16 :goto_1
.end method

.method private removeMessageView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->titleView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/miui/luckymoney/ui/view/MessageViewUtil;->removeMessageView(Landroid/view/View;)V

    return-void
.end method

.method private showMessageView(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->imgIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getHeadsUpViewBgResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    const/4 v1, -0x1

    const/16 v2, 0x7da

    invoke-static {p0, v1, v0, v2}, Lcom/miui/luckymoney/ui/view/MessageViewUtil;->showMessageView(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    return v4

    :cond_2
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    return v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss(Z)V

    return v5
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNegativeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->negativeAction:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->positiveAction:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSettingsActionListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->settingsAction:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->showMessageView(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public update(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->showMessageView(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
