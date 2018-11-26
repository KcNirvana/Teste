.class final Lcom/miui/gamebooster/gbservices/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic qj:Lcom/miui/gamebooster/gbservices/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/v;->qj:Lcom/miui/gamebooster/gbservices/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/v;->qj:Lcom/miui/gamebooster/gbservices/c;

    invoke-static {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/c;->rK(Lcom/miui/gamebooster/gbservices/c;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/v;->qj:Lcom/miui/gamebooster/gbservices/c;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/c;->rH(Lcom/miui/gamebooster/gbservices/c;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/v;->qj:Lcom/miui/gamebooster/gbservices/c;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/c;->rJ(Lcom/miui/gamebooster/gbservices/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/v;->qj:Lcom/miui/gamebooster/gbservices/c;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/c;->rH(Lcom/miui/gamebooster/gbservices/c;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/v;->qj:Lcom/miui/gamebooster/gbservices/c;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/c;->rI(Lcom/miui/gamebooster/gbservices/c;)Lcom/miui/gamebooster/service/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/d;->pb()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->bup(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/v;->qj:Lcom/miui/gamebooster/gbservices/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/c;->rK(Lcom/miui/gamebooster/gbservices/c;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-void
.end method
