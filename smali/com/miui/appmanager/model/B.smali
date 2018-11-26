.class final Lcom/miui/appmanager/model/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aQY:Lcom/miui/appmanager/model/c;

.field final synthetic aQZ:Lcom/miui/appmanager/AppManagerMainActivity;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/model/c;Landroid/widget/PopupWindow;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/B;->aQY:Lcom/miui/appmanager/model/c;

    iput-object p2, p0, Lcom/miui/appmanager/model/B;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/miui/appmanager/model/B;->aQZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/model/B;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/miui/appmanager/model/B;->aQY:Lcom/miui/appmanager/model/c;

    iget-object v1, p0, Lcom/miui/appmanager/model/B;->aQZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, v1}, Lcom/miui/appmanager/model/c;->bha(Lcom/miui/appmanager/model/c;Lcom/miui/appmanager/AppManagerMainActivity;)V

    return-void
.end method
