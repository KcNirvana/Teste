.class final Lcom/miui/gamebooster/a/O;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic fd:Ljava/lang/Boolean;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/a/O;->fd:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/miui/gamebooster/a/O;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/a/O;->fd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/a/O;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/x;->hD(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/a/O;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/a/O;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "com.miui.securitycenter:string/game_booster"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/x;->hE(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/a/O;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/a/O;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    const-string/jumbo v3, "com.miui.securitycenter:string/game_booster"

    invoke-static {v1, v2, v3}, Lcom/miui/gamebooster/a/n;->fZ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/a/O;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
