.class public Lcom/miui/networkassistant/dual/DualSimInfoManager;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->getSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static registerChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .locals 0

    invoke-static {p0, p1}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->registerSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method

.method public static unRegisterChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .locals 0

    invoke-static {p0, p1}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->unRegisterSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method
