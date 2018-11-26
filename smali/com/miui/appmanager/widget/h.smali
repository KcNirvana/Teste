.class final Lcom/miui/appmanager/widget/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic aRO:Lcom/miui/appmanager/widget/a;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/widget/h;->aRO:Lcom/miui/appmanager/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/widget/h;->aRO:Lcom/miui/appmanager/widget/a;

    invoke-static {v0, p3}, Lcom/miui/appmanager/widget/a;->bip(Lcom/miui/appmanager/widget/a;I)I

    iget-object v0, p0, Lcom/miui/appmanager/widget/h;->aRO:Lcom/miui/appmanager/widget/a;

    invoke-static {v0}, Lcom/miui/appmanager/widget/a;->bin(Lcom/miui/appmanager/widget/a;)Lcom/miui/appmanager/widget/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/h;->aRO:Lcom/miui/appmanager/widget/a;

    invoke-static {v0}, Lcom/miui/appmanager/widget/a;->bin(Lcom/miui/appmanager/widget/a;)Lcom/miui/appmanager/widget/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/widget/h;->aRO:Lcom/miui/appmanager/widget/a;

    invoke-interface {v0, v1, p3}, Lcom/miui/appmanager/widget/b;->bir(Lcom/miui/appmanager/widget/a;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/widget/h;->aRO:Lcom/miui/appmanager/widget/a;

    invoke-virtual {v0}, Lcom/miui/appmanager/widget/a;->dismiss()V

    return-void
.end method
