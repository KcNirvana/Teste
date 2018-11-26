.class final Lcom/miui/securityscan/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic Nq:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/k;->Nq:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/k;->Nq:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/k;->Nq:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->NG(Lcom/miui/securityscan/MainActivity;)Lcom/miui/securityscan/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/j;->DT(Lcom/miui/securityscan/c/a;)V

    iget-object v0, p0, Lcom/miui/securityscan/k;->Nq:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nu(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/k;->Nq:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nm()V

    :cond_0
    return-void
.end method
