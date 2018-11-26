.class public Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final SHOW_ANIM_DURATION:J = 0x1f4L

.field private static final SHOW_DURATION:J = 0x1388L


# instance fields
.field private final autoDismissRunnable:Ljava/lang/Runnable;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private final height:I

.field private isShown:Z

.field private logoView:Landroid/widget/ImageView;

.field private negativeAction:Landroid/view/View;

.field private positiveAction:Landroid/view/View;

.field private settingsAction:Landroid/view/View;

.field private titleView:Landroid/widget/TextView;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->removeMessageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$1;-><init>(Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$1;-><init>(Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$1;-><init>(Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private dismiss(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060001

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->isShown:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->isShown:Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->height:I

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

    new-instance v1, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$4;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$4;-><init>(Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->removeMessageView()V

    goto :goto_0
.end method

.method private getDrawableByPackageName(Ljava/lang/String;)I
    .locals 2

    const v1, 0x7f020024

    const-string/jumbo v0, "com.tencent.mm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020026

    return v0

    :cond_0
    const-string/jumbo v0, "com.xiaomi.channel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020025

    return v0

    :cond_2
    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020021

    return v0

    :cond_3
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a00b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0a00af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->logoView:Landroid/widget/ImageView;

    const v0, 0x7f0a00ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0a00b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->positiveAction:Landroid/view/View;

    const v0, 0x7f0a0047

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->settingsAction:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->settingsAction:Landroid/view/View;

    new-instance v2, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$2;-><init>(Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->negativeAction:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->negativeAction:Landroid/view/View;

    new-instance v2, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$3;

    invoke-direct {v2, p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$3;-><init>(Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private removeMessageView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->titleView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/miui/luckymoney/ui/view/MessageViewUtil;->removeMessageView(Landroid/view/View;)V

    return-void
.end method

.method private showMessageView(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->logoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->height:I

    const/4 v1, -0x1

    const/16 v2, 0x7da

    invoke-static {p0, v1, v0, v2}, Lcom/miui/luckymoney/ui/view/MessageViewUtil;->showMessageView(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->dismiss(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->isShown:Z

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

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->getContext()Landroid/content/Context;

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

    if-lez v3, :cond_0

    return v4

    :cond_0
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    return v4

    :cond_1
    invoke-direct {p0, v5}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->dismiss(Z)V

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

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPositiveOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->positiveAction:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->isShown:Z

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->showMessageView(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->getDrawableByPackageName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->show(ILjava/lang/String;)V

    return-void
.end method
