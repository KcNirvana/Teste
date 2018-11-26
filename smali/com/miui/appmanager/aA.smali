.class final Lcom/miui/appmanager/aA;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aXl:Lcom/miui/appmanager/AppManagerMainActivity;

.field final synthetic aXm:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    iput-object p2, p0, Lcom/miui/appmanager/aA;->aXm:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/aA;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boJ(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/util/SparseArray;

    move-result-object v9

    iget-object v0, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boI(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/util/SparseArray;

    move-result-object v10

    move v0, v8

    :goto_0
    iget-object v1, p0, Lcom/miui/appmanager/aA;->aXm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/appmanager/aA;->aXm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/appmanager/model/i;

    invoke-virtual {v3}, Lcom/miui/appmanager/model/i;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v3}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v1, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1, v9, v12, v11}, Lcom/miui/appmanager/AppManagerMainActivity;->boQ(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/util/SparseArray;Ljava/lang/String;I)J

    move-result-wide v6

    iget-object v1, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v3}, Lcom/miui/appmanager/model/i;->bhk()Z

    move-result v4

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static/range {v1 .. v7}, Lcom/miui/appmanager/AppManagerMainActivity;->bpc(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/content/Context;Lcom/miui/appmanager/model/i;ZLjava/util/Map;J)V

    invoke-virtual {v3, v6, v7}, Lcom/miui/appmanager/model/i;->bht(J)V

    iget-object v1, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1, v12, v11}, Lcom/miui/appmanager/AppManagerMainActivity;->boK(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v3}, Lcom/miui/appmanager/model/i;->isEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_0

    invoke-virtual {v3, v8}, Lcom/miui/appmanager/model/i;->bho(Z)V

    :cond_0
    invoke-virtual {v3, v1}, Lcom/miui/appmanager/model/i;->bhn(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/aA;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bob(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bob(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bop(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boG(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/aA;->aXl:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpe(Lcom/miui/appmanager/AppManagerMainActivity;)V

    goto :goto_0
.end method
