.class final Lmiui/external/h;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic bri:Landroid/app/Dialog;

.field final synthetic brj:Lmiui/external/f;


# direct methods
.method constructor <init>(Lmiui/external/f;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/h;->brj:Lmiui/external/f;

    iput-object p2, p0, Lmiui/external/h;->bri:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs bPv([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lmiui/external/h;->brj:Lmiui/external/f;

    iget-object v0, v0, Lmiui/external/f;->brg:Lmiui/external/k;

    invoke-static {v0}, Lmiui/external/k;->bPM(Lmiui/external/k;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bPw(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lmiui/external/h;->bri:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/h;->brj:Lmiui/external/f;

    iget-object v0, v0, Lmiui/external/f;->brg:Lmiui/external/k;

    invoke-static {v0}, Lmiui/external/k;->bPI(Lmiui/external/k;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    new-instance v1, Lmiui/external/e;

    iget-object v2, p0, Lmiui/external/h;->brj:Lmiui/external/f;

    iget-object v2, v2, Lmiui/external/f;->brg:Lmiui/external/k;

    invoke-direct {v1, v2, v0}, Lmiui/external/e;-><init>(Lmiui/external/k;Landroid/app/Dialog;)V

    iget-object v0, p0, Lmiui/external/h;->brj:Lmiui/external/f;

    iget-object v0, v0, Lmiui/external/f;->brg:Lmiui/external/k;

    invoke-virtual {v0}, Lmiui/external/k;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "SdkUpdateFinishDialog"

    invoke-virtual {v1, v0, v2}, Lmiui/external/e;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/external/h;->brj:Lmiui/external/f;

    iget-object v0, v0, Lmiui/external/f;->brg:Lmiui/external/k;

    invoke-static {v0}, Lmiui/external/k;->bPL(Lmiui/external/k;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/external/h;->bPv([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/external/h;->bPw(Ljava/lang/Boolean;)V

    return-void
.end method
