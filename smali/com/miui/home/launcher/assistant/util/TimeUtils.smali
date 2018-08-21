.class public Lcom/miui/home/launcher/assistant/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static final TIME_SPACE:[[I

.field private static final UNIT_DAY:J = 0x5265c00L

.field private static final UNIT_HOUR:J = 0x36ee80L

.field private static final UNIT_MINUTE:J = 0xea60L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/home/launcher/assistant/util/TimeUtils;->TIME_SPACE:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0xc
        0xd
    .end array-data

    :array_4
    .array-data 4
        0xd
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x12
        0x13
    .end array-data

    :array_6
    .array-data 4
        0x13
        0x18
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/content/Context;J)Ljava/lang/String;
    .locals 21

    const-wide/16 v16, 0x0

    cmp-long v15, v16, p1

    if-nez v15, :cond_1

    const-string/jumbo v4, ""

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, p1

    const v15, 0x1b0b0456

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-static {v15, v0, v1}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getHourFromTimeString(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->get12HourPrefix(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const v15, 0x1b0b02b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-static {v15, v0, v1}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    const v15, 0x1b0b022a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-static {v15, v0, v1}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const v15, 0x1b0b0229

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-static {v15, v0, v1}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-gez v15, :cond_3

    const v15, 0x1b0b0457

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-static {v15, v0, v1}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->is24Hour(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, ""

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    const/16 v16, 0x3

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x4

    aput-object v3, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_2
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_3
    const-wide/32 v16, 0xea60

    cmp-long v15, v6, v16

    if-gez v15, :cond_4

    const v15, 0x1b0b022f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    const-wide/32 v16, 0x36ee80

    cmp-long v15, v6, v16

    if-gez v15, :cond_5

    const-wide/32 v16, 0xea60

    div-long v16, v6, v16

    move-wide/from16 v0, v16

    long-to-int v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1b0a0013

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v8, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->isInSameYear(JJ)Z

    move-result v15

    if-eqz v15, :cond_c

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getDaysBetween(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v2, v0

    if-nez v2, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->is24Hour(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v3, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    const/4 v15, 0x1

    if-ne v2, v15, :cond_9

    const v15, 0x1b0b0459

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->is24Hour(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    const/16 v16, 0x3

    const-string/jumbo v17, ""

    aput-object v17, v15, v16

    const/16 v16, 0x4

    aput-object v3, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->is24Hour(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_b

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    const/16 v16, 0x3

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x4

    aput-object v3, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_a
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_c
    const v15, 0x1b0b0457

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-static {v15, v0, v1}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->is24Hour(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_d

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    const/16 v16, 0x3

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x4

    aput-object v3, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_d
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getMillsFromDate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatMillis(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static formatMillis(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->isInSameYear(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p0, p1}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p3, p0, p1}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatMonthDay(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    const v1, 0x1b0b02b1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    const-wide/16 v6, 0x0

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    const-string/jumbo v1, ""

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v6, 0x1b0b0456

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getHourFromTimeString(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->get12HourPrefix(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x1b0b022a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const v6, 0x1b0b0229

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v4, v5}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getDaysBetween(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->is24Hour(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static formatTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static formatTimeNoDays(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const v3, 0x1b0b0456

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getHourFromTimeString(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->get12HourPrefix(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1b0b022a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->is24Hour(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x1b0b0229

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static get12HourPrefix(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b080003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v3, Lcom/miui/home/launcher/assistant/util/TimeUtils;->TIME_SPACE:[[I

    array-length v2, v3

    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v3, Lcom/miui/home/launcher/assistant/util/TimeUtils;->TIME_SPACE:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    if-le p1, v3, :cond_0

    sget-object v3, Lcom/miui/home/launcher/assistant/util/TimeUtils;->TIME_SPACE:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ge p1, v3, :cond_0

    aget-object v3, v0, v1

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method public static getDaysBetween(JJ)J
    .locals 8

    const/16 v6, 0xe

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public static getFormatDate(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHappenedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13

    const-wide/16 v6, 0x0

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    :goto_0
    return-object v6

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, p1, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0b03e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-wide/32 v6, 0x36ee80

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const-wide/32 v6, 0xea60

    div-long v6, v2, v6

    long-to-int v1, v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0a000e

    add-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-wide/32 v6, 0x36ee80

    div-long v6, v2, v6

    long-to-int v0, v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0a000d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getHourFromTimeString(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getHoursBetween(JJ)J
    .locals 6

    sub-long v2, p2, p0

    const-wide/32 v4, 0x36ee80

    div-long v0, v2, v4

    return-wide v0
.end method

.method public static getHoursOrMinBetweenFormat(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 13

    sub-long v0, p3, p1

    const-wide/32 v6, 0x36ee80

    div-long v2, v0, v6

    const-wide/32 v6, 0xea60

    div-long v6, v0, v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    sub-long v4, v6, v8

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0a000d

    long-to-int v8, v2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0a000e

    long-to-int v8, v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ""

    goto :goto_0
.end method

.method public static getMillsFromDate(Ljava/lang/String;)J
    .locals 6

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_0
    return-wide v4

    :catch_0
    move-exception v1

    const-string/jumbo v3, "TimeUtils"

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getMillsFromMills(Ljava/lang/String;J)J
    .locals 7

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_0
    return-wide v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "TimeUtils"

    const-string/jumbo v5, "ParseException"

    invoke-static {v4, v5, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getMillsTimeFromTime(Ljava/lang/String;)J
    .locals 6

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_0
    return-wide v4

    :catch_0
    move-exception v1

    const-string/jumbo v3, "TimeUtils"

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getTimeIntervalStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b041a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const-wide/16 v4, 0xe10

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    div-long v4, v2, v8

    long-to-int v1, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0a0013

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x15180

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    div-long v4, v2, v8

    div-long/2addr v4, v8

    long-to-int v0, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0a0012

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->isInSameYear(JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b041b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b041c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getTodayString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "yyyy-MM-dd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTodayTimes(I)J
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static is24Hour(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "time_12_24"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isInSameYear(JJ)Z
    .locals 6

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
