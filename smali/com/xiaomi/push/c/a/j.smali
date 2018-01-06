.class public Lcom/xiaomi/push/c/a/j;
.super Lcom/xiaomi/b/a/d/h$a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/xiaomi/push/service/an;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/b/a/d/h$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/c/a/j;->a:Landroid/content/Context;

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/c/a/j;->b:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/c/a/j;->c:Lcom/xiaomi/push/service/an;

    return-void
.end method

.method private a(Ljava/io/File;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/j/a/l;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/push/c/d;->a()Lcom/xiaomi/push/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/c/d;->b()Lcom/xiaomi/push/c/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/xiaomi/push/c/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-array v6, v10, [B

    sget-object v7, Lcom/xiaomi/push/c/g;->a:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/xiaomi/push/c/a/j;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "push_cdata.lock"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/File;)Z

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v5, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v1

    if-eq v1, v10, :cond_5

    :cond_3
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_3
    :try_start_6
    invoke-static {v5}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    :goto_4
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v2

    goto :goto_1

    :cond_5
    :try_start_7
    invoke-static {v6}, Lcom/xiaomi/b/a/d/b;->a([B)I

    move-result v1

    new-array v8, v1, [B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-ne v9, v1, :cond_3

    invoke-static {v0, v8}, Lcom/xiaomi/push/c/f;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v8, v1

    if-eqz v8, :cond_2

    new-instance v8, Lcom/xiaomi/j/a/l;

    invoke-direct {v8}, Lcom/xiaomi/j/a/l;-><init>()V

    invoke-static {v8, v1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v0, v4

    move-object v3, v5

    :goto_5
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    :goto_6
    :try_start_a
    invoke-static {v3}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_7
    if-eqz v3, :cond_7

    :try_start_b
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    :try_start_c
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_7
    :goto_8
    :try_start_d
    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v1, v5

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v3, v1

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v0, v4

    move-object v3, v1

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v0, v4

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_5
.end method

.method private b()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/push/c/a/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/b/a/e/d;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/push/c/a/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/b/a/e/d;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/push/c/a/j;->d()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/push/c/a/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/b/a/e/d;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/push/c/a/j;->c()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/push/c/a/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/b/a/e/d;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/push/c/a/j;->c:Lcom/xiaomi/push/service/an;

    sget-object v3, Lcom/xiaomi/j/a/h;->L:Lcom/xiaomi/j/a/h;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/h;->a()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/push/c/a/j;->c:Lcom/xiaomi/push/service/an;

    sget-object v3, Lcom/xiaomi/j/a/h;->M:Lcom/xiaomi/j/a/h;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/h;->a()I

    move-result v3

    const v4, 0x69780

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v2

    const v3, 0x15180

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/push/c/a/j;->b:Landroid/content/SharedPreferences;

    const-string v4, "last_upload_data_timestamp"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private d()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/push/c/a/j;->c:Lcom/xiaomi/push/service/an;

    sget-object v3, Lcom/xiaomi/j/a/h;->J:Lcom/xiaomi/j/a/h;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/h;->a()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/push/c/a/j;->c:Lcom/xiaomi/push/service/an;

    sget-object v3, Lcom/xiaomi/j/a/h;->K:Lcom/xiaomi/j/a/h;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/h;->a()I

    move-result v3

    const v4, 0x3f480

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v2

    const v3, 0x15180

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/push/c/a/j;->b:Landroid/content/SharedPreferences;

    const-string v4, "last_upload_data_timestamp"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private e()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/push/c/a/j;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_upload_data_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/xiaomi/push/c/a/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "push_cdata.data"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/c/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/b/a/e/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x1c7000

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/push/c/a/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/xiaomi/push/c/a/j;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/d/c;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_2

    add-int/lit16 v3, v2, -0xfa0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_2
    new-instance v2, Lcom/xiaomi/j/a/ad;

    invoke-direct {v2}, Lcom/xiaomi/j/a/ad;-><init>()V

    invoke-virtual {v2, v0}, Lcom/xiaomi/j/a/ad;->a(Ljava/util/List;)Lcom/xiaomi/j/a/ad;

    invoke-static {v2}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/b/a;->a([B)[B

    move-result-object v0

    new-instance v2, Lcom/xiaomi/j/a/aj;

    const-string v3, "-1"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    sget-object v3, Lcom/xiaomi/j/a/s;->q:Lcom/xiaomi/j/a/s;

    iget-object v3, v3, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-virtual {v2, v0}, Lcom/xiaomi/j/a/aj;->a([B)Lcom/xiaomi/j/a/aj;

    invoke-static {}, Lcom/xiaomi/push/c/d;->a()Lcom/xiaomi/push/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/c/d;->b()Lcom/xiaomi/push/c/c;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v3, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    invoke-interface {v0, v2, v3, v5}, Lcom/xiaomi/push/c/c;->a(Lcom/xiaomi/j/a/aj;Lcom/xiaomi/j/a/a;Lcom/xiaomi/j/a/v;)V

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/push/c/a/j;->e()V

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/xiaomi/push/c/a/j;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ltapn"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
