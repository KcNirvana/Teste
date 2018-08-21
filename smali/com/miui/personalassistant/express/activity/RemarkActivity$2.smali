.class Lcom/miui/personalassistant/express/activity/RemarkActivity$2;
.super Ljava/lang/Object;
.source "RemarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/activity/RemarkActivity;->doRemark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/activity/RemarkActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/activity/RemarkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/RemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/RemarkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/activity/RemarkActivity;->setResult(I)V

    return-void
.end method
