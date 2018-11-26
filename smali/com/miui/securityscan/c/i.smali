.class final Lcom/miui/securityscan/c/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic JB:Lcom/miui/securityscan/c/b;

.field final synthetic JC:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/c/b;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/c/i;->JB:Lcom/miui/securityscan/c/b;

    iput-object p2, p0, Lcom/miui/securityscan/c/i;->JC:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/c/i;->JC:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nr()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/c/i;->JB:Lcom/miui/securityscan/c/b;

    iget-boolean v1, v1, Lcom/miui/securityscan/c/b;->Jv:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/ui/a/c;->HW(I)V

    :cond_0
    return-void
.end method
