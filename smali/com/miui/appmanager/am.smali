.class final Lcom/miui/appmanager/am;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aWS:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bom(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/model/n;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/n;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bop(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boc(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/widget/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/widget/a;->bii(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boc(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/widget/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bod(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/a;->bij(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boc(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/widget/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bob(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/a;->bil(I)V

    iget-object v0, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boc(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/widget/a;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/an;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/an;-><init>(Lcom/miui/appmanager/am;)V

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/a;->bik(Lcom/miui/appmanager/widget/b;)V

    iget-object v0, p0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boc(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appmanager/widget/a;->show()V

    const-string/jumbo v0, "item"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bib(Ljava/lang/String;)V

    return-void
.end method
