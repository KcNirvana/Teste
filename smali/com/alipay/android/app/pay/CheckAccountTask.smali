.class public Lcom/alipay/android/app/pay/CheckAccountTask;
.super Landroid/os/AsyncTask;
.source "CheckAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private alixPay:Lcom/alipay/android/app/pay/b;

.field private lock:Ljava/lang/Object;

.field private onCheckListener:Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/b;

    new-instance v0, Lcom/alipay/android/app/pay/CheckAccountTask$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/CheckAccountTask$1;-><init>(Lcom/alipay/android/app/pay/CheckAccountTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->onCheckListener:Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/pay/CheckAccountTask;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/pay/CheckAccountTask;Lcom/alipay/android/app/pay/b;)Lcom/alipay/android/app/pay/b;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/b;

    return-object p1
.end method


# virtual methods
.method public checkAccountIfExist()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/CheckAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/b;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alipay/android/app/MspService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/b;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->lock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/b;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v1

    :try_start_5
    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_6
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/b;

    invoke-interface {v1}, Lcom/alipay/android/app/pay/b;->a()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/CheckAccountTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->onCheckListener:Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->onCheckListener:Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;->check(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/CheckAccountTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
