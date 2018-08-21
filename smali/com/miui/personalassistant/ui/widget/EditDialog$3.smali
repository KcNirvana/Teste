.class Lcom/miui/personalassistant/ui/widget/EditDialog$3;
.super Ljava/lang/Object;
.source "EditDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/EditDialog;->show()V
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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$3;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$3;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->showSoftInput(Landroid/view/View;)V

    return-void
.end method
