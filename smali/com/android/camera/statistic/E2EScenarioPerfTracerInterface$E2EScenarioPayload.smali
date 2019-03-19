.class public Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenarioPayload;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "E2EScenarioPayload"
.end annotation


# instance fields
.field private final payload:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenarioPayload;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public putAll(Ljava/util/Map;)V
    .locals 5

    invoke-static {}, Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface;->-get0()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface;->-get0()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/statistic/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
