.class Lcom/miui/personalassistant/express/fragment/DetailFragment$3;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment;->showCainiaoBanner()V
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

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$3;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/personalassistant/express/util/CainiaoUtil;->gotoGoodsDetailPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
