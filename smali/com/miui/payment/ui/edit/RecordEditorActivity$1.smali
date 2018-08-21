.class Lcom/miui/payment/ui/edit/RecordEditorActivity$1;
.super Ljava/lang/Object;
.source "RecordEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/edit/RecordEditorActivity;->doDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/edit/RecordEditorActivity;

.field final synthetic val$recordId:J


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/edit/RecordEditorActivity;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity$1;->this$0:Lcom/miui/payment/ui/edit/RecordEditorActivity;

    iput-wide p2, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity$1;->val$recordId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity$1;->this$0:Lcom/miui/payment/ui/edit/RecordEditorActivity;

    invoke-static {v0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->access$000(Lcom/miui/payment/ui/edit/RecordEditorActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity$1;->this$0:Lcom/miui/payment/ui/edit/RecordEditorActivity;

    iget-object v0, v0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity$1;->this$0:Lcom/miui/payment/ui/edit/RecordEditorActivity;

    iget-object v0, v0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    iget-wide v2, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity$1;->val$recordId:J

    invoke-interface {v0, v2, v3}, Lcom/miui/payment/ui/edit/EditPresenter;->deleteRecord(J)V

    goto :goto_0
.end method
