.class public Lcom/alipay/security/mobile/util/LogCollect;
.super Ljava/lang/Object;
.source "LogCollect.java"


# static fields
.field private static errs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/security/mobile/api/AuthenticatorApi$FpServiceErrItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/util/LogCollect;->errs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getErr()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/security/mobile/api/AuthenticatorApi$FpServiceErrItem;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/alipay/security/mobile/util/LogCollect;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/util/LogCollect;->errs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/util/LogCollect;->errs:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/alipay/security/mobile/util/LogCollect;->errs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/security/mobile/util/LogCollect;->errs:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized parseLog(Landroid/os/Bundle;)V
    .locals 1

    const-class v0, Lcom/alipay/security/mobile/util/LogCollect;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method
