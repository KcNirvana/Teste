.class public Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;
.super Ljava/lang/Object;
.source "ServerTimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;,
        Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;
    }
.end annotation


# static fields
.field private static volatile computer:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addServerTimeChangedListener(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getComputer()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->computer:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    return-object v0
.end method

.method public static notifyServerTimeAligned()V
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

    invoke-interface {v1}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;->onServerTimeAligned()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeServerTimeChangedListener(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setComputer(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->computer:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    return-void
.end method
