.class Lcom/miui/powercenter/autotask/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/j;-><init>()V

    return-void
.end method


# virtual methods
.method public aWb(Lcom/miui/powercenter/autotask/h;Lcom/miui/powercenter/autotask/h;)I
    .locals 4

    iget-wide v0, p1, Lcom/miui/powercenter/autotask/h;->id:J

    iget-wide v2, p2, Lcom/miui/powercenter/autotask/h;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p2, Lcom/miui/powercenter/autotask/h;->aKz:I

    iget v1, p1, Lcom/miui/powercenter/autotask/h;->aKz:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/powercenter/autotask/h;

    check-cast p2, Lcom/miui/powercenter/autotask/h;

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/autotask/j;->aWb(Lcom/miui/powercenter/autotask/h;Lcom/miui/powercenter/autotask/h;)I

    move-result v0

    return v0
.end method
