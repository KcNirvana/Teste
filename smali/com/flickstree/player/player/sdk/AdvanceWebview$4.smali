.class Lcom/flickstree/player/player/sdk/AdvanceWebview$4;
.super Ljava/lang/Object;
.source "AdvanceWebview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flickstree/player/player/sdk/AdvanceWebview;->playVideo(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

.field final synthetic val$inSeconds:I


# direct methods
.method constructor <init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;I)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$4;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    iput p2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$4;->val$inSeconds:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$4;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    const-string v1, "javascript:getJWAction(true,\'play\')"

    invoke-virtual {v0, v1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/flickstree/player/player/sdk/AdvanceWebview$4$1;

    invoke-direct {v1, p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview$4$1;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview$4;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$4;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    invoke-virtual {v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->getDurationSeconds()I

    return-void
.end method
