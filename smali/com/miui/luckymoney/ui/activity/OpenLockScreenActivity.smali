.class public Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field public static EXTRA_ACTION_INTENT:Ljava/lang/String;


# instance fields
.field private mActionIntent:Landroid/app/PendingIntent;

.field private mActionStarted:Z


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionStarted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionStarted:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "action_intent"

    sput-object v0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->EXTRA_ACTION_INTENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionStarted:Z

    return-void
.end method

.method private startAction(I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030160

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->EXTRA_ACTION_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->startAction(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->startAction(I)V

    :cond_0
    return-void
.end method
