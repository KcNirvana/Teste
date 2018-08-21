.class public Lcom/alipay/android/app/g/j;
.super Ljava/lang/Object;
.source "SmsReader.java"


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/g/j;->a:Z

    return-void
.end method

.method private a([Ljava/lang/String;ILandroid/database/Cursor;Ljava/util/regex/Pattern;IIIIII)Ljava/lang/String;
    .locals 14

    const/4 v2, 0x0

    :cond_0
    iget-boolean v3, p0, Lcom/alipay/android/app/g/j;->a:Z

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, p3

    move/from16 v1, p10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iget-wide v12, p0, Lcom/alipay/android/app/g/j;->b:J

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x0

    cmp-long v3, v8, v12

    if-gtz v3, :cond_4

    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    array-length v8, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_5

    aget-object v9, p1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-ne v7, v3, :cond_3

    if-nez v10, :cond_3

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 15

    const/4 v13, 0x0

    const/4 v8, 0x0

    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/alipay/android/app/g/j;->b:J

    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    const-string/jumbo v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v5, "address"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "person"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v5, "body"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v5, "date_sent"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v5, "type"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string/jumbo v5, "protocol"

    aput-object v5, v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "date desc limit 5"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "address"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v2, "body"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v2, "date"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v2, "date_sent"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v2, "type"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v2, "protocol"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object v6, v14

    invoke-direct/range {v2 .. v12}, Lcom/alipay/android/app/g/j;->a([Ljava/lang/String;ILandroid/database/Cursor;Ljava/util/regex/Pattern;IIIIII)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :goto_0
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v2

    :catch_0
    move-exception v2

    move-object v5, v8

    :goto_2
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v2, v13

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    :catchall_1
    move-exception v2

    move-object v8, v5

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_2
    move-object v2, v13

    goto :goto_1

    :cond_3
    move-object v2, v13

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/g/j;->a:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/g/j;->a:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/g/j;->a:Z

    return v0
.end method
