.class Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;
.super Ljava/lang/Object;
.source "ShareChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/share/chooser/ShareChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/share/chooser/ShareChooserDialog;


# direct methods
.method private constructor <init>(Lcom/miui/share/chooser/ShareChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/share/chooser/ShareChooserDialog;Lcom/miui/share/chooser/ShareChooserDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;-><init>(Lcom/miui/share/chooser/ShareChooserDialog;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-virtual {v3}, Lcom/miui/share/chooser/ShareChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/share/ShareUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    sget v4, Lcom/miui/share/R$string;->miuishare_no_network:I

    invoke-virtual {v3, v4}, Lcom/miui/share/chooser/ShareChooserDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/miui/share/ShareUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-static {v3}, Lcom/miui/share/chooser/ShareChooserDialog;->access$200(Lcom/miui/share/chooser/ShareChooserDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/share/chooser/ShareInfo;

    iget-object v1, v2, Lcom/miui/share/chooser/ShareInfo;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object v3, p0, Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-virtual {v3}, Lcom/miui/share/chooser/ShareChooserDialog;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "MiuiShareChooserDialog"

    const-string/jumbo v4, "Can NOT share via this invalid sharer."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
