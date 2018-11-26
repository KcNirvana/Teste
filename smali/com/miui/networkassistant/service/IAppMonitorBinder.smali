.class public interface abstract Lcom/miui/networkassistant/service/IAppMonitorBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;
.end method

.method public abstract getFilteredAppInfosList()Ljava/util/List;
.end method

.method public abstract getNetworkAccessedAppList()Ljava/util/List;
.end method

.method public abstract getNetworkAccessedAppsMap()Ljava/util/Map;
.end method

.method public abstract getNonSystemAppList()Ljava/util/List;
.end method

.method public abstract getSystemAppList()Ljava/util/List;
.end method

.method public abstract registerLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
.end method

.method public abstract unRegisterLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
.end method
