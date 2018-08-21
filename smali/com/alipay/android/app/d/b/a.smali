.class public Lcom/alipay/android/app/d/b/a;
.super Ljava/lang/Object;
.source "ConditionVariableUtil.java"


# direct methods
.method public static a(JLjava/lang/Runnable;)Z
    .locals 4

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/app/d/b/b;

    invoke-direct {v2, p2, v1}, Lcom/alipay/android/app/d/b/b;-><init>(Ljava/lang/Runnable;Landroid/os/ConditionVariable;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p0, p1}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "concurrent"

    const-string/jumbo v3, "ConditionVariableEx"

    invoke-static {v2, v3, v1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
