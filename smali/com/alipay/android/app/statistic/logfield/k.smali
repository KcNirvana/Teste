.class public Lcom/alipay/android/app/statistic/logfield/k;
.super Lcom/alipay/android/app/statistic/logfield/a;
.source "LogFieldTrade.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "trade"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/a;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/k;->h:Ljava/lang/String;

    return-void
.end method

.method public static g(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/k;
    .locals 14

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string/jumbo v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    array-length v9, v8

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_9

    aget-object v6, v8, v7

    const-string/jumbo v10, "="

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    array-length v10, v6

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v11, "partner"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    aget-object v5, v6, v5

    const-string/jumbo v6, "\""

    const-string/jumbo v10, ""

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v11, "out_trade_no"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v4, 0x1

    aget-object v4, v6, v4

    const-string/jumbo v6, "\""

    const-string/jumbo v10, ""

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v11, "trade_no"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x1

    aget-object v3, v6, v3

    const-string/jumbo v6, "\""

    const-string/jumbo v10, ""

    invoke-virtual {v3, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v11, "biz_type"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const-string/jumbo v6, "\""

    const-string/jumbo v10, ""

    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v11, "apiname"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v1, 0x1

    aget-object v1, v6, v1

    const-string/jumbo v6, "\""

    const-string/jumbo v10, ""

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v11, "biz_scene"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v0, 0x1

    aget-object v0, v6, v0

    const-string/jumbo v6, "\""

    const-string/jumbo v10, ""

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v11, "bizcontext"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :try_start_0
    const-string/jumbo v11, "LogFieldTrade,analysis"

    const-string/jumbo v12, "bizContext:"

    const/4 v13, 0x1

    aget-object v13, v6, v13

    invoke-static {v10, v11, v12, v13}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    aget-object v10, v6, v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    aget-object v10, v6, v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-object v6, v6, v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "UTF-8"

    invoke-static {v6, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    const/4 v10, 0x1

    const-string/jumbo v11, "LogFieldTrade,analysis"

    const-string/jumbo v12, "bizContext value:"

    invoke-static {v10, v11, v12, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    invoke-static {v6}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_8
    const/4 v10, 0x1

    :try_start_1
    aget-object v6, v6, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v2, "out_trade"

    :cond_a
    const-string/jumbo v6, "h5tonative"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v2, "out_trade_h5tonative"

    :cond_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "com.alipay.paypwd.validate"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo v2, "openService_pwd"

    :cond_c
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_d
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/k;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/k;-><init>()V

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/statistic/logfield/k;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/statistic/logfield/k;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/statistic/logfield/k;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/statistic/logfield/k;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/alipay/android/app/plugin/a;->saveTradeNo(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v6, "com.alipay.account.auth"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v2, "openService_auth"

    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/k;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/k;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/k;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/k;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/k;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/k;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/k;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/k;->i:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/k;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/k;->e:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/k;->g:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/k;->j:Ljava/lang/String;

    return-void
.end method
