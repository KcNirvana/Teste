.class public Lcom/alipay/android/app/pay/AuthTask;
.super Lcom/alipay/android/app/d/b/e;
.source "AuthTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;
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

.field private alixPay:Lcom/alipay/android/app/pay/b;

.field private callback:Lcom/alipay/android/app/pay/c;

.field private lock:Ljava/lang/Object;

.field private onAuthListener:Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/android/app/d/b/e;-><init>()V

    const-class v0, Lcom/alipay/android/app/pay/AuthTask;

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    new-instance v0, Lcom/alipay/android/app/pay/AuthTask$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/AuthTask$1;-><init>(Lcom/alipay/android/app/pay/AuthTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->callback:Lcom/alipay/android/app/pay/c;

    new-instance v0, Lcom/alipay/android/app/pay/AuthTask$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/AuthTask$2;-><init>(Lcom/alipay/android/app/pay/AuthTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->serviceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/alipay/android/app/pay/AuthTask;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/android/app/pay/AuthTask;->onAuthListener:Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "AuthTask.AuthTask"

    const-string/jumbo v3, "AuthTask init"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/pay/AuthTask;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/pay/AuthTask;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/android/app/pay/AuthTask;Lcom/alipay/android/app/pay/b;)Lcom/alipay/android/app/pay/b;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    return-object p1
.end method

.method private processSDKAuth(Ljava/lang/String;)Lcom/alipay/android/app/pay/MspResult;
    .locals 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/pay/g;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/pay/MspResult;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/pay/MspResult;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/alipay/android/app/MspService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/alipay/android/app/pay/AuthTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/app/pay/AuthTask;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->lock:Ljava/lang/Object;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    :goto_2
    :try_start_6
    invoke-static {v2}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v2, p0, Lcom/alipay/android/app/pay/AuthTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :goto_3
    new-instance v1, Lcom/alipay/android/app/pay/MspResult;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/pay/MspResult;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    goto :goto_1

    :cond_3
    :try_start_8
    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->callback:Lcom/alipay/android/app/pay/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    iget-object v4, p0, Lcom/alipay/android/app/pay/AuthTask;->callback:Lcom/alipay/android/app/pay/c;

    invoke-interface {v0, v4}, Lcom/alipay/android/app/pay/b;->a(Lcom/alipay/android/app/pay/c;)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/pay/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    const/4 v2, 0x1

    :try_start_9
    const-string/jumbo v4, "phonecashiermsp"

    const-string/jumbo v5, "AuthTask.processSDKAuth"

    invoke-static {v2, v4, v5, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/pay/AuthTask;->callback:Lcom/alipay/android/app/pay/c;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    iget-object v4, p0, Lcom/alipay/android/app/pay/AuthTask;->callback:Lcom/alipay/android/app/pay/c;

    invoke-interface {v2, v4}, Lcom/alipay/android/app/pay/b;->b(Lcom/alipay/android/app/pay/c;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :try_start_a
    iget-object v2, p0, Lcom/alipay/android/app/pay/AuthTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    goto :goto_3

    :catch_3
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_b
    iget-object v2, p0, Lcom/alipay/android/app/pay/AuthTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    :goto_4
    throw v0

    :catch_4
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public auth(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/AuthTask;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->alixPay:Lcom/alipay/android/app/pay/b;

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->callback:Lcom/alipay/android/app/pay/c;

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->lock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->serviceConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->onAuthListener:Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/alipay/android/app/pay/MspResult;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "AuthTask.doInBackground"

    const-string/jumbo v4, "AuthTask doInBackground start "

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/pay/AuthTask;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/plugin/b;->loadProperties(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/alipay/android/app/pay/AuthTask;->processSDKAuth(Ljava/lang/String;)Lcom/alipay/android/app/pay/MspResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/AuthTask;->doInBackground([Ljava/lang/Object;)Lcom/alipay/android/app/pay/MspResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/alipay/android/app/pay/MspResult;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/alipay/android/app/d/b/e;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->onAuthListener:Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    const-string/jumbo v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask;->onAuthListener:Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;

    iget-object v1, p0, Lcom/alipay/android/app/pay/AuthTask;->activity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;->onAuthSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/pay/AuthTask;->onAuthListener:Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;

    iget-object v4, p0, Lcom/alipay/android/app/pay/AuthTask;->activity:Landroid/app/Activity;

    if-nez p1, :cond_2

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

    :goto_1
    if-nez p1, :cond_3

    const-string/jumbo v0, "\u64cd\u4f5c\u5df2\u7ecf\u53d6\u6d88\u3002"

    move-object v1, v0

    :goto_2
    if-nez p1, :cond_4

    const-string/jumbo v0, ""

    :goto_3
    invoke-interface {v3, v4, v2, v1, v0}, Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;->onAuthFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    move-object v1, v0

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alipay/android/app/pay/MspResult;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/AuthTask;->onPostExecute(Lcom/alipay/android/app/pay/MspResult;)V

    return-void
.end method
