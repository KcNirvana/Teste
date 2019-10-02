.class Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;
.super Landroid/os/CountDownTimer;
.source "UIOkCancelDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setShowTimer(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;

.field final synthetic val$timerRes:I


# direct methods
.method constructor <init>(Lcom/miui/video/common/library/widget/UIOkCancelDialog;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;->this$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    iput p6, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;->val$timerRes:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;->this$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->access$100(Lcom/miui/video/common/library/widget/UIOkCancelDialog;)Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;->this$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->access$100(Lcom/miui/video/common/library/widget/UIOkCancelDialog;)Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;->onFinish()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;->this$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->access$000(Lcom/miui/video/common/library/widget/UIOkCancelDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;->this$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-static {p2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->access$000(Lcom/miui/video/common/library/widget/UIOkCancelDialog;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;->this$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;->val$timerRes:I

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
