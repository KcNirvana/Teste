.class Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$2;
.super Ljava/lang/Object;
.source "LocalPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$2;->this$0:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, " onRequestPermissionsResult : request permission failed, return"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$2;->this$0:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->finish()V

    return-void
.end method
