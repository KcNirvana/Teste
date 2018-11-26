.class final Lcom/miui/securityscan/scanner/O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/c/e;


# instance fields
.field final synthetic ER:Lcom/miui/securityscan/scanner/j;

.field final synthetic ES:Lcom/miui/securityscan/c/a;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/O;->ER:Lcom/miui/securityscan/scanner/j;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/O;->ES:Lcom/miui/securityscan/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Gn(Ljava/util/List;I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/O;->ER:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/scanner/B;->FX(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/O;->ES:Lcom/miui/securityscan/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/O;->ES:Lcom/miui/securityscan/c/a;

    invoke-interface {v0}, Lcom/miui/securityscan/c/a;->JW()V

    :cond_1
    return-void
.end method

.method public Go()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/O;->ES:Lcom/miui/securityscan/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/O;->ES:Lcom/miui/securityscan/c/a;

    invoke-interface {v0}, Lcom/miui/securityscan/c/a;->JX()V

    :cond_0
    return-void
.end method

.method public Gp(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/O;->ER:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ek(Lcom/miui/securityscan/scanner/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public Gq()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/O;->ES:Lcom/miui/securityscan/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/O;->ES:Lcom/miui/securityscan/c/a;

    invoke-interface {v0}, Lcom/miui/securityscan/c/a;->JY()V

    :cond_0
    return-void
.end method
