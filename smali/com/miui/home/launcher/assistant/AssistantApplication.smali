.class public Lcom/miui/home/launcher/assistant/AssistantApplication;
.super Ljava/lang/Object;
.source "AssistantApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssistantApplication"

.field public static isAllScreen:Z

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/AssistantApplication;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->sInstance:Lcom/miui/home/launcher/assistant/AssistantApplication;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/AssistantApplication;->mReference:Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/AssistantApplication;->mContext:Landroid/content/Context;

    :goto_0
    invoke-static {p1}, Lcom/miui/home/launcher/assistant/util/Device;->isAllScreen(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    const-string/jumbo v0, "AssistantApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAllScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/AssistantApplication;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/AssistantApplication;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->sInstance:Lcom/miui/home/launcher/assistant/AssistantApplication;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/AssistantApplication;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->sInstance:Lcom/miui/home/launcher/assistant/AssistantApplication;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/AssistantApplication;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->sInstance:Lcom/miui/home/launcher/assistant/AssistantApplication;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->sInstance:Lcom/miui/home/launcher/assistant/AssistantApplication;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->sInstance:Lcom/miui/home/launcher/assistant/AssistantApplication;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/AssistantApplication;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/AssistantApplication;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/AssistantApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/AssistantApplication;->mContext:Landroid/content/Context;

    return-void
.end method
