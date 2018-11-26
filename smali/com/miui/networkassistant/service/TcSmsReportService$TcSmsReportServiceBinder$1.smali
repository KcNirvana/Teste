.class final Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

.field final synthetic val$array:Lorg/json/JSONArray;

.field final synthetic val$isNetworkOk:Z

.field final synthetic val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field final synthetic val$smsReportType:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;ZLorg/json/JSONArray;Lcom/miui/networkassistant/config/SimUserInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iput-boolean p2, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$isNetworkOk:Z

    iput-object p3, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$array:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    iput p5, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$smsReportType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$isNetworkOk:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v0, v0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get7(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v1, v1, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get5(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v2, v2, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get8(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$smsReportType:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->reportTrafficCorrectionSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/common/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/g/d;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v1, v1, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get7(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v1, v1, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get5(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v1, v1, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get8(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->val$smsReportType:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v1, v1, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v2, v2, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get0(Lcom/miui/networkassistant/service/TcSmsReportService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setTcSmsReportCache(Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;->this$1:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v0, v0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopSelf()V

    return-void
.end method
