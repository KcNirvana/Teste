.class final Lcom/miui/appmanager/az;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aXj:Lcom/miui/appmanager/AppManagerMainActivity;

.field final synthetic aXk:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/az;->aXj:Lcom/miui/appmanager/AppManagerMainActivity;

    iput-object p2, p0, Lcom/miui/appmanager/az;->aXk:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/az;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    iget-object v0, p0, Lcom/miui/appmanager/az;->aXj:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/appmanager/az;->aXk:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    check-cast v0, Lcom/miui/appmanager/model/i;

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->bhf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/common/h/b;->aNl(Ljava/lang/String;)Lcom/miui/common/h/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/common/h/a;->aNj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/model/i;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/miui/appmanager/az;->aXj:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->bhf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/appmanager/AppManagerMainActivity;->bnl(Ljava/lang/String;)Lcom/miui/appmanager/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/model/i;->bhq(Lcom/miui/appmanager/b;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/az;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/az;->aXj:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bog(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/az;->aXj:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bor(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/az;->aXj:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpe(Lcom/miui/appmanager/AppManagerMainActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/az;->aXj:Lcom/miui/appmanager/AppManagerMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boC(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z

    return-void
.end method
