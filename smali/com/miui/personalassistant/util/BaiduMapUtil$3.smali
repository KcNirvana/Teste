.class Lcom/miui/personalassistant/util/BaiduMapUtil$3;
.super Ljava/lang/Object;
.source "BaiduMapUtil.java"

# interfaces
.implements Lcom/baidu/mapapi/search/ext/parser/DriveRouteInfoParser$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/BaiduMapUtil;->onGetDrivingRouteResult(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

.field final synthetic val$result:Lcom/baidu/mapapi/search/route/DrivingRouteResult;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/BaiduMapUtil;Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    iput-object p2, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->val$result:Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string/jumbo v0, "GeoLocationManager.BaiduMapUtil"

    const-string/jumbo v1, "parseDRouteLine2Info onFailed"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    invoke-virtual {v0}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    return-void
.end method

.method public onSuccess(Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;)V
    .locals 26

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    :goto_0
    return-void

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->val$result:Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getDuration()I

    move-result v8

    const/4 v5, 0x0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/mapapi/search/ext/model/TrafficInfo;

    invoke-virtual {v10}, Lcom/baidu/mapapi/search/ext/model/TrafficInfo;->getStatus()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/baidu/mapapi/search/ext/model/TrafficInfo;->getLength()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/miui/personalassistant/util/LocationUtil;->getIntByDouble(D)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-double v0, v5

    move-wide/from16 v22, v0

    invoke-virtual {v10}, Lcom/baidu/mapapi/search/ext/model/TrafficInfo;->getLength()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v5, v0

    goto :goto_1

    :catch_0
    move-exception v9

    const-string/jumbo v20, "GeoLocationManager.BaiduMapUtil"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "error driveRouteInfo getItems "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;->getRouteSummary()Lcom/baidu/mapapi/search/ext/model/RouteSummary;

    move-result-object v16

    if-nez v16, :cond_2

    :try_start_1
    const-string/jumbo v20, "title"

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$300()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "msg"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$300()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "  |  "

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$400()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lcom/miui/personalassistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mapapi/search/ext/model/RouteSummary;->getRouteName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mapapi/search/ext/model/RouteSummary;->getCongestLength()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/miui/personalassistant/util/LocationUtil;->getIntByDouble(D)I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    div-double v6, v20, v22

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mapapi/search/ext/model/RouteSummary;->getRouteTraffic()Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;

    move-result-object v17

    :try_start_2
    sget-object v20, Lcom/miui/personalassistant/util/BaiduMapUtil$4;->$SwitchMap$com$baidu$mapapi$search$ext$model$RouteSummary$RouteTraffic:[I

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/mapapi/search/ext/model/RouteSummary$RouteTraffic;->ordinal()I

    move-result v21

    aget v20, v20, v21
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    packed-switch v20, :pswitch_data_0

    :cond_3
    :goto_3
    :try_start_3
    const-string/jumbo v20, "length"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "status"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "distance"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v20, "duration"

    div-int/lit8 v21, v8, 0x3c

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v20, "traffic"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "route"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "pkgName"

    const-string/jumbo v21, "com.baidu.BaiduMap"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$1000(Lcom/miui/personalassistant/util/BaiduMapUtil;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$000(Lcom/miui/personalassistant/util/BaiduMapUtil;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "startCity"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$000(Lcom/miui/personalassistant/util/BaiduMapUtil;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$1100(Lcom/miui/personalassistant/util/BaiduMapUtil;)Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/miui/personalassistant/util/LocationUtil;->sendEtaLineInfo(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    const-string/jumbo v20, "GeoLocationManager.BaiduMapUtil"

    const-string/jumbo v21, "parseDRouteLine2Info onSucc"

    invoke-static/range {v20 .. v21}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/BaiduMapUtil$3;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v20, "GeoLocationManager.BaiduMapUtil"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getRouteSummary JSONException "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_0
    :try_start_4
    const-string/jumbo v20, "title"

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$500()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "msg"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$500()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "  |  "

    aput-object v23, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    const/16 v22, 0x3

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$600()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x5

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$700()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lcom/miui/personalassistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v9

    const-string/jumbo v20, "GeoLocationManager.BaiduMapUtil"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getRouteTraffic JSONException "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_1
    :try_start_5
    const-string/jumbo v20, "title"

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$800()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v20, "msg"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$800()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "  |  "

    aput-object v23, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    const/16 v22, 0x3

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$600()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x5

    invoke-static {}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$900()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lcom/miui/personalassistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    :catch_3
    move-exception v9

    const-string/jumbo v20, "GeoLocationManager.BaiduMapUtil"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "data add JSONException "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
