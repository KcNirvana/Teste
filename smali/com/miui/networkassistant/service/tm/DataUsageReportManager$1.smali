.class final Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get2(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim1Inserted()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "sim1"

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get3(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-wrap1(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sim1"

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get3(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-wrap0(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get2(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim2Inserted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "sim2"

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get3(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-wrap1(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sim2"

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get3(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-wrap0(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-wrap2(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get0(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getWifiDailyConnectedTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get0(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/CommonConfig;->getMobileDailyConnectedTime()J

    move-result-wide v4

    const-string/jumbo v6, "wifiTime"

    invoke-virtual {v1, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "mobileTime"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get0(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/config/CommonConfig;->setWifiDailyConnectedTime(J)Z

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get0(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/config/CommonConfig;->setMobileDailyConnectedTime(J)Z

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get0(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/config/CommonConfig;->setUploadMonthReportUpdateTime(J)Z

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get1(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/DataUsageReportUtil;->uploadDataUsageDaily(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->-get1(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/DataUsageReportUtil;->uploadDataUsageDetailDaily(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
