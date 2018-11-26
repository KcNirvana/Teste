.class final Lcom/miui/common/customview/h;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic azh:Lcom/miui/common/customview/AdImageView;


# direct methods
.method constructor <init>(Lcom/miui/common/customview/AdImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/h;->azh:Lcom/miui/common/customview/AdImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/h;->azh:Lcom/miui/common/customview/AdImageView;

    const/16 v1, -0x64

    invoke-static {v0, v1}, Lcom/miui/common/customview/AdImageView;->aGr(Lcom/miui/common/customview/AdImageView;I)I

    return-void
.end method
