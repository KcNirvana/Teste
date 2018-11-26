.class final Lcom/miui/gamebooster/service/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mT:Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

.field final synthetic mU:Z

.field final synthetic mV:Z


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/t;->mT:Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

    iput-boolean p2, p0, Lcom/miui/gamebooster/service/t;->mU:Z

    iput-boolean p3, p0, Lcom/miui/gamebooster/service/t;->mV:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/service/t;->mT:Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;->lR:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oB(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Lcom/miui/gamebooster/d/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/t;->mU:Z

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/d/b;->uG(Z)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/t;->mU:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/t;->mV:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/t;->mT:Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;->lR:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oB(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Lcom/miui/gamebooster/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->removeFloatView()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/t;->mT:Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;->lR:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oB(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Lcom/miui/gamebooster/d/b;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/miui/gamebooster/d/b;->uH(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/service/t;->mU:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/t;->mT:Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;->lR:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oB(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Lcom/miui/gamebooster/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->uI()V

    goto :goto_0
.end method
