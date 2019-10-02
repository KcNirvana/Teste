.class Lcom/miui/video/player/service/controller/VideoTopBar$1;
.super Ljava/lang/Object;
.source "VideoTopBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/controller/VideoTopBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/controller/VideoTopBar;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/controller/VideoTopBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-static {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->access$000(Lcom/miui/video/player/service/controller/VideoTopBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->onBackClicked()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoTopBar;->vMilink:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->onMilinkClicked()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSave:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->onSaveClicked()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoTopBar;->vAudioSetting:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->onAudioSettingClicked()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSubtitleSetting:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->onSubtitleSettingClicked()V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoTopBar;->vEpisode:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->onEpisodeClicked()V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSettings:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar$1;->this$0:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/VideoTopBar;->onSettingsClicked()V

    :cond_6
    return-void
.end method
