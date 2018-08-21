.class Lcom/miui/personalassistant/express/fragment/DetailFragment$1;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment;->onDeleteSelected()V
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

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$1;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v1, "express_detail_delete_click"

    invoke-static {v1}, Lcom/miui/personalassistant/express/util/StatUtil;->recordClickEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$1;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$1;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$200(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/bean/ExpressEntry;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$1;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$1;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v1, v1, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->finish()V

    :cond_0
    return-void
.end method
