.class final Lcom/miui/gamebooster/service/A;
.super Landroid/telephony/PhoneStateListener;
.source ""


# instance fields
.field final synthetic nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GameBoosterTeleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhoneStateChanged state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oL(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/service/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/service/b;

    iget-object v1, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/miui/gamebooster/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oL(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/b;->oQ()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oL(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/service/b;

    iget-object v1, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oM(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gamebooster/service/b;->setStartTime(J)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/b;->oT()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oL(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/service/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/b;->oO()V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oL(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oM(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oL(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/A;->nc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->stopSelf()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
