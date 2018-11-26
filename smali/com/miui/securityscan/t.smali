.class final Lcom/miui/securityscan/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Nz:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/t;->Nz:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/t;->Nz:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->NV(Lcom/miui/securityscan/MainActivity;Z)Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kq(I)V

    const-string/jumbo v0, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enter_homepage_way"

    const-string/jumbo v2, "security_scan_diversion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/securityscan/t;->Nz:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1, v0}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "com.miui.securityscan.MainActivity"

    const-string/jumbo v2, "URISyntaxException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
