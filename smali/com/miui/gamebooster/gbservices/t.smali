.class final Lcom/miui/gamebooster/gbservices/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic qh:Lcom/miui/gamebooster/gbservices/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/t;->qh:Lcom/miui/gamebooster/gbservices/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/t;->qh:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/b;->rz(Lcom/miui/gamebooster/gbservices/b;Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/t;->qh:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/b;->rt(Lcom/miui/gamebooster/gbservices/b;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;->qd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/t;->qh:Lcom/miui/gamebooster/gbservices/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/b;->rz(Lcom/miui/gamebooster/gbservices/b;Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    return-void
.end method
