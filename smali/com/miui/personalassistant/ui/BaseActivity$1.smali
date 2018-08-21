.class Lcom/miui/personalassistant/ui/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/BaseActivity;->checkShowCTADialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/BaseActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/BaseActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/BaseActivity$1;->this$0:Lcom/miui/personalassistant/ui/BaseActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/BaseActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBtnClick()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseActivity$1;->this$0:Lcom/miui/personalassistant/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/BaseActivity;->finish()V

    return-void
.end method

.method public onPositiveBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseActivity$1;->this$0:Lcom/miui/personalassistant/ui/BaseActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseActivity$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/BaseActivity;->access$100(Lcom/miui/personalassistant/ui/BaseActivity;Landroid/content/Context;)V

    return-void
.end method
