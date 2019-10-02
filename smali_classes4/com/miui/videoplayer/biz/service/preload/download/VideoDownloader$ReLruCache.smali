.class public final Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;
.super Landroid/support/v4/util/LruCache;
.source "VideoDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache<",
        "Ljava/lang/String;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/miui/videoplayer/biz/service/preload/model/ProxyVideoEntity;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoDownloader.kt\ncom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache\n*L\n1#1,316:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002*\u0012\u0004\u0012\u00020\u0002\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0003j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004`\u00050\u0001B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008Jd\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00022\"\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0003j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004`\u00052&\u0010\u000f\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005H\u0014\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;",
        "Landroid/support/v4/util/LruCache;",
        "",
        "Ljava/util/HashMap;",
        "Lcom/miui/videoplayer/biz/service/preload/model/ProxyVideoEntity;",
        "Lkotlin/collections/HashMap;",
        "maxSize",
        "",
        "(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;I)V",
        "entryRemoved",
        "",
        "evicted",
        "",
        "key",
        "oldValue",
        "newValue",
        "biz_service_preload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;


# direct methods
.method public constructor <init>(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/util/HashMap;

    check-cast p4, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;->entryRemoved(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/videoplayer/biz/service/preload/model/ProxyVideoEntity;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/videoplayer/biz/service/preload/model/ProxyVideoEntity;",
            ">;)V"
        }
    .end annotation

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldValue"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_1

    iget-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    invoke-static {p1}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getUrlIdConnectMap$p(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    invoke-static {p3}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getIdPreloadMap$p(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;)Ljava/util/HashMap;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-eqz p3, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    invoke-static {p1}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getUrlIdConnectMap$p(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
