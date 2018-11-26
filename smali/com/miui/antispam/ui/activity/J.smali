.class final Lcom/miui/antispam/ui/activity/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic UI:Lcom/miui/antispam/ui/activity/KeywordListActivity;

.field final synthetic UJ:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/J;->UI:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/J;->UJ:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/J;->UI:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TE(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/J;->UJ:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
