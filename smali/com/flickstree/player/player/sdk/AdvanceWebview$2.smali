.class Lcom/flickstree/player/player/sdk/AdvanceWebview$2;
.super Ljava/lang/Object;
.source "AdvanceWebview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadVideo(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$2;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    iput p2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$2;->val$inSeconds:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$2;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:getJWAction( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$2;->val$inSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\'seek\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$2;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    invoke-virtual {v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->getDurationSeconds()I

    return-void
.end method
