.class Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;
.super Ljava/lang/Object;
.source "FunctionLaunchCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mClearButton:Landroid/widget/FrameLayout;

.field public mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

.field public mItem:Landroid/widget/LinearLayout;

.field public mTvAppName:Landroid/widget/TextView;

.field public mTvFunctionName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0903c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mItem:Landroid/widget/LinearLayout;

    const v0, 0x1b09006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    const v0, 0x1b0903c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mClearButton:Landroid/widget/FrameLayout;

    const v0, 0x1b090392

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mTvAppName:Landroid/widget/TextView;

    const v0, 0x1b0903c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mTvFunctionName:Landroid/widget/TextView;

    return-void
.end method
