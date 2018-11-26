.class final Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;
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

.method synthetic constructor <init>(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;)I
    .locals 4

    iget-wide v0, p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->total:J

    iget-wide v2, p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->total:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    check-cast p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;->compare(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;)I

    move-result v0

    return v0
.end method
