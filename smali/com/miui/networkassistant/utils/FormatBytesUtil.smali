.class public Lcom/miui/networkassistant/utils/FormatBytesUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final GB:J = 0x40000000L

.field public static final KB:J = 0x400L

.field public static final MB:J = 0x100000L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBytes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x1

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-double v0, p1

    mul-double/2addr v0, v4

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    :goto_0
    invoke-static {p0, v0, v1, v3, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

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
    invoke-static {p0, v0, v1, v2, p3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

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

.method public static formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    long-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatBytesNoUint(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    long-to-double v0, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_2
    long-to-double v0, p1

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 9

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    new-array v4, v2, [Ljava/lang/String;

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-double v0, p1

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v6

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    :goto_0
    const/4 v5, 0x0

    invoke-static {p0, v0, v1, v5, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    return-object v4

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-double v0, p1

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v6

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    long-to-double v0, p1

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v6

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    goto :goto_0

    :cond_2
    long-to-double v0, p1

    mul-double/2addr v0, v6

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    move v2, v3

    goto :goto_0
.end method

.method public static formatBytesWithUintLong(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v2, 0x100000

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMaxBytes(J)J
    .locals 8

    const-wide/32 v6, 0x40000000

    const-wide/32 v4, 0x100000

    const-wide/16 v2, 0x400

    cmp-long v0, p0, v6

    if-ltz v0, :cond_0

    return-wide v6

    :cond_0
    cmp-long v0, p0, v4

    if-lez v0, :cond_1

    return-wide v4

    :cond_1
    cmp-long v0, p0, v2

    if-lez v0, :cond_2

    return-wide v2

    :cond_2
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 7

    const/high16 v6, 0x44800000    # 1024.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    long-to-float v1, p1

    const v0, 0x7f0701d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    div-float/2addr v1, v6

    const v3, 0x4479c000    # 999.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    const v0, 0x7f0701d7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    div-float/2addr v1, v6

    :cond_0
    aput-object v0, v2, v5

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    const-string/jumbo v0, "%.2f"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    :goto_0
    return-object v2

    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    const-string/jumbo v0, "%.1f"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "%.0f"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_0
.end method

.method public static formatUniteUnit(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 5

    long-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    long-to-double v2, p3

    div-double/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0701db

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBytesByUnit(FLjava/lang/String;)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x44800000    # 1024.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x49800000    # 1048576.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0

    :cond_1
    const-string/jumbo v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x4e800000

    mul-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0

    :cond_2
    float-to-long v0, p0

    return-wide v0
.end method

.method public static getGBString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0701d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKBString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0701da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMBString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0701d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v0, 0x408f3c0000000000L    # 999.5

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "%d"

    new-array v1, v2, [Ljava/lang/Object;

    double-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-wide v0, 0x4058e00000000000L    # 99.5

    cmpl-double v0, p1, v0

    if-lez v0, :cond_3

    const-string/jumbo v0, "%.01f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "%.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trafficUnitArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0701d9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0701d8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
