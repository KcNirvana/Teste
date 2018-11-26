.class final Lcom/miui/gamebooster/ui/aB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/f/b;


# instance fields
.field final synthetic ef:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/aB;->ef:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ed(Landroid/os/IBinder;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aB;->ef:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dP(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gameBooster :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aB;->ef:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dG(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aB;->ef:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dG(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/aB;->ef:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dG(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBooster;->oq()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
