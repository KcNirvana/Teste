.class Lcom/flickstree/player/player/sdk/AdvanceWebview$3;
.super Ljava/lang/Object;
.source "AdvanceWebview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flickstree/player/player/sdk/AdvanceWebview;->playVideo(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;


# direct methods
.method constructor <init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$3;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$3;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    const-string v1, "javascript:getJWAction(true,\'play\')"

    invoke-virtual {v0, v1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$3;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    invoke-virtual {v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->getDurationSeconds()I

    return-void
.end method
