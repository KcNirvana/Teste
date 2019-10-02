.class public Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;
.super Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;
.source "SongDiracUtils.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDiracService:Lse/dirac/acs/api/AudioControlService;

.field private mWaitingConnected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;-><init>()V

    const-string v0, "SongDiracUtils"

    iput-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;)Lse/dirac/acs/api/AudioControlService;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mWaitingConnected:I

    return p0
.end method

.method private static currentApplication()Landroid/app/Application;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method private getDiracService(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    const-string v1, "initialize+"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mWaitingConnected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mWaitingConnected:I

    new-instance v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;-><init>(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;)V

    invoke-static {p1, v0}, Lse/dirac/acs/api/AudioControlService;->bind(Landroid/content/Context;Lse/dirac/acs/api/AudioControlService$Connection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    const-string v0, "wait for connection"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "could not bind against the control service"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mWaitingConnected:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mWaitingConnected:I

    throw p1

    :catch_0
    :goto_0
    iget p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mWaitingConnected:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mWaitingConnected:I

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    sget-object v0, Lse/dirac/acs/api/Output;->EXTERNAL:Lse/dirac/acs/api/Output;

    invoke-virtual {p1, v0}, Lse/dirac/acs/api/AudioControlService;->getOutput(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    const-string v0, "disable dirac by default"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->setDevice(Lse/dirac/acs/api/AudioControlService;JZ)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    const-string v0, "initialize-"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    return-object p1
.end method

.method private static setDevice(Lse/dirac/acs/api/AudioControlService;JZ)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lse/dirac/acs/api/AudioControlService;->getDevice(J)Lse/dirac/acs/api/Device;

    move-result-object p1

    iget-object p2, p1, Lse/dirac/acs/api/Device;->filters:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lse/dirac/acs/api/Filter;

    new-instance v1, Lse/dirac/acs/api/OutputSettings;

    invoke-direct {v1, p1, p2}, Lse/dirac/acs/api/OutputSettings;-><init>(Lse/dirac/acs/api/Device;Lse/dirac/acs/api/Filter;)V

    invoke-virtual {v1, p3}, Lse/dirac/acs/api/OutputSettings;->setDiracEnabled(Z)Lse/dirac/acs/api/OutputSettings;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lse/dirac/acs/api/OutputSettings;->setEqEnabled(Z)Lse/dirac/acs/api/OutputSettings;

    invoke-virtual {v1, p1}, Lse/dirac/acs/api/OutputSettings;->setFilterEnabled(Z)Lse/dirac/acs/api/OutputSettings;

    invoke-virtual {v1, v0}, Lse/dirac/acs/api/OutputSettings;->setSfxEnabled(Z)Lse/dirac/acs/api/OutputSettings;

    invoke-virtual {p0, v1}, Lse/dirac/acs/api/AudioControlService;->setOutput(Lse/dirac/acs/api/OutputSettings;)Z

    return-void
.end method


# virtual methods
.method public getHeadseIdsAndTypes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    const-string v1, "getHeadseIdsAndTypes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->getDiracService(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Lse/dirac/acs/api/Output;->EXTERNAL:Lse/dirac/acs/api/Output;

    invoke-virtual {v1, v2}, Lse/dirac/acs/api/AudioControlService;->listDevices(Lse/dirac/acs/api/Output;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lse/dirac/acs/api/Device;

    const-string v3, "MEP 100"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "MEP 200"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v3, "Piston 100"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v3, "General Earbud"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v3, "General InEar"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v3, "MK 101"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const-string v3, "MK 301"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const-string v3, "MK 303"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v3, "MO 701"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const-string v3, "MR 102"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v3, "EM 303"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-string v3, "EM 304"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const-string v3, "EM 001"

    iget-object v4, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown device: name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lse/dirac/acs/api/Device;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    return-object v0
.end method

.method public getHeadsetType(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    const-string v1, "getHeadsetType"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->getDiracService(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lse/dirac/acs/api/Output;->EXTERNAL:Lse/dirac/acs/api/Output;

    invoke-virtual {p1, v0}, Lse/dirac/acs/api/AudioControlService;->getOutput(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object p1

    iget-object p1, p1, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    iget-wide v0, p1, Lse/dirac/acs/api/Device;->id:J

    long-to-int p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    const-string v1, "isEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->getDiracService(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lse/dirac/acs/api/Output;->EXTERNAL:Lse/dirac/acs/api/Output;

    invoke-virtual {p1, v0}, Lse/dirac/acs/api/AudioControlService;->getOutput(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object p1

    invoke-virtual {p1}, Lse/dirac/acs/api/OutputSettings;->getDiracEnabled()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    invoke-virtual {v0}, Lse/dirac/acs/api/AudioControlService;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->mDiracService:Lse/dirac/acs/api/AudioControlService;

    :cond_0
    return-void
.end method

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->getDiracService(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lse/dirac/acs/api/Output;->EXTERNAL:Lse/dirac/acs/api/Output;

    invoke-virtual {p1, v0}, Lse/dirac/acs/api/AudioControlService;->getOutput(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lse/dirac/acs/api/OutputSettings;->setDiracEnabled(Z)Lse/dirac/acs/api/OutputSettings;

    invoke-virtual {p1, v0}, Lse/dirac/acs/api/AudioControlService;->setOutput(Lse/dirac/acs/api/OutputSettings;)Z

    :cond_0
    return-void
.end method

.method public setHeadsetType(Landroid/content/Context;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeadsetType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->getDiracService(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object p1

    if-eqz p1, :cond_0

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-static {p1, v0, v1, p2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->setDevice(Lse/dirac/acs/api/AudioControlService;JZ)V

    :cond_0
    return-void
.end method

.method public setLevel(Landroid/content/Context;IF)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->getDiracService(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lse/dirac/acs/api/Output;->EXTERNAL:Lse/dirac/acs/api/Output;

    invoke-virtual {p1, v0}, Lse/dirac/acs/api/AudioControlService;->getOutput(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lse/dirac/acs/api/OutputSettings;->setEqBand(IF)Lse/dirac/acs/api/OutputSettings;

    invoke-virtual {p1, v0}, Lse/dirac/acs/api/AudioControlService;->setOutput(Lse/dirac/acs/api/OutputSettings;)Z

    :cond_0
    return-void
.end method
