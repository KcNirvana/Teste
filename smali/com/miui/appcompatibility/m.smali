.class final Lcom/miui/appcompatibility/m;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxm(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/m;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxf(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.appcompatibility.LaunchDialog.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    iget-object v1, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxh(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxl(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxk(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v2}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxg(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v2}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxj(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxf(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.appcompatibility.LaunchDialog.appstore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    iget-object v1, p0, Lcom/miui/appcompatibility/m;->baK:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxi(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxl(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/m;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
