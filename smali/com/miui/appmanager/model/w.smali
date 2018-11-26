.class final Lcom/miui/appmanager/model/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aQO:Lcom/miui/appmanager/model/a;

.field final synthetic aQP:Lcom/miui/appmanager/AppManagerMainActivity;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/model/a;Landroid/widget/PopupWindow;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/w;->aQO:Lcom/miui/appmanager/model/a;

    iput-object p2, p0, Lcom/miui/appmanager/model/w;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/miui/appmanager/model/w;->aQP:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/model/w;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/miui/appmanager/model/w;->aQO:Lcom/miui/appmanager/model/a;

    iget-object v1, p0, Lcom/miui/appmanager/model/w;->aQP:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, v1}, Lcom/miui/appmanager/model/a;->bgR(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V

    return-void
.end method
