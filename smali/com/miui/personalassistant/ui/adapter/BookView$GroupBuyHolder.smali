.class public Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;
.super Ljava/lang/Object;
.source "BookView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/adapter/BookView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupBuyHolder"
.end annotation


# instance fields
.field private codename:Landroid/widget/TextView;

.field private codenumber:Landroid/widget/TextView;

.field public dashDivider:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/adapter/BookView;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/adapter/BookView;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/BookView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0900ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;->codename:Landroid/widget/TextView;

    const v0, 0x1b090100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;->codenumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/personalassistant/ui/adapter/BookView;->access$000(Lcom/miui/personalassistant/ui/adapter/BookView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0900fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;->dashDivider:Landroid/view/View;

    return-void
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;->codename:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;->codenumber:Landroid/widget/TextView;

    return-object v0
.end method
