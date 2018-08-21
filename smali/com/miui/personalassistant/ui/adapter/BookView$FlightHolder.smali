.class public Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;
.super Ljava/lang/Object;
.source "BookView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/adapter/BookView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlightHolder"
.end annotation


# instance fields
.field public airportViewArr:Landroid/widget/TextView;

.field public airportViewFrom:Landroid/widget/TextView;

.field public cityViewArr:Landroid/widget/TextView;

.field public cityViewFrom:Landroid/widget/TextView;

.field public dashDivider:Landroid/view/View;

.field public flight:Landroid/widget/TextView;

.field public state:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/adapter/BookView;

.field public timeViewArr:Landroid/widget/TextView;

.field public timeViewFrom:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/adapter/BookView;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/BookView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0900f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->flight:Landroid/widget/TextView;

    const v0, 0x1b0900f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->state:Landroid/widget/TextView;

    const v0, 0x1b0900f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->timeViewFrom:Landroid/widget/TextView;

    const v0, 0x1b0900f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->timeViewArr:Landroid/widget/TextView;

    const v0, 0x1b0900f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->cityViewFrom:Landroid/widget/TextView;

    const v0, 0x1b0900f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->cityViewArr:Landroid/widget/TextView;

    const v0, 0x1b0900fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->airportViewFrom:Landroid/widget/TextView;

    const v0, 0x1b0900fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->airportViewArr:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/personalassistant/ui/adapter/BookView;->access$000(Lcom/miui/personalassistant/ui/adapter/BookView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0900fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->dashDivider:Landroid/view/View;

    return-void
.end method
