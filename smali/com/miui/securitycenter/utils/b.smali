.class public Lcom/miui/securitycenter/utils/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bqC(Landroid/content/Context;)Z
    .locals 7

    const/16 v6, 0xb4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "GmsModelUtils"

    const-string/jumbo v3, "start scan "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ro.miui.has_gmscore"

    invoke-static {v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/a;->bsa()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x7de

    if-gt v2, v3, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/securitycenter/a;->bsv(J)V

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/a;->bsa()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/common/b/g;->getFromNowDayInterval(J)I

    move-result v2

    const-string/jumbo v3, "GmsModelUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time realInterval : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_3

    if-gt v2, v6, :cond_3

    invoke-static {p0}, Lcom/miui/googlebase/a/d;->bzS(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-static {p0}, Lcom/miui/googlebase/a/d;->bzT(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string/jumbo v1, "GmsModelUtils"

    const-string/jumbo v2, "status danger "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_3
    if-gt v2, v6, :cond_4

    if-gez v2, :cond_5

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/securitycenter/a;->bsv(J)V

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static bqD(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.miui.has_gmscore"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GmsModelUtils"

    const-string/jumbo v1, "start optimize "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/miui/googlebase/a/d;->bzR(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static bqE(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/securitycenter/utils/b;->bqC(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/securitycenter/utils/b;->bqD(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
