.class public final enum Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/ext/model/RouteSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RouteTraffic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

.field public static final enum BLOCKED:Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

.field public static final enum CONGESTION:Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    const-string/jumbo v1, "CONGESTION"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;->CONGESTION:Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    new-instance v0, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    const-string/jumbo v1, "BLOCKED"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;->BLOCKED:Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    sget-object v1, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;->CONGESTION:Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;->BLOCKED:Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;->$VALUES:[Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;
    .locals 1

    const-class v0, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;->$VALUES:[Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    return-object v0
.end method
