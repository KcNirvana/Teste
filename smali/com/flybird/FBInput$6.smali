.class Lcom/flybird/FBInput$6;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$l$b;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput$6;->this$0:Lcom/flybird/FBInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBInput$6;->this$0:Lcom/flybird/FBInput;

    invoke-static {v0, p2}, Lcom/flybird/FBInput;->access$702(Lcom/flybird/FBInput;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/flybird/FBInput$6;->this$0:Lcom/flybird/FBInput;

    invoke-static {v0, p1}, Lcom/flybird/FBInput;->access$802(Lcom/flybird/FBInput;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/flybird/FBInput$6;->this$0:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->access$800(Lcom/flybird/FBInput;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput$6;->this$0:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->access$100(Lcom/flybird/FBInput;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/flybird/FBInput$6;->this$0:Lcom/flybird/FBInput;

    invoke-static {v3}, Lcom/flybird/FBInput;->access$700(Lcom/flybird/FBInput;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
