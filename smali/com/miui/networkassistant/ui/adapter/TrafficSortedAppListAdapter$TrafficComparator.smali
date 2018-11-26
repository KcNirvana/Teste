.class Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;->mType:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/networkassistant/model/TrafficInfo;Lcom/miui/networkassistant/model/TrafficInfo;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    iget v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;->mType:I

    aget-wide v0, v0, v1

    iget-object v2, p2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v2, v2, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    iget v3, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;->mType:I

    aget-wide v2, v2, v3

    sub-long v0, v2, v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/networkassistant/model/TrafficInfo;

    check-cast p2, Lcom/miui/networkassistant/model/TrafficInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;->compare(Lcom/miui/networkassistant/model/TrafficInfo;Lcom/miui/networkassistant/model/TrafficInfo;)I

    move-result v0

    return v0
.end method
