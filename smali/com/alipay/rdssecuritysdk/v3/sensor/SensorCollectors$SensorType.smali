.class public final enum Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;
.super Ljava/lang/Enum;
.source "SensorCollectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

.field public static final enum ACCELEROMETER:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

.field public static final enum GRAVITY:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

.field public static final enum GYROSCOPE:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

.field public static final enum MAGNETIC:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;


# instance fields
.field private mSensorName:Ljava/lang/String;

.field private mSensorType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    const-string/jumbo v1, "ACCELEROMETER"

    const-string/jumbo v2, "Acceleration"

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->ACCELEROMETER:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    const-string/jumbo v1, "GRAVITY"

    const/16 v2, 0x9

    const-string/jumbo v3, "Gravity"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GRAVITY:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    const-string/jumbo v1, "GYROSCOPE"

    const-string/jumbo v2, "Gyroscope"

    invoke-direct {v0, v1, v5, v8, v2}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GYROSCOPE:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    const-string/jumbo v1, "MAGNETIC"

    const-string/jumbo v2, "Magnetic"

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->MAGNETIC:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    new-array v0, v8, [Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->ACCELEROMETER:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GRAVITY:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GYROSCOPE:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->MAGNETIC:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->$VALUES:[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->mSensorName:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->mSensorType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;
    .locals 1

    const-class v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;
    .locals 1

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->$VALUES:[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, [Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    return-object v0
.end method


# virtual methods
.method public getSensorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->mSensorName:Ljava/lang/String;

    return-object v0
.end method

.method public getmSensorType()I
    .locals 1

    iget v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->mSensorType:I

    return v0
.end method
