.class final enum Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;
.super Ljava/lang/Enum;
.source "SensorCollectWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CollectStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

.field public static final enum COLLECT_FINISHED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

.field public static final enum COLLECT_NOT_START:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

.field public static final enum COLLECT_STARTED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    const-string/jumbo v1, "COLLECT_NOT_START"

    invoke-direct {v0, v1, v2}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_NOT_START:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    const-string/jumbo v1, "COLLECT_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_STARTED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    const-string/jumbo v1, "COLLECT_FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_FINISHED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_NOT_START:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_STARTED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_FINISHED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->$VALUES:[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;
    .locals 1

    const-class v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;
    .locals 1

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->$VALUES:[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    invoke-virtual {v0}, [Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    return-object v0
.end method
