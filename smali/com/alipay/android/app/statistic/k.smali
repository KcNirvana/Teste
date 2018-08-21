.class final Lcom/alipay/android/app/statistic/k;
.super Ljava/lang/Object;
.source "StatisticManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lcom/alipay/android/app/statistic/logfield/a;


# direct methods
.method constructor <init>(Ljava/lang/String;[Lcom/alipay/android/app/statistic/logfield/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/statistic/k;->b:[Lcom/alipay/android/app/statistic/logfield/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/statistic/h;->k()V

    new-instance v1, Lcom/alipay/android/app/statistic/d/b;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/d/b;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/d/b;->d()V

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/d/b;->f()V

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->l()Lcom/alipay/android/app/statistic/logfield/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/d/b;->e()Lcom/alipay/android/app/statistic/logfield/k;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/k;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/statistic/logfield/k;->f(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/statistic/k;->b:[Lcom/alipay/android/app/statistic/logfield/a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/k;->b:[Lcom/alipay/android/app/statistic/logfield/a;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/alipay/android/app/statistic/h;->a(Lcom/alipay/android/app/statistic/d/b;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->m()Lcom/alipay/android/app/statistic/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const/4 v1, 0x4

    const-string/jumbo v2, "phonecashiermsp#log"

    const-string/jumbo v3, "StatisticManager.submit(LogField...)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logs > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x8

    const-string/jumbo v2, "phonecashiermsp#log"

    const-string/jumbo v3, "StatisticManager.submit(LogField...)"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
