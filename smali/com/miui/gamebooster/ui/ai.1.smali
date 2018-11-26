.class final Lcom/miui/gamebooster/ui/ai;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic dH:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bs(Lcom/miui/gamebooster/ui/c;)Z

    move-result v0

    const-string/jumbo v2, "gb_intent_xunyouuser"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bs(Lcom/miui/gamebooster/ui/c;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/miui/gamebooster/ui/c;->bG(Lcom/miui/gamebooster/ui/c;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bt(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/MainTopContentFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/constants/a;->sV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bt(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/MainTopContentFrame;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bs(Lcom/miui/gamebooster/ui/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->Z(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bs(Lcom/miui/gamebooster/ui/c;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/gamebooster/ui/c;->bK(Lcom/miui/gamebooster/ui/c;Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bs(Lcom/miui/gamebooster/ui/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ai;->dH:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bj(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/e;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x70

    invoke-virtual {v0, v2, v1}, Lcom/miui/gamebooster/ui/e;->aLg(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tU(Z)V

    goto :goto_1
.end method
