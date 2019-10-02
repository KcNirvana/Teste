.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;
.super Ljava/lang/Object;
.source "GetOnlineSubtitleView.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1600(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->enableItemChoser()V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_save_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method

.method public onSubtitleDownload(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubtitleDownload: key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/base/database/CLVDatabase;->queryHistoryEntityByMd5Path(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getOnlineSubLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/miui/video/framework/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPath(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setOnlineSubLocalPath(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->getSubHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setOnlineSubLocalPath(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/video/base/database/CLVDatabase;->updatePlayPositionInfo(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/video/base/database/CLVDatabase;->saveLocalHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->enableItemChoser()V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_save_success:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->addAndChangeSubtitleTrack(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_save_failed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public onSubtitlesListFound(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSubtitlesListFound: list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->getSubFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->isSupportSubtitle(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$900(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->setGroup(Ljava/util/List;)V

    return-void
.end method
