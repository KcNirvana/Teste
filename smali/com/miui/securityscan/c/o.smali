.class final Lcom/miui/securityscan/c/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic JT:Lcom/miui/securityscan/c/h;

.field final synthetic JU:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/c/h;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/c/o;->JT:Lcom/miui/securityscan/c/h;

    iput-object p2, p0, Lcom/miui/securityscan/c/o;->JU:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/c/o;->JU:Lcom/miui/securityscan/MainActivity;

    iget-boolean v0, v0, Lcom/miui/securityscan/MainActivity;->MC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/c/o;->JU:Lcom/miui/securityscan/MainActivity;

    iget-boolean v0, v0, Lcom/miui/securityscan/MainActivity;->MB:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/c/o;->JU:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->MJ()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/c/o;->JU:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nf()I

    goto :goto_0
.end method
