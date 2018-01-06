.class public Lcom/amap/api/col/gw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field volatile a:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/gv;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/gv;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Landroid/telephony/TelephonyManager;

.field private i:Lcom/amap/api/col/gu;

.field private j:Ljava/lang/Object;

.field private k:J

.field private volatile l:Landroid/telephony/CellLocation;

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/amap/api/col/gw;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/amap/api/col/gw;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gw;->f:Ljava/util/ArrayList;

    const/16 v0, -0x71

    iput v0, p0, Lcom/amap/api/col/gw;->g:I

    iput-object v2, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/amap/api/col/gw;->i:Lcom/amap/api/col/gu;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gw;->k:J

    iput v3, p0, Lcom/amap/api/col/gw;->m:I

    iput-boolean v3, p0, Lcom/amap/api/col/gw;->a:Z

    iput-object v2, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    if-nez p1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/gw;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gw;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/amap/api/col/hu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    :cond_1
    new-instance v0, Lcom/amap/api/col/gu;

    invoke-direct {v0}, Lcom/amap/api/col/gu;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gw;->i:Lcom/amap/api/col/gu;

    return-void
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v6

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v3, p0, Lcom/amap/api/col/gw;->f:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/amap/api/col/gw;->i:Lcom/amap/api/col/gu;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v0, 0x0

    move v2, v0

    move-object v1, v6

    :goto_1
    if-ge v2, v5, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    if-nez v0, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v7

    instance-of v8, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v8, :cond_6

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellIdentityCdma;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v0, v7}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/gv;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const-wide/32 v8, 0xffff

    :try_start_1
    invoke-virtual {v4, v0}, Lcom/amap/api/col/gu;->a(Lcom/amap/api/col/gv;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v1, v8

    int-to-short v1, v1

    iput-short v1, v0, Lcom/amap/api/col/gv;->l:S

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object v1, v0

    goto :goto_2

    :cond_6
    :try_start_2
    instance-of v8, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v8, :cond_7

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellIdentityGsm;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v0, v7}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/gv;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    const-wide/32 v8, 0xffff

    :try_start_3
    invoke-virtual {v4, v0}, Lcom/amap/api/col/gu;->a(Lcom/amap/api/col/gv;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v1, v8

    int-to-short v1, v1

    iput-short v1, v0, Lcom/amap/api/col/gv;->l:S

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :cond_7
    :try_start_4
    instance-of v8, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v8, :cond_8

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellIdentityWcdma;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v0, v7}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/gv;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    const-wide/32 v8, 0xffff

    :try_start_5
    invoke-virtual {v4, v0}, Lcom/amap/api/col/gu;->a(Lcom/amap/api/col/gv;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v1, v8

    int-to-short v1, v1

    iput-short v1, v0, Lcom/amap/api/col/gv;->l:S

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :cond_8
    :try_start_6
    instance-of v8, v0, Landroid/telephony/CellInfoLte;

    if-eqz v8, :cond_d

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellIdentityLte;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v0, v7}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/gv;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v0

    const-wide/32 v8, 0xffff

    :try_start_7
    invoke-virtual {v4, v0}, Lcom/amap/api/col/gu;->a(Lcom/amap/api/col/gv;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v1, v8

    int-to-short v1, v1

    iput-short v1, v0, Lcom/amap/api/col/gv;->l:S

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :cond_9
    move-object v1, v6

    :cond_a
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget v0, p0, Lcom/amap/api/col/gw;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amap/api/col/gw;->c:I

    invoke-virtual {v4, v3}, Lcom/amap/api/col/gu;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/amap/api/col/gv;

    if-eqz v5, :cond_b

    iget v0, v5, Lcom/amap/api/col/gv;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iget v1, v5, Lcom/amap/api/col/gv;->i:I

    iget v2, v5, Lcom/amap/api/col/gv;->e:I

    iget v3, v5, Lcom/amap/api/col/gv;->f:I

    iget v4, v5, Lcom/amap/api/col/gv;->g:I

    iget v5, v5, Lcom/amap/api/col/gv;->h:I

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v1, :cond_1

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iget v2, v1, Lcom/amap/api/col/gv;->c:I

    iget v1, v1, Lcom/amap/api/col/gv;->d:I

    invoke-virtual {v0, v2, v1}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    move-object v1, v6

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_c
    move-object v1, v6

    move-object v0, v6

    goto :goto_4

    :cond_d
    move-object v0, v1

    goto/16 :goto_3
.end method

.method private varargs a(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p2, p3, p4}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/CellLocation;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(IZIIIII)Lcom/amap/api/col/gv;
    .locals 1

    new-instance v0, Lcom/amap/api/col/gv;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/gv;-><init>(IZ)V

    iput p3, v0, Lcom/amap/api/col/gv;->a:I

    iput p4, v0, Lcom/amap/api/col/gv;->b:I

    iput p5, v0, Lcom/amap/api/col/gv;->c:I

    iput p6, v0, Lcom/amap/api/col/gv;->d:I

    iput p7, v0, Lcom/amap/api/col/gv;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/gv;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v8

    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v1, 0x1

    :try_start_1
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v7

    move-object v0, p0

    move v2, p2

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/col/gw;->a(IZIIIII)Lcom/amap/api/col/gv;

    move-result-object v0

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->g:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->h:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->i:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->e:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->f:I

    return-object v0

    :catch_0
    move-exception v0

    move v3, v5

    :goto_1
    move v4, v5

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/gv;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v7

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/col/gw;->a(IZIIIII)Lcom/amap/api/col/gv;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/gv;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v7

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/col/gw;->a(IZIIIII)Lcom/amap/api/col/gv;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/gv;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v6

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v7

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/col/gw;->a(IZIIIII)Lcom/amap/api/col/gv;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/gv;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/col/gv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/gv;-><init>(IZ)V

    iget-object v1, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/amap/api/col/hu;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/amap/api/col/gv;->a:I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->b:I

    const-string v1, "getLac"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/hn;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->c:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->d:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/hu;->a(I)I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "getGsm"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/amap/api/col/gw;->c:I

    iget-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v1}, Lcom/amap/api/col/gw;->c(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)Lcom/amap/api/col/gv;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/amap/api/col/gw;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/amap/api/col/gw;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/gv;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xf

    if-le p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private a(II)Z
    .locals 3

    const v2, 0xffff

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-gt p1, v2, :cond_0

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v2, :cond_0

    const v1, 0xfffffff

    if-lt p2, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private a(Landroid/telephony/CellIdentityCdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/telephony/CellIdentityGsm;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/gw;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/gw;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/telephony/CellIdentityLte;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/gw;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/gw;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/telephony/CellIdentityWcdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/gw;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/gw;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    .locals 6

    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/amap/api/col/hu;->c()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gw;->j:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mGsmCellLoc"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v0, p2, p3}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    :cond_3
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/gw;->c:I

    new-instance v0, Lcom/amap/api/col/gv;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/amap/api/col/gv;-><init>(IZ)V

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/gv;->a:I

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/gv;->b:I

    const-string v3, "getSystemId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/amap/api/col/hn;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/gv;->g:I

    const-string v3, "getNetworkId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/amap/api/col/hn;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/gv;->h:I

    const-string v3, "getBaseStationId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/amap/api/col/hn;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/gv;->i:I

    iget v3, p0, Lcom/amap/api/col/gw;->g:I

    iput v3, v0, Lcom/amap/api/col/gv;->j:I

    const-string v3, "getBaseStationLatitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/amap/api/col/hn;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/gv;->e:I

    const-string v3, "getBaseStationLongitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/amap/api/col/hn;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/gv;->f:I

    iget v3, v0, Lcom/amap/api/col/gv;->e:I

    if-ltz v3, :cond_4

    iget v3, v0, Lcom/amap/api/col/gv;->f:I

    if-ltz v3, :cond_4

    iget v3, v0, Lcom/amap/api/col/gv;->e:I

    if-eq v3, v5, :cond_4

    iget v3, v0, Lcom/amap/api/col/gv;->f:I

    if-eq v3, v5, :cond_4

    iget v3, v0, Lcom/amap/api/col/gv;->e:I

    iget v4, v0, Lcom/amap/api/col/gv;->f:I

    if-ne v3, v4, :cond_5

    iget v3, v0, Lcom/amap/api/col/gv;->e:I

    if-lez v3, :cond_5

    :cond_4
    const/4 v1, 0x0

    iput v1, v0, Lcom/amap/api/col/gv;->e:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/amap/api/col/gv;->f:I

    move v1, v2

    :cond_5
    if-nez v1, :cond_6

    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_1
.end method

.method private declared-synchronized b(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/gw;->a:Z

    iget-boolean v0, p0, Lcom/amap/api/col/gw;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/gw;->o()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/gw;->p()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/amap/api/col/gw;->l:Landroid/telephony/CellLocation;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/gw;->l:Landroid/telephony/CellLocation;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gw;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/gw;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/gw;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amap/api/col/gw;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/gw;->a:Z

    iget-object v2, p0, Lcom/amap/api/col/gw;->l:Landroid/telephony/CellLocation;

    iget-object v3, p0, Lcom/amap/api/col/gw;->b:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/hu;->a(ZLandroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/amap/api/col/gw;->l:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1, v0, p2}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/gw;->l:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1, v0, p2}, Lcom/amap/api/col/gw;->b(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)Lcom/amap/api/col/gv;
    .locals 4

    const/4 v3, 0x1

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v0, Lcom/amap/api/col/gv;

    invoke-direct {v0, v3, p3}, Lcom/amap/api/col/gv;-><init>(IZ)V

    iget-object v1, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/amap/api/col/hu;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/amap/api/col/gv;->a:I

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/gv;->d:I

    iget v1, p0, Lcom/amap/api/col/gw;->g:I

    iput v1, v0, Lcom/amap/api/col/gv;->j:I

    return-object v0
.end method

.method private c(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    const v0, 0xfffffff

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()Landroid/telephony/CellLocation;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/gw;->f()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/col/hu;->c()I

    move-result v2

    const/16 v4, 0x12

    if-lt v2, v4, :cond_2

    :try_start_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/gw;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-nez v0, :cond_0

    const-string v0, "getCellLocationExt"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, v5, v3, v0, v1}, Lcom/amap/api/col/gw;->a(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getCellLocationGemini"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, v5, v3, v0, v1}, Lcom/amap/api/col/gw;->a(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private p()Landroid/telephony/CellLocation;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/gw;->j:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/gw;->q()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getCellLocation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/amap/api/col/gw;->a(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/amap/api/col/gw;->a(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "getCellLocationGemini"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/amap/api/col/gw;->a(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "getAllCellInfo"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/amap/api/col/gw;->a(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget v0, p0, Lcom/amap/api/col/gw;->m:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_1
    const-string v0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_2
    const-string v0, "android.telephony.TelephonyManager"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2TmClass"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/gw;->l:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/gw;->c:I

    iget-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/gw;->a:Z

    iget-object v1, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/gw;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hu;->a(ZLandroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/gw;->c:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/gw;->k()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/gw;->m:I

    iget v0, p0, Lcom/amap/api/col/gw;->m:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/amap/api/col/gw;->b:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/amap/api/col/hu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gw;->j:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    const-string v1, "CgiManager"

    const-string v2, "CgiManager"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/gw;->c:I

    goto :goto_1

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/gw;->b:Landroid/content/Context;

    const-string v1, "phone_msim"

    invoke-static {v0, v1}, Lcom/amap/api/col/hu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gw;->j:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/gw;->b:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/amap/api/col/hu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gw;->j:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(ZZ)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/gw;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/gw;->b(ZZ)V

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gw;->k:J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "refresh"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/telephony/CellLocation;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/amap/api/col/gw;->a:Z

    iget-object v3, p0, Lcom/amap/api/col/gw;->b:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/amap/api/col/hu;->a(ZLandroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iput v1, p0, Lcom/amap/api/col/gw;->c:I

    :cond_2
    move v1, v0

    goto :goto_0

    :pswitch_0
    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/amap/api/col/gw;->a(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "CgiManager"

    const-string v4, "cgiUseful Cgi.iGsmT"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    const-string v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/amap/api/col/hn;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/amap/api/col/hn;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/amap/api/col/hn;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-gez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "CgiManager"

    const-string v4, "cgiUseful Cgi.iCdmaT"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/col/gw;->k:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/gv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Lcom/amap/api/col/gv;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/gv;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/gw;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/gw;->c:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public f()Landroid/telephony/CellLocation;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/gw;->a(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/gw;->l:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    const-string v2, "CgiManager"

    const-string v3, "getCellLocation"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public g()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/gw;->r()V

    return-void
.end method

.method public i()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/gw;->i:Lcom/amap/api/col/gu;

    invoke-virtual {v0}, Lcom/amap/api/col/gu;->a()V

    iget-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/amap/api/col/gw;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gw;->k:J

    iput-object v2, p0, Lcom/amap/api/col/gw;->h:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/amap/api/col/gw;->j:Ljava/lang/Object;

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/amap/api/col/gw;->c:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/amap/api/col/gw;->c:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/gw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/amap/api/col/gw;->c:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public k()I
    .locals 1

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/gw;->m:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget v0, p0, Lcom/amap/api/col/gw;->m:I

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.telephony.TelephonyManager2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/gw;->m:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    iget v0, p0, Lcom/amap/api/col/gw;->m:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gw;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/gv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/gw;->f:Ljava/util/ArrayList;

    return-object v0
.end method
