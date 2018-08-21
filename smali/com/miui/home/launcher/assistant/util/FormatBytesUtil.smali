.class public Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;
.super Ljava/lang/Object;
.source "FormatBytesUtil.java"


# static fields
.field public static final GB:J = 0x40000000L

.field public static final KB:J = 0x400L

.field public static final MB:J = 0x100000L

.field public static UNIT_B:Ljava/lang/String;

.field public static UNIT_GB:Ljava/lang/String;

.field public static UNIT_KB:Ljava/lang/String;

.field public static UNIT_MB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "G"

    sput-object v0, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_GB:Ljava/lang/String;

    const-string/jumbo v0, "M"

    sput-object v0, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_MB:Ljava/lang/String;

    const-string/jumbo v0, "K"

    sput-object v0, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_KB:Ljava/lang/String;

    const-string/jumbo v0, "B"

    sput-object v0, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBytes(J)Ljava/lang/String;
    .locals 8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-wide/32 v4, 0x40000000

    cmp-long v4, p0, v4

    if-ltz v4, :cond_0

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, v4, v6

    sget-object v3, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_GB:Ljava/lang/String;

    const/4 v2, 0x2

    :goto_0
    invoke-static {v0, v1, v3, v2}, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->textFormatBySpace(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-wide/32 v4, 0x100000

    cmp-long v4, p0, v4

    if-ltz v4, :cond_1

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v0, v4, v6

    sget-object v3, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_MB:Ljava/lang/String;

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x400

    cmp-long v4, p0, v4

    if-ltz v4, :cond_2

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v0, v4, v6

    sget-object v3, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_KB:Ljava/lang/String;

    goto :goto_0

    :cond_2
    long-to-double v4, p0

    mul-double v0, v6, v4

    sget-object v3, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_B:Ljava/lang/String;

    goto :goto_0
.end method

.method public static formatBytes(JI)Ljava/lang/String;
    .locals 8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    const-wide/32 v4, 0x40000000

    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, v4, v6

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_GB:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1, v2, p2}, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->textFormat(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-wide/32 v4, 0x100000

    cmp-long v3, p0, v4

    if-ltz v3, :cond_1

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v0, v4, v6

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_MB:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x400

    cmp-long v3, p0, v4

    if-ltz v3, :cond_2

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v0, v4, v6

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_KB:Ljava/lang/String;

    goto :goto_0

    :cond_2
    long-to-double v4, p0

    mul-double v0, v6, v4

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_B:Ljava/lang/String;

    goto :goto_0
.end method

.method public static formatBytesArray(JI)[Ljava/lang/String;
    .locals 10

    const/4 v8, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-wide/32 v4, 0x40000000

    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, v4, v6

    sget-object v3, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_GB:Ljava/lang/String;

    aput-object v3, v2, v8

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, p2}, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->textFormatAlwaysWithPoint(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-object v2

    :cond_0
    const-wide/32 v4, 0x100000

    cmp-long v3, p0, v4

    if-ltz v3, :cond_1

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v0, v4, v6

    sget-object v3, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_MB:Ljava/lang/String;

    aput-object v3, v2, v8

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x400

    cmp-long v3, p0, v4

    if-ltz v3, :cond_2

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v0, v4, v6

    sget-object v3, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_KB:Ljava/lang/String;

    aput-object v3, v2, v8

    goto :goto_0

    :cond_2
    long-to-double v4, p0

    mul-double v0, v6, v4

    sget-object v3, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_B:Ljava/lang/String;

    aput-object v3, v2, v8

    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static formatBytesByMB(J)Ljava/lang/String;
    .locals 8

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_MB:Ljava/lang/String;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    long-to-double v6, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v0, v4, v6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->textFormat(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatBytesNoUint(J)Ljava/lang/String;
    .locals 6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    long-to-double v2, p0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, v2, v4

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->textFormat(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    long-to-double v2, p0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double v0, v2, v4

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-lez v2, :cond_2

    long-to-double v2, p0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double v0, v2, v4

    goto :goto_0

    :cond_2
    long-to-double v2, p0

    mul-double v0, v4, v2

    goto :goto_0
.end method

.method public static formatBytesNoUintLong(J)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0x100000

    div-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatBytesSplited(J)[Ljava/lang/String;
    .locals 10

    const/4 v8, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v2, 0x2

    const-wide/32 v4, 0x40000000

    cmp-long v4, p0, v4

    if-ltz v4, :cond_0

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, v4, v6

    sget-object v4, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_GB:Ljava/lang/String;

    aput-object v4, v3, v8

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, v2}, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->textFormat(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    return-object v3

    :cond_0
    const-wide/32 v4, 0x100000

    cmp-long v4, p0, v4

    if-ltz v4, :cond_1

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v0, v4, v6

    sget-object v4, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_MB:Ljava/lang/String;

    aput-object v4, v3, v8

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x400

    cmp-long v4, p0, v4

    if-ltz v4, :cond_2

    long-to-double v4, p0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v0, v4, v6

    sget-object v4, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_KB:Ljava/lang/String;

    aput-object v4, v3, v8

    goto :goto_0

    :cond_2
    long-to-double v4, p0

    mul-double v0, v6, v4

    sget-object v4, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_B:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static formatBytesWithUintLong(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v2, 0x100000

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_MB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static textFormat(DLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide v2, 0x408f3c0000000000L    # 999.5

    cmpl-double v2, p0, v2

    if-gtz v2, :cond_0

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_B:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "%d"

    new-array v3, v4, [Ljava/lang/Object;

    double-to-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    const-wide v2, 0x4058e00000000000L    # 99.5

    cmpl-double v2, p0, v2

    if-lez v2, :cond_3

    const-string/jumbo v2, "%.01f"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "%.0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static textFormatAlwaysWithPoint(DLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_B:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "%d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const-string/jumbo v2, "%.0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static textFormatBySpace(DLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide v2, 0x408f3c0000000000L    # 999.5

    cmpl-double v2, p0, v2

    if-gtz v2, :cond_0

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_B:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "%d"

    new-array v3, v4, [Ljava/lang/Object;

    double-to-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    const-wide v2, 0x4058e00000000000L    # 99.5

    cmpl-double v2, p0, v2

    if-lez v2, :cond_3

    const-string/jumbo v2, "%.01f"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "%.0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static trafficUnitArray()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_MB:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->UNIT_GB:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method
