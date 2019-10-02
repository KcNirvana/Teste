.class final Lcom/miui/videoplayer/biz/service/preload/server/FileServer$serve$targetHost$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FileServer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/server/FileServer;->serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $headers:Ljava/util/Map;

.field final synthetic $uriStr:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/miui/videoplayer/biz/service/preload/server/FileServer;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/biz/service/preload/server/FileServer;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$serve$targetHost$2;->this$0:Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    iput-object p2, p0, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$serve$targetHost$2;->$uriStr:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$serve$targetHost$2;->$headers:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$serve$targetHost$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/utils/TargetHostSaver;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/utils/TargetHostSaver;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/utils/TargetHostSaver;->getSaver()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$serve$targetHost$2;->$uriStr:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/utils/TargetHostSaver;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/utils/TargetHostSaver;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/utils/TargetHostSaver;->getSaver()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$serve$targetHost$2;->$uriStr:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$serve$targetHost$2;->$headers:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$serve$targetHost$2;->this$0:Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/server/FileServer;->getTH()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method
