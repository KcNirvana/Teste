.class public Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;
.super Ljava/lang/Object;
.source "CustomizedUrlStatUtil.java"


# instance fields
.field private hasError:Z

.field private startTs:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->startTs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->hasError:Z

    if-eqz p1, :cond_0

    const-string v1, "http://dummyurl/%s/_ver=%s&hdid=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    new-instance p2, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->getHashedDeviceIdNoThrow()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->url:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public finishStat()V
    .locals 6

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->hasError:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->getInstance()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->url:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->startTs:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->statHttpEvent(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public startStat()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->startTs:J

    return-void
.end method

.method public statError(Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->hasError:Z

    invoke-static {}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->getInstance()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->statHttpEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
