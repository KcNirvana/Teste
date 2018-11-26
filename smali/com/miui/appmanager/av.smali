.class final Lcom/miui/appmanager/av;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aXd:Lcom/miui/appmanager/AppManagerMainActivity;

.field final synthetic aXe:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    iput-object p2, p0, Lcom/miui/appmanager/av;->aXe:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bpo(Lcom/miui/appmanager/t;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    move v0, v8

    move v1, v8

    :goto_0
    iget-object v2, p0, Lcom/miui/appmanager/av;->aXe:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/miui/appmanager/av;->aXe:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/appmanager/model/i;

    invoke-virtual {v3}, Lcom/miui/appmanager/model/i;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v4, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v5, p1, Lcom/miui/appmanager/t;->aVT:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->boQ(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/util/SparseArray;Ljava/lang/String;I)J

    move-result-wide v6

    iget-object v4, p1, Lcom/miui/appmanager/t;->aVS:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    invoke-virtual {v3}, Lcom/miui/appmanager/model/i;->bhk()Z

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v2, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v2}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v1 .. v7}, Lcom/miui/appmanager/AppManagerMainActivity;->bpc(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/content/Context;Lcom/miui/appmanager/model/i;ZLjava/util/Map;J)V

    invoke-virtual {v3, v6, v7}, Lcom/miui/appmanager/model/i;->bht(J)V

    move v1, v9

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boh(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bop(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boB(Lcom/miui/appmanager/AppManagerMainActivity;I)I

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, v9}, Lcom/miui/appmanager/AppManagerMainActivity;->boB(Lcom/miui/appmanager/AppManagerMainActivity;I)I

    goto :goto_2
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/appmanager/t;
    .locals 2

    new-instance v0, Lcom/miui/appmanager/t;

    iget-object v1, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {v0, v1}, Lcom/miui/appmanager/t;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iget-object v1, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boJ(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/appmanager/t;->aVT:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/miui/appmanager/av;->aXd:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boI(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/appmanager/t;->aVS:Landroid/util/SparseArray;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/av;->doInBackground([Ljava/lang/Void;)Lcom/miui/appmanager/t;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/appmanager/t;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/av;->bpo(Lcom/miui/appmanager/t;)V

    return-void
.end method
