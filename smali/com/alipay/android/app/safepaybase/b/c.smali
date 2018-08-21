.class public Lcom/alipay/android/app/safepaybase/b/c;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string/jumbo v1, "[%1$ty-%1$tm-%1$td %1$tH:%1$tM:%1$tS %1$tL][%2$s][%3$s][%4$s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    const/4 v0, 0x3

    aput-object p3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xf

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/safepaybase/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/safepaybase/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "safepaybase"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "safepaybase"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaybase/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaybase/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaybase/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaybase/b/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
