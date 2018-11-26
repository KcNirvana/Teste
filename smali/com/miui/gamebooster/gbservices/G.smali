.class final Lcom/miui/gamebooster/gbservices/G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic qr:Lcom/miui/gamebooster/gbservices/k;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/G;->qr:Lcom/miui/gamebooster/gbservices/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/G;->qr:Lcom/miui/gamebooster/gbservices/k;

    invoke-static {p2}, Lcom/miui/gamebooster/service/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/INotificationListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/k;->sP(Lcom/miui/gamebooster/gbservices/k;Lcom/miui/gamebooster/service/INotificationListener;)Lcom/miui/gamebooster/service/INotificationListener;

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/G;->qr:Lcom/miui/gamebooster/gbservices/k;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/k;->sN(Lcom/miui/gamebooster/gbservices/k;)Lcom/miui/gamebooster/service/INotificationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/G;->qr:Lcom/miui/gamebooster/gbservices/k;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/k;->sO(Lcom/miui/gamebooster/gbservices/k;)Lcom/miui/gamebooster/service/NotificationListenerCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gamebooster/service/INotificationListener;->ot(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNoticationListenerBinder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/G;->qr:Lcom/miui/gamebooster/gbservices/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/k;->sP(Lcom/miui/gamebooster/gbservices/k;Lcom/miui/gamebooster/service/INotificationListener;)Lcom/miui/gamebooster/service/INotificationListener;

    return-void
.end method
