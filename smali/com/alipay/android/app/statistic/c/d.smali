.class public Lcom/alipay/android/app/statistic/c/d;
.super Lcom/alipay/android/app/statistic/c/a;
.source "LogFieldContainer.java"


# instance fields
.field private d:Lcom/alipay/android/app/statistic/logfield/a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/statistic/c/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/statistic/logfield/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/c/d;->d:Lcom/alipay/android/app/statistic/logfield/a;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/statistic/c/d;->d:Lcom/alipay/android/app/statistic/logfield/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/statistic/c/d;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/app/statistic/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/statistic/c/d;->d:Lcom/alipay/android/app/statistic/logfield/a;

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/logfield/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Lcom/alipay/android/app/statistic/logfield/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/statistic/c/d;->d:Lcom/alipay/android/app/statistic/logfield/a;

    return-object v0
.end method
