.class final Lcom/miui/gamebooster/ui/P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dh:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, -0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/miui/gamebooster/a/p;->gc(Landroid/content/Context;I)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "package_name"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "package_uid"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v5, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v5, v1, v0}, Lcom/miui/gamebooster/ui/c;->as(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v6}, Lcom/miui/gamebooster/ui/c;->bp(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v6}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/miui/gamebooster/model/e;

    iget-object v8, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v8}, Lcom/miui/gamebooster/ui/c;->bp(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v5, v9, v6, v8}, Lcom/miui/gamebooster/model/e;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v1, v0, v5, v6}, Lcom/miui/gamebooster/a/p;->gb(Landroid/content/Context;Ljava/lang/String;IZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    new-instance v1, Lcom/miui/gamebooster/ui/Q;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bc(Lcom/miui/gamebooster/ui/c;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/miui/gamebooster/ui/Q;-><init>(Lcom/miui/gamebooster/ui/P;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bQ(Lcom/miui/gamebooster/ui/c;Lcom/miui/common/a/b/b;)V

    return-void

    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v5}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v1, v0, v6, v7}, Lcom/miui/gamebooster/a/p;->gb(Landroid/content/Context;Ljava/lang/String;IZI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_2
.end method
