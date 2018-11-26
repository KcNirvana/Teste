.class final Lcom/miui/gamebooster/service/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mR:Lcom/miui/gamebooster/service/GameBoosterService;

.field final synthetic mS:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/s;->mR:Lcom/miui/gamebooster/service/GameBoosterService;

    iput-boolean p2, p0, Lcom/miui/gamebooster/service/s;->mS:Z

    iput-object p3, p0, Lcom/miui/gamebooster/service/s;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/s;->mR:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nE(Lcom/miui/gamebooster/service/GameBoosterService;)Lcom/miui/gamebooster/service/IGameBoosterWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/s;->mR:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nw(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/s;->mR:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/s;->mR:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->ny(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/s;->mR:Lcom/miui/gamebooster/service/GameBoosterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nN(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/s;->mS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/s;->mR:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/s;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->of(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
