.class Lcom/miui/personalassistant/express/fragment/QueryFragment$3;
.super Ljava/lang/Object;
.source "QueryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/QueryFragment;->showClipboardRemindDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

.field final synthetic val$number:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/fragment/QueryFragment;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    iput-object p2, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$3;->val$number:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$3;->val$number:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$102(Lcom/miui/personalassistant/express/fragment/QueryFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$200(Lcom/miui/personalassistant/express/fragment/QueryFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$100(Lcom/miui/personalassistant/express/fragment/QueryFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/QueryFragment;)V

    return-void
.end method
