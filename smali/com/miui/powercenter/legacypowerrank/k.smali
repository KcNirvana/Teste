.class public Lcom/miui/powercenter/legacypowerrank/k;
.super Lcom/miui/powercenter/legacypowerrank/g;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected aRg()I
    .locals 4

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRu()D

    move-result-wide v0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRt()D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected aRh()I
    .locals 1

    const v0, 0x7f070427

    return v0
.end method

.method protected aRi()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
