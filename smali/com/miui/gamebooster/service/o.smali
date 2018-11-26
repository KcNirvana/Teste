.class final Lcom/miui/gamebooster/service/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mM:Lcom/miui/gamebooster/service/n;

.field final synthetic mN:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/o;->mM:Lcom/miui/gamebooster/service/n;

    iput-object p2, p0, Lcom/miui/gamebooster/service/o;->mN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/o;->mM:Lcom/miui/gamebooster/service/n;

    iget-object v0, v0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/o;->mM:Lcom/miui/gamebooster/service/n;

    iget-object v1, v1, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/o;->mM:Lcom/miui/gamebooster/service/n;

    iget-object v0, v0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/o;->mM:Lcom/miui/gamebooster/service/n;

    iget-object v1, v1, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/o;->mN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/service/d;->pd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/o;->mM:Lcom/miui/gamebooster/service/n;

    iget-object v0, v0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->oh(Lcom/miui/gamebooster/service/GameBoosterService;)V

    :cond_0
    return-void
.end method
