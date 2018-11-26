.class final Lcom/miui/powercenter/deepsave/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic aND:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/l;->aND:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/g;

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/l;->aND:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/g;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->bak(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;Ljava/lang/String;)V

    return-void
.end method
