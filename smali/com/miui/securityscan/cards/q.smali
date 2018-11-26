.class final Lcom/miui/securityscan/cards/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Cm:Lcom/miui/securityscan/cards/f;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/cards/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/cards/q;->Cm:Lcom/miui/securityscan/cards/f;

    iput-object p2, p0, Lcom/miui/securityscan/cards/q;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/cards/q;->Cm:Lcom/miui/securityscan/cards/f;

    invoke-static {v0}, Lcom/miui/securityscan/cards/f;->CP(Lcom/miui/securityscan/cards/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/cards/q;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/cards/q;->Cm:Lcom/miui/securityscan/cards/f;

    invoke-static {v1}, Lcom/miui/securityscan/cards/f;->CP(Lcom/miui/securityscan/cards/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InstallCacheManager"

    const-string/jumbo v2, " startActivity error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
