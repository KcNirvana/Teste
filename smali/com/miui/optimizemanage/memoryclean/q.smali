.class final Lcom/miui/optimizemanage/memoryclean/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ws:Lcom/miui/optimizemanage/memoryclean/h;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/memoryclean/h;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/q;->ws:Lcom/miui/optimizemanage/memoryclean/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/j;

    iget-object v1, v0, Lcom/miui/optimizemanage/memoryclean/j;->wn:Lmiui/widget/SlidingButton;

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/j;->wn:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method
