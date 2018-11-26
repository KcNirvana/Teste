.class final Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;
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

.method synthetic constructor <init>(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;)I
    .locals 4

    iget-wide v0, p2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->lockScreedBytes:J

    iget-wide v2, p1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->lockScreedBytes:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;

    check-cast p2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;->compare(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;)I

    move-result v0

    return v0
.end method
