.class public Lcom/alipay/android/app/statistic/logfield/h;
.super Lcom/alipay/android/app/statistic/logfield/a;
.source "LogFieldResult.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "result"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/a;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/statistic/logfield/h;->f:J

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->SUCCEEDED:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->PAY_WAITTING:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    sget v0, Lcom/alipay/android/app/statistic/f/a;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->FAILED:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->PARAMS_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_4

    :cond_3
    sget v0, Lcom/alipay/android/app/statistic/f/a;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/android/app/statistic/h;->e()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget v0, Lcom/alipay/android/app/statistic/f/a;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/statistic/logfield/h;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/app/statistic/logfield/h;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/app/statistic/logfield/h;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/alipay/android/app/statistic/logfield/h;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/statistic/logfield/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/app/statistic/logfield/h;->f:J

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/h;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/h;->e:Ljava/lang/String;

    return-void
.end method
