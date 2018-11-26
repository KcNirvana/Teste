.class public Lcom/miui/powercenter/legacypowerrank/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aRm(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/e;D)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "title"

    invoke-static {p0, p1}, Lcom/miui/powercenter/legacypowerrank/j;->aRM(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "percent"

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "iconPackage"

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "iconId"

    invoke-static {p1}, Lcom/miui/powercenter/legacypowerrank/j;->aRN(Lcom/miui/powercenter/legacypowerrank/e;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/e;->getUid()I

    move-result v0

    if-ltz v0, :cond_0

    const-string/jumbo v0, "uid"

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/e;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v0, "drainType"

    iget v1, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-array v1, v6, [I

    const v0, 0x7f07044f

    aput v0, v1, v3

    new-array v0, v6, [D

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    :goto_0
    const-string/jumbo v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/16 v0, 0x9

    new-array v0, v0, [D

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    long-to-double v4, v4

    aput-wide v4, v0, v8

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFK:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFL:J

    long-to-double v4, v4

    const/4 v3, 0x4

    aput-wide v4, v0, v3

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    long-to-double v4, v4

    const/4 v3, 0x5

    aput-wide v4, v0, v3

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    long-to-double v4, v4

    aput-wide v4, v0, v7

    const-wide/16 v4, 0x0

    const/4 v3, 0x7

    aput-wide v4, v0, v3

    const-wide/16 v4, 0x0

    const/16 v3, 0x8

    aput-wide v4, v0, v3

    goto :goto_0

    :pswitch_2
    const v0, 0x7f07044f

    const v1, 0x7f07043f

    filled-new-array {v0, v1}, [I

    move-result-object v1

    new-array v0, v8, [D

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFP:D

    aput-wide v4, v0, v6

    goto :goto_0

    :pswitch_3
    new-array v1, v7, [I

    fill-array-data v1, :array_1

    new-array v0, v7, [D

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    long-to-double v4, v4

    aput-wide v4, v0, v8

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    long-to-double v4, v4

    const/4 v3, 0x4

    aput-wide v4, v0, v3

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    long-to-double v4, v4

    const/4 v3, 0x5

    aput-wide v4, v0, v3

    goto/16 :goto_0

    :pswitch_4
    new-array v1, v7, [I

    fill-array-data v1, :array_2

    new-array v0, v7, [D

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    long-to-double v4, v4

    aput-wide v4, v0, v8

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    long-to-double v4, v4

    const/4 v3, 0x4

    aput-wide v4, v0, v3

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    long-to-double v4, v4

    const/4 v3, 0x5

    aput-wide v4, v0, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x7f070449
        0x7f07044a
        0x7f07044b
        0x7f070440
        0x7f07044c
        0x7f07043e
        0x7f07043d
        0x7f07044d
        0x7f07044e
    .end array-data

    :array_1
    .array-data 4
        0x7f07044c
        0x7f070449
        0x7f07044a
        0x7f07044b
        0x7f07043e
        0x7f07043d
    .end array-data

    :array_2
    .array-data 4
        0x7f07044f
        0x7f070449
        0x7f07044a
        0x7f07044b
        0x7f07043e
        0x7f07043d
    .end array-data
.end method
