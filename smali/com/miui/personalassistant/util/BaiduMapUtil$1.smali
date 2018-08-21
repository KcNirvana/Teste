.class Lcom/miui/personalassistant/util/BaiduMapUtil$1;
.super Ljava/lang/Object;
.source "BaiduMapUtil.java"

# interfaces
.implements Lcom/miui/personalassistant/util/MapHelper$AddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/BaiduMapUtil;->getEtaLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

.field final synthetic val$enNode:Lcom/baidu/mapapi/search/route/PlanNode;

.field final synthetic val$ps:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

.field final synthetic val$stNode:Lcom/baidu/mapapi/search/route/PlanNode;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/BaiduMapUtil;Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    iput-object p2, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->val$ps:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    iput-object p3, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->val$stNode:Lcom/baidu/mapapi/search/route/PlanNode;

    iput-object p4, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->val$enNode:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    invoke-static {v0, p2}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$002(Lcom/miui/personalassistant/util/BaiduMapUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$102(Lcom/miui/personalassistant/util/BaiduMapUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    iget-object v1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->val$ps:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    iget-object v2, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->val$stNode:Lcom/baidu/mapapi/search/route/PlanNode;

    iget-object v3, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$1;->val$enNode:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/BaiduMapUtil;->access$200(Lcom/miui/personalassistant/util/BaiduMapUtil;Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V

    return-void
.end method
