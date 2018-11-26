.class final Lcom/miui/securityscan/m;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic Ns:Lcom/miui/securityscan/MainActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/m;->Ns:Lcom/miui/securityscan/MainActivity;

    iput-object p2, p0, Lcom/miui/securityscan/m;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/miui/securityscan/m;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/f/b;->LR(Landroid/content/Context;)Lcom/miui/securityscan/f/b;

    move-result-object v0

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/f/b;->LS(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "errCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "errCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "identityStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "identityStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-static {v2}, Lcom/miui/securityscan/c;->Oq(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v3}, Lcom/miui/securityscan/c;->Oq(Z)V

    goto :goto_0
.end method
