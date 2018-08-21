.class Lcom/miui/personalassistant/ui/widget/EditDialog$1;
.super Ljava/lang/Object;
.source "EditDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/EditDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/EditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$1;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$1;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->hideSoftInput(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
