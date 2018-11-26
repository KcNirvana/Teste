.class final Lcom/miui/powercenter/autotask/ag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aMA:Lcom/miui/powercenter/autotask/p;

.field final synthetic aMz:Lcom/miui/powercenter/autotask/z;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/z;Lcom/miui/powercenter/autotask/p;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/ag;->aMz:Lcom/miui/powercenter/autotask/z;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/ag;->aMA:Lcom/miui/powercenter/autotask/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "brightness"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ag;->aMz:Lcom/miui/powercenter/autotask/z;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/z;->aZe(Lcom/miui/powercenter/autotask/z;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/ag;->aMz:Lcom/miui/powercenter/autotask/z;

    invoke-static {v2}, Lcom/miui/powercenter/autotask/z;->aZd(Lcom/miui/powercenter/autotask/z;)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ag;->aMA:Lcom/miui/powercenter/autotask/p;

    invoke-interface {v1, v0}, Lcom/miui/powercenter/autotask/p;->aXA(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ag;->aMz:Lcom/miui/powercenter/autotask/z;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/z;->aZd(Lcom/miui/powercenter/autotask/z;)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object v1

    const-string/jumbo v2, "brightness"

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYu(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ag;->aMA:Lcom/miui/powercenter/autotask/p;

    invoke-interface {v1, v0}, Lcom/miui/powercenter/autotask/p;->aXA(Ljava/lang/String;)V

    goto :goto_0
.end method
