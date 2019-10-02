.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$2;
.super Ljava/lang/Object;
.source "SubtitleSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->showOnlineSubTitleList()V

    :cond_0
    return-void
.end method
