.class Lcom/miui/video/biz/ugc/card/UIUGCVideo$4;
.super Ljava/lang/Object;
.source "UIUGCVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/card/UIUGCVideo;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$4;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const-string p1, "UIUGCVideo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEEPLINK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$4;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$400(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "item_id"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$4;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "small_video"

    const-string v2, ""

    const-string v3, "small_video_vmate"

    invoke-static {v1, v2, v3}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v3

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$4;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$4;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$400(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    return-void
.end method
