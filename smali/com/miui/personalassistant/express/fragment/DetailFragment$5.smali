.class Lcom/miui/personalassistant/express/fragment/DetailFragment$5;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment;->showChooseCompanyDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$5;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$5;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$5;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$502(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;

    return-void
.end method
