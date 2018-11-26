.class public Lcom/miui/networkassistant/model/AppDataUsage;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mRxBytes:J

.field private mTxBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mRxBytes:J

    iput-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mTxBytes:J

    return-void
.end method


# virtual methods
.method public addRxBytes(J)V
    .locals 3

    iget-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mRxBytes:J

    return-void
.end method

.method public addTxBytes(J)V
    .locals 3

    iget-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mTxBytes:J

    return-void
.end method

.method public getRxBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mRxBytes:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mTxBytes:J

    iget-wide v2, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mRxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTxBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mTxBytes:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mTxBytes:J

    iput-wide v0, p0, Lcom/miui/networkassistant/model/AppDataUsage;->mRxBytes:J

    return-void
.end method
