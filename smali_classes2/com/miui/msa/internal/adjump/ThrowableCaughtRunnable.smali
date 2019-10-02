.class public abstract Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;
.super Ljava/lang/Object;
.source "ThrowableCaughtRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field mTrackException:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;->avoidNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;->mTag:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;->avoidNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;->mMessage:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;->mTrackException:Z

    return-void
.end method

.method private avoidNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final run()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;->execute()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AD-ThrowableCaughtRunnable message: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;->mMessage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;->mTag:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/msa/internal/adjump/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
