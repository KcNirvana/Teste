.class Lcom/flybird/FBInput$2;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput$2;->this$0:Lcom/flybird/FBInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBInput$2;->this$0:Lcom/flybird/FBInput;

    invoke-virtual {v0}, Lcom/flybird/FBInput;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput$2;->this$0:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->access$000(Lcom/flybird/FBInput;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBInput$2;->this$0:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->access$100(Lcom/flybird/FBInput;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput$2;->this$0:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->access$200(Lcom/flybird/FBInput;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flybird/FBInput$2;->this$0:Lcom/flybird/FBInput;

    invoke-static {v1, v0}, Lcom/flybird/FBInput;->access$202(Lcom/flybird/FBInput;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/flybird/FBInput$2;->this$0:Lcom/flybird/FBInput;

    iget-wide v2, v1, Lcom/flybird/FBInput;->mNode:J

    invoke-static {v2, v3, v0}, Lcom/flybird/FBView;->nativePlatformOnInput(JLjava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput$2;->this$0:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->access$300(Lcom/flybird/FBInput;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
