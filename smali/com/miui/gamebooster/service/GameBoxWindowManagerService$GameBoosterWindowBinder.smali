.class public Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;
.super Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;
.source ""


# instance fields
.field final synthetic lR:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;->lR:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ov()V
    .locals 0

    return-void
.end method

.method public ow(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;->lR:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oC(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gamebooster/service/t;-><init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
