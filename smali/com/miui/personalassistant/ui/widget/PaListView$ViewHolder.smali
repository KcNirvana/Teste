.class Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;
.super Ljava/lang/Object;
.source "PaListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/widget/PaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mIcon:Landroid/widget/ImageView;

.field public mIvOp:Landroid/widget/ImageView;

.field public mRoot:Landroid/view/View;

.field public mTvAppName:Landroid/widget/TextView;

.field public mTvName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/PaListView;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mRoot:Landroid/view/View;

    const v0, 0x1b0900cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1b090235

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mIvOp:Landroid/widget/ImageView;

    const v0, 0x1b0902c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mTvAppName:Landroid/widget/TextView;

    const v0, 0x1b0900ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mTvName:Landroid/widget/TextView;

    return-void
.end method
