.class final Lcom/miui/antivirus/activity/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic asY:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/t;->asY:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/high16 v2, 0x4000000

    iget-object v0, p0, Lcom/miui/antivirus/activity/t;->asY:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axy(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/activity/t;->asY:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1, v0}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/t;->asY:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axy(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "clean_master"

    :goto_1
    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azN(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycenter"

    const-string/jumbo v3, "com.miui.securityscan.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_auto_optimize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/activity/t;->asY:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "home_page_optimise"

    goto :goto_1
.end method
