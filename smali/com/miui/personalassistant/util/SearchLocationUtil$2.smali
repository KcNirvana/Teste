.class Lcom/miui/personalassistant/util/SearchLocationUtil$2;
.super Ljava/lang/Object;
.source "SearchLocationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/SearchLocationUtil;->getGeo(Ljava/lang/String;Ljava/lang/String;ZLcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

.field final synthetic val$callBack:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;

.field final synthetic val$isGetRichInfo:Z

.field final synthetic val$latitude:Ljava/lang/String;

.field final synthetic val$longitude:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/SearchLocationUtil;Ljava/lang/String;Ljava/lang/String;ZLcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    iput-object p2, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->val$longitude:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->val$latitude:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->val$isGetRichInfo:Z

    iput-object p5, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->val$callBack:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    new-instance v1, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;

    iget-object v2, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    invoke-static {v2}, Lcom/miui/personalassistant/util/SearchLocationUtil;->access$000(Lcom/miui/personalassistant/util/SearchLocationUtil;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/autonavi/its/protocol/model/Point;

    iget-object v4, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->val$longitude:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->val$latitude:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/autonavi/its/protocol/model/Point;-><init>(DD)V

    invoke-static {v3}, Lcom/miui/personalassistant/util/SearchLocationUtil;->access$100(Lcom/autonavi/its/protocol/model/Point;)Ljava/util/List;

    move-result-object v3

    const/4 v4, -0x1

    iget-boolean v5, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->val$isGetRichInfo:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    iget-object v2, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    iget-object v3, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;->val$callBack:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/SearchLocationUtil;->access$200(Lcom/miui/personalassistant/util/SearchLocationUtil;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->doRequest(Lcom/autonavi/its/protocol/ReqCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SearchLocationUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
