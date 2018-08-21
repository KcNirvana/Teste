.class public Lcom/alipay/android/app/pay/PayTask;
.super Lcom/alipay/android/app/d/b/e;
.source "PayTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/pay/PayTask$TaoBaoOnPayListener;,
        Lcom/alipay/android/app/pay/PayTask$OnPayListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/d/b/e",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/alipay/android/app/pay/MspResult;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/alipay/android/app/pay/c;

.field private isManager:Z

.field private onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/PayTask$OnPayListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/android/app/d/b/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/PayTask;->isManager:Z

    new-instance v0, Lcom/alipay/android/app/pay/PayTask$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/PayTask$1;-><init>(Lcom/alipay/android/app/pay/PayTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/c;

    iput-object p1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "PayTask.PayTask"

    const-string/jumbo v3, "PayTask init"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/pay/PayTask;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private processSDKPay(Ljava/lang/String;Z)Lcom/alipay/android/app/pay/MspResult;
    .locals 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/alipay/android/app/pay/g;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/pay/MspResult;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/pay/MspResult;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/r;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/r;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/c;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/r;->a(Lcom/alipay/android/app/pay/c;)V

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/app/pay/PayTask;->isManager:Z

    if-eqz v0, :cond_3

    invoke-virtual {v2, p1}, Lcom/alipay/android/app/r;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    :try_start_1
    const-string/jumbo v3, "phonecashiermsp"

    const-string/jumbo v4, "PayTask.processSDKPay"

    invoke-static {v1, v3, v4, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/c;

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/r;->b(Lcom/alipay/android/app/pay/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iput-boolean v5, p0, Lcom/alipay/android/app/pay/PayTask;->isManager:Z

    :goto_2
    new-instance v1, Lcom/alipay/android/app/pay/MspResult;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/pay/MspResult;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_2
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, p1}, Lcom/alipay/android/app/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v2, p1, p2}, Lcom/alipay/android/app/r;->a(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    :try_start_3
    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v5, p0, Lcom/alipay/android/app/pay/PayTask;->isManager:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lcom/alipay/android/app/pay/PayTask;->isManager:Z

    throw v0

    :catch_1
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/c;

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/alipay/android/app/pay/MspResult;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x0

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "PayTask.doInBackground"

    const-string/jumbo v4, "PayTask doInBackground start "

    invoke-static {v5, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/plugin/b;->loadProperties(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    array-length v1, p1

    if-lt v1, v5, :cond_3

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->c()Lcom/alipay/android/app/plugin/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/g;->a()V

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/app/pay/PayTask;->processSDKPay(Ljava/lang/String;Z)Lcom/alipay/android/app/pay/MspResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/PayTask;->doInBackground([Ljava/lang/Object;)Lcom/alipay/android/app/pay/MspResult;

    move-result-object v0

    return-object v0
.end method

.method public manager(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/PayTask;->isManager:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/PayTask;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute(Lcom/alipay/android/app/pay/MspResult;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/alipay/android/app/d/b/e;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    const-string/jumbo v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    instance-of v0, v0, Lcom/alipay/android/app/pay/PayTask$TaoBaoOnPayListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    check-cast v0, Lcom/alipay/android/app/pay/PayTask$TaoBaoOnPayListener;

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/android/app/pay/MspResult;->d:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/android/app/pay/MspResult;->e:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/pay/PayTask$TaoBaoOnPayListener;->onTaoBaoPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/pay/PayTask$OnPayListener;->onPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    instance-of v0, v0, Lcom/alipay/android/app/pay/PayTask$TaoBaoOnPayListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    check-cast v0, Lcom/alipay/android/app/pay/PayTask$TaoBaoOnPayListener;

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    if-nez p1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alipay/android/app/pay/ResultStatus;->CANCELED:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v3}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez p1, :cond_4

    const-string/jumbo v3, "\u64cd\u4f5c\u5df2\u7ecf\u53d6\u6d88\u3002"

    :goto_2
    if-nez p1, :cond_5

    const-string/jumbo v4, ""

    :goto_3
    if-nez p1, :cond_6

    const-string/jumbo v5, ""

    :goto_4
    if-nez p1, :cond_7

    const-string/jumbo v6, ""

    :goto_5
    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/pay/PayTask$TaoBaoOnPayListener;->onTaoBaoPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v4, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v5, p1, Lcom/alipay/android/app/pay/MspResult;->d:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object v6, p1, Lcom/alipay/android/app/pay/MspResult;->e:Ljava/lang/String;

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->CANCELED:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_6
    if-nez p1, :cond_a

    const-string/jumbo v0, "\u64cd\u4f5c\u5df2\u7ecf\u53d6\u6d88\u3002"

    move-object v1, v0

    :goto_7
    if-nez p1, :cond_b

    const-string/jumbo v0, ""

    :goto_8
    invoke-interface {v3, v4, v2, v1, v0}, Lcom/alipay/android/app/pay/PayTask$OnPayListener;->onPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    move-object v2, v0

    goto :goto_6

    :cond_a
    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    move-object v1, v0

    goto :goto_7

    :cond_b
    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alipay/android/app/pay/MspResult;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/PayTask;->onPostExecute(Lcom/alipay/android/app/pay/MspResult;)V

    return-void
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/android/app/b;->a(Landroid/content/Context;)Lcom/alipay/android/app/b;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/PayTask;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/android/app/b;->a(Landroid/content/Context;)Lcom/alipay/android/app/b;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/PayTask;->execute([Ljava/lang/Object;)V

    return-void
.end method
