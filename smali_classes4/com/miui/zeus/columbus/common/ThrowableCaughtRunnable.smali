.class public abstract Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.super Ljava/lang/Object;
.source "ThrowableCaughtRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/zeus/columbus/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;->mTag:Ljava/lang/String;

    invoke-static {p2}, Lcom/miui/zeus/columbus/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract execute()V
.end method

.method public final run()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;->execute()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AD-ThrowableCaughtRunnable message: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;->mMessage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;->mTag:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
