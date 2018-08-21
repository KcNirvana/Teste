.class public Lcom/baidu/mapapi/search/ext/model/RouteSummary;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:D

.field private c:Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCongestLength()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/ext/model/RouteSummary;->b:D

    return-wide v0
.end method

.method public getRouteName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/ext/model/RouteSummary;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteTraffic()Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/ext/model/RouteSummary;->c:Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    return-object v0
.end method

.method public setCongestLength(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/mapapi/search/ext/model/RouteSummary;->b:D

    return-void
.end method

.method public setRouteName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/ext/model/RouteSummary;->a:Ljava/lang/String;

    return-void
.end method

.method public setRouteTraffic(Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/ext/model/RouteSummary;->c:Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    return-void
.end method
