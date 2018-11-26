.class final Lcom/miui/securityscan/c/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic JR:Lcom/miui/securityscan/c/g;

.field final synthetic JS:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/c/g;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/c/n;->JR:Lcom/miui/securityscan/c/g;

    iput-object p2, p0, Lcom/miui/securityscan/c/n;->JS:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/c/n;->JS:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/securityscan/MainActivity;->LY:Z

    iget-object v0, p0, Lcom/miui/securityscan/c/n;->JS:Lcom/miui/securityscan/MainActivity;

    iget-boolean v0, v0, Lcom/miui/securityscan/MainActivity;->LJ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/c/n;->JS:Lcom/miui/securityscan/MainActivity;

    iget-boolean v0, v0, Lcom/miui/securityscan/MainActivity;->LI:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/c/n;->JS:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->MK()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/c/n;->JS:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->MS:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/securityscan/c/n;->JS:Lcom/miui/securityscan/MainActivity;

    iget-object v1, v1, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/B;->getScore()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
