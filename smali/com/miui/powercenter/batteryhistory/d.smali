.class public Lcom/miui/powercenter/batteryhistory/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public aGZ:B

.field public aHa:B

.field public aHb:B

.field public aHc:B

.field public aHd:S

.field public aHe:C

.field public aHf:Z

.field public aHg:B

.field public aHh:Z

.field public aHi:Z

.field public aHj:I

.field public aHk:Z

.field public aHl:Z

.field public aHm:Z

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHg:B

    return-void
.end method

.method public constructor <init>(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHg:B

    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/d;->time:J

    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHg:B

    const-string/jumbo v0, "batteryLevel"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHa:B

    const-string/jumbo v0, "batteryStatus"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHc:B

    const-string/jumbo v0, "batteryHealth"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aGZ:B

    const-string/jumbo v0, "batteryPlugType"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHb:B

    const-string/jumbo v0, "batteryTemperature"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHd:S

    const-string/jumbo v0, "batteryVoltage"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHe:C

    const-string/jumbo v0, "wifiOn"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHm:Z

    const-string/jumbo v0, "gpsOn"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHi:Z

    const-string/jumbo v0, "charging"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHf:Z

    const-string/jumbo v0, "screenOn"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHk:Z

    const-string/jumbo v0, "wakelockOn"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHl:Z

    const-string/jumbo v0, "phoneSignalStrength"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHj:I

    const-string/jumbo v0, "cpuRunning"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHl:Z

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHh:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHh:Z

    goto :goto_0
.end method


# virtual methods
.method public aTC(Lcom/miui/powercenter/batteryhistory/d;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aTD()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/d;->time:J

    return-wide v0
.end method

.method public aTE()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    iget-byte v2, p0, Lcom/miui/powercenter/batteryhistory/d;->aHg:B

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-byte v2, p0, Lcom/miui/powercenter/batteryhistory/d;->aHg:B

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public aTF()Z
    .locals 2

    iget-byte v0, p0, Lcom/miui/powercenter/batteryhistory/d;->aHg:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/d;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/d;->aTC(Lcom/miui/powercenter/batteryhistory/d;)I

    move-result v0

    return v0
.end method
