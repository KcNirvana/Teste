.class public Lcom/miui/gamebooster/gbservices/h;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# static fields
.field private static final py:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private pA:Z

.field private pB:Lcom/miui/gamebooster/service/d;

.field private pC:I

.field private pD:Z

.field private pE:Z

.field private pF:Landroid/app/StatusBarManager;

.field private px:Ljava/lang/Runnable;

.field private pz:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/miui/gamebooster/gbservices/h;->py:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/h;->pA:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/h;->pE:Z

    iput v0, p0, Lcom/miui/gamebooster/gbservices/h;->pC:I

    new-instance v0, Lcom/miui/gamebooster/gbservices/A;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/A;-><init>(Lcom/miui/gamebooster/gbservices/h;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->px:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/gbservices/B;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/B;-><init>(Lcom/miui/gamebooster/gbservices/h;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->pz:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/h;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/h;->pB:Lcom/miui/gamebooster/service/d;

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->pF:Landroid/app/StatusBarManager;

    return-void
.end method

.method static synthetic ss(Lcom/miui/gamebooster/gbservices/h;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->px:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic st(Lcom/miui/gamebooster/gbservices/h;)Lcom/miui/gamebooster/service/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->pB:Lcom/miui/gamebooster/service/d;

    return-object v0
.end method

.method static synthetic su(Lcom/miui/gamebooster/gbservices/h;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gbservices/h;->pC:I

    return v0
.end method

.method static synthetic sv(Lcom/miui/gamebooster/gbservices/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/h;->pE:Z

    return v0
.end method

.method static synthetic sw(Lcom/miui/gamebooster/gbservices/h;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->pF:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic sx(Lcom/miui/gamebooster/gbservices/h;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/gbservices/h;->pC:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/gamebooster/gbservices/h;->pE:Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/h;->pD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsAntiMsg...stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->pF:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/h;->pA:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/miui/gamebooster/gbservices/h;->pA:Z

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/h;->pz:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    sget-boolean v0, Lcom/miui/gamebooster/gbservices/h;->py:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->pB:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/service/d;->pt(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_notification"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v0, "game_IsAntiMsg"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->mContext:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public open()V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gamebooster/gbservices/h;->pE:Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/h;->pD:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsAntiMsg...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->pF:Landroid/app/StatusBarManager;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/h;->pA:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/miui/gamebooster/gbservices/h;->pA:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/h;->pz:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string/jumbo v0, "game_IsAntiMsg"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/miui/gamebooster/gbservices/h;->py:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->pB:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/service/d;->pt(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->mContext:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_notification"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public rd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public re()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/h;->pD:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tK(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/h;->pD:Z

    return-void
.end method

.method public sr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/h;->pE:Z

    return v0
.end method
