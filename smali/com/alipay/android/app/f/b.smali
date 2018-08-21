.class public Lcom/alipay/android/app/f/b;
.super Ljava/lang/Object;
.source "TidInfo.java"


# static fields
.field private static a:Lcom/alipay/android/app/f/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x46

    if-gt v2, v3, :cond_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized d()Lcom/alipay/android/app/f/b;
    .locals 18

    const-class v4, Lcom/alipay/android/app/f/b;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iget-object v0, v0, Lcom/alipay/android/app/f/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/f/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Lcom/alipay/android/app/f/a;

    invoke-direct {v5, v2}, Lcom/alipay/android/app/f/a;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    :try_start_2
    invoke-static {v2}, Lcom/alipay/android/app/sys/a;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/sys/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/android/app/sys/a;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v3, v2}, Lcom/alipay/android/app/f/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    const/4 v10, 0x1

    :try_start_3
    const-string/jumbo v11, "phonecashiermsp"

    const-string/jumbo v12, "TidInfo.getTidInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "tidtime db:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v8

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v11, v12, v8}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    const-string/jumbo v9, "phonecashiermsp"

    const-string/jumbo v10, "TidInfo.getTidInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "db.getTid imsi imei"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    const-string/jumbo v9, "phonecashiermsp"

    const-string/jumbo v10, "TidInfo.getTidInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "db.getTid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/f/b;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5, v3, v2}, Lcom/alipay/android/app/f/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    :try_start_4
    invoke-virtual {v5, v3, v2}, Lcom/alipay/android/app/f/a;->c(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-wide v2

    move-wide/from16 v16, v2

    move-object v2, v0

    move-object v3, v1

    move-wide/from16 v0, v16

    :goto_1
    :try_start_5
    invoke-virtual {v5}, Lcom/alipay/android/app/f/a;->close()V

    invoke-static {}, Lcom/alipay/android/app/f/b;->f()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iget-object v5, v5, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v2, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    invoke-static {}, Lcom/alipay/android/app/f/b;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    :cond_1
    :goto_2
    sget-object v2, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iput-wide v0, v2, Lcom/alipay/android/app/f/b;->d:J

    sget-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iput-object v3, v0, Lcom/alipay/android/app/f/b;->b:Ljava/lang/String;

    :goto_3
    sget-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_2
    :try_start_6
    invoke-virtual {v5, v3, v2}, Lcom/alipay/android/app/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    :try_start_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iget-object v5, v5, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    sget-object v5, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iput-object v2, v5, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_0
    move-exception v2

    :try_start_8
    invoke-virtual {v5}, Lcom/alipay/android/app/f/a;->close()V

    invoke-static {}, Lcom/alipay/android/app/f/b;->f()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iget-object v2, v2, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    invoke-static {}, Lcom/alipay/android/app/f/b;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    :cond_5
    :goto_4
    sget-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iput-wide v6, v0, Lcom/alipay/android/app/f/b;->d:J

    sget-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iput-object v1, v0, Lcom/alipay/android/app/f/b;->b:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iget-object v2, v2, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    sget-object v2, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iput-object v0, v2, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, v16

    :goto_5
    invoke-virtual {v5}, Lcom/alipay/android/app/f/a;->close()V

    invoke-static {}, Lcom/alipay/android/app/f/b;->f()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iget-object v3, v3, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v1, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    invoke-static {}, Lcom/alipay/android/app/f/b;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    :cond_8
    :goto_6
    sget-object v1, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iput-wide v6, v1, Lcom/alipay/android/app/f/b;->d:J

    sget-object v1, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iput-object v2, v1, Lcom/alipay/android/app/f/b;->b:Ljava/lang/String;

    throw v0

    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iget-object v3, v3, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_a
    sget-object v3, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    iput-object v1, v3, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, v16

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, v16

    goto :goto_5
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static declared-synchronized f()V
    .locals 2

    const-class v1, Lcom/alipay/android/app/f/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/f/b;

    invoke-direct {v0}, Lcom/alipay/android/app/f/b;-><init>()V

    sput-object v0, Lcom/alipay/android/app/f/b;->a:Lcom/alipay/android/app/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/f/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/f/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/f/b;->d:J

    return-wide v0
.end method
