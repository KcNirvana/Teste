.class final Lcom/miui/gamebooster/service/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nf:Lcom/miui/gamebooster/service/B;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/B;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/D;->nf:Lcom/miui/gamebooster/service/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/D;->nf:Lcom/miui/gamebooster/service/B;

    iget-object v0, v0, Lcom/miui/gamebooster/service/B;->nd:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oJ()V

    return-void
.end method
