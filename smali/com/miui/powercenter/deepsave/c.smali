.class public Lcom/miui/powercenter/deepsave/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aNs:Ljava/util/ArrayList;


# direct methods
.method static synthetic -get0()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/powercenter/deepsave/c;->aNs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/deepsave/c;->aNs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aZN(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/miui/powercenter/deepsave/j;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/j;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/deepsave/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static aZO(Ljava/util/ArrayList;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/BaseModel;

    if-eqz v1, :cond_1

    const-class v1, Lcom/miui/common/datamodel/Line;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    const-class v6, Lcom/miui/common/datamodel/LocalFunction;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    check-cast v0, Lcom/miui/common/datamodel/LocalFunction;

    const-string/jumbo v6, "001"

    invoke-virtual {v0}, Lcom/miui/common/datamodel/LocalFunction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/miui/powercenter/deepsave/datamodel/PowerSaveModeModel;

    invoke-direct {v6}, Lcom/miui/powercenter/deepsave/datamodel/PowerSaveModeModel;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/LocalFunction;->aKc(Lcom/miui/common/datamodel/BaseModel;)V

    const-string/jumbo v0, "save_mode"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "002"

    invoke-virtual {v0}, Lcom/miui/common/datamodel/LocalFunction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Lcom/miui/powercenter/deepsave/c;->aZS(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;

    invoke-direct {v6}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/LocalFunction;->aKc(Lcom/miui/common/datamodel/BaseModel;)V

    const-string/jumbo v0, "save_idea"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v0, v3

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "003"

    invoke-virtual {v0}, Lcom/miui/common/datamodel/LocalFunction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;

    invoke-direct {v6}, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/LocalFunction;->aKc(Lcom/miui/common/datamodel/BaseModel;)V

    move v0, v1

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "004"

    invoke-virtual {v0}, Lcom/miui/common/datamodel/LocalFunction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;

    invoke-direct {v6}, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/LocalFunction;->aKc(Lcom/miui/common/datamodel/BaseModel;)V

    move v0, v1

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "005"

    invoke-virtual {v0}, Lcom/miui/common/datamodel/LocalFunction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/miui/powercenter/a/k;->bch()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;

    invoke-direct {v6}, Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/LocalFunction;->aKc(Lcom/miui/common/datamodel/BaseModel;)V

    const-string/jumbo v0, "power_on_off_plan"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v0, v3

    goto :goto_1

    :cond_8
    const-string/jumbo v6, "006"

    invoke-virtual {v0}, Lcom/miui/common/datamodel/LocalFunction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Lcom/miui/powercenter/deepsave/datamodel/BatteryHealthModel;

    invoke-direct {v6}, Lcom/miui/powercenter/deepsave/datamodel/BatteryHealthModel;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/LocalFunction;->aKc(Lcom/miui/common/datamodel/BaseModel;)V

    move v0, v1

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v6, "007"

    invoke-virtual {v0}, Lcom/miui/common/datamodel/LocalFunction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Lcom/miui/powercenter/deepsave/datamodel/HideModeStateModel;

    invoke-direct {v6}, Lcom/miui/powercenter/deepsave/datamodel/HideModeStateModel;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/LocalFunction;->aKc(Lcom/miui/common/datamodel/BaseModel;)V

    move v0, v1

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v6, "008"

    invoke-virtual {v0}, Lcom/miui/common/datamodel/LocalFunction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/miui/powercenter/a/k;->bcg()Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Lcom/miui/powercenter/deepsave/datamodel/AutoTaskSettingModel;

    invoke-direct {v6}, Lcom/miui/powercenter/deepsave/datamodel/AutoTaskSettingModel;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/LocalFunction;->aKc(Lcom/miui/common/datamodel/BaseModel;)V

    const-string/jumbo v0, "auto_task"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v0, v3

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v6, "009"

    invoke-virtual {v0}, Lcom/miui/common/datamodel/LocalFunction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {}, Lcom/miui/powercenter/a/a;->baM()Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Lcom/miui/powercenter/deepsave/datamodel/ExtremePowerSaveModeModel;

    invoke-direct {v6}, Lcom/miui/powercenter/deepsave/datamodel/ExtremePowerSaveModeModel;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/LocalFunction;->aKc(Lcom/miui/common/datamodel/BaseModel;)V

    const-string/jumbo v0, "extreme_save_mode"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v0, v3

    goto/16 :goto_1

    :cond_e
    const-class v6, Lcom/miui/common/datamodel/Advertisement;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v6, :cond_13

    check-cast v0, Lcom/miui/common/datamodel/Advertisement;

    invoke-virtual {v0}, Lcom/miui/common/datamodel/Advertisement;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_13

    const-string/jumbo v6, ""

    invoke-static {v10, v11, v9, v6}, Lcom/miui/common/datamodel/A;->aKs(JLorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/datamodel/Advertisement;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static {v10, v11, v9, v7}, Lcom/miui/common/datamodel/A;->aKs(JLorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/datamodel/Advertisement;

    move-result-object v7

    invoke-virtual {v6}, Lcom/miui/common/datamodel/Advertisement;->isLoaded()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v7}, Lcom/miui/common/datamodel/Advertisement;->isLoaded()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_f
    invoke-virtual {v6}, Lcom/miui/common/datamodel/Advertisement;->isLoaded()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v0, v6}, Lcom/miui/common/datamodel/Advertisement;->aKE(Lcom/miui/common/datamodel/Advertisement;)V

    :cond_10
    invoke-virtual {v7}, Lcom/miui/common/datamodel/Advertisement;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v0, v7}, Lcom/miui/common/datamodel/Advertisement;->aKE(Lcom/miui/common/datamodel/Advertisement;)V

    move v0, v1

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v0, "DataModelManager"

    const-string/jumbo v1, "international ad hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_1

    :cond_12
    return-void

    :cond_13
    move v0, v1

    goto/16 :goto_1
.end method

.method private static aZP()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/EmptyDataModel;

    invoke-direct {v1}, Lcom/miui/powercenter/deepsave/datamodel/EmptyDataModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/BatteryStatusModel;

    invoke-direct {v1}, Lcom/miui/powercenter/deepsave/datamodel/BatteryStatusModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v1}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/powercenter/a/k;->bcf()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/DeepSaveSettingModel;

    invoke-direct {v1}, Lcom/miui/powercenter/deepsave/datamodel/DeepSaveSettingModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v1}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private static aZQ()Ljava/util/ArrayList;
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/miui/powercenter/deepsave/datamodel/PowerSaveModeModel;

    invoke-direct {v2}, Lcom/miui/powercenter/deepsave/datamodel/PowerSaveModeModel;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v2}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "save_mode"

    invoke-static {v2}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/powercenter/a/a;->baM()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/miui/powercenter/deepsave/datamodel/ExtremePowerSaveModeModel;

    invoke-direct {v2}, Lcom/miui/powercenter/deepsave/datamodel/ExtremePowerSaveModeModel;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v2}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "extreme_save_mode"

    invoke-static {v2}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/miui/powercenter/deepsave/datamodel/HideModeStateModel;

    invoke-direct {v2}, Lcom/miui/powercenter/deepsave/datamodel/HideModeStateModel;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v2}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "hide_mode"

    invoke-static {v2}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/powercenter/a/k;->bcg()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/miui/powercenter/deepsave/datamodel/AutoTaskSettingModel;

    invoke-direct {v2}, Lcom/miui/powercenter/deepsave/datamodel/AutoTaskSettingModel;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v2}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "auto_task"

    invoke-static {v2}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/miui/powercenter/deepsave/c;->aZS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;

    invoke-direct {v0}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v0}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "save_idea"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;

    invoke-direct {v0}, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v0}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;

    invoke-direct {v0}, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v0}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/powercenter/a/k;->bch()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;

    invoke-direct {v0}, Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v0}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "power_on_off_plan"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdt(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/BatteryHealthModel;

    invoke-direct {v0}, Lcom/miui/powercenter/deepsave/datamodel/BatteryHealthModel;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/model/PcLine;

    invoke-direct {v0}, Lcom/miui/powercenter/model/PcLine;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static aZR()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/miui/powercenter/deepsave/c;->aNs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/powercenter/deepsave/c;->aZP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/miui/powercenter/deepsave/c;->aNs:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/powercenter/deepsave/c;->aZO(Ljava/util/ArrayList;)V

    sget-object v1, Lcom/miui/powercenter/deepsave/c;->aNs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/deepsave/c;->aZP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/miui/powercenter/deepsave/c;->aZQ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static aZS(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/common/b/t;->aJq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/deepsave/a;->getInstance()Lcom/miui/powercenter/deepsave/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/deepsave/a;->aZF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
