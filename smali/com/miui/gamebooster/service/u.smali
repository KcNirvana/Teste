.class final Lcom/miui/gamebooster/service/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mW:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/u;->mW:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/u;->mW:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/u;->mW:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oB(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Lcom/miui/gamebooster/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->createFloatView()V

    :cond_0
    return-void
.end method
