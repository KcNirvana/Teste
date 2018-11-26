.class final Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAppListUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getNetworkAccessedAppList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;Ljava/util/List;)Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)I

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isDataUsageIgnore(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "isDataUsageIgnore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;Z)Z

    return-void
.end method
