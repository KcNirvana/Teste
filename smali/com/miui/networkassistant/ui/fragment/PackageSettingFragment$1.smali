.class final Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 3

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAppListUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getNetworkAccessedAppList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Ljava/util/List;)Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z

    return-void
.end method
