.class Lcom/miui/powercenter/autotask/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field aKu:Z

.field id:J

.field time:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/e;->aKu:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/e;-><init>()V

    return-void
.end method


# virtual methods
.method public aVF(Lcom/miui/powercenter/autotask/e;)I
    .locals 4

    iget-wide v0, p0, Lcom/miui/powercenter/autotask/e;->time:J

    iget-wide v2, p1, Lcom/miui/powercenter/autotask/e;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/powercenter/autotask/e;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/e;->aVF(Lcom/miui/powercenter/autotask/e;)I

    move-result v0

    return v0
.end method
