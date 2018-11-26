.class public Lcom/miui/powercenter/bootshutdown/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aTe()Lcom/miui/powercenter/bootshutdown/d;
    .locals 2

    new-instance v0, Lcom/miui/powercenter/bootshutdown/d;

    invoke-direct {v0}, Lcom/miui/powercenter/bootshutdown/d;-><init>()V

    invoke-static {}, Lcom/miui/powercenter/bootshutdown/e;->aTg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/d;->aSS(I)V

    invoke-static {}, Lcom/miui/powercenter/bootshutdown/e;->aTi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/d;->aSU(I)V

    invoke-static {}, Lcom/miui/powercenter/bootshutdown/e;->aTh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/d;->aST(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/powercenter/bootshutdown/e;->aTj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/d;->aSV(Ljava/lang/String;)V

    return-object v0
.end method

.method public static aTf(Landroid/content/Context;ILjava/util/Calendar;Z)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/miui/powercenter/a/j;->bca(Landroid/content/Context;ILjava/util/Calendar;)V

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/powercenter/a;->bfp(J)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/powercenter/a;->bfq(J)V

    goto :goto_0
.end method

.method private static aTg()I
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/a;->bfm()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/powercenter/bootshutdown/e;->aTk(J)I

    move-result v0

    return v0
.end method

.method private static aTh()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/a;->beT()I

    move-result v0

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v0}, Lcom/miui/powercenter/a/d;->getFormatTime(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static aTi()I
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/a;->beX()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/powercenter/bootshutdown/e;->aTk(J)I

    move-result v0

    return v0
.end method

.method private static aTj()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/a;->beU()I

    move-result v0

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v0}, Lcom/miui/powercenter/a/d;->getFormatTime(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static aTk(J)I
    .locals 10

    const/16 v7, 0xc

    const/16 v5, 0xb

    const/4 v8, 0x7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-lt v2, v3, :cond_0

    if-ne v2, v3, :cond_1

    if-ge v4, v5, :cond_1

    :cond_0
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    if-ne v2, v3, :cond_2

    if-ne v4, v5, :cond_2

    if-lt v6, v7, :cond_0

    :cond_2
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method
