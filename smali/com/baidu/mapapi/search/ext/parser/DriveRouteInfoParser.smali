.class public Lcom/baidu/mapapi/search/ext/parser/DriveRouteInfoParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/ext/parser/DriveRouteInfoParser$ICallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDRouteLine2Info(Lcom/baidu/mapapi/search/route/DrivingRouteLine;Lcom/baidu/mapapi/search/ext/parser/DriveRouteInfoParser$ICallback;)V
    .locals 2

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/baidu/mapapi/search/ext/parser/DriveRouteInfoParser$ICallback;->onFailed()V

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;-><init>()V

    invoke-static {p0}, Lcom/baidu/mapapi/search/ext/parser/a;->c(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->setItems(Ljava/util/List;)V

    invoke-static {p0}, Lcom/baidu/mapapi/search/ext/parser/a;->b(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->setTraffic(Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;)V

    invoke-static {p0}, Lcom/baidu/mapapi/search/ext/parser/a;->a(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)Lcom/baidu/mapapi/search/ext/model/RouteSummary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->setRouteSummary(Lcom/baidu/mapapi/search/ext/model/RouteSummary;)V

    invoke-interface {p1, v0}, Lcom/baidu/mapapi/search/ext/parser/DriveRouteInfoParser$ICallback;->onSuccess(Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;)V

    return-void
.end method
