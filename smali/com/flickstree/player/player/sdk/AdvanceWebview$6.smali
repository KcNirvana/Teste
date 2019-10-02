.class Lcom/flickstree/player/player/sdk/AdvanceWebview$6;
.super Ljava/lang/Object;
.source "AdvanceWebview.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flickstree/player/player/sdk/AdvanceWebview;->getDurationSeconds()I
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

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$6;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview$6;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$6;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    iget-object v0, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalDuration:[I

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$6;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    iget-object p1, p1, Lcom/flickstree/player/player/sdk/AdvanceWebview;->confirmDuration:[I

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview$6;->this$0:Lcom/flickstree/player/player/sdk/AdvanceWebview;

    iget-object v0, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalDuration:[I

    aget v0, v0, v1

    aput v0, p1, v1

    return-void
.end method
