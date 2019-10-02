.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;
.super Ljava/lang/Object;
.source "OnlineSubtitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: ok"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "subtitle_online_remember_checked"

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->access$600(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->access$500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    :cond_1
    :goto_0
    return-void
.end method
