.class final Lcom/miui/appmanager/widget/g;
.super Lmiui/widget/DropDownPopupWindow$DefaultContainerController;
.source ""


# instance fields
.field final synthetic aRN:Lcom/miui/appmanager/widget/a;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/widget/g;->aRN:Lcom/miui/appmanager/widget/a;

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$DefaultContainerController;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/g;->aRN:Lcom/miui/appmanager/widget/a;

    invoke-static {v0}, Lcom/miui/appmanager/widget/a;->biq(Lcom/miui/appmanager/widget/a;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/g;->aRN:Lcom/miui/appmanager/widget/a;

    invoke-static {v0}, Lcom/miui/appmanager/widget/a;->bin(Lcom/miui/appmanager/widget/a;)Lcom/miui/appmanager/widget/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/g;->aRN:Lcom/miui/appmanager/widget/a;

    invoke-static {v0}, Lcom/miui/appmanager/widget/a;->bin(Lcom/miui/appmanager/widget/a;)Lcom/miui/appmanager/widget/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/appmanager/widget/b;->onShow()V

    :cond_0
    return-void
.end method
