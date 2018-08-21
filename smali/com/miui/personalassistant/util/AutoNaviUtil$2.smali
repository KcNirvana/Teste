.class Lcom/miui/personalassistant/util/AutoNaviUtil$2;
.super Ljava/lang/Object;
.source "AutoNaviUtil.java"

# interfaces
.implements Lcom/autonavi/its/protocol/ReqCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/AutoNaviUtil;->reqETALineInfo(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Point;Lcom/autonavi/its/protocol/model/Point;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    iput-object p2, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 3

    const-string/jumbo v0, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v1, "ReqETALineInfo onFail"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    invoke-static {v0}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$500(Lcom/miui/personalassistant/util/AutoNaviUtil;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "AutoNavionFail"

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/util/LocationUtil;->sendEtaLineInfo(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onNetError(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 3

    const-string/jumbo v0, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v1, "ReqETALineInfo onNetError"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    invoke-static {v0}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$500(Lcom/miui/personalassistant/util/AutoNaviUtil;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, "AutoNavionNetError"

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/util/LocationUtil;->sendEtaLineInfo(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onStart(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 2

    const-string/jumbo v0, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v1, "ReqETALineInfo onStart"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 21

    const-string/jumbo v17, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v18, "ReqETALineInfo onSuccess "

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "ReqETALineInfo"

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/its/protocol/BaseRequest;->getType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    :try_start_0
    check-cast p1, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->getETAInfo()Lcom/autonavi/its/protocol/model/eta/ETAInfo;

    move-result-object v4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getMessageTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$300(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14, v8}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$400(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getPaths()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getPaths()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_1

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getPaths()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/autonavi/its/protocol/model/eta/Path;

    invoke-virtual {v10}, Lcom/autonavi/its/protocol/model/eta/Path;->getSections()Ljava/util/List;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-virtual {v15}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getStatus()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getLength()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v17, "type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->val$type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string/jumbo v17, "msg"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string/jumbo v17, "length"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v17, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v17, "distance"

    invoke-virtual {v10}, Lcom/autonavi/its/protocol/model/eta/Path;->getLength()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v17, "duration"

    invoke-virtual {v10}, Lcom/autonavi/its/protocol/model/eta/Path;->getTravelTime()I

    move-result v18

    div-int/lit8 v18, v18, 0x3c

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v17, "statusDesc"

    invoke-virtual {v10}, Lcom/autonavi/its/protocol/model/eta/Path;->getStatusDesc()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v17, "trafficLightNum"

    invoke-virtual {v10}, Lcom/autonavi/its/protocol/model/eta/Path;->getTrafficLightNum()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v17, "traffic"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v17, "route"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v17, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$000(Lcom/miui/personalassistant/util/AutoNaviUtil;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v17, "startCity"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$100(Lcom/miui/personalassistant/util/AutoNaviUtil;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v17, "pkgName"

    const-string/jumbo v18, "com.autonavi.minimap"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$500(Lcom/miui/personalassistant/util/AutoNaviUtil;)Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/miui/personalassistant/util/LocationUtil;->sendEtaLineInfo(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/util/AutoNaviUtil$2;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/miui/personalassistant/util/AutoNaviUtil;->sendQuiteMsg()V

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v17, "msg"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v17

    goto :goto_2

    :cond_3
    const-string/jumbo v17, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v18, " ReqETALineInfo Type typeReqETALineInfo"

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
