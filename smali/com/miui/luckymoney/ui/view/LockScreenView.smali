.class public Lcom/miui/luckymoney/ui/view/LockScreenView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final CLEAR_KEYGUARD_NOTIFICATIONS_DURATION:I = 0x1f4

.field private static final SHOW_DURATION:J = 0x493e0L


# instance fields
.field private final autoDismissRunnable:Ljava/lang/Runnable;

.field private clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

.field private closeView:Landroid/view/View;

.field private contentView:Landroid/view/View;

.field private descriptionView:Landroid/widget/TextView;

.field private hongbaoView:Landroid/widget/ImageView;

.field private imgAds:Landroid/widget/ImageView;

.field private isShown:Z

.field private layoutAds:Landroid/view/View;

.field private settingsView:Landroid/view/View;

.field private txvAds:Landroid/widget/TextView;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/view/LockScreenView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/luckymoney/ui/view/LockScreenView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/LockScreenView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/LockScreenView$1;-><init>(Lcom/miui/luckymoney/ui/view/LockScreenView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->autoDismissRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/LockScreenView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/LockScreenView$1;-><init>(Lcom/miui/luckymoney/ui/view/LockScreenView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->autoDismissRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/LockScreenView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/LockScreenView$1;-><init>(Lcom/miui/luckymoney/ui/view/LockScreenView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->autoDismissRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private clearKeyguardNotifications(I)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    :cond_0
    new-instance v0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/luckymoney/ui/view/LockScreenView$3;-><init>(Lcom/miui/luckymoney/ui/view/LockScreenView;I)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->clearKeyguardNotifications(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/miui/luckymoney/ui/view/LockScreenView$2;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/LockScreenView$2;-><init>(Lcom/miui/luckymoney/ui/view/LockScreenView;)V

    invoke-virtual {p0, v1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0300c6

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->contentView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->contentView:Landroid/view/View;

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->hongbaoView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->contentView:Landroid/view/View;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->descriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->contentView:Landroid/view/View;

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->closeView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->contentView:Landroid/view/View;

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->settingsView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->contentView:Landroid/view/View;

    const v1, 0x7f0a024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->layoutAds:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->contentView:Landroid/view/View;

    const v1, 0x7f0a024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->imgAds:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->contentView:Landroid/view/View;

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->txvAds:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/luckymoney/webapi/AdsHelper;->getCurrentAdsItem(Landroid/content/Context;)Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->imgAds:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->txvAds:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, v0, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->startTime:J

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordAds(J)V

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showMessageView(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->hongbaoView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getLockScreenViewBgResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v0, 0x7da

    invoke-static {p0, v2, v2, v0}, Lcom/miui/luckymoney/ui/view/MessageViewUtil;->showMessageView(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->autoDismissRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotifications(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->isShown:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->isShown:Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotificationsRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-static {p0}, Lcom/miui/luckymoney/ui/view/MessageViewUtil;->removeMessageView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->isShown:Z

    return v0
.end method

.method public setNegativeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->closeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->hongbaoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->settingsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->isShown:Z

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/ui/view/LockScreenView;->showMessageView(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public update(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView;->isShown:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/ui/view/LockScreenView;->showMessageView(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
