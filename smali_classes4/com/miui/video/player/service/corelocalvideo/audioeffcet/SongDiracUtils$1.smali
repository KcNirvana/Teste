.class Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;
.super Lse/dirac/acs/api/AudioControlService$Connection;
.source "SongDiracUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->getDiracService(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;->this$0:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;

    invoke-direct {p0}, Lse/dirac/acs/api/AudioControlService$Connection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lse/dirac/acs/api/AudioControlService;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;->this$0:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->access$000(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;->this$0:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->access$100(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;)Lse/dirac/acs/api/AudioControlService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;->this$0:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;

    invoke-static {v0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->access$102(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lse/dirac/acs/api/AudioControlService;->close()V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;->this$0:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;

    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->access$200(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;->this$0:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->access$000(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils$1;->this$0:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;->access$102(Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService;

    return-void
.end method
