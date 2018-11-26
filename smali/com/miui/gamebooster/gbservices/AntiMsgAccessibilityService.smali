.class public Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source ""


# static fields
.field private static final oX:Ljava/util/ArrayList;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;

.field private map:Ljava/util/Map;

.field private final oT:I

.field public final oU:I

.field private final oV:I

.field private final oW:I

.field private oY:Landroid/content/BroadcastReceiver;

.field oZ:Landroid/animation/ObjectAnimator;

.field private pa:Lcom/miui/gamebooster/customview/a;

.field private pb:Landroid/widget/FrameLayout;

.field private pc:Lcom/miui/gamebooster/customview/InCallNotificationView;

.field private pd:Landroid/content/Intent;

.field private pe:Z

.field private pf:I

.field private pg:Landroid/content/Intent;

.field private ph:Z

.field private pi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$1;

    invoke-direct {v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$1;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oX:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pe:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pi:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->ph:Z

    new-instance v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$2;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$2;-><init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->map:Ljava/util/Map;

    new-instance v0, Lcom/miui/gamebooster/gbservices/w;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/w;-><init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oY:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oV:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oW:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oT:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oU:I

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private rM()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/a;->removeAllViews()V

    return-void
.end method

.method private rN()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private rP()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private rQ()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rM()V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pc:Lcom/miui/gamebooster/customview/InCallNotificationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pc:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->hide()V

    :cond_1
    return-void
.end method

.method private rR()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bd

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rP()I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rO(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/miui/gamebooster/customview/a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/customview/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/customview/a;->jF(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/a;->setGravity(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private rS(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.tencent.av.ui.VChatActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pg:Landroid/content/Intent;

    return v2

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pc:Lcom/miui/gamebooster/customview/InCallNotificationView;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/miui/gamebooster/customview/InCallNotificationView;->jX(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method private rT(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pd:Landroid/content/Intent;

    const-string/jumbo v0, "originating_uid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pf:I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pc:Lcom/miui/gamebooster/customview/InCallNotificationView;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bc

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/InCallNotificationView;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pc:Lcom/miui/gamebooster/customview/InCallNotificationView;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pc:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->jW(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pd:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rS(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pc:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->show()V

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rR()V

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rM()V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pc:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/a;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/a;->setBackgroundResource(I)V

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rV(I)V

    iput-boolean v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pi:Z

    const-string/jumbo v0, "gb_show_window"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private rU(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_3
    sget-object v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oX:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rL(Z)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private rV(I)V
    .locals 10

    const-wide/16 v8, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    const-string/jumbo v1, "translationY"

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    invoke-virtual {v3}, Lcom/miui/gamebooster/customview/a;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v5

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    const-string/jumbo v1, "translationY"

    new-array v2, v2, [F

    aput v4, v2, v5

    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    invoke-virtual {v3}, Lcom/miui/gamebooster/customview/a;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/gamebooster/gbservices/x;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/gbservices/x;-><init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pa:Lcom/miui/gamebooster/customview/a;

    const-string/jumbo v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/gamebooster/gbservices/y;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/gbservices/y;-><init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oZ:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic rY(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->ph:Z

    return v0
.end method

.method static synthetic rZ(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->ph:Z

    return p1
.end method

.method static synthetic sa(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rQ()V

    return-void
.end method

.method static synthetic sb(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rT(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    const/16 v2, 0x40

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rU(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rU(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pe:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pe:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.intent.action.gb_show_window"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "action_toast_booster_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "action_toast_booster_fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oY:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pe:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pe:Z

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->oY:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pb:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pi:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rW()V

    :cond_2
    const-string/jumbo v0, "gb_show_window"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pi:Z

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method public rL(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rN()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rV(I)V

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pi:Z

    const-string/jumbo v0, "gb_show_window"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rQ()V

    goto :goto_0
.end method

.method protected rO(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x7de

    const v4, 0x800208

    const/4 v5, -0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string/jumbo v1, "FloatNotificationPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public rW()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pg:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rX(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pd:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rX(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pg:Landroid/content/Intent;

    return-void
.end method

.method public rX(Landroid/content/Intent;)V
    .locals 7

    if-eqz p1, :cond_0

    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pf:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Landroid/os/UserHandle;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->pf:I

    invoke-static {v2}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "startActivityAsUser"

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v2, v5, v0

    invoke-static {p0, v3, v4, v1, v5}, Lcom/miui/a/c/a;->btA(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
