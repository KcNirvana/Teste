.class public abstract Lcom/xiaomi/accountsdk/utils/AccountLog;
.super Ljava/lang/Object;
.source "AccountLog.java"


# static fields
.field private static final sAndroidLog:Lcom/xiaomi/accountsdk/utils/AccountLog;

.field private static sInstance:Lcom/xiaomi/accountsdk/utils/AccountLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/utils/AccountLog$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/AccountLog$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->sAndroidLog:Lcom/xiaomi/accountsdk/utils/AccountLog;

    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->sAndroidLog:Lcom/xiaomi/accountsdk/utils/AccountLog;

    sput-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->sInstance:Lcom/xiaomi/accountsdk/utils/AccountLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logD(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logE(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/IpFilterHelper;->checkHasIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/IpFilterHelper;->envIPAddressIfHas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    new-instance p0, Ljava/net/SocketTimeoutException;

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_2
    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->sInstance:Lcom/xiaomi/accountsdk/utils/AccountLog;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logI(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static setInstance(Lcom/xiaomi/accountsdk/utils/AccountLog;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/xiaomi/accountsdk/utils/AccountLog;->sInstance:Lcom/xiaomi/accountsdk/utils/AccountLog;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "log == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logV(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logW(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logW(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract logD(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract logE(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract logI(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract logV(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract logW(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract logW(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method
