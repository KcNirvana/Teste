.class Lcom/miui/video/player/service/setting/player/PlayerSettingView$1;
.super Ljava/lang/Object;
.source "PlayerSettingView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/setting/player/PlayerSettingView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/setting/player/PlayerSettingView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$1;->this$0:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentRate(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$1;->this$0:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    invoke-static {v0, p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->access$002(Lcom/miui/video/player/service/setting/player/PlayerSettingView;F)F

    iget-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$1;->this$0:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    invoke-static {p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->access$100(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)V

    return-void
.end method
