.class Lcom/miui/share/chooser/ShareChooserDialog$2;
.super Ljava/lang/Object;
.source "ShareChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/share/chooser/ShareChooserDialog;->initialize(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/share/chooser/ShareChooserDialog;


# direct methods
.method constructor <init>(Lcom/miui/share/chooser/ShareChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/chooser/ShareChooserDialog$2;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/share/ShareResultManager;->notifyShareResult(II)V

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$2;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-virtual {v0}, Lcom/miui/share/chooser/ShareChooserDialog;->dismissAllowingStateLoss()V

    return-void
.end method
