.class public Lcom/miui/gamebooster/service/GameBoosterTelecomManager;
.super Landroid/app/Service;
.source ""


# instance fields
.field private lS:Lcom/miui/gamebooster/service/c;

.field private lT:Ljava/util/HashMap;

.field private lU:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lT:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/gamebooster/service/A;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/A;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic oK(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic oL(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lT:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic oM(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lU:Z

    return v0
.end method

.method static synthetic oN(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method


# virtual methods
.method public oI()V
    .locals 3

    const-string/jumbo v0, "GameBoosterTeleManager"

    const-string/jumbo v1, "onEnterGameBoosterMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lU:Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/service/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/b;->oT()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-boolean v0, Lcom/miui/gamebooster/c/a;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/gamebooster/service/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/c;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;Lcom/miui/gamebooster/service/c;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lS:Lcom/miui/gamebooster/service/c;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lS:Lcom/miui/gamebooster/service/c;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.miui.gamebooster.service.DEBUG_INCOMING_CALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public oJ()V
    .locals 2

    const-string/jumbo v0, "GameBoosterTeleManager"

    const-string/jumbo v1, "onQuitGameBoosterMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lU:Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/service/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/b;->oO()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->stopSelf()V

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "GameBoosterTeleManager"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/gamebooster/service/B;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/B;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "GameBoosterTeleManager"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string/jumbo v0, "GameBoosterTeleManager"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-boolean v0, Lcom/miui/gamebooster/c/a;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lS:Lcom/miui/gamebooster/service/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lS:Lcom/miui/gamebooster/service/c;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/service/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/b;->oO()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->lT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
