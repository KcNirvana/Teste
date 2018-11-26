.class final Lcom/miui/securityscan/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic Nk:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/e;->Nk:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/securityscan/e;->Nk:Lcom/miui/securityscan/MainActivity;

    iget-object v0, p0, Lcom/miui/securityscan/e;->Nk:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nu(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/miui/securityscan/MainActivity;->Ol(Lcom/miui/securityscan/MainActivity;Z)V

    iget-object v0, p0, Lcom/miui/securityscan/e;->Nk:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nu(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/e;->Nk:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v2, Lcom/miui/securityscan/f;

    invoke-direct {v2, p0}, Lcom/miui/securityscan/f;-><init>(Lcom/miui/securityscan/e;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/securityscan/scanner/w;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
