.class Lcom/miui/personalassistant/Application$PersonalAssistantApp;
.super Lmiui/externalassistant/ApplicationDelegate;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalAssistantApp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/Application;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/Application$PersonalAssistantApp;->this$0:Lcom/miui/personalassistant/Application;

    invoke-direct {p0}, Lmiui/externalassistant/ApplicationDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/Application;Lcom/miui/personalassistant/Application$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/Application$PersonalAssistantApp;-><init>(Lcom/miui/personalassistant/Application;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Lmiui/externalassistant/ApplicationDelegate;->onCreate()V

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/Application$PersonalAssistantApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/Application;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/util/ImagerLoaderUtil;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/AiManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/AiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/util/AiManager;->initListener()V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/Application$PersonalAssistantApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/Util;->initCtaSdk(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->cloudSync(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PersonalAssistantApplication"

    const-string/jumbo v2, "InterruptedException:"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Lmiui/externalassistant/ApplicationDelegate;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    invoke-super {p0}, Lmiui/externalassistant/ApplicationDelegate;->onTerminate()V

    return-void
.end method
