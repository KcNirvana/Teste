.class final Lcom/miui/appmanager/aw;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aXf:Lcom/miui/appmanager/AppManagerMainActivity;

.field final synthetic aXg:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/aw;->aXf:Lcom/miui/appmanager/AppManagerMainActivity;

    iput-object p2, p0, Lcom/miui/appmanager/aw;->aXg:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/aw;->aXg:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    check-cast v0, Lcom/miui/appmanager/model/i;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/appmanager/aw;->aXf:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/miui/appmanager/AppManagerMainActivity;->boK(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->isEnabled()Z

    move-result v4

    if-eq v4, v3, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v3, :cond_0

    invoke-virtual {v0, v6}, Lcom/miui/appmanager/model/i;->bho(Z)V

    :cond_0
    invoke-virtual {v0, v3}, Lcom/miui/appmanager/model/i;->bhn(Z)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/aw;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/aw;->aXf:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bop(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/aw;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
