.class final Lcom/miui/gamebooster/customview/h;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic hV:Lcom/miui/gamebooster/customview/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/h;->hV:Lcom/miui/gamebooster/customview/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tD(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tE(Z)V

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tC(Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tA(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/h;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/h;->hV:Lcom/miui/gamebooster/customview/c;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/c;->jT(Lcom/miui/gamebooster/customview/c;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/h;->hV:Lcom/miui/gamebooster/customview/c;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/c;->jU(Lcom/miui/gamebooster/customview/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/I;->setAlarm(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/h;->hV:Lcom/miui/gamebooster/customview/c;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/c;->jU(Lcom/miui/gamebooster/customview/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/I;->iu(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/h;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
