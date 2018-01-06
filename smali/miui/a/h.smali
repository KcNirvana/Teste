.class Lmiui/a/h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lmiui/a/g;


# direct methods
.method constructor <init>(Lmiui/a/g;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/a/h;->b:Lmiui/a/g;

    iput-object p2, p0, Lmiui/a/h;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lmiui/a/h;->b:Lmiui/a/g;

    iget-object v0, v0, Lmiui/a/g;->a:Lmiui/a/e;

    invoke-static {v0}, Lmiui/a/e;->b(Lmiui/a/e;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lmiui/a/h;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/a/h;->b:Lmiui/a/g;

    iget-object v0, v0, Lmiui/a/g;->a:Lmiui/a/e;

    invoke-static {v0}, Lmiui/a/e;->c(Lmiui/a/e;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    new-instance v1, Lmiui/a/e$a;

    iget-object v2, p0, Lmiui/a/h;->b:Lmiui/a/g;

    iget-object v2, v2, Lmiui/a/g;->a:Lmiui/a/e;

    invoke-direct {v1, v2, v0}, Lmiui/a/e$a;-><init>(Lmiui/a/e;Landroid/app/Dialog;)V

    iget-object v0, p0, Lmiui/a/h;->b:Lmiui/a/g;

    iget-object v0, v0, Lmiui/a/g;->a:Lmiui/a/e;

    invoke-virtual {v0}, Lmiui/a/e;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "SdkUpdateFinishDialog"

    invoke-virtual {v1, v0, v2}, Lmiui/a/e$a;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/a/h;->b:Lmiui/a/g;

    iget-object v0, v0, Lmiui/a/g;->a:Lmiui/a/e;

    invoke-static {v0}, Lmiui/a/e;->d(Lmiui/a/e;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/a/h;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/a/h;->a(Ljava/lang/Boolean;)V

    return-void
.end method
