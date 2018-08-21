.class Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$3;
.super Ljava/lang/Object;
.source "ShoppingMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;

.field final synthetic val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;Lcom/miui/personalassistant/shopping/bean/Shopping;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$3;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;

    iput-object p2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$3;->val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/miui/personalassistant/ui/widget/EditDialog;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$3;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;

    iget-object v1, v1, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$3;->val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;

    iget-object v3, v0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$1200(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Lcom/miui/personalassistant/shopping/bean/Shopping;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/EditDialog;->dismiss()V

    return-void
.end method
