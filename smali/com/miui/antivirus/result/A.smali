.class final Lcom/miui/antivirus/result/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic anJ:Lcom/miui/antivirus/result/Advertisement;

.field final synthetic anK:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/Advertisement;Landroid/widget/PopupWindow;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/A;->anJ:Lcom/miui/antivirus/result/Advertisement;

    iput-object p2, p0, Lcom/miui/antivirus/result/A;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/miui/antivirus/result/A;->anK:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/A;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/miui/antivirus/result/A;->anK:Lcom/miui/antivirus/activity/MainActivity;

    iget-object v1, p0, Lcom/miui/antivirus/result/A;->anJ:Lcom/miui/antivirus/result/Advertisement;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->awO(Lcom/miui/antivirus/result/a;)V

    return-void
.end method
