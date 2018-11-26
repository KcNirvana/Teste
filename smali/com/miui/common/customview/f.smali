.class final Lcom/miui/common/customview/f;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic azf:Lcom/miui/common/customview/AutoPasteListView;


# direct methods
.method constructor <init>(Lcom/miui/common/customview/AutoPasteListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/f;->azf:Lcom/miui/common/customview/AutoPasteListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/f;->azf:Lcom/miui/common/customview/AutoPasteListView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    :cond_0
    return-void
.end method
