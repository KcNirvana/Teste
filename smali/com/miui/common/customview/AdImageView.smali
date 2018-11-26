.class public Lcom/miui/common/customview/AdImageView;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private azb:I

.field private azc:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, -0x64

    iput v0, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    new-instance v0, Lcom/miui/common/customview/h;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/h;-><init>(Lcom/miui/common/customview/AdImageView;)V

    iput-object v0, p0, Lcom/miui/common/customview/AdImageView;->azc:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, -0x64

    iput v0, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    new-instance v0, Lcom/miui/common/customview/h;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/h;-><init>(Lcom/miui/common/customview/AdImageView;)V

    iput-object v0, p0, Lcom/miui/common/customview/AdImageView;->azc:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, -0x64

    iput v0, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    new-instance v0, Lcom/miui/common/customview/h;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/h;-><init>(Lcom/miui/common/customview/AdImageView;)V

    iput-object v0, p0, Lcom/miui/common/customview/AdImageView;->azc:Landroid/os/Handler;

    return-void
.end method

.method static synthetic aGr(Lcom/miui/common/customview/AdImageView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    return p1
.end method


# virtual methods
.method protected Gs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public aGq(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/common/customview/AdImageView;->Gs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    iput-object p1, p0, Lcom/miui/common/customview/AdImageView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/common/customview/AdImageView;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/common/customview/AdImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/common/customview/AdImageView;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    invoke-static {v1, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishTemporaryDetach()V

    iget v0, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/AdImageView;->azc:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 4

    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    iget-object v0, p0, Lcom/miui/common/customview/AdImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/AdImageView;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/common/customview/AdImageView;->azb:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/common/customview/AdImageView;->azc:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
