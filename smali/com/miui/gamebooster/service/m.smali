.class final Lcom/miui/gamebooster/service/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic mJ:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/m;->mJ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/m;->mJ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBoosterWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nT(Lcom/miui/gamebooster/service/GameBoosterService;Lcom/miui/gamebooster/service/IGameBoosterWindow;)Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mGameWindowBinder binder suceessful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/m;->mJ:Lcom/miui/gamebooster/service/GameBoosterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nT(Lcom/miui/gamebooster/service/GameBoosterService;Lcom/miui/gamebooster/service/IGameBoosterWindow;)Lcom/miui/gamebooster/service/IGameBoosterWindow;

    return-void
.end method
