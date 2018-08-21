.class public Lcom/miui/personalassistant/util/QuickStartHelpUtil;
.super Ljava/lang/Object;
.source "QuickStartHelpUtil.java"

# interfaces
.implements Lcom/miui/voicesdk/ActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;
    }
.end annotation


# static fields
.field private static final MAX_TRY_COUNT:I = 0x14

.field private static final MAX_TRY_COUNT_QUICK:I = 0x4

.field private static final PKG_WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field private static final TAG:Ljava/lang/String; = "QuickStartHelpUtil"

.field private static final WHAT_START_LOOP:I = 0x1

.field private static mInstance:Lcom/miui/personalassistant/util/QuickStartHelpUtil;

.field private static nameImage:Ljava/lang/String;


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private final mHandler:Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;

.field private mImgIdModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/QuickStartImgModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxTryCount:I

.field private pathImage:Ljava/lang/String;

.field private strDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->nameImage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mMaxTryCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-object v1, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->pathImage:Ljava/lang/String;

    new-instance v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;-><init>(Lcom/miui/personalassistant/util/QuickStartHelpUtil;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mHandler:Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy_MM_dd_hh_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->strDate:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Pictures/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->pathImage:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->pathImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->strDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->nameImage:Ljava/lang/String;

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/miui/voicesdk/IVoiceAssistManager;->setCallback(Lcom/miui/voicesdk/ActionCallback;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->nameImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/util/QuickStartHelpUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->loopSimulationClick()V

    return-void
.end method

.method private doAppStart(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v3, "QuickStartHelpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doAppStart intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v2}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v3, "openintent"

    invoke-virtual {v2, v3}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/miui/voicesdk/ActionNode;->setIntent(Landroid/content/Intent;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v3

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/miui/voicesdk/IVoiceAssistManager;->updateService(Landroid/content/Context;ZLcom/miui/voicesdk/ActionCallback;)V

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v3

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    move-result-object v5

    invoke-interface {v3, v4, v1, v5}, Lcom/miui/voicesdk/IVoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "QuickStartHelpUtil"

    const-string/jumbo v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static doSimulationClick(Landroid/graphics/Point;)V
    .locals 7

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "QuickStartHelpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doSimulationClick x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v2}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    iget v3, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lcom/miui/voicesdk/ActionNode;->setX(I)V

    iget v3, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Lcom/miui/voicesdk/ActionNode;->setY(I)V

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    const-string/jumbo v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v3

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/miui/voicesdk/IVoiceAssistManager;->updateService(Landroid/content/Context;ZLcom/miui/voicesdk/ActionCallback;)V

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v3

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    move-result-object v5

    invoke-interface {v3, v4, v1, v5}, Lcom/miui/voicesdk/IVoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "QuickStartHelpUtil"

    const-string/jumbo v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getAppIntent(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 4

    const-string/jumbo v1, "QuickStartHelpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goAppActivity function="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentFromMethod(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->isNeedToChangeClassname(Lcom/miui/personalassistant/model/FunctionLaunch;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.tencent.mm"

    const-string/jumbo v2, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "android.intent.extra.auth_to_call_xspace"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mInstance:Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mInstance:Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    invoke-direct {v0}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mInstance:Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mInstance:Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isNeedToChangeClassname(Lcom/miui/personalassistant/model/FunctionLaunch;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "60"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "61"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "62"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "65"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "68"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isUseIntentWay(Lcom/miui/personalassistant/model/FunctionLaunch;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/ProcessUtil;->isAppRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "QuickStartHelpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAppRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", functionLaunch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "67"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loopSimulationClick()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->loopSimulationClick(Ljava/util/ArrayList;)V

    return-void
.end method

.method private loopSimulationClick(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/QuickStartImgModel;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string/jumbo v9, "QuickStartHelpUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loopSimulationClick imgIdList="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v9

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v12, v11}, Lcom/miui/voicesdk/IVoiceAssistManager;->updateService(Landroid/content/Context;ZLcom/miui/voicesdk/ActionCallback;)V

    const-string/jumbo v9, "QuickStartHelpUtil"

    const-string/jumbo v10, "loopSimulationClick END!!!"

    invoke-static {v9, v10}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/personalassistant/model/QuickStartImgModel;

    invoke-virtual {v9}, Lcom/miui/personalassistant/model/QuickStartImgModel;->getImgIdList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/personalassistant/model/QuickStartImgModel;

    invoke-virtual {v9}, Lcom/miui/personalassistant/model/QuickStartImgModel;->getArea()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10, v7, v6, v13}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v8, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const v10, 0x1b020333

    if-ne v9, v10, :cond_5

    new-instance v8, Landroid/graphics/Point;

    const/16 v9, 0x5f

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    const-string/jumbo v9, "QuickStartHelpUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "point result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_6

    iget v9, v8, Landroid/graphics/Point;->y:I

    if-nez v9, :cond_4

    iget v9, v8, Landroid/graphics/Point;->x:I

    if-eqz v9, :cond_6

    :cond_4
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    iput v12, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mMaxTryCount:I

    invoke-static {v8}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->doSimulationClick(Landroid/graphics/Point;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2, v1, v9, v0}, Lcom/miui/assistant/imagemagic/ImageProcess;->singleMatch(Landroid/graphics/Bitmap;Ljava/util/List;II)Landroid/graphics/Point;

    move-result-object v8

    goto :goto_2

    :cond_6
    iget v9, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mMaxTryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mMaxTryCount:I

    iget v9, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mMaxTryCount:I

    const/4 v10, 0x4

    if-ge v9, v10, :cond_7

    const-string/jumbo v9, "QuickStartHelpUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FAIL TO REPEAT QUICK loopSimulationClick mMaxTryCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mMaxTryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->loopSimulationClick(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_7
    iget v9, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mMaxTryCount:I

    const/16 v10, 0x14

    if-ge v9, v10, :cond_1

    const-string/jumbo v9, "QuickStartHelpUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FAIL TO REPEAT loopSimulationClick mMaxTryCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mMaxTryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mHandler:Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v13, v10, v11}, Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private static savePic(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    const-string/jumbo v0, "QuickStartHelpUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "savePic width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/personalassistant/util/QuickStartHelpUtil$1;

    invoke-direct {v0, p1, p0}, Lcom/miui/personalassistant/util/QuickStartHelpUtil$1;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/util/QuickStartHelpUtil$1;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isStartByImageHelper(Lcom/miui/personalassistant/model/FunctionLaunch;)Z
    .locals 13

    const v12, 0x1b020332

    const v11, 0x1b020338

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.tencent.mm"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p1}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->isUseIntentWay(Lcom/miui/personalassistant/model/FunctionLaunch;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v7, "QuickStartHelpUtil"

    const-string/jumbo v8, "use INTENT method, WeChat is alive"

    invoke-static {v7, v8}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "QuickStartHelpUtil"

    const-string/jumbo v9, "use IMAGE method"

    invoke-static {v8, v9}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iput v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mMaxTryCount:I

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getAppIntent(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "60"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    invoke-direct {v8, v11, v7}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    const v9, 0x1b020339

    invoke-direct {v8, v9, v10}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->doAppStart(Landroid/content/Intent;Ljava/lang/String;)V

    move v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "61"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    invoke-direct {v8, v11, v7}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    invoke-direct {v8, v12, v10}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->doAppStart(Landroid/content/Intent;Ljava/lang/String;)V

    move v6, v7

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "62"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    invoke-direct {v8, v11, v7}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    invoke-direct {v8, v12, v10}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    const v9, 0x1b02033a

    const/16 v10, 0xc

    invoke-direct {v8, v9, v10}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->doAppStart(Landroid/content/Intent;Ljava/lang/String;)V

    move v6, v7

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "65"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v6, 0x1b020335

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v6, 0x1b020336

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    const/16 v9, 0x8

    invoke-direct {v8, v2, v9}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    const v9, 0x1b020337

    invoke-direct {v8, v9, v7}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->doAppStart(Landroid/content/Intent;Ljava/lang/String;)V

    move v6, v7

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "67"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    const v9, 0x1b020333

    invoke-direct {v8, v9, v7}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    const v9, 0x1b020334

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->doAppStart(Landroid/content/Intent;Ljava/lang/String;)V

    move v6, v7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "68"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    invoke-direct {v8, v11, v7}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    invoke-direct {v8, v12, v10}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mImgIdModelList:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/personalassistant/model/QuickStartImgModel;

    const v9, 0x1b02033b

    const/16 v10, 0xc

    invoke-direct {v8, v9, v10}, Lcom/miui/personalassistant/model/QuickStartImgModel;-><init>(II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->doAppStart(Landroid/content/Intent;Ljava/lang/String;)V

    move v6, v7

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "170"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v3}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "openintent"

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/voicesdk/ActionNode;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v4}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "tv.danmaku.bili:id/navigation"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setId(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v5}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "\u5386\u53f2\u8bb0\u5f55"

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v6

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    move-result-object v9

    invoke-interface {v6, v8, v1, v9}, Lcom/miui/voicesdk/IVoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V

    move v6, v7

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "180"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v3}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "openintent"

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/voicesdk/ActionNode;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v4}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "com.xiaomi.shop.plugin.homepage:id/main_bottom_cart"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setId(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v6

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    move-result-object v9

    invoke-interface {v6, v8, v1, v9}, Lcom/miui/voicesdk/IVoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V

    move v6, v7

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "190"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v3}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "openintent"

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/voicesdk/ActionNode;->setIntent(Landroid/content/Intent;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v3, v8, v9}, Lcom/miui/voicesdk/ActionNode;->setWaitTime(J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v4}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "\u6211\u7684\u6dd8\u5b9d"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setText(Ljava/lang/String;)V

    const/16 v6, 0x5a

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setX(I)V

    const/16 v6, 0x5f

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setY(I)V

    const-string/jumbo v6, "ScreencapXY"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setExtra(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v5}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "\u5173\u6ce8\u5e97\u94fa"

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v6

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    move-result-object v9

    invoke-interface {v6, v8, v1, v9}, Lcom/miui/voicesdk/IVoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V

    move v6, v7

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "220"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v3}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "openintent"

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/voicesdk/ActionNode;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v4}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "com.zhihu.android:id/search_box"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setId(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v6

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    move-result-object v9

    invoke-interface {v6, v8, v1, v9}, Lcom/miui/voicesdk/IVoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V

    move v6, v7

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "230"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v3}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "openintent"

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/voicesdk/ActionNode;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v4}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "\u52a8\u6001"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v5}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "\u70b9\u51fb\u8fdb\u5165\u597d\u53cb\u52a8\u6001"

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v6

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    move-result-object v9

    invoke-interface {v6, v8, v1, v9}, Lcom/miui/voicesdk/IVoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V

    move v6, v7

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "232"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v3}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "openintent"

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/voicesdk/ActionNode;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v4}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "\u5feb\u6377\u5165\u53e3"

    invoke-virtual {v4, v6}, Lcom/miui/voicesdk/ActionNode;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v5}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "click"

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v6, "\u626b\u4e00\u626b \u6309\u94ae"

    invoke-virtual {v5, v6}, Lcom/miui/voicesdk/ActionNode;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v6

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    move-result-object v9

    invoke-interface {v6, v8, v1, v9}, Lcom/miui/voicesdk/IVoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V

    move v6, v7

    goto/16 :goto_0
.end method

.method public onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/voicesdk/ActionStatus;->getStatusType()I

    move-result v0

    sget v1, Lcom/miui/voicesdk/ActionStatus;->STATUS_FINISH:I

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "QuickStartHelpUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActionCallback REAL actionStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/voicesdk/ActionStatus;->getStatusType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->mHandler:Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;->sendEmptyMessage(I)Z

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "QuickStartHelpUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActionCallback actionStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/voicesdk/ActionStatus;->getStatusType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "QuickStartHelpUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActionCallback actionStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
