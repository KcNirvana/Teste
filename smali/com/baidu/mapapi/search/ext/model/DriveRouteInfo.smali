.class public Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/baidu/mapapi/search/ext/model/TrafficInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/baidu/mapapi/search/ext/model/RouteSummary;

.field b:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->c:Ljava/util/List;

    return-object v0
.end method

.method public getRouteSummary()Lcom/baidu/mapapi/search/ext/model/RouteSummary;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->a:Lcom/baidu/mapapi/search/ext/model/RouteSummary;

    return-object v0
.end method

.method public getTraffic()Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->b:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->c:Ljava/util/List;

    return-void
.end method

.method public setRouteSummary(Lcom/baidu/mapapi/search/ext/model/RouteSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->a:Lcom/baidu/mapapi/search/ext/model/RouteSummary;

    return-void
.end method

.method public setTraffic(Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->b:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    return-void
.end method
