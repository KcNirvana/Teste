.class public Lcom/miui/powercenter/legacypowerrank/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public aFG:I

.field public aFH:J

.field public aFI:J

.field public aFJ:J

.field public aFK:J

.field public aFL:J

.field public aFM:J

.field public aFN:J

.field public aFO:J

.field public aFP:D

.field public aFQ:Ljava/lang/String;

.field public aFR:D

.field public name:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/powercenter/legacypowerrank/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    iget-object v0, p1, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    iget v0, p1, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    iget v0, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    iget-object v0, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFQ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/e;->aRo(Lcom/miui/powercenter/legacypowerrank/e;)V

    return-void
.end method

.method public constructor <init>(Lmiui/securitycenter/powercenter/BatterySipper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getUid()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getDrainType()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFQ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/e;->aRn(Lmiui/securitycenter/powercenter/BatterySipper;)V

    return-void
.end method


# virtual methods
.method public aRn(Lmiui/securitycenter/powercenter/BatterySipper;)V
    .locals 4

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    const-string/jumbo v0, "usageTime"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    const-string/jumbo v0, "cpuTime"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFK:J

    const-string/jumbo v0, "gpsTime"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFK:J

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFL:J

    const-string/jumbo v0, "wifiRunningTime"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFL:J

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    const-string/jumbo v0, "cpuFgTime"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    const-string/jumbo v0, "wakeLockTime"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    const-string/jumbo v0, "mobileRxBytes"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    const-string/jumbo v0, "mobileTxBytes"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFP:D

    const-string/jumbo v0, "noCoveragePercent"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFP:D

    return-void
.end method

.method public aRo(Lcom/miui/powercenter/legacypowerrank/e;)V
    .locals 4

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFK:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFK:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFK:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFL:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFL:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFL:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFP:D

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFP:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFP:D

    return-void
.end method

.method public aRp(Lcom/miui/powercenter/legacypowerrank/e;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/e;->aRp(Lcom/miui/powercenter/legacypowerrank/e;)I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFQ:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    return v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    return-wide v0
.end method
