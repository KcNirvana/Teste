.class final Lcom/miui/optimizemanage/optimizeresult/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic xo:Lcom/miui/optimizemanage/optimizeresult/o;

.field final synthetic xp:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

.field final synthetic xq:Lcom/miui/optimizemanage/optimizeresult/o;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/optimizeresult/o;Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xo:Lcom/miui/optimizemanage/optimizeresult/o;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xp:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iput-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xq:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xp:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xp:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xp:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xq:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->Bq(Lcom/miui/optimizemanage/optimizeresult/o;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xo:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v0}, Lcom/miui/optimizemanage/optimizeresult/o;->zc(Lcom/miui/optimizemanage/optimizeresult/o;)I

    move-result v0

    const/16 v1, 0x271e

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xo:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v0}, Lcom/miui/optimizemanage/optimizeresult/o;->zc(Lcom/miui/optimizemanage/optimizeresult/o;)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xo:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/o;->getPositionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xo:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v1}, Lcom/miui/optimizemanage/optimizeresult/o;->yZ(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/a;->AH(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/v;->xo:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v0}, Lcom/miui/optimizemanage/optimizeresult/o;->zc(Lcom/miui/optimizemanage/optimizeresult/o;)I

    move-result v0

    const/16 v1, 0x2715

    if-ne v0, v1, :cond_2

    goto :goto_0
.end method
