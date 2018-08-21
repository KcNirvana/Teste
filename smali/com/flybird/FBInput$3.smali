.class Lcom/flybird/FBInput$3;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput$3;->this$0:Lcom/flybird/FBInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/flybird/FBInput$3;->this$0:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->access$000(Lcom/flybird/FBInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput$3;->this$0:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->access$400(Lcom/flybird/FBInput;)Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v2, Lcom/flybird/FBInput$3$1;

    invoke-direct {v2, p0, v0}, Lcom/flybird/FBInput$3$1;-><init>(Lcom/flybird/FBInput$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
