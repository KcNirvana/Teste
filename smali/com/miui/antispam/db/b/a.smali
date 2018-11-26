.class public Lcom/miui/antispam/db/b/a;
.super Lcom/miui/antispam/db/b/c;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/db/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public YE(Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antispam/db/b/a;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "cloudUid = ? "

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_1

    move v0, v7

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    move v0, v8

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return v8

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public YF(Landroid/util/SparseArray;)V
    .locals 10

    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/db/a/a;

    invoke-virtual {p0}, Lcom/miui/antispam/db/b/a;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "data"

    invoke-virtual {v0}, Lcom/miui/antispam/db/a/a;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v0}, Lcom/miui/antispam/db/a/a;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "cloudUid"

    invoke-virtual {v0}, Lcom/miui/antispam/db/a/a;->Yy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v4, v0}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    if-le v0, v9, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/db/a/a;

    invoke-virtual {p0}, Lcom/miui/antispam/db/b/a;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "data"

    invoke-virtual {v0}, Lcom/miui/antispam/db/a/a;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v0}, Lcom/miui/antispam/db/a/a;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "cloudUid = ? "

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/antispam/db/a/a;->Yy()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v4, v0}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    if-le v0, v9, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/db/a/a;

    invoke-virtual {p0}, Lcom/miui/antispam/db/b/a;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "cloudUid = ? "

    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/antispam/db/a/a;->Yy()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v3, v0}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    if-le v0, v9, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->ZD:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/antispam/db/b/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antispam/e;->getInstance(Landroid/content/Context;)Lcom/miui/antispam/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/e;->ady()Lcom/miui/antispam/policy/PolicyUtils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/policy/PolicyUtils/b;->init()V

    :cond_7
    return-void
.end method

.method public YG(Landroid/database/Cursor;)Lcom/miui/antispam/db/a/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic YG(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/antispam/db/b/a;->YG(Landroid/database/Cursor;)Lcom/miui/antispam/db/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
