.class Lcom/miui/personalassistant/express/fragment/HistoryFragment$3;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/HistoryFragment;->showDeleteDialog(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iput-object p2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$3;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$3;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
