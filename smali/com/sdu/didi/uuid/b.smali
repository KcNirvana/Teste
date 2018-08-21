.class public Lcom/sdu/didi/uuid/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/uuid/b$a;
    }
.end annotation


# static fields
.field private static b:Lcom/sdu/didi/uuid/b;

.field private static c:Landroid/app/Activity;


# instance fields
.field private final a:J

.field private d:[I

.field private e:[I

.field private f:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/sdu/didi/uuid/b;->a:J

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sdu/didi/uuid/b;->d:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sdu/didi/uuid/b;->e:[I

    new-instance v0, Lcom/sdu/didi/uuid/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sdu/didi/uuid/b$1;-><init>(Lcom/sdu/didi/uuid/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/b;->f:Landroid/os/Handler;

    sput-object p1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    return-void

    :array_0
    .array-data 4
        0xe7
        0x104
        0xfb
    .end array-data

    :array_1
    .array-data 4
        0xc1
        0xf0
        0xe8
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/b;
    .locals 2

    const-class v1, Lcom/sdu/didi/uuid/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdu/didi/uuid/b;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/b;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/b;

    :cond_0
    sget-object v0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/sdu/didi/uuid/b$a;)V
    .locals 4

    invoke-direct {p0}, Lcom/sdu/didi/uuid/b;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sdu/didi/uuid/b$a;->a()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sdu/didi/uuid/b$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1}, Lcom/sdu/didi/uuid/b$a;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/sdu/didi/uuid/b;Lcom/sdu/didi/uuid/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sdu/didi/uuid/b;->a(Lcom/sdu/didi/uuid/b$a;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private a([B)V
    .locals 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sdu/didi/uuid/b;->e:[I

    invoke-static {v1, v2}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->e:[I

    invoke-static {v1, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v3, p1}, Lcom/sdu/didi/uuid/c;->a(Ljava/lang/String;[B)V

    :cond_4
    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->d:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sdu/didi/uuid/b;->d:[I

    invoke-static {v3, v4}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v3, p1}, Lcom/sdu/didi/uuid/c;->a(Ljava/lang/String;[B)V

    :cond_7
    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sdu/didi/uuid/b;->e:[I

    invoke-static {v1, v2}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sdu/didi/uuid/b;->d:[I

    invoke-static {v1, v2}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sdu/didi/uuid/c;->a(Ljava/lang/String;[B)V

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized b()[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sdu/didi/uuid/b;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/sdu/didi/uuid/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/sdu/didi/uuid/c;->a([B)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v1, v2, Lcom/sdu/didi/uuid/ed;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/sdu/didi/uuid/ed;

    move-object v1, v0

    iget-object v5, v1, Lcom/sdu/didi/uuid/ed;->a:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Lcom/sdu/didi/uuid/ed;

    move-object v1, v0

    iget-object v1, v1, Lcom/sdu/didi/uuid/ed;->b:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Lcom/sdu/didi/uuid/ed;

    move-object v1, v0

    iget-object v1, v1, Lcom/sdu/didi/uuid/ed;->c:Ljava/lang/String;

    check-cast v2, Lcom/sdu/didi/uuid/ed;

    iget-object v1, v2, Lcom/sdu/didi/uuid/ed;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v5, v3, v2

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-direct {p0}, Lcom/sdu/didi/uuid/b;->e()I

    move-result v1

    if-ne v1, v6, :cond_0

    invoke-direct {p0, v4}, Lcom/sdu/didi/uuid/b;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v1, v3

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sdu/didi/uuid/b;->c()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sdu/didi/uuid/b;->c()[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private c()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/c;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sdu/didi/uuid/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sdu/didi/uuid/ed;

    invoke-direct {v4}, Lcom/sdu/didi/uuid/ed;-><init>()V

    iput-object v1, v4, Lcom/sdu/didi/uuid/ed;->a:Ljava/lang/String;

    iput-object v2, v4, Lcom/sdu/didi/uuid/ed;->b:Ljava/lang/String;

    iput-object v3, v4, Lcom/sdu/didi/uuid/ed;->c:Ljava/lang/String;

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/sdu/didi/uuid/ed;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/sdu/didi/uuid/c;->a(Ljava/lang/Object;)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v3, v4, Lcom/sdu/didi/uuid/ed;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-direct {p0, v2}, Lcom/sdu/didi/uuid/b;->a([B)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->e:[I

    invoke-static {v1, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sdu/didi/uuid/b;->e:[I

    invoke-static {v3, v4}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_4
    :goto_1
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_5
    sget-object v3, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sdu/didi/uuid/b;->d:[I

    invoke-static {v3, v5}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sdu/didi/uuid/b;->d:[I

    invoke-static {v3, v6}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_7
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    move-object v1, v3

    move-object v3, v8

    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_8
    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->e:[I

    invoke-static {v1, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->d:[I

    invoke-static {v1, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_9
    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    move-object v8, v1

    move-object v1, v3

    move-object v3, v8

    goto :goto_3

    :cond_d
    move-object v1, v2

    goto/16 :goto_2

    :cond_e
    move-object v4, v2

    goto/16 :goto_1
.end method

.method private e()I
    .locals 5

    const/4 v0, -0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->e:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->e:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->d:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sdu/didi/uuid/b;->d:[I

    invoke-static {v3, v4}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->e:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->d:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private f()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0}, Lcom/sdu/didi/uuid/b;->b()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v2, "suuid"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {p0, v0, v2, v3}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "gqid"

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {p0, v0, v2, v1}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "imei"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "imsi"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mac"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "model"

    invoke-static {}, Lcom/sdu/didi/uuid/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sdu/didi/uuid/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "brand"

    invoke-static {}, Lcom/sdu/didi/uuid/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SimOperatorName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "mobile_ip"

    invoke-static {}, Lcom/sdu/didi/uuid/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "net"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/c;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "wifi_name"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "wifi_ip"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "wifi_mac"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "wifi_mac"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CGI"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/c;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "root"

    invoke-static {}, Lcom/sdu/didi/uuid/c;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "app_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sdu/didi/uuid/c;->f(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "app_install_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sdu/didi/uuid/c;->l(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "app_type"

    sget-object v2, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sdu/didi/uuid/a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0}, Lcom/sdu/didi/uuid/b;->f()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "sig"

    sget-object v4, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sdu/didi/uuid/SigLib;->getSig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sdu/didi/uuid/a;->a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/uuid/a;->a()V

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/sdu/didi/uuid/b;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/zip/Deflater;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/zip/Deflater;-><init>(I)V

    new-array v2, v3, [B

    :try_start_1
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [B

    invoke-virtual {v1, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    sget-object v1, Lcom/sdu/didi/uuid/b;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdu/didi/uuid/a;->b()V

    invoke-static {v2, v3, v0, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string/jumbo v0, ""

    goto :goto_1
.end method
