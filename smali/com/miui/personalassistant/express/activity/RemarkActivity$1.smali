.class Lcom/miui/personalassistant/express/activity/RemarkActivity$1;
.super Ljava/lang/Object;
.source "RemarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/RemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/RemarkActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/RemarkActivity;->finish()V

    return-void
.end method
