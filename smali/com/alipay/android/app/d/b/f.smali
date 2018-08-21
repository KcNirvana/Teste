.class Lcom/alipay/android/app/d/b/f;
.super Ljava/lang/Object;
.source "MspAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Lcom/alipay/android/app/d/b/e;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/d/b/e;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/d/b/f;->b:Lcom/alipay/android/app/d/b/e;

    iput-object p2, p0, Lcom/alipay/android/app/d/b/f;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    const-string/jumbo v2, "MspAsyncTask::executeOnThread"

    const-string/jumbo v3, "running..."

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/d/b/f;->b:Lcom/alipay/android/app/d/b/e;

    iget-object v2, p0, Lcom/alipay/android/app/d/b/f;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/d/b/e;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/d/b/f;->b:Lcom/alipay/android/app/d/b/e;

    invoke-static {v1, v0}, Lcom/alipay/android/app/d/b/e;->access$000(Lcom/alipay/android/app/d/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/d/b/f;->b:Lcom/alipay/android/app/d/b/e;

    invoke-static {v0, v1}, Lcom/alipay/android/app/d/b/e;->access$000(Lcom/alipay/android/app/d/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/alipay/android/app/d/b/f;->b:Lcom/alipay/android/app/d/b/e;

    invoke-static {v2, v1}, Lcom/alipay/android/app/d/b/e;->access$000(Lcom/alipay/android/app/d/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
