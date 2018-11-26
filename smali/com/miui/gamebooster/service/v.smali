.class final Lcom/miui/gamebooster/service/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mX:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/v;->mX:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/v;->mX:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/a/H;->ip(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/v;->mX:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oA(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Lcom/miui/gamebooster/d/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/v;->mX:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oD(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/v;->mX:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oH(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    const-string/jumbo v0, "GameBoxWindowManagerService"

    const-string/jumbo v1, "WINDOWTYPE_FIRSTENTERDIALOG_reCreateWindowView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
