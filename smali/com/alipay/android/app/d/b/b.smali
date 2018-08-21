.class final Lcom/alipay/android/app/d/b/b;
.super Ljava/lang/Object;
.source "ConditionVariableUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/d/b/b;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/alipay/android/app/d/b/b;->b:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/d/b/b;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/d/b/b;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/d/b/b;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
