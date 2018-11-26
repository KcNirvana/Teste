.class final Lcom/miui/securityscan/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic NJ:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/A;->NJ:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/16 v3, 0x67

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kq(I)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "enter_homepage_way"

    const-string/jumbo v2, "security_scan_diversion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/securityscan/A;->NJ:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/cleanmaster/b;->bxB(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/A;->NJ:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1, v0, v3}, Lcom/miui/common/b/k;->aIq(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/A;->NJ:Lcom/miui/securityscan/MainActivity;

    const v1, 0x7f070712

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/securityscan/A;->NJ:Lcom/miui/securityscan/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/miui/cleanmaster/a;->bxw(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method
