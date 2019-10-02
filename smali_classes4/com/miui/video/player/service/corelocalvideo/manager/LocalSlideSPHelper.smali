.class public Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;
.super Ljava/lang/Object;
.source "LocalSlideSPHelper.java"


# static fields
.field public static final SP_LOCAL:Ljava/lang/String; = "local_slide"

.field private static final TAG:Ljava/lang/String; = "LocalSlideSPHelper"

.field public static mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "local_slide"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;

    return-object p0
.end method


# virtual methods
.method public readLocalPos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->sp:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveLocalPos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
