.class final synthetic Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$findCP$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "CPInfoConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$findCP$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->access$getMConfig$p(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;)Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mConfig"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getMConfig()Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$findCP$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;

    check-cast p1, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->access$setMConfig$p(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;)V

    return-void
.end method
