.class public Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;
.super Ljava/lang/Object;
.source "ScenarioTrackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/statistic/ScenarioTrackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraEventScenario"
.end annotation


# instance fields
.field e2eScenario:Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenario;

.field public volatile isTrackStarted:Z

.field mEventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->isTrackStarted:Z

    invoke-direct {p0, p1}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->initE2EScenario(Ljava/lang/String;)Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenario;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenario;

    iput-object p1, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->mEventName:Ljava/lang/String;

    return-void
.end method

.method private initE2EScenario(Ljava/lang/String;)Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenario;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "com.android.camera"

    const-string/jumbo v3, "Performance"

    invoke-static {v2, v3, p1}, Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface;->createE2EScenario(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenario;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " initializer failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->mEventName:Ljava/lang/String;

    return-object v0
.end method