.class public abstract Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
.super Ljava/lang/Object;
.source "AccountStatInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$EmptyAccountStatImplementation;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$EmptyAccountStatImplementation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$EmptyAccountStatImplementation;-><init>(Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$1;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->sInstance:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dropUnusedUrlParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "http://dummyurl/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0

    :cond_2
    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->sInstance:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    return-object v0
.end method

.method public static setInstance(Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->sInstance:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    return-void
.end method


# virtual methods
.method public abstract recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract statCountEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract statCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract statHttpEvent(Ljava/lang/String;J)V
.end method

.method public abstract statHttpEvent(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract statPageEnd()V
.end method

.method public abstract statPageStart(Landroid/app/Activity;Ljava/lang/String;)V
.end method
