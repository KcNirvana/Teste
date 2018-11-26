.class final Lcom/miui/gamebooster/service/B;
.super Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager$Stub;
.source ""


# instance fields
.field final synthetic nd:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/B;->nd:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public qd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/B;->nd:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oK(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/C;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/C;-><init>(Lcom/miui/gamebooster/service/B;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public qe()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/B;->nd:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oK(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/D;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/D;-><init>(Lcom/miui/gamebooster/service/B;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
