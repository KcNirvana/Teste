.class final Lcom/miui/gamebooster/gbservices/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qi:Lcom/miui/gamebooster/gbservices/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/u;->qi:Lcom/miui/gamebooster/gbservices/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/u;->qi:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/b;->rt(Lcom/miui/gamebooster/gbservices/b;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/u;->qi:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/b;->rt(Lcom/miui/gamebooster/gbservices/b;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;->qe()V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/u;->qi:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/b;->ru(Lcom/miui/gamebooster/gbservices/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/u;->qi:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/b;->rv(Lcom/miui/gamebooster/gbservices/b;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/u;->qi:Lcom/miui/gamebooster/gbservices/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/b;->rz(Lcom/miui/gamebooster/gbservices/b;Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
