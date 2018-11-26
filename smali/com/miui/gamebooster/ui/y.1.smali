.class final Lcom/miui/gamebooster/ui/y;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic cK:Lcom/miui/gamebooster/ui/WhiteListActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WhiteListActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/y;->cK:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/y;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/y;->cK:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->E(Lcom/miui/gamebooster/ui/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v7, 0x3e7

    invoke-interface {v0, v6, v7}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {}, Lcom/miui/gamebooster/ui/WhiteListActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/miui/common/b/k;->aIn(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gamebooster/ui/y;->cK:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/WhiteListActivity;->A(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/miui/gamebooster/model/e;

    iget-object v7, p0, Lcom/miui/gamebooster/ui/y;->cK:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v7}, Lcom/miui/gamebooster/ui/WhiteListActivity;->A(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gamebooster/ui/y;->cK:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v8}, Lcom/miui/gamebooster/ui/WhiteListActivity;->A(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v3, v0, v10, v7, v8}, Lcom/miui/gamebooster/model/e;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-instance v3, Lcom/miui/gamebooster/model/e;

    iget-object v7, p0, Lcom/miui/gamebooster/ui/y;->cK:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v7}, Lcom/miui/gamebooster/ui/WhiteListActivity;->A(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gamebooster/ui/y;->cK:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v8}, Lcom/miui/gamebooster/ui/WhiteListActivity;->A(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v3, v0, v9, v7, v8}, Lcom/miui/gamebooster/model/e;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/miui/gamebooster/model/f;

    invoke-direct {v1}, Lcom/miui/gamebooster/model/f;-><init>()V

    sget-object v2, Lcom/miui/gamebooster/model/HeaderType;->kG:Lcom/miui/gamebooster/model/HeaderType;

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/f;->mX(Lcom/miui/gamebooster/model/HeaderType;)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/y;->cK:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-virtual {v2}, Lcom/miui/gamebooster/ui/WhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0c0053

    invoke-virtual {v2, v7, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/f;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/f;->mY(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/f;->mZ(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/miui/gamebooster/model/f;

    invoke-direct {v1}, Lcom/miui/gamebooster/model/f;-><init>()V

    sget-object v2, Lcom/miui/gamebooster/model/HeaderType;->kH:Lcom/miui/gamebooster/model/HeaderType;

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/f;->mX(Lcom/miui/gamebooster/model/HeaderType;)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/y;->cK:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-virtual {v2}, Lcom/miui/gamebooster/ui/WhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x7f0c0054

    invoke-virtual {v2, v6, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/f;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/f;->mY(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/f;->mZ(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :cond_8
    move-object v2, v1

    goto/16 :goto_0
.end method
