.class final Lcom/miui/gamebooster/gbservices/D;
.super Lcom/miui/gamebooster/service/NotificationListenerCallback;
.source ""


# instance fields
.field final synthetic qo:Lcom/miui/gamebooster/gbservices/k;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/D;->qo:Lcom/miui/gamebooster/gbservices/k;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/NotificationListenerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/D;->qo:Lcom/miui/gamebooster/gbservices/k;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/gbservices/k;->sQ(Lcom/miui/gamebooster/gbservices/k;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/D;->qo:Lcom/miui/gamebooster/gbservices/k;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/k;->sL(Lcom/miui/gamebooster/gbservices/k;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/a;->eH(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/D;->qo:Lcom/miui/gamebooster/gbservices/k;

    iput-object p1, v0, Lcom/miui/gamebooster/gbservices/k;->pR:Landroid/service/notification/StatusBarNotification;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/D;->qo:Lcom/miui/gamebooster/gbservices/k;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/k;->sM(Lcom/miui/gamebooster/gbservices/k;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->px()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/gbservices/E;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/gbservices/E;-><init>(Lcom/miui/gamebooster/gbservices/D;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method
