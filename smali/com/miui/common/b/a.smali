.class public Lcom/miui/common/b/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aGQ(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 9

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    if-nez p3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double v4, v0, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v2, v6

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p0, v0, v1, v2, p3}, Lcom/miui/common/b/a;->aGV(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    long-to-double v0, p1

    mul-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static aGR(Landroid/content/Context;JI)[Ljava/lang/String;
    .locals 15

    const/4 v7, 0x0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const-wide/32 v4, 0x40000000

    cmp-long v3, p1, v4

    if-ltz v3, :cond_1

    move-wide/from16 v0, p1

    long-to-double v4, v0

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v8

    if-nez p3, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    mul-double v10, v4, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v12

    const-wide v12, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v8, v12

    cmpl-double v3, v10, v8

    if-ltz v3, :cond_0

    move/from16 p3, v2

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    move-wide v2, v4

    :goto_0
    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-static {p0, v2, v3, v4, v0}, Lcom/miui/common/b/a;->aGV(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    return-object v6

    :cond_1
    const-wide/32 v4, 0x100000

    cmp-long v3, p1, v4

    if-ltz v3, :cond_2

    move-wide/from16 v0, p1

    long-to-double v4, v0

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v8

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    move-wide v2, v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x400

    cmp-long v3, p1, v4

    if-ltz v3, :cond_3

    move-wide/from16 v0, p1

    long-to-double v4, v0

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v8

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    move-wide v2, v4

    goto :goto_0

    :cond_3
    move-wide/from16 v0, p1

    long-to-double v4, v0

    mul-double/2addr v4, v8

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    move-wide v2, v4

    goto :goto_0
.end method

.method public static aGS(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 p3, 0x1

    :goto_0
    invoke-static {p0, v0, v1, v2, p3}, Lcom/miui/common/b/a;->aGV(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/32 v0, 0xf4240

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    long-to-double v0, p1

    mul-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static aGT(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v4, 0x400

    const-wide/16 v8, 0xa

    div-long v0, p0, v4

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    mul-long/2addr v0, v8

    div-long/2addr v0, v4

    div-long v2, v0, v8

    rem-long v4, v0, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-long/2addr v0, v8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aGU(DLjava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v0, 0x408f3c0000000000L    # 999.5

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "%d"

    new-array v1, v2, [Ljava/lang/Object;

    double-to-int v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-wide v0, 0x4058e00000000000L    # 99.5

    cmpl-double v0, p0, v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "%.01f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "%.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static aGV(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "%.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static formatBytes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-double v0, p1

    mul-double/2addr v0, v4

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    :goto_0
    invoke-static {p0, v0, v1, v3, v2}, Lcom/miui/common/b/a;->aGV(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-double v0, p1

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v4

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    long-to-double v0, p1

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v4

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    long-to-double v0, p1

    mul-double/2addr v0, v4

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static formatBytes(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v1, v2, p3}, Lcom/miui/common/b/a;->aGU(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    long-to-double v0, p1

    mul-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
