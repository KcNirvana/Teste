.class public Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;
.super Ljava/lang/Object;
.source "BookView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/adapter/BookView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MovieHolder"
.end annotation


# instance fields
.field public movieCodeName:Landroid/widget/TextView;

.field public movieCodeNum:Landroid/widget/TextView;

.field public movieValidName:Landroid/widget/TextView;

.field public movieValidNum:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/adapter/BookView;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/adapter/BookView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/BookView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b090101

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieCodeName:Landroid/widget/TextView;

    const v0, 0x1b090102    # 1.13327E-22f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieCodeNum:Landroid/widget/TextView;

    const v0, 0x1b090103

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieValidName:Landroid/widget/TextView;

    const v0, 0x1b090104

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieValidNum:Landroid/widget/TextView;

    return-void
.end method
