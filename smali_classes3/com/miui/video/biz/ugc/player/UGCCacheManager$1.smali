.class Lcom/miui/video/biz/ugc/player/UGCCacheManager$1;
.super Ljava/lang/Object;
.source "UGCCacheManager.java"

# interfaces
.implements Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/player/UGCCacheManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/player/UGCCacheManager;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/player/UGCCacheManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheAvailable(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->access$000(Lcom/miui/video/biz/ugc/player/UGCCacheManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$100(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->setProgress(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->access$000(Lcom/miui/video/biz/ugc/player/UGCCacheManager;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    const-string p1, "SmallVideoCacheManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cache finish "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$200(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$300(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$400(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)J

    move-result-wide v0

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
