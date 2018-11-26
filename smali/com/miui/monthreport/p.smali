.class final Lcom/miui/monthreport/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic aZU:Lcom/miui/monthreport/b;


# direct methods
.method constructor <init>(Lcom/miui/monthreport/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/p;->aZU:Lcom/miui/monthreport/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bvP(Lcom/miui/monthreport/LocationGetterManager$LocateType;Lcom/miui/monthreport/LocationGetterManager$LocateType;)I
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/miui/monthreport/LocationGetterManager$LocateType;->buJ(Lcom/miui/monthreport/LocationGetterManager$LocateType;)I

    move-result v0

    invoke-static {p1}, Lcom/miui/monthreport/LocationGetterManager$LocateType;->buJ(Lcom/miui/monthreport/LocationGetterManager$LocateType;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    check-cast p2, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    invoke-virtual {p0, p1, p2}, Lcom/miui/monthreport/p;->bvP(Lcom/miui/monthreport/LocationGetterManager$LocateType;Lcom/miui/monthreport/LocationGetterManager$LocateType;)I

    move-result v0

    return v0
.end method
