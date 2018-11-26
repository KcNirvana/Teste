.class public Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;
.super Landroid/os/Binder;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/TcSmsReportService;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentSlotNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get0(Lcom/miui/networkassistant/service/TcSmsReportService;)I

    move-result v0

    return v0
.end method

.method public getReportSmsType()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get2(Lcom/miui/networkassistant/service/TcSmsReportService;)I

    move-result v0

    return v0
.end method

.method public getSmsDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get5(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get7(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsReceiveNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get8(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsReturned()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get4(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get9(Lcom/miui/networkassistant/service/TcSmsReportService;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    move-result-object v0

    return-object v0
.end method

.method public registerSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get1(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get1(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public report(I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get0(Lcom/miui/networkassistant/service/TcSmsReportService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v4

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get6(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get6(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aMa(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070312

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder$1;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;ZLorg/json/JSONArray;Lcom/miui/networkassistant/config/SimUserInfo;I)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070313

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Init:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->-set6(Lcom/miui/networkassistant/service/TcSmsReportService;Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get6(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get6(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/networkassistant/service/TcSmsReportService;->-set2(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopSelf()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startMonitorSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get3(Lcom/miui/networkassistant/service/TcSmsReportService;)Lmiui/security/SecurityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, p3, v2}, Lmiui/security/SecurityManager;->startInterceptSmsBySender(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Receiving:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->-set6(Lcom/miui/networkassistant/service/TcSmsReportService;Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->-set4(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/service/TcSmsReportService;->-set3(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0, p5}, Lcom/miui/networkassistant/service/TcSmsReportService;->-set1(Lcom/miui/networkassistant/service/TcSmsReportService;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0, p4}, Lcom/miui/networkassistant/service/TcSmsReportService;->-set0(Lcom/miui/networkassistant/service/TcSmsReportService;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0, p3}, Lcom/miui/networkassistant/service/TcSmsReportService;->-set5(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0, p1, p2, p4}, Lcom/miui/networkassistant/service/TcSmsReportService;->-wrap3(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-wrap4(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    return-void
.end method

.method public unRegisterSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get1(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get1(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
