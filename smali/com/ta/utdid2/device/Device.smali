.class public Lcom/ta/utdid2/device/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mCheckSum:J

.field private mCreateTimestamp:J

.field private utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->imei:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->imsi:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->deviceId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->utdid:Ljava/lang/String;

    iput-wide v2, p0, Lcom/ta/utdid2/device/Device;->mCreateTimestamp:J

    iput-wide v2, p0, Lcom/ta/utdid2/device/Device;->mCheckSum:J

    return-void
.end method


# virtual methods
.method getCheckSum()J
    .locals 2

    iget-wide v0, p0, Lcom/ta/utdid2/device/Device;->mCheckSum:J

    return-wide v0
.end method

.method getCreateTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/ta/utdid2/device/Device;->mCreateTimestamp:J

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method setCheckSum(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ta/utdid2/device/Device;->mCheckSum:J

    return-void
.end method

.method setCreateTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ta/utdid2/device/Device;->mCreateTimestamp:J

    return-void
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->deviceId:Ljava/lang/String;

    return-void
.end method

.method setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->imei:Ljava/lang/String;

    return-void
.end method

.method setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->imsi:Ljava/lang/String;

    return-void
.end method

.method setUtdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->utdid:Ljava/lang/String;

    return-void
.end method
