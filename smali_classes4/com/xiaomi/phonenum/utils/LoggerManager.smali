.class public Lcom/xiaomi/phonenum/utils/LoggerManager;
.super Ljava/lang/Object;
.source "LoggerManager.java"


# static fields
.field private static TAG:Ljava/lang/String; = "phoneNum"

.field private static volatile logger:Lcom/xiaomi/phonenum/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/phonenum/utils/LoggerManager$1;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/utils/LoggerManager$1;-><init>()V

    sput-object v0, Lcom/xiaomi/phonenum/utils/LoggerManager;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/utils/LoggerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogger()Lcom/xiaomi/phonenum/utils/Logger;
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/utils/LoggerManager;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    return-object v0
.end method

.method public static setLogger(Lcom/xiaomi/phonenum/utils/Logger;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/phonenum/utils/LoggerManager;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    return-void
.end method
