.class final Lcom/miui/gamebooster/ui/aA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/aA;->ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aA;->ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dO(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aA;->ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dF(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/aA;->ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aA;->ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dF(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->bur()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cj:Z

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mThermalSupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/aA;->ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-boolean v2, v2, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cj:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "gb_thermal_supported_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "gb_thermal_supported"

    iget-object v2, p0, Lcom/miui/gamebooster/ui/aA;->ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-boolean v2, v2, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cj:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aA;->ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dL(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aA;->ee:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dO(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-void
.end method
