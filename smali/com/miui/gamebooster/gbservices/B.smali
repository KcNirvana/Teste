.class final Lcom/miui/gamebooster/gbservices/B;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic qm:Lcom/miui/gamebooster/gbservices/h;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/h;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/B;->qm:Lcom/miui/gamebooster/gbservices/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "level"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "scale"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    invoke-static {p2}, Lcom/miui/powercenter/a/a;->baK(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    if-gt v2, v5, :cond_0

    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/B;->qm:Lcom/miui/gamebooster/gbservices/h;

    invoke-static {v3}, Lcom/miui/gamebooster/gbservices/h;->su(Lcom/miui/gamebooster/gbservices/h;)I

    move-result v3

    if-le v3, v5, :cond_0

    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/B;->qm:Lcom/miui/gamebooster/gbservices/h;

    invoke-static {v3}, Lcom/miui/gamebooster/gbservices/h;->sw(Lcom/miui/gamebooster/gbservices/h;)Landroid/app/StatusBarManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/StatusBarManager;->disable(I)V

    const-string/jumbo v3, "game_IsAntiMsg"

    invoke-static {v3, v4}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/a/d;->fk(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/B;->qm:Lcom/miui/gamebooster/gbservices/h;

    invoke-static {v3}, Lcom/miui/gamebooster/gbservices/h;->st(Lcom/miui/gamebooster/gbservices/h;)Lcom/miui/gamebooster/service/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gamebooster/gbservices/B;->qm:Lcom/miui/gamebooster/gbservices/h;

    invoke-static {v4}, Lcom/miui/gamebooster/gbservices/h;->ss(Lcom/miui/gamebooster/gbservices/h;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/B;->qm:Lcom/miui/gamebooster/gbservices/h;

    invoke-static {v3, v2}, Lcom/miui/gamebooster/gbservices/h;->sx(Lcom/miui/gamebooster/gbservices/h;I)I

    const-string/jumbo v3, "GameBoosterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "level:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " scale"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " newPercent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
