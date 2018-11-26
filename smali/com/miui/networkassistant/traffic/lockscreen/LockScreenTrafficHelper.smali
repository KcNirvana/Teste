.class public Lcom/miui/networkassistant/traffic/lockscreen/LockScreenTrafficHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLockScreenLevel(J)I
    .locals 2

    const-wide/32 v0, 0x1f400000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-wide v0, 0x140000000L

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const-wide v0, 0x280000000L

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x4

    return v0
.end method

.method public static getWarningLimitBytes(IJ)J
    .locals 3

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/miui/networkassistant/traffic/lockscreen/LockScreenTrafficHelper;->getWarningLimitBytes(J)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const-wide/32 v0, 0x19000

    return-wide v0

    :pswitch_1
    const-wide/32 v0, 0x7d000

    return-wide v0

    :pswitch_2
    const-wide/32 v0, 0x100000

    return-wide v0

    :pswitch_3
    const-wide/32 v0, 0x200000

    return-wide v0

    :pswitch_4
    const-wide/32 v0, 0x500000

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getWarningLimitBytes(J)J
    .locals 2

    const-wide/32 v0, 0x1f400000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x19000

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    const-wide/32 v0, 0x7d000

    return-wide v0

    :cond_1
    const-wide v0, 0x140000000L

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    const-wide/32 v0, 0x100000

    return-wide v0

    :cond_2
    const-wide v0, 0x280000000L

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    const-wide/32 v0, 0x200000

    return-wide v0

    :cond_3
    const-wide/32 v0, 0x500000

    return-wide v0
.end method
