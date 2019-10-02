.class final Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;
.super Ljava/lang/Object;
.source "JsonConfigLoader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;-><init>(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->getFROM_SOURCE_LOCAL()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->access$getMDataList$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->access$getMCachedConfFile$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->parseFile(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->getFROM_SOURCE_DEFAULT()I

    move-result v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v3, v3, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->access$getMAssetsConfFile$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->parseAssets(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->access$setMForce2UpdateServer$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;Z)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;->getData()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-static {v2, v1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->access$setMDataList$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;Ljava/util/ArrayList;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->access$getMForce2UpdateServer$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->fetchServerConfig()V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    invoke-static {v1, v0}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->access$notifyLoaded(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;I)V

    :goto_3
    return-void
.end method
