.class final Lcom/miui/optimizemanage/memoryclean/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic wr:Lcom/miui/optimizemanage/memoryclean/h;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/memoryclean/h;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/p;->wr:Lcom/miui/optimizemanage/memoryclean/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/m;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v1, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    iput v0, v2, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/p;->wr:Lcom/miui/optimizemanage/memoryclean/h;

    invoke-static {v0}, Lcom/miui/optimizemanage/memoryclean/h;->xC(Lcom/miui/optimizemanage/memoryclean/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
