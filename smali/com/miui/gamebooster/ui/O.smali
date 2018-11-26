.class final Lcom/miui/gamebooster/ui/O;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic dg:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/O;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/p;->gd(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "top_200_games.json"

    invoke-static {v3, v4}, Lcom/miui/gamebooster/a/b;->fa(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v4}, Lcom/miui/gamebooster/ui/c;->bp(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/miui/gamebooster/a/a;->eU(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/miui/common/b/k;->aIn(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v5, v0}, Lcom/miui/gamebooster/ui/c;->bI(Lcom/miui/gamebooster/ui/c;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v5}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v6}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v5, v7, v8, v9}, Lcom/miui/gamebooster/a/p;->ga(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v6, Lcom/miui/gamebooster/model/e;

    iget-object v7, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v7}, Lcom/miui/gamebooster/ui/c;->bp(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, v0, v10, v5, v7}, Lcom/miui/gamebooster/model/e;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-array v0, v10, [Ljava/util/ArrayList;

    aput-object v1, v0, v9

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/O;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/c;->bp(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/a/a;->eT(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs ek([Ljava/util/ArrayList;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bT(Lcom/miui/gamebooster/ui/c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bW(Lcom/miui/gamebooster/ui/c;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/O;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/c;->bk(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/model/e;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bi(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/view/DragGridView;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/view/DragGridView;->qu(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bh(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/b/i;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bV(Lcom/miui/gamebooster/ui/c;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tW(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070907

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/c;->bJ(Lcom/miui/gamebooster/ui/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v4}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/ui/c;->bS(Lcom/miui/gamebooster/ui/c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/O;->dg:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07090b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/O;->ek([Ljava/util/ArrayList;)V

    return-void
.end method
