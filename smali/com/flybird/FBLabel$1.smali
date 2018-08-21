.class Lcom/flybird/FBLabel$1;
.super Ljava/lang/Object;
.source "FBLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBLabel;


# direct methods
.method constructor <init>(Lcom/flybird/FBLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    iget-object v0, v0, Lcom/flybird/FBLabel;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    iget-object v0, v0, Lcom/flybird/FBLabel;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    iget-object v0, v0, Lcom/flybird/FBLabel;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    iget-object v0, v0, Lcom/flybird/FBLabel;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lcom/flybird/FBBorderText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBBorderText;

    invoke-virtual {v0, v2}, Lcom/flybird/FBBorderText;->setForceFocus(Z)V

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->this$0:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0
.end method
