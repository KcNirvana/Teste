.class Lcom/flybird/FBView$3;
.super Ljava/lang/Object;
.source "FBView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBView;

.field final synthetic val$hasFocus:Z


# direct methods
.method constructor <init>(Lcom/flybird/FBView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBView$3;->this$0:Lcom/flybird/FBView;

    iput-boolean p2, p0, Lcom/flybird/FBView$3;->val$hasFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBView$3;->this$0:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/flybird/FBView$3;->val$hasFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBView$3;->this$0:Lcom/flybird/FBView;

    iget-wide v0, v0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnFocus(J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBView$3;->this$0:Lcom/flybird/FBView;

    iget-wide v0, v0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnBlur(J)Z

    goto :goto_0
.end method
