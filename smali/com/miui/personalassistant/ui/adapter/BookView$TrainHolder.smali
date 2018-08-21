.class public Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;
.super Ljava/lang/Object;
.source "BookView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/adapter/BookView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrainHolder"
.end annotation


# instance fields
.field private arriveStationView:Landroid/widget/TextView;

.field public dashDivider:Landroid/view/View;

.field private fromStationView:Landroid/widget/TextView;

.field private intervalTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/adapter/BookView;

.field private timeView:Landroid/widget/TextView;

.field private train:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/adapter/BookView;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/BookView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b090105

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->train:Landroid/widget/TextView;

    const v0, 0x1b090109

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->fromStationView:Landroid/widget/TextView;

    const v0, 0x1b09010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->arriveStationView:Landroid/widget/TextView;

    const v0, 0x1b0900f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->timeView:Landroid/widget/TextView;

    const v0, 0x1b090107

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->intervalTime:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/personalassistant/ui/adapter/BookView;->access$000(Lcom/miui/personalassistant/ui/adapter/BookView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0900fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->dashDivider:Landroid/view/View;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->train:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->fromStationView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->arriveStationView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->timeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->intervalTime:Landroid/widget/TextView;

    return-object v0
.end method
