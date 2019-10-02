.class Lcom/miui/video/player/service/recommend/RecommendVideoContainer$1;
.super Ljava/lang/Object;
.source "RecommendVideoContainer.java"

# interfaces
.implements Lcom/miui/video/player/service/recommend/RecommendAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/recommend/RecommendVideoContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$1;->this$0:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 7

    const-string p1, "RecommendVideoContainer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$1;->this$0:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    invoke-static {v1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->access$000(Lcom/miui/video/player/service/recommend/RecommendVideoContainer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$1;->this$0:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    invoke-static {p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->access$000(Lcom/miui/video/player/service/recommend/RecommendVideoContainer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$1;->this$0:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    invoke-static {v1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->access$100(Lcom/miui/video/player/service/recommend/RecommendVideoContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/miui/video/player/service/recommend/RecommendReport;->reportLocalDiversionCardPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
