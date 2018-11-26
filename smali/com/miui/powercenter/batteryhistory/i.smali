.class public Lcom/miui/powercenter/batteryhistory/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/powercenter/batteryhistory/i;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aTQ(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/j;
    .locals 10

    const-wide/32 v6, 0xea60

    const-wide/16 v8, 0x0

    invoke-static {p0, p1}, Lcom/miui/powercenter/batteryhistory/i;->aTS(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/j;

    move-result-object v0

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/miui/powercenter/batteryhistory/i;->aTR(Landroid/content/Context;Lcom/miui/powercenter/batteryhistory/j;)V

    :cond_0
    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v2, v0, Lcom/miui/powercenter/batteryhistory/j;->aHV:I

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/j;->aHU:I

    sub-int/2addr v2, v3

    iget-wide v4, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    const/16 v3, 0x14

    if-ge v2, v3, :cond_7

    :cond_1
    add-int/lit8 v3, v2, 0xa

    int-to-float v2, v2

    int-to-float v4, v3

    div-float/2addr v2, v4

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float v3, v4, v3

    iget v4, v0, Lcom/miui/powercenter/batteryhistory/j;->aHY:I

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/i;->aTU(I)J

    move-result-wide v4

    cmp-long v6, v4, v8

    if-eqz v6, :cond_4

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    iget-wide v6, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/miui/powercenter/batteryhistory/i;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "BatteryChargeTimeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Use mixed(calc) charge time,  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    invoke-static {v8, v9}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-wide v6, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    long-to-float v6, v6

    mul-float/2addr v2, v6

    long-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    const-string/jumbo v2, "BatteryChargeTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mixed(calc) charge time, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_3
    const-string/jumbo v2, "BatteryChargeTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Use history time, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v4, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/i;->aTT(Landroid/content/Context;)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    iget-wide v6, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/miui/powercenter/batteryhistory/i;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "BatteryChargeTimeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Use mixed(default) charge time, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    invoke-static {v8, v9}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-wide v6, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    long-to-float v6, v6

    mul-float/2addr v2, v6

    long-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    const-string/jumbo v2, "BatteryChargeTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mixed(default) charge time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/powercenter/batteryhistory/j;->aHX:Z

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "BatteryChargeTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Use default time,  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v4, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    goto :goto_1

    :cond_7
    invoke-static {p0, v0}, Lcom/miui/powercenter/batteryhistory/i;->aTR(Landroid/content/Context;Lcom/miui/powercenter/batteryhistory/j;)V

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_8

    iput-wide v6, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    :cond_8
    const-string/jumbo v2, "BatteryChargeTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Left charge time, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static aTR(Landroid/content/Context;Lcom/miui/powercenter/batteryhistory/j;)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/i;->aTW(Landroid/content/Context;)J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-long v2, v1

    iget-wide v4, p1, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    const-string/jumbo v0, "BatteryChargeTimeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Use min, leftChargeTime "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " minChargeTime "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    iput-boolean v6, p1, Lcom/miui/powercenter/batteryhistory/j;->aHW:Z

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/i;->aTV(Landroid/content/Context;)J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    const-string/jumbo v2, "BatteryChargeTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Use max, leftChargeTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " maxChargeTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/miui/powercenter/a/d;->bbe(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p1, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    iput-boolean v6, p1, Lcom/miui/powercenter/batteryhistory/j;->aHW:Z

    return-void

    :cond_1
    return-void
.end method

.method private static aTS(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/j;
    .locals 21

    const/4 v12, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v13, v12

    move v12, v9

    move/from16 v19, v8

    move-wide v8, v6

    move/from16 v7, v19

    move v6, v3

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/batteryhistory/d;

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTD()J

    move-result-wide v14

    iget-byte v0, v2, Lcom/miui/powercenter/batteryhistory/d;->aHa:B

    move/from16 v16, v0

    iget-byte v0, v2, Lcom/miui/powercenter/batteryhistory/d;->aHc:B

    move/from16 v18, v0

    iget-byte v3, v2, Lcom/miui/powercenter/batteryhistory/d;->aHb:B

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTE()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v13, :cond_1

    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_0

    const/4 v13, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v10, v14

    move/from16 v12, v16

    :cond_0
    move v2, v6

    move-wide/from16 v19, v8

    move v8, v7

    move v9, v12

    move-wide/from16 v6, v19

    move v12, v13

    :goto_1
    move v13, v12

    move v12, v9

    move-wide/from16 v19, v6

    move v7, v8

    move v6, v2

    move-wide/from16 v8, v19

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v2, v6

    move-wide/from16 v19, v8

    move v8, v7

    move v9, v12

    move-wide/from16 v6, v19

    move v12, v13

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    move/from16 v0, v16

    if-le v0, v12, :cond_3

    move-wide v8, v14

    move/from16 v7, v16

    :cond_3
    move/from16 v0, v16

    if-le v0, v6, :cond_9

    move-wide v4, v14

    move/from16 v2, v16

    move-wide/from16 v19, v8

    move v8, v7

    move v9, v12

    move-wide/from16 v6, v19

    move v12, v13

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/miui/powercenter/batteryhistory/j;

    invoke-direct {v3}, Lcom/miui/powercenter/batteryhistory/j;-><init>()V

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_5

    cmp-long v12, v4, v10

    if-lez v12, :cond_5

    sub-long v10, v4, v10

    iput-wide v10, v3, Lcom/miui/powercenter/batteryhistory/j;->aHS:J

    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_6

    cmp-long v10, v4, v8

    if-lez v10, :cond_6

    sub-long/2addr v4, v8

    iput-wide v4, v3, Lcom/miui/powercenter/batteryhistory/j;->aHT:J

    :cond_6
    iput v7, v3, Lcom/miui/powercenter/batteryhistory/j;->aHU:I

    iput v6, v3, Lcom/miui/powercenter/batteryhistory/j;->aHV:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/miui/powercenter/batteryhistory/j;->aHW:Z

    iput v2, v3, Lcom/miui/powercenter/batteryhistory/j;->aHY:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/miui/powercenter/batteryhistory/j;->aHX:Z

    if-eqz v7, :cond_7

    sub-int v2, v6, v7

    :goto_2
    iget-wide v4, v3, Lcom/miui/powercenter/batteryhistory/j;->aHT:J

    const-wide/32 v6, 0x2bf20

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    const/4 v4, 0x2

    if-lt v2, v4, :cond_8

    iget-wide v4, v3, Lcom/miui/powercenter/batteryhistory/j;->aHT:J

    invoke-static/range {p0 .. p0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    mul-long/2addr v4, v6

    int-to-long v6, v2

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    :goto_3
    return-object v3

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    goto :goto_3

    :cond_9
    move v2, v6

    move-wide/from16 v19, v8

    move v8, v7

    move v9, v12

    move-wide/from16 v6, v19

    move v12, v13

    goto/16 :goto_1
.end method

.method private static aTT(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v4, 0x3

    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/i;->aTW(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/i;->aTV(Landroid/content/Context;)J

    move-result-wide v2

    div-long/2addr v0, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static aTU(I)J
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/a;->bfn()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/miui/powercenter/a;->bfo()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static aTV(Landroid/content/Context;)J
    .locals 8

    const-wide/16 v6, 0x3c

    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baA(Landroid/content/Context;)I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0x384

    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baD(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/16 v0, 0x1c2

    :cond_0
    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    int-to-long v0, v0

    div-long v0, v2, v0

    return-wide v0
.end method

.method private static aTW(Landroid/content/Context;)J
    .locals 8

    const-wide/16 v6, 0x3c

    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baA(Landroid/content/Context;)I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0xa8c

    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baD(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/16 v0, 0x514

    :cond_0
    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    int-to-long v0, v0

    div-long v0, v2, v0

    return-wide v0
.end method
