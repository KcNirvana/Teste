.class public Lcom/xiaomi/phonenum/PhoneNumKeeper;
.super Ljava/lang/Object;
.source "PhoneNumKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;
    }
.end annotation


# instance fields
.field private executor:[Ljava/util/concurrent/ExecutorService;

.field private phoneNumGetter:Lcom/xiaomi/phonenum/PhoneNumGetter;

.field private final slotCount:I


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/phone/PhoneUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->slotCount:I

    iget p1, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->slotCount:I

    new-array p1, p1, [Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->executor:[Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/phonenum/PhoneNumKeeper;)Lcom/xiaomi/phonenum/PhoneNumGetter;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->phoneNumGetter:Lcom/xiaomi/phonenum/PhoneNumGetter;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->phoneNumGetter:Lcom/xiaomi/phonenum/PhoneNumGetter;

    invoke-interface {v0}, Lcom/xiaomi/phonenum/PhoneNumGetter;->dispose()V

    return-void
.end method

.method public getInNetDate(Landroid/content/Context;I)Lcom/xiaomi/phonenum/innetdate/InNetDateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;

    invoke-direct {v0, p1}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->getInNetDate(I)Lcom/xiaomi/phonenum/innetdate/InNetDateResult;

    move-result-object p1

    return-object p1
.end method

.method public getSlotCount()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->slotCount:I

    return v0
.end method

.method public invalidatePhoneNum(I)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->phoneNumGetter:Lcom/xiaomi/phonenum/PhoneNumGetter;

    sget-object v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->LINE_NUMBER:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/phonenum/PhoneNumGetter;->peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->phoneNumGetter:Lcom/xiaomi/phonenum/PhoneNumGetter;

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/phonenum/PhoneNumGetter;->invalidatePhoneNum(ILcom/xiaomi/phonenum/bean/PhoneNum;)Z

    move-result p1

    return p1
.end method

.method public invalidateVerifiedToken(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->invalidatePhoneNum(I)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized obtainAndVerifyPhoneNum(I)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "Lcom/xiaomi/phonenum/bean/PhoneNum;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->SMS_VERIFY:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->obtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized obtainPhoneNum(I)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "Lcom/xiaomi/phonenum/bean/PhoneNum;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->CACHE:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->obtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized obtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xiaomi/phonenum/obtain/PhoneLevel;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/xiaomi/phonenum/bean/PhoneNum;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/phonenum/PhoneNumKeeper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/phonenum/PhoneNumKeeper$1;-><init>(Lcom/xiaomi/phonenum/PhoneNumKeeper;ILcom/xiaomi/phonenum/obtain/PhoneLevel;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p2, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->executor:[Ljava/util/concurrent/ExecutorService;

    aget-object p2, p2, p1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->executor:[Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    aput-object v1, p2, p1

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->executor:[Ljava/util/concurrent/ExecutorService;

    aget-object p1, p2, p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public peekPhoneNum(I)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->phoneNumGetter:Lcom/xiaomi/phonenum/PhoneNumGetter;

    sget-object v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->LINE_NUMBER:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/phonenum/PhoneNumGetter;->peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1
.end method

.method public peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->phoneNumGetter:Lcom/xiaomi/phonenum/PhoneNumGetter;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/phonenum/PhoneNumGetter;->peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1
.end method

.method public setPhoneNumGetter(Lcom/xiaomi/phonenum/PhoneNumGetter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->phoneNumGetter:Lcom/xiaomi/phonenum/PhoneNumGetter;

    return-void
.end method

.method public setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper;->phoneNumGetter:Lcom/xiaomi/phonenum/PhoneNumGetter;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/PhoneNumGetter;->setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V

    return-void
.end method
