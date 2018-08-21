.class Lcom/flybird/FBInput$3$1;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/flybird/FBInput$3;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput$3$1;->this$1:Lcom/flybird/FBInput$3;

    iput-object p2, p0, Lcom/flybird/FBInput$3$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/flybird/FBInput$3$1;->this$1:Lcom/flybird/FBInput$3;

    iget-object v0, v0, Lcom/flybird/FBInput$3;->this$0:Lcom/flybird/FBInput;

    iget-object v0, v0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput$3$1;->this$1:Lcom/flybird/FBInput$3;

    iget-object v0, v0, Lcom/flybird/FBInput$3;->this$0:Lcom/flybird/FBInput;

    iget-wide v0, v0, Lcom/flybird/FBInput;->mNode:J

    iget-object v2, p0, Lcom/flybird/FBInput$3$1;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flybird/FBView;->nativePlatformOnChange(JLjava/lang/String;)I

    goto :goto_0
.end method
