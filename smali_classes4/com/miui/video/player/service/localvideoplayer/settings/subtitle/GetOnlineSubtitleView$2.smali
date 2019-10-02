.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;
.super Ljava/lang/Object;
.source "GetOnlineSubtitleView.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->getEnableItems()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_loading_wait:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    invoke-static {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$102(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-ne v2, p1, :cond_2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    invoke-virtual {v3, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->setSelected(Z)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    invoke-virtual {v3, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->setSelected(Z)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->refresh()V

    return-void
.end method
