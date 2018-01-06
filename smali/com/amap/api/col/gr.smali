.class public Lcom/amap/api/col/gr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/amap/api/col/gr;


# instance fields
.field a:I

.field b:J

.field private d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field private e:J

.field private f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/gr;->c:Lcom/amap/api/col/gr;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-wide v2, p0, Lcom/amap/api/col/gr;->e:J

    iput-wide v2, p0, Lcom/amap/api/col/gr;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gr;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/gr;->a:I

    iput-wide v2, p0, Lcom/amap/api/col/gr;->b:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/col/gr;
    .locals 2

    const-class v1, Lcom/amap/api/col/gr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/gr;->c:Lcom/amap/api/col/gr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/gr;

    invoke-direct {v0}, Lcom/amap/api/col/gr;-><init>()V

    sput-object v0, Lcom/amap/api/col/gr;->c:Lcom/amap/api/col/gr;

    :cond_0
    sget-object v0, Lcom/amap/api/col/gr;->c:Lcom/amap/api/col/gr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 2

    invoke-static {p1}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/gr;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/col/hl;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget v0, p0, Lcom/amap/api/col/gr;->a:I

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 12

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/gr;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->b:J

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->b:J

    iget-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->e:J

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->e:J

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->b()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->b()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->e:J

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getBuildingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->e:J

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/gr;->a:I

    iget-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {p1, v0}, Lcom/amap/api/col/hu;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v2

    sub-float v3, v2, v1

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/col/gr;->e:J

    sub-long v6, v4, v6

    const/high16 v8, 0x42ca0000    # 101.0f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_8

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-gtz v8, :cond_9

    :cond_8
    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_c

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_c

    :cond_9
    iget-wide v0, p0, Lcom/amap/api/col/gr;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iput-wide v4, p0, Lcom/amap/api/col/gr;->f:J

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, v0}, Lcom/amap/api/col/gr;->c(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_b
    iget-wide v0, p0, Lcom/amap/api/col/gr;->f:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iput-wide v4, p0, Lcom/amap/api/col/gr;->e:J

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->f:J

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_c
    const/high16 v8, 0x42c80000    # 100.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_d

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_d

    iput-wide v4, p0, Lcom/amap/api/col/gr;->e:J

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->f:J

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_d
    const v8, 0x43958000    # 299.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_e

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/amap/api/col/gr;->f:J

    :cond_e
    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_11

    float-to-double v8, v0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v8, v10

    if-lez v0, :cond_11

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_11

    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, v0}, Lcom/amap/api/col/gr;->c(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_f
    div-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    iput-wide v4, p0, Lcom/amap/api/col/gr;->e:J

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, v0}, Lcom/amap/api/col/gr;->c(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_11
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_13

    const-wide/16 v0, 0x7530

    cmp-long v0, v6, v0

    if-ltz v0, :cond_12

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->e:J

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, v0}, Lcom/amap/api/col/gr;->c(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->e:J

    iput-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/gr;->g:Z

    return-void
.end method

.method public b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 0

    return-object p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/gr;->d:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gr;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
