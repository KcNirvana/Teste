.class final Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;
.super Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;
.source "CPInfoConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CPConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader<",
        "Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014J\u0018\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0014J\u0018\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0014\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;",
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;",
        "Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;",
        "context",
        "Landroid/content/Context;",
        "(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;Landroid/content/Context;)V",
        "fetchServerConfig",
        "",
        "parseAssets",
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;",
        "aFile",
        "",
        "parseFile",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;Landroid/content/Context;)V
    .locals 2
    .param p1    # Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;->this$0:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->Companion:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$Companion;->getPLUGIN_ROOT()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->access$getCACHED_CNF_FILE$cp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->access$buildDataFile(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->access$getASSETS_CNF_FILE$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected fetchServerConfig()V
    .locals 0

    return-void
.end method

.method protected parseAssets(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type<",
            "Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "aFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;->this$0:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->access$getMContext$p(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig$parseAssets$1;

    invoke-direct {v1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig$parseAssets$1;-><init>()V

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig$parseAssets$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<Type<CPInfo>>() {}.type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;->loadJsonObjectAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;

    return-object p1
.end method

.method protected parseFile(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type<",
            "Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "aFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig$parseFile$1;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig$parseFile$1;-><init>()V

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig$parseFile$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<Type<CPInfo>>() {}.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;->loadJsonObjectFile(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;

    return-object p1
.end method
