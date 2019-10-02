.class Lcom/flickstree/player/player/sdk/AdvanceWebview$9;
.super Ljava/lang/Object;
.source "AdvanceWebview.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flickstree/player/player/sdk/AdvanceWebview;->getCurrentTimeSeconds()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;


# direct methods
.method constructor <init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$9;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview$9;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$9;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->editValue:Ljava/lang/String;

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$9;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$9;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    iget-object v0, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->editValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lcom/flickstree/player/player/sdk/AdvanceWebview;->ftValue:F

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$9;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    iget-object p1, p1, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalValue:[I

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$9;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    iget v0, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->ftValue:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    return-void
.end method
