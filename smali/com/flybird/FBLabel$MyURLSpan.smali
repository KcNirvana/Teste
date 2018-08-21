.class public Lcom/flybird/FBLabel$MyURLSpan;
.super Landroid/text/style/URLSpan;
.source "FBLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flybird/FBLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyURLSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flybird/FBLabel;


# direct methods
.method public constructor <init>(Lcom/flybird/FBLabel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBLabel$MyURLSpan;->this$0:Lcom/flybird/FBLabel;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBLabel$MyURLSpan;->this$0:Lcom/flybird/FBLabel;

    invoke-virtual {v0}, Lcom/flybird/FBLabel;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    check-cast p1, Lcom/flybird/FBBorderText;

    invoke-virtual {p1}, Lcom/flybird/FBBorderText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/flybird/FBLabel$MyURLSpan;->this$0:Lcom/flybird/FBLabel;

    iget-wide v0, v0, Lcom/flybird/FBLabel;->mNode:J

    const-string/jumbo v2, "onlink"

    invoke-virtual {p0}, Lcom/flybird/FBLabel$MyURLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/flybird/FBView;->nativePlatformInvokeCallback(JLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
