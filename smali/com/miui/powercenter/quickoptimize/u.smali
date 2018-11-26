.class public Lcom/miui/powercenter/quickoptimize/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aEA:J

.field private static aEB:J

.field private static aEC:J

.field private static aED:J

.field private static aEE:J

.field private static aEF:J

.field private static aEG:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aED:J

    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEA:J

    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEE:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEF:J

    const-wide/32 v0, 0x124f80

    sput-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEC:J

    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEG:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEB:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aQE(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/v;)J
    .locals 6

    const-wide/32 v2, 0xea60

    const-wide/16 v0, 0x0

    iget v4, p1, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x64

    div-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0

    :pswitch_1
    sget-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aED:J

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/u;->aQF(Lcom/miui/powercenter/quickoptimize/v;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v0, v4

    goto :goto_0

    :pswitch_2
    sget-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEA:J

    goto :goto_0

    :pswitch_3
    sget-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEG:J

    goto :goto_0

    :pswitch_4
    sget-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEB:J

    goto :goto_0

    :pswitch_5
    sget-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEE:J

    goto :goto_0

    :pswitch_6
    sget-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEF:J

    goto :goto_0

    :pswitch_7
    sget-wide v0, Lcom/miui/powercenter/quickoptimize/u;->aEC:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static aQF(Lcom/miui/powercenter/quickoptimize/v;)I
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/v;->data:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/v;->data:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/v;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    return v1
.end method
